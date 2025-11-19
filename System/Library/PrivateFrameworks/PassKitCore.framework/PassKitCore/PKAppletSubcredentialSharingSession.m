@interface PKAppletSubcredentialSharingSession
+ (id)createPendingSessionWithDelegate:(id)a3;
+ (id)createSessionWithDelegate:(id)a3;
- (BOOL)startSession;
- (void)acceptCrossPlatformInvitationWithIdentifier:(id)a3 transportChannelIdentifier:(id)a4 activationCode:(id)a5 encryptedProductPlanIdentifierContainer:(id)a6 completion:(id)a7;
- (void)acceptInvitationWithIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)accountAttestionRequestForCredential:(id)a3 withCompletion:(id)a4;
- (void)cancelSharingInvitationWithIdentifier:(id)a3 completion:(id)a4;
- (void)createInviteForShare:(id)a3 forCredential:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)createSilentInviteForSharingSessionIdentifier:(id)a3 completion:(id)a4;
- (void)getPretrackRequestForKeyWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)getProductPlanIdentifierRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5;
- (void)getSecondFactorRequestForConfigs:(id)a3 completion:(id)a4;
- (void)handleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)retryActivationCode:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)retryActivationCodeForCredentialIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)retryActivationCodeWithInvitationIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)routingInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setAccountAttestation:(id)a3 forCredential:(id)a4 withCompletion:(id)a5;
- (void)setEncryptedProductPlanIdentifierContainer:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)setTransportChannelIdentifier:(id)a3 forCredential:(id)a4 forCredentialShare:(id)a5 completion:(id)a6;
- (void)startShareAcceptanceFlowWithInvitation:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5;
- (void)updateSharingAnalyticsWithConfig:(id)a3 completion:(id)a4;
@end

@implementation PKAppletSubcredentialSharingSession

+ (id)createSessionWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [(PKDASession *)[PKAppletSubcredentialSharingSession alloc] initWithDelegate:v3];

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

+ (id)createPendingSessionWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [(PKDASession *)[PKAppletSubcredentialSharingSession alloc] initWithDelegate:v3];

  [(PKDASession *)v4 setState:0];

  return v4;
}

- (BOOL)startSession
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PKDASession *)self session];

  if (!v3)
  {
    v5 = [MEMORY[0x1E699A138] sharedManager];
    v6 = [v5 createSharingSessionWithDelegate:self];

    v4 = v6 != 0;
    if (v6)
    {
      [(PKDASession *)self setSession:v6];
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = self;
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

- (void)cancelSharingInvitationWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(PKDASession *)self state]!= 2)
  {
    v8 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for cancel sharing operation", buf, 2u);
    }

    v6[2](v6, 0);
  }

  v9 = [(PKDASession *)self session];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKAppletSubcredentialSharingSession_cancelSharingInvitationWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79DC420;
  v12 = v6;
  v10 = v6;
  [v9 cancelSharingInvitation:v7 completionHandler:v11];
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

- (void)accountAttestionRequestForCredential:(id)a3 withCompletion:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [(PKDASession *)self session];
      v9 = [v6 identifier];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __91__PKAppletSubcredentialSharingSession_accountAttestionRequestForCredential_withCompletion___block_invoke;
      v14[3] = &unk_1E79DC448;
      v15 = v6;
      v16 = v7;
      [v8 requestBindingAttestationDataForKeyWithIdentifier:v9 callback:v14];

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
      (*(v7 + 2))(v7, 0, v13);
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

- (void)setAccountAttestation:(id)a3 forCredential:(id)a4 withCompletion:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([(PKDASession *)self state]!= 2)
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for accepting sharing operation", buf, 2u);
    }

    if (v8)
    {
      v12 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A278];
      v22[0] = @"Session not active";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];
      v8[2](v8, v14);
    }
  }

  v15 = [(PKDASession *)self session];
  v16 = [v9 identifier];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PKAppletSubcredentialSharingSession_setAccountAttestation_forCredential_withCompletion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v19 = v8;
  v17 = v8;
  [v15 setBindingAttestation:v10 forKeyWithIdentifier:v16 callback:v18];
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

