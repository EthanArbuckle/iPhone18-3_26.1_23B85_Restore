@interface PKAppletSubcredentialSharingSession
+ (id)createPendingSessionWithDelegate:(id)delegate;
+ (id)createSessionWithDelegate:(id)delegate;
- (BOOL)startSession;
- (void)acceptCrossPlatformInvitationWithIdentifier:(id)identifier transportChannelIdentifier:(id)channelIdentifier activationCode:(id)code encryptedProductPlanIdentifierContainer:(id)container completion:(id)completion;
- (void)acceptInvitationWithIdentifier:(id)identifier activationCode:(id)code completion:(id)completion;
- (void)accountAttestionRequestForCredential:(id)credential withCompletion:(id)completion;
- (void)cancelSharingInvitationWithIdentifier:(id)identifier completion:(id)completion;
- (void)createInviteForShare:(id)share forCredential:(id)credential authorization:(id)authorization completion:(id)completion;
- (void)createSilentInviteForSharingSessionIdentifier:(id)identifier completion:(id)completion;
- (void)getPretrackRequestForKeyWithIdentifier:(id)identifier withCompletion:(id)completion;
- (void)getProductPlanIdentifierRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completion:(id)completion;
- (void)getSecondFactorRequestForConfigs:(id)configs completion:(id)completion;
- (void)handleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completion:(id)completion;
- (void)retryActivationCode:(id)code forInvitationIdentifier:(id)identifier completion:(id)completion;
- (void)retryActivationCodeForCredentialIdentifier:(id)identifier activationCode:(id)code completion:(id)completion;
- (void)retryActivationCodeWithInvitationIdentifier:(id)identifier activationCode:(id)code completion:(id)completion;
- (void)routingInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)setAccountAttestation:(id)attestation forCredential:(id)credential withCompletion:(id)completion;
- (void)setEncryptedProductPlanIdentifierContainer:(id)container forInvitationIdentifier:(id)identifier completion:(id)completion;
- (void)setTransportChannelIdentifier:(id)identifier forCredential:(id)credential forCredentialShare:(id)share completion:(id)completion;
- (void)startShareAcceptanceFlowWithInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completion:(id)completion;
- (void)updateSharingAnalyticsWithConfig:(id)config completion:(id)completion;
@end

@implementation PKAppletSubcredentialSharingSession

+ (id)createSessionWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [(PKDASession *)[PKAppletSubcredentialSharingSession alloc] initWithDelegate:delegateCopy];

  if ([(PKAppletSubcredentialSharingSession *)v4 startSession])
  {
    v5 = v4;
  }

  else
  {
    [(PKDASession *)v4 setDelegate:0];
    v5 = 0;
  }

  return v5;
}

+ (id)createPendingSessionWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [(PKDASession *)[PKAppletSubcredentialSharingSession alloc] initWithDelegate:delegateCopy];

  [(PKDASession *)v4 setState:0];

  return v4;
}

- (BOOL)startSession
{
  v14 = *MEMORY[0x1E69E9840];
  session = [(PKDASession *)self session];

  if (!session)
  {
    mEMORY[0x1E699A138] = [MEMORY[0x1E699A138] sharedManager];
    v6 = [mEMORY[0x1E699A138] createSharingSessionWithDelegate:self];

    v4 = v6 != 0;
    if (v6)
    {
      [(PKDASession *)self setSession:v6];
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        selfCopy = self;
        v8 = "Starting sharing session: %p";
        v9 = v7;
        v10 = 12;
LABEL_8:
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        v8 = "Failed to create sharing session!";
        v9 = v7;
        v10 = 2;
        goto LABEL_8;
      }
    }

    return v4;
  }

  return 0;
}

- (void)cancelSharingInvitationWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  if ([(PKDASession *)self state]!= 2)
  {
    v8 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for cancel sharing operation", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  session = [(PKDASession *)self session];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKAppletSubcredentialSharingSession_cancelSharingInvitationWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79DC420;
  v12 = completionCopy;
  v10 = completionCopy;
  [session cancelSharingInvitation:identifierCopy completionHandler:v11];
}

void __88__PKAppletSubcredentialSharingSession_cancelSharingInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a2 error];
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to cancel sharing invite with error: %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)accountAttestionRequestForCredential:(id)credential withCompletion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      identifier = [credentialCopy identifier];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __91__PKAppletSubcredentialSharingSession_accountAttestionRequestForCredential_withCompletion___block_invoke;
      v14[3] = &unk_1E79DC448;
      v15 = credentialCopy;
      v16 = completionCopy;
      [session requestBindingAttestationDataForKeyWithIdentifier:identifier callback:v14];

      v10 = v15;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for accepting sharing operation", buf, 2u);
      }

      v12 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A278];
      v19[0] = @"Session not active";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v10];
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

void __91__PKAppletSubcredentialSharingSession_accountAttestionRequestForCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) identifier];
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get binding attestation request for credential (%@) with error: %@", &v11, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[PKAppletSubcredentialAccountAttestationRequest alloc] initWithRequestData:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setAccountAttestation:(id)attestation forCredential:(id)credential withCompletion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  credentialCopy = credential;
  attestationCopy = attestation;
  if ([(PKDASession *)self state]!= 2)
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for accepting sharing operation", buf, 2u);
    }

    if (completionCopy)
    {
      v12 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A278];
      v22[0] = @"Session not active";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];
      completionCopy[2](completionCopy, v14);
    }
  }

  session = [(PKDASession *)self session];
  identifier = [credentialCopy identifier];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PKAppletSubcredentialSharingSession_setAccountAttestation_forCredential_withCompletion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v19 = completionCopy;
  v17 = completionCopy;
  [session setBindingAttestation:attestationCopy forKeyWithIdentifier:identifier callback:v18];
}

uint64_t __90__PKAppletSubcredentialSharingSession_setAccountAttestation_forCredential_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)routingInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session readerInformationForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy completionHandler:handlerCopy];
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A278];
      v16[0] = @"Session not active";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];
      handlerCopy[2](handlerCopy, 0, v14);
    }
  }
}

- (void)getProductPlanIdentifierRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __131__PKAppletSubcredentialSharingSession_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke;
      v15[3] = &unk_1E79DC470;
      v16 = completionCopy;
      [session ppidRequestForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy completionHandler:v15];

      v12 = v16;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v12];
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }
}

void __131__PKAppletSubcredentialSharingSession_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke(uint64_t a1, PKSubcredentialEncryptedContainer *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v5];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPretrackRequestForKeyWithIdentifier:(id)identifier withCompletion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __93__PKAppletSubcredentialSharingSession_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke;
      v12[3] = &unk_1E79DC470;
      v13 = completionCopy;
      [session getPreTrackRequestForKeyWithIdentifier:identifierCopy callback:v12];

      v9 = v13;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A278];
      v15[0] = @"Session not active";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v10 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v9];
      (*(completionCopy + 2))(completionCopy, 0, v11);
    }
  }
}