- (void)routingInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v11 = [(PKDASession *)self session];
      [v11 readerInformationForInvitationWithIdentifier:v8 fromMailboxIdentifier:v9 completionHandler:v10];
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A278];
      v16[0] = @"Session not active";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];
      v10[2](v10, 0, v14);
    }
  }
}

- (void)getProductPlanIdentifierRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v11 = [(PKDASession *)self session];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __131__PKAppletSubcredentialSharingSession_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke;
      v15[3] = &unk_1E79DC470;
      v16 = v10;
      [v11 ppidRequestForInvitationWithIdentifier:v8 fromMailboxIdentifier:v9 completionHandler:v15];

      v12 = v16;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v12];
      (*(v10 + 2))(v10, 0, v14);
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

- (void)getPretrackRequestForKeyWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [(PKDASession *)self session];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __93__PKAppletSubcredentialSharingSession_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke;
      v12[3] = &unk_1E79DC470;
      v13 = v7;
      [v8 getPreTrackRequestForKeyWithIdentifier:v6 callback:v12];

      v9 = v13;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A278];
      v15[0] = @"Session not active";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v10 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v9];
      (*(v7 + 2))(v7, 0, v11);
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

- (void)createInviteForShare:(id)a3 forCredential:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v63[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
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
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v15 = [v25 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v14];
      v13[2](v13, 0, v15);
      goto LABEL_42;
    }

    v14 = [v10 sharedEntitlements];
    v15 = [v14 firstObject];
    if ([v14 count] != 1)
    {
      v26 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Error: Car key shares should only have a single entitlement", buf, 2u);
      }

      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
      v13[2](v13, 0, v27);
      goto LABEL_41;
    }

    v46 = v12;
    v47 = v11;
    v43 = [v15 carKeyEntitlementValue];
    v16 = [v10 activationOptions];
    v17 = [v16 containsVehicleEnteredPin];
    v18 = [v16 containsOptionOfType:3];
    v19 = [v16 optionOfType:4];
    v20 = [v19 value];

    if ((v17 & 1) != 0 || v20)
    {
      if ((v17 | v18))
      {
        if (v20)
        {
          v23 = PKLogFacilityTypeGetObject(0x17uLL);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *v60 = v20;
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

      if (v20)
      {
        v23 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *v60 = v20;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Creating car key share with online sharing PIN: %{private}@", buf, 0xCu);
        }

        v48 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v21 = [v16 optionOfType:1];
      v22 = [v21 value];

      v48 = v22;
      if (v22)
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
        v44 = v20;
        v31 = [v15 recipientCapabilityRole];

        if (v31)
        {
          v32 = [v15 recipientCapabilityRole];
          v33 = [v32 unsignedIntValue];
        }

        else
        {
          v33 = PKPassEntitlementCapabilityRoleValueFrom([v15 recipientShareability], objc_msgSend(v15, "recipientVisibility"), objc_msgSend(v15, "recipientManageability"), objc_msgSend(v15, "intraAccountSharingEnabled"), 0);
        }

        v45 = v16;
        v34 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v60 = v33;
          *&v60[4] = 1024;
          *&v60[6] = v33;
          LOWORD(v61[0]) = 2112;
          *(v61 + 2) = v15;
          _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Created role '0x%04x' / '%hu' from: %@", buf, 0x18u);
        }

        v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v36 = [v10 credentialShares];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __99__PKAppletSubcredentialSharingSession_createInviteForShare_forCredential_authorization_completion___block_invoke;
        v52[3] = &unk_1E79DC498;
        v56 = v43;
        v37 = v10;
        v53 = v37;
        v58 = v42;
        v49 = v48;
        v54 = v49;
        v57 = v33;
        v38 = v35;
        v55 = v38;
        [v36 enumerateObjectsUsingBlock:v52];

        if ([v38 count])
        {
          v39 = [(PKDASession *)self session];
          v11 = v47;
          v40 = [v47 identifier];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __99__PKAppletSubcredentialSharingSession_createInviteForShare_forCredential_authorization_completion___block_invoke_32;
          v50[3] = &unk_1E79C5440;
          v51 = v13;
          v12 = v46;
          [v39 createSharingInvitationsForKeyIdentifier:v40 friendIdentifier:0 auth:v46 config:v38 completionHandler:v50];

          v41 = v51;
        }

        else
        {
          v11 = v47;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v60 = v37;
            *&v60[8] = 2112;
            v61[0] = v47;
            _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Error: Unable to create DAKeySharingConfiguration from %@ for %@", buf, 0x16u);
          }

          v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
          v13[2](v13, 0, v41);
          v12 = v46;
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

- (void)setTransportChannelIdentifier:(id)a3 forCredential:(id)a4 forCredentialShare:(id)a5 completion:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v14 = [(PKDASession *)self session];
      v15 = [v11 identifier];
      v16 = [v12 identifier];
      [v14 setMailboxIdentifier:v10 forOwnerKeyIdentifier:v15 forInvitationIdentifier:v16 completionHandler:v13];
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
      v13[2](v13, v20);
    }
  }
}