void __93__PKAppletSubcredentialSharingSession_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke(uint64_t a1, PKSubcredentialEncryptedContainer *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v5];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)createInviteForShare:(id)share forCredential:(id)credential authorization:(id)authorization completion:(id)completion
{
  v63[1] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  credentialCopy = credential;
  authorizationCopy = authorization;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]!= 2)
    {
      v24 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for setting transport channel", buf, 2u);
      }

      v25 = MEMORY[0x1E696ABC0];
      v62 = *MEMORY[0x1E696A278];
      v63[0] = @"Session not active";
      sharedEntitlements = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      firstObject = [v25 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:sharedEntitlements];
      completionCopy[2](completionCopy, 0, firstObject);
      goto LABEL_42;
    }

    sharedEntitlements = [shareCopy sharedEntitlements];
    firstObject = [sharedEntitlements firstObject];
    if ([sharedEntitlements count] != 1)
    {
      v26 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Error: Car key shares should only have a single entitlement", buf, 2u);
      }

      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
      completionCopy[2](completionCopy, 0, v27);
      goto LABEL_41;
    }

    v46 = authorizationCopy;
    v47 = credentialCopy;
    carKeyEntitlementValue = [firstObject carKeyEntitlementValue];
    activationOptions = [shareCopy activationOptions];
    containsVehicleEnteredPin = [activationOptions containsVehicleEnteredPin];
    v18 = [activationOptions containsOptionOfType:3];
    v19 = [activationOptions optionOfType:4];
    value = [v19 value];

    if ((containsVehicleEnteredPin & 1) != 0 || value)
    {
      if ((containsVehicleEnteredPin | v18))
      {
        if (value)
        {
          v23 = PKLogFacilityTypeGetObject(0x17uLL);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *v60 = value;
            v28 = "Creating car key share with vehicle authenticated option and online sharing PIN: %{private}@";
            v29 = v23;
            v30 = 12;
LABEL_27:
            _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
          }

LABEL_28:
          v48 = 0;
          v42 = 1;
          goto LABEL_29;
        }

LABEL_25:
        v23 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v28 = "Creating car key share with vehicle authenticated option";
          v29 = v23;
          v30 = 2;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (value)
      {
        v23 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *v60 = value;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Creating car key share with online sharing PIN: %{private}@", buf, 0xCu);
        }

        v48 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v21 = [activationOptions optionOfType:1];
      value2 = [v21 value];

      v48 = value2;
      if (value2)
      {
        v23 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *v60 = v48;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Creating car key share with activation code: %{private}@", buf, 0xCu);
        }

LABEL_23:
        v42 = 0;
LABEL_29:

LABEL_30:
        v44 = value;
        recipientCapabilityRole = [firstObject recipientCapabilityRole];

        if (recipientCapabilityRole)
        {
          recipientCapabilityRole2 = [firstObject recipientCapabilityRole];
          unsignedIntValue = [recipientCapabilityRole2 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = PKPassEntitlementCapabilityRoleValueFrom([firstObject recipientShareability], objc_msgSend(firstObject, "recipientVisibility"), objc_msgSend(firstObject, "recipientManageability"), objc_msgSend(firstObject, "intraAccountSharingEnabled"), 0);
        }

        v45 = activationOptions;
        v34 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v60 = unsignedIntValue;
          *&v60[4] = 1024;
          *&v60[6] = unsignedIntValue;
          LOWORD(v61[0]) = 2112;
          *(v61 + 2) = firstObject;
          _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Created role '0x%04x' / '%hu' from: %@", buf, 0x18u);
        }

        v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
        credentialShares = [shareCopy credentialShares];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __99__PKAppletSubcredentialSharingSession_createInviteForShare_forCredential_authorization_completion___block_invoke;
        v52[3] = &unk_1E79DC498;
        v56 = carKeyEntitlementValue;
        v37 = shareCopy;
        v53 = v37;
        v58 = v42;
        v49 = v48;
        v54 = v49;
        v57 = unsignedIntValue;
        v38 = v35;
        v55 = v38;
        [credentialShares enumerateObjectsUsingBlock:v52];

        if ([v38 count])
        {
          session = [(PKDASession *)self session];
          credentialCopy = v47;
          identifier = [v47 identifier];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __99__PKAppletSubcredentialSharingSession_createInviteForShare_forCredential_authorization_completion___block_invoke_32;
          v50[3] = &unk_1E79C5440;
          v51 = completionCopy;
          authorizationCopy = v46;
          [session createSharingInvitationsForKeyIdentifier:identifier friendIdentifier:0 auth:v46 config:v38 completionHandler:v50];

          v41 = v51;
        }

        else
        {
          credentialCopy = v47;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v60 = v37;
            *&v60[8] = 2112;
            v61[0] = v47;
            _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Error: Unable to create DAKeySharingConfiguration from %@ for %@", buf, 0x16u);
          }

          v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
          completionCopy[2](completionCopy, 0, v41);
          authorizationCopy = v46;
        }

        v27 = v45;

LABEL_41:
LABEL_42:

        goto LABEL_43;
      }

      if (v18)
      {
        goto LABEL_25;
      }
    }

    v48 = 0;
    v42 = 0;
    goto LABEL_30;
  }

LABEL_43:
}

void __99__PKAppletSubcredentialSharingSession_createInviteForShare_forCredential_authorization_completion___block_invoke(uint64_t a1)
{
  v3 = objc_alloc(MEMORY[0x1E699A130]);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) recipientNickname];
  v6 = v5;
  if (!v5)
  {
    v7 = [*(a1 + 32) recipientHandle];
    v1 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = @"unknown";
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  v9 = [v3 initWithProfile:v4 displayName:v6 metaData:v8 targetDeviceType:255 enableVehiclePasscode:*(a1 + 66) maxRetriesForDevicePasscode:5 deviceEnteredPasscode:*(a1 + 40) proprietaryEntitlements:0];

  if (!v5)
  {
  }

  [v9 setKeyRole:*(a1 + 64)];
  [*(a1 + 48) safelyAddObject:v9];
}

- (void)setTransportChannelIdentifier:(id)identifier forCredential:(id)credential forCredentialShare:(id)share completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  credentialCopy = credential;
  shareCopy = share;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      identifier = [credentialCopy identifier];
      identifier2 = [shareCopy identifier];
      [session setMailboxIdentifier:identifierCopy forOwnerKeyIdentifier:identifier forInvitationIdentifier:identifier2 completionHandler:completionCopy];
    }

    else
    {
      v17 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for setting transport channel", v21, 2u);
      }

      v18 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v23[0] = @"Session not active";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v20 = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v19];
      completionCopy[2](completionCopy, v20);
    }
  }
}

- (void)startShareAcceptanceFlowWithInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session startShareAcceptanceFlowWithInvitation:invitationCopy fromMailboxIdentifier:identifierCopy completionHandler:completionCopy];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for setting transport channel", v16, 2u);
      }

      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v15 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v14];
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)acceptCrossPlatformInvitationWithIdentifier:(id)identifier transportChannelIdentifier:(id)channelIdentifier activationCode:(id)code encryptedProductPlanIdentifierContainer:(id)container completion:(id)completion
{
  v31[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  channelIdentifierCopy = channelIdentifier;
  codeCopy = code;
  containerCopy = container;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v17 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(containerCopy);
      if (v17)
      {
        v18 = v17;
        session = [(PKDASession *)self session];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __176__PKAppletSubcredentialSharingSession_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke;
        v25[3] = &unk_1E79CD608;
        v26 = completionCopy;
        [session acceptCrossPlatformInvitationWithIdentifier:identifierCopy passcode:codeCopy productPlanIdentifier:v18 completionHandler:v25];

        v20 = v26;
      }

      else
      {
        v22 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Missing daEncryptedProductPlanIdentifierContainer", buf, 2u);
        }

        v23 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A278];
        v29 = @"Missing daEncryptedProductPlanIdentifierContainer";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v24 = [v23 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v20];
        (*(completionCopy + 2))(completionCopy, 0, 0, v24);

        v18 = 0;
      }
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A278];
      v31[0] = @"Session not active";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v20 = [v21 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v18];
      (*(completionCopy + 2))(completionCopy, 0, 0, v20);
    }
  }
}

void __176__PKAppletSubcredentialSharingSession_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = [v3 genericData];
    v5 = [v4 friendKeyIdentifier];

    v6 = [v9 additionalData];
    v7 = [v6 sharingSessionUUID];

    v8 = [[PKAppletSubcredential alloc] initWithIdentifier:v5];
    [(PKAppletSubcredential *)v8 setSharingSessionIdentifier:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retryActivationCodeForCredentialIdentifier:(id)identifier activationCode:(id)code completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __108__PKAppletSubcredentialSharingSession_retryActivationCodeForCredentialIdentifier_activationCode_completion___block_invoke;
      v15[3] = &unk_1E79C4450;
      v16 = completionCopy;
      [session retryPasscode:codeCopy forKeyIdentifier:identifierCopy completionHandler:v15];

      v12 = v16;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v12];
      (*(completionCopy + 2))(completionCopy, v14);
    }
  }
}

- (void)acceptInvitationWithIdentifier:(id)identifier activationCode:(id)code completion:(id)completion
{
  identifierCopy = identifier;
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session acceptInvitationWithIdentifier:identifierCopy passcode:codeCopy completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)retryActivationCode:(id)code forInvitationIdentifier:(id)identifier completion:(id)completion
{
  codeCopy = code;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session retryPasscode:codeCopy forInvitationIdentifier:identifierCopy completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)handleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session handleRecipientMessage:messageCopy forInvitationIdentifier:identifierCopy completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)retryActivationCodeWithInvitationIdentifier:(id)identifier activationCode:(id)code completion:(id)completion
{
  identifierCopy = identifier;
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session retryPasscode:codeCopy forInvitationIdentifier:identifierCopy completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)setEncryptedProductPlanIdentifierContainer:(id)container forInvitationIdentifier:(id)identifier completion:(id)completion
{
  containerCopy = container;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v10 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(containerCopy);
      session = [(PKDASession *)self session];
      [session setProductPlanIdentifier:v10 forInvitationIdentifier:identifierCopy completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)createSilentInviteForSharingSessionIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifierCopy];
      session = [(PKDASession *)self session];
      [session createSilentSharingInvitationWithGroupIdentifier:v7 completionHandler:completionCopy];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)getSecondFactorRequestForConfigs:(id)configs completion:(id)completion
{
  configsCopy = configs;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __83__PKAppletSubcredentialSharingSession_getSecondFactorRequestForConfigs_completion___block_invoke;
      v9[3] = &unk_1E79C5440;
      v10 = completionCopy;
      [session getSecondFactorRequestForConfigs:configsCopy completionHandler:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __83__PKAppletSubcredentialSharingSession_getSecondFactorRequestForConfigs_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a2 pk_createArrayByApplyingBlock:&__block_literal_global_168];
    (*(*(a1 + 32) + 16))();
  }
}

PKSubcredentialEncryptedContainer *__83__PKAppletSubcredentialSharingSession_getSecondFactorRequestForConfigs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v2];

  return v3;
}

- (void)updateSharingAnalyticsWithConfig:(id)config completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      [session updateSharingAnalyticsWithConfig:configCopy completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

@end