- (void)startShareAcceptanceFlowWithInvitation:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v11 = [(PKDASession *)self session];
      [v11 startShareAcceptanceFlowWithInvitation:v8 fromMailboxIdentifier:v9 completionHandler:v10];
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
      v10[2](v10, v15);
    }
  }
}

- (void)acceptCrossPlatformInvitationWithIdentifier:(id)a3 transportChannelIdentifier:(id)a4 activationCode:(id)a5 encryptedProductPlanIdentifierContainer:(id)a6 completion:(id)a7
{
  v31[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v17 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(v15);
      if (v17)
      {
        v18 = v17;
        v19 = [(PKDASession *)self session];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __176__PKAppletSubcredentialSharingSession_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke;
        v25[3] = &unk_1E79CD608;
        v26 = v16;
        [v19 acceptCrossPlatformInvitationWithIdentifier:v12 passcode:v14 productPlanIdentifier:v18 completionHandler:v25];

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
        (*(v16 + 2))(v16, 0, 0, v24);

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
      (*(v16 + 2))(v16, 0, 0, v20);
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

- (void)retryActivationCodeForCredentialIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v11 = [(PKDASession *)self session];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __108__PKAppletSubcredentialSharingSession_retryActivationCodeForCredentialIdentifier_activationCode_completion___block_invoke;
      v15[3] = &unk_1E79C4450;
      v16 = v10;
      [v11 retryPasscode:v9 forKeyIdentifier:v8 completionHandler:v15];

      v12 = v16;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v12];
      (*(v10 + 2))(v10, v14);
    }
  }
}

- (void)acceptInvitationWithIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v10 = [(PKDASession *)self session];
      [v10 acceptInvitationWithIdentifier:v11 passcode:v8 completionHandler:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)retryActivationCode:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v10 = [(PKDASession *)self session];
      [v10 retryPasscode:v11 forInvitationIdentifier:v8 completionHandler:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)handleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v10 = [(PKDASession *)self session];
      [v10 handleRecipientMessage:v11 forInvitationIdentifier:v8 completionHandler:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)retryActivationCodeWithInvitationIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v10 = [(PKDASession *)self session];
      [v10 retryPasscode:v8 forInvitationIdentifier:v11 completionHandler:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)setEncryptedProductPlanIdentifierContainer:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v10 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(v12);
      v11 = [(PKDASession *)self session];
      [v11 setProductPlanIdentifier:v10 forInvitationIdentifier:v8 completion:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)createSilentInviteForSharingSessionIdentifier:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
      v8 = [(PKDASession *)self session];
      [v8 createSilentSharingInvitationWithGroupIdentifier:v7 completionHandler:v6];
    }

    else
    {
      (*(v6 + 2))(v6, 0, 0);
    }
  }
}

- (void)getSecondFactorRequestForConfigs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [(PKDASession *)self session];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __83__PKAppletSubcredentialSharingSession_getSecondFactorRequestForConfigs_completion___block_invoke;
      v9[3] = &unk_1E79C5440;
      v10 = v7;
      [v8 getSecondFactorRequestForConfigs:v6 completionHandler:v9];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
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

- (void)updateSharingAnalyticsWithConfig:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v7 = [(PKDASession *)self session];
      [v7 updateSharingAnalyticsWithConfig:v8 completionHandler:v6];
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

@end