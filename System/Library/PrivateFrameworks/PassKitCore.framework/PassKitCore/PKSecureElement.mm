@interface PKSecureElement
+ (BOOL)hardwareSupportsExpressForAutomaticSelectionTechnologyType:(int64_t)type outError:(id *)error;
+ (BOOL)hardwareSupportsExpressMode:(id)mode;
+ (BOOL)isInFailForward;
+ (BOOL)supportsExpressForAutomaticSelectionTechnologyType:(int64_t)type byHardware:(BOOL *)hardware outError:(id *)error;
+ (BOOL)supportsExpressMode:(id)mode byHardware:(BOOL *)hardware;
+ (id)primarySecureElementIdentifier;
+ (id)secureElementIdentifiers;
+ (id)sharedSecureElement;
+ (id)signChallenge:(id)challenge signatureEntanglementMode:(unint64_t)mode session:(id)session signatureInfo:(id *)info error:(id *)error;
+ (void)accessSecureElementManagerSessionWithSessionExchangeToken:(id)token callbackQueue:(id)queue handler:(id)handler;
+ (void)accessSecureElementManagerSessionWithSessionExchangeToken:(id)token handler:(id)handler;
- (BOOL)hasRegistrationInformation;
- (BOOL)isDeletingAllApplets;
- (BOOL)isInRestrictedMode;
- (BOOL)isProductionSigned;
- (BOOL)queueConnectionToServerForAppletIdentifiers:(id)identifiers;
- (BOOL)queueConnectionToServerWithPushTopic:(id)topic;
- (BOOL)setRegistrationInformation:(id)information primaryRegionTopic:(id)topic;
- (BOOL)supportsExpressModeForExpressPassType:(int64_t)type;
- (NSArray)secureElementIdentifiers;
- (NSString)primaryRegionTopic;
- (NSString)primarySecureElementIdentifier;
- (PKSecureElement)init;
- (id)_allAppletsWithSession:(id)session;
- (id)_appletsForAIDs:(id)ds withSession:(id)session;
- (id)secureElementSessionPostlude;
- (id)secureElementSessionPrelude;
- (unint64_t)ownershipStateForCurrentUser;
- (void)SEPPairingInfoWithCompletion:(id)completion;
- (void)_credentialsForAIDs:(id)ds session:(id)session completion:(id)completion;
- (void)_executeSecureElementAsyncSessionHandlersWithSession:(id)session completion:(id)completion;
- (void)_executeSecureElementSessionHandlersWithPriority:(BOOL)priority session:(id)session;
- (void)_registerPairingChangeHandler;
- (void)_setIsInRestrictedMode:(BOOL)mode;
- (void)_startSecureElementManagerSessionWithType:(int64_t)type handler:(id)handler;
- (void)_updateHardwareManagerListener;
- (void)accessAsyncSecureElementManagerSessionWithHandler:(id)handler;
- (void)accessPrioritySecureElementManagerSessionWithHandler:(id)handler;
- (void)accessSecureElementManagerSessionWithHandler:(id)handler;
- (void)allAppletsAndCredentialsWithCompletion:(id)completion;
- (void)allAppletsWithCompletion:(id)completion;
- (void)appletCredentialsForAIDs:(id)ds completion:(id)completion;
- (void)appletWithIdentifier:(id)identifier completion:(id)completion;
- (void)areAnyAppletsSuspendedWithCompletionHandler:(id)handler;
- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
- (void)checkMultipleFidoKeyPresenceForFIDOProfiles:(id)profiles completion:(id)completion;
- (void)connectToServerWithPushTopic:(id)topic performSECleanup:(BOOL)cleanup completion:(id)completion;
- (void)consistencyCheckDeviceCredentialsWithCompletion:(id)completion;
- (void)contactlessPaymentPassesAvailableDidChange;
- (void)createAliroHomeKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key homeIdentifier:(id)homeIdentifier withCompletion:(id)completion;
- (void)createAliroHydraKeyWithServerParameters:(id)parameters withCompletion:(id)completion;
- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion;
- (void)dealloc;
- (void)deleteFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
- (void)findFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge completion:(id)completion;
- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion;
- (void)generateTransactionKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key withCompletion:(id)completion;
- (void)hasLongTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier completion:(id)completion;
- (void)initializeSecureElementIfNecessaryWithHandler:(id)handler;
- (void)initializeSecureElementQueuingServerConnection:(BOOL)connection withCompletion:(id)completion;
- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion;
- (void)longTermPrivacyKeysForCredentialGroupIdentifier:(id)identifier privacyKeyIdentifier:(id)keyIdentifier completion:(id)completion;
- (void)markAllAppletsForDeletionWithExternalAuthorization:(id)authorization completion:(id)completion;
- (void)markAllAppletsForDeletionWithExternalAuthorization:(id)authorization obliterate:(BOOL)obliterate completion:(id)completion;
- (void)markAppletWithIdentifierForDeletion:(id)deletion completion:(id)completion;
- (void)markAppletsWithIdentifiersForDeletion:(id)deletion completion:(id)completion;
- (void)pairingStateWithCompletion:(id)completion;
- (void)peerPaymentEnrollmentDataWithAlternateDSID:(id)d completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)remoteAdminCleanupProgress:(double)progress;
- (void)secureElement:(id)element didChangeRestrictedMode:(BOOL)mode;
- (void)setSecureElementSessionPostlude:(id)postlude;
- (void)setSecureElementSessionPrelude:(id)prelude;
- (void)signChallenge:(id)challenge forPaymentApplication:(id)application withCompletion:(id)completion;
- (void)signChallenge:(id)challenge signatureEntanglementMode:(unint64_t)mode completion:(id)completion;
- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion;
- (void)signatureForAuthToken:(id)token completion:(id)completion;
- (void)signedPlatformDataWithCompletion:(id)completion;
- (void)stateInformationWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateAliroCredentialDocumentStatusWithSubcredentialIdentifier:(id)identifier documentType:(unint64_t)type isDocumentPresent:(BOOL)present signedDate:(id)date withCompletion:(id)completion;
- (void)verifySignedChallenge:(id)challenge forRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
@end

@implementation PKSecureElement

+ (BOOL)isInFailForward
{
  if (qword_1ED6D19F8 != -1)
  {
    dispatch_once(&qword_1ED6D19F8, &__block_literal_global_358);
  }

  return _MergedGlobals_216;
}

- (NSString)primarySecureElementIdentifier
{
  embeddedSecureElementSerialNumber = [PKGetClassNFSecureElement() embeddedSecureElementSerialNumber];
  if (![embeddedSecureElementSerialNumber length] || (NFSecureElementSerialNumberToString(), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (PKSecureElementIsAvailable())
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "+[NFSecureElement embeddedSecureElementSerialNumber] not available. Please file a radar.", v6, 2u);
      }
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)secureElementIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  primarySecureElementIdentifier = [(PKSecureElement *)self primarySecureElementIdentifier];
  v3 = primarySecureElementIdentifier;
  if (primarySecureElementIdentifier)
  {
    v6[0] = primarySecureElementIdentifier;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __34__PKSecureElement_isInFailForward__block_invoke()
{
  v28 = *MEMORY[0x1E69E9840];
  _MergedGlobals_216 = PKSimulateFailForward();
  if ((_MergedGlobals_216 & 1) == 0)
  {
    if (PKSecureElementIsAvailable())
    {
      v0 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    }

    else
    {
      v0 = 0;
    }

    v22 = 0;
    v1 = [v0 secureElementsWithError:&v22];
    v2 = v22;
    if (v2)
    {
      v3 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [v2 description];
        *buf = 138543362;
        v24 = v4;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKSecureElement in fail forward: accessing secure elements failed with error: %{public}@", buf, 0xCu);
      }

      _MergedGlobals_216 = 1;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = v1;
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v27 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v18 + 1) + 8 * i) info];
            v11 = v10;
            if (v10)
            {
              v12 = [v10 OSMode] == 2 ? 0 : objc_msgSend(v11, "restrictedMode") ^ 1;
              v13 = [v11 jcopTooOld];
              v14 = v13;
              if ((v12 & 1) != 0 || v13)
              {
                v15 = PKLogFacilityTypeGetObject(7uLL);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = @"NO";
                  if (v12)
                  {
                    v17 = @"YES";
                  }

                  else
                  {
                    v17 = @"NO";
                  }

                  if (v14)
                  {
                    v16 = @"YES";
                  }

                  *buf = 138543618;
                  v24 = v17;
                  v25 = 2114;
                  v26 = v16;
                  _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKSecureElement in fail forward: SENotAvailable: %{public}@, jcopTooOld: %{public}@", buf, 0x16u);
                }

                _MergedGlobals_216 = 1;
                goto LABEL_31;
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v18 objects:v27 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_31:
    }
  }
}

- (PKSecureElement)init
{
  v26.receiver = self;
  v26.super_class = PKSecureElement;
  v2 = [(PKSecureElement *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_isInRestrictedModeTimestamp = nan(0);
    if (PKSecureElementIsAvailable())
    {
      embeddedSecureElement = [PKGetClassNFSecureElement() embeddedSecureElement];
      secureElement = v3->_secureElement;
      v3->_secureElement = embeddedSecureElement;

      if (!v3->_secureElement)
      {
        v6 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "+[NFSecureElement embeddedSecureElement] returned nil.", v25, 2u);
        }
      }
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sessionAccessHandlers = v3->_sessionAccessHandlers;
    v3->_sessionAccessHandlers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    prioritySessionAccessHandlers = v3->_prioritySessionAccessHandlers;
    v3->_prioritySessionAccessHandlers = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    asyncSessionAccessHandlers = v3->_asyncSessionAccessHandlers;
    v3->_asyncSessionAccessHandlers = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.passkit.secureelement.session", v13);
    sessionQueue = v3->_sessionQueue;
    v3->_sessionQueue = v14;

    v3->_deletingAllAppletsPropertyLock._os_unfair_lock_opaque = 0;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.passkit.secureelement.deletingallapplets.timer", v16);
    deletingAllAppletsTimerQueue = v3->_deletingAllAppletsTimerQueue;
    v3->_deletingAllAppletsTimerQueue = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.passkit.secureelement.reply", v19);
    replyQueue = v3->_replyQueue;
    v3->_replyQueue = v20;

    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v3->_observers;
    v3->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v3->_observersLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

+ (id)secureElementIdentifiers
{
  if (qword_1ED6D1A18 != -1)
  {
    dispatch_once(&qword_1ED6D1A18, &__block_literal_global_368);
  }

  v3 = qword_1ED6D1A10;

  return v3;
}

- (void)dealloc
{
  v37 = *MEMORY[0x1E69E9840];
  if (self->_registeredForHardwareUpdates)
  {
    SharedHardwareManagerEventListenerRemove(self);
  }

  v3 = [(NSMutableArray *)self->_sessionAccessHandlers copy];
  [(NSMutableArray *)self->_sessionAccessHandlers removeAllObjects];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v30 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v9 = [(NSMutableArray *)self->_prioritySessionAccessHandlers copy];
  [(NSMutableArray *)self->_prioritySessionAccessHandlers removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v26 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v12);
  }

  v15 = [(NSMutableArray *)self->_asyncSessionAccessHandlers copy];
  [(NSMutableArray *)self->_asyncSessionAccessHandlers removeAllObjects];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v22 + 1) + 8 * v20++) + 16))();
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21.receiver = self;
  v21.super_class = PKSecureElement;
  [(PKSecureElement *)&v21 dealloc];
}

+ (id)sharedSecureElement
{
  os_unfair_lock_lock(&stru_1ED6D19E4);
  WeakRetained = objc_loadWeakRetained(&qword_1ED6D19F0);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(PKSecureElement);
    objc_storeWeak(&qword_1ED6D19F0, WeakRetained);
  }

  os_unfair_lock_unlock(&stru_1ED6D19E4);

  return WeakRetained;
}

+ (void)accessSecureElementManagerSessionWithSessionExchangeToken:(id)token handler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  [objc_opt_class() accessSecureElementManagerSessionWithSessionExchangeToken:tokenCopy callbackQueue:0 handler:handlerCopy];
}

+ (void)accessSecureElementManagerSessionWithSessionExchangeToken:(id)token callbackQueue:(id)queue handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (handlerCopy)
  {
    if (tokenCopy)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __99__PKSecureElement_accessSecureElementManagerSessionWithSessionExchangeToken_callbackQueue_handler___block_invoke;
      aBlock[3] = &unk_1E79D03B0;
      v22 = handlerCopy;
      v11 = _Block_copy(aBlock);
      if (PKSecureElementIsAvailable())
      {
        pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
      }

      else
      {
        pKGetClassNFHardwareManager() = 0;
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __99__PKSecureElement_accessSecureElementManagerSessionWithSessionExchangeToken_callbackQueue_handler___block_invoke_242;
      v18[3] = &unk_1E79D03D8;
      v19 = queueCopy;
      v20 = v11;
      v13 = v11;
      v14 = [pKGetClassNFHardwareManager() startSecureElementManagerSession:v18];
      PKGetClassNFSession();
      if (objc_opt_isKindOfClass())
      {
        if ([v14 isActive])
        {
          goto LABEL_16;
        }

        v15 = [v14 activateWithToken:tokenCopy];
        if (!v15)
        {
          goto LABEL_16;
        }

        v16 = v15;
        v17 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement: Failed to activate session with exchange token %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKSecureElement: Session handle is not an NFSession object", buf, 2u);
        }
      }

      [v14 endSession];
LABEL_16:

      goto LABEL_17;
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_17:
}

void __99__PKSecureElement_accessSecureElementManagerSessionWithSessionExchangeToken_callbackQueue_handler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = v5;
  if (v5)
  {
    v4 = [v5 state] == 2;
    v3 = v5;
    if (!v4)
    {
      [v5 endSessionWithCompletion:&__block_literal_global_240_1];
      v3 = v5;
    }
  }
}

void __99__PKSecureElement_accessSecureElementManagerSessionWithSessionExchangeToken_callbackQueue_handler___block_invoke_2()
{
  v0 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_DEFAULT, "PKSecureElement: ended secure element manager session.", v1, 2u);
  }
}

void __99__PKSecureElement_accessSecureElementManagerSessionWithSessionExchangeToken_callbackQueue_handler___block_invoke_242(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElement: startSecureElementManagerSession finished, error: %@", buf, 0xCu);
  }

  if (v6)
  {

    v5 = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PKSecureElement_accessSecureElementManagerSessionWithSessionExchangeToken_callbackQueue_handler___block_invoke_243;
    v9[3] = &unk_1E79C44A0;
    v11 = *(a1 + 40);
    v10 = v5;
    dispatch_async(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)accessSecureElementManagerSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKSecureElement_accessSecureElementManagerSessionWithHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(sessionQueue, v7);
}

void __64__PKSecureElement_accessSecureElementManagerSessionWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _Block_copy(*(a1 + 40));
  [v1 _startSecureElementManagerSessionWithType:0 handler:v2];
}

- (void)accessPrioritySecureElementManagerSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKSecureElement_accessPrioritySecureElementManagerSessionWithHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(sessionQueue, v7);
}

void __72__PKSecureElement_accessPrioritySecureElementManagerSessionWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _Block_copy(*(a1 + 40));
  [v1 _startSecureElementManagerSessionWithType:1 handler:v2];
}

- (void)accessAsyncSecureElementManagerSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKSecureElement_accessAsyncSecureElementManagerSessionWithHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(sessionQueue, v7);
}

void __69__PKSecureElement_accessAsyncSecureElementManagerSessionWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _Block_copy(*(a1 + 40));
  [v1 _startSecureElementManagerSessionWithType:2 handler:v2];
}

- (void)_startSecureElementManagerSessionWithType:(int64_t)type handler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    if (type > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = &self->_startingSession + type;
      v9 = (&self->_sessionAccessHandlers)[type];
      v10 = _Block_copy(handlerCopy);
      [(NSMutableArray *)v9 addObject:v10];
    }

    if (*v8)
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        selfCopy2 = self;
        v32 = 2048;
        typeCopy = type;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p): session of type %ld is already starting - coalescing.", buf, 0x16u);
      }
    }

    else
    {
      sessionCounter = self->_sessionCounter;
      self->_sessionCounter = sessionCounter + 1;
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        selfCopy2 = self;
        v32 = 2048;
        typeCopy = sessionCounter;
        v34 = 2048;
        typeCopy2 = type;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:%lu): starting session with type %ld.", buf, 0x20u);
      }

      *v8 = 1;
      secureElementSessionPrelude = self->_secureElementSessionPrelude;
      if (secureElementSessionPrelude)
      {
        secureElementSessionPrelude[2]();
      }

      v15 = [self->_secureElementSessionPostlude copy];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke;
      aBlock[3] = &unk_1E79D0400;
      v29 = sessionCounter;
      aBlock[4] = self;
      v28 = v15;
      v11 = v15;
      v16 = _Block_copy(aBlock);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_247;
      v23[3] = &unk_1E79D0450;
      v24 = v16;
      typeCopy3 = type;
      v26 = sessionCounter;
      v23[4] = self;
      v17 = v16;
      v18 = _Block_copy(v23);
      kdebug_trace();
      if (PKSecureElementIsAvailable() && ([PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v20 = v19;
        if (type == 1)
        {
          v21 = [v19 startSecureElementManagerSessionWithPriority:v18];
        }

        else
        {
          v22 = [v19 startSecureElementManagerSession:v18];
        }
      }

      else
      {
        (*(v18 + 2))(v18, 0, 0);
      }
    }
  }
}

void __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      *buf = 134218496;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:%lu:session/%p): ending session.", buf, 0x20u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_245;
    v10[3] = &unk_1E79C46F8;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v12 = v7;
    v10[4] = v8;
    v13 = *(a1 + 48);
    v11 = v3;
    [v11 endSessionWithCompletion:v10];
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
      kdebug_trace();
    }
  }
}

uint64_t __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_245(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 134218496;
    v9 = v5;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:%lu:session/%p): ended session.", &v8, 0x20u);
  }

  return kdebug_trace();
}

void __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_247(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_2;
  v12[3] = &unk_1E79D0428;
  v12[4] = v7;
  v13 = v6;
  v9 = *(a1 + 40);
  v16 = *(a1 + 48);
  v14 = v5;
  v17 = *(a1 + 56);
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

void __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(a1 + 32) + v2 + 89);
  }

  if ((*v3 & 1) == 0)
  {
    __break(1u);
  }

  *v3 = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_6:
    v5 = [v4 code];
    v6 = PKLogFacilityTypeGetObject(7uLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 12)
    {
      if (v7)
      {
        v8 = *(a1 + 72);
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        *buf = 134218498;
        v25 = v9;
        v26 = 2048;
        v27 = v8;
        v28 = 2112;
        v29 = v10;
        v11 = "PKSecureElement (%p:%lu): failed to start session: %@. SE sessions can only be started from Wallet while it is active. It is preferred to start an SE session from passd.";
LABEL_11:
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v11, buf, 0x20u);
      }
    }

    else if (v7)
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 134218498;
      v25 = v13;
      v26 = 2048;
      v27 = v12;
      v28 = 2112;
      v29 = v14;
      v11 = "PKSecureElement (%p:%lu): failed to start session: %@.";
      goto LABEL_11;
    }

    v15 = 0;
    goto LABEL_13;
  }

  v18 = *(a1 + 48);
  if (!v18)
  {
    v4 = *(a1 + 40);
    goto LABEL_6;
  }

  v15 = v18;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 72);
    *buf = 134218496;
    v25 = v19;
    v26 = 2048;
    v27 = v20;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:%lu:session/%p): started session.", buf, 0x20u);
  }

LABEL_13:

  v16 = *(a1 + 64);
  v17 = *(a1 + 32);
  if (v16 == 2)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__PKSecureElement__startSecureElementManagerSessionWithType_handler___block_invoke_248;
    v21[3] = &unk_1E79C44A0;
    v23 = *(a1 + 56);
    v22 = *(a1 + 48);
    [v17 _executeSecureElementAsyncSessionHandlersWithSession:v15 completion:v21];
  }

  else
  {
    [*(a1 + 32) _executeSecureElementSessionHandlersWithPriority:v16 == 1 session:v15];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_executeSecureElementSessionHandlersWithPriority:(BOOL)priority session:(id)session
{
  priorityCopy = priority;
  v29 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (priorityCopy)
  {
    v7 = 104;
  }

  else
  {
    v7 = 96;
  }

  v8 = [*(&self->super.isa + v7) copy];
  selfCopy = self;
  [*(&self->super.isa + v7) removeAllObjects];
  v10 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    selfCopy2 = self;
    v25 = 2048;
    v26 = sessionCopy;
    v27 = 2048;
    v28 = [v8 count];
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): starting to execute %lu session handlers.", buf, 0x20u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          selfCopy2 = selfCopy;
          v25 = 2048;
          v26 = sessionCopy;
          v27 = 2048;
          v28 = v14;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): executing session handler %lu.", buf, 0x20u);
        }

        (*(v17 + 16))(v17, sessionCopy);
        ++v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)_executeSecureElementAsyncSessionHandlersWithSession:(id)session completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  completionCopy = completion;
  v6 = [(NSMutableArray *)self->_asyncSessionAccessHandlers copy];
  [(NSMutableArray *)self->_asyncSessionAccessHandlers removeAllObjects];
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    selfCopy = self;
    v35 = 2048;
    v36 = sessionCopy;
    v37 = 2048;
    v38 = [v6 count];
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): starting to execute %lu async session handlers.", buf, 0x20u);
  }

  v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __83__PKSecureElement__executeSecureElementAsyncSessionHandlersWithSession_completion___block_invoke;
        v24[3] = &unk_1E79D0478;
        v24[4] = self;
        v15 = sessionCopy;
        v26 = v14;
        v27 = v11;
        v25 = v15;
        [(PKAsyncUnaryOperationComposer *)v8 addOperation:v24];
        ++v11;

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  null = [MEMORY[0x1E695DFB0] null];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__PKSecureElement__executeSecureElementAsyncSessionHandlersWithSession_completion___block_invoke_2;
  v22[3] = &unk_1E79D04A0;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = [(PKAsyncUnaryOperationComposer *)v8 evaluateWithInput:null completion:v22];
}

void __83__PKSecureElement__executeSecureElementAsyncSessionHandlersWithSession_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[7];
    *buf = 134218496;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): executing async session handler %lu.", buf, 0x20u);
  }

  v14 = a1 + 5;
  v12 = a1[5];
  v13 = v14[1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__PKSecureElement__executeSecureElementAsyncSessionHandlersWithSession_completion___block_invoke_250;
  v18[3] = &unk_1E79C44A0;
  v19 = v6;
  v20 = v7;
  v15 = *(v13 + 16);
  v16 = v6;
  v17 = v7;
  v15(v13, v12, v18);
}

uint64_t __83__PKSecureElement__executeSecureElementAsyncSessionHandlersWithSession_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)contactlessPaymentPassesAvailableDidChange
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Contactless Payment passes available did change", v4, 2u);
  }

  os_unfair_lock_lock(&self->_observersLock);
  [(PKSecureElement *)self _updateHardwareManagerListener];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_updateHardwareManagerListener
{
  v3 = [(NSHashTable *)self->_observers count];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKSecureElement__updateHardwareManagerListener__block_invoke;
  v5[3] = &unk_1E79CAED8;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(sessionQueue, v5);
}

void __49__PKSecureElement__updateHardwareManagerListener__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40) && PDContactlessPaymentPassesAvailable() && PKSecureElementIsAvailable() != 0;
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 132);
    LODWORD(v8) = 67109376;
    HIDWORD(v8) = v4;
    LOWORD(v9) = 1024;
    *(&v9 + 2) = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Updating hardware listener from %d to %d", &v8, 0xEu);
  }

  v5 = *(a1 + 32);
  if (v5[132] == !v2)
  {
    if (v2)
    {
      v6 = v5;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __SharedHardwareManagerEventListenerAdd_block_invoke;
      v11 = &unk_1E79D0940;
      v12 = v6;
      v7 = v6;
      _SharedHardwareManagerEventListenerAccess(1, &v8);
    }

    else
    {
      SharedHardwareManagerEventListenerRemove(v5);
    }

    *(*(a1 + 32) + 132) = v2;
  }
}

- (void)secureElement:(id)element didChangeRestrictedMode:(BOOL)mode
{
  modeCopy = mode;
  replyQueue = self->_replyQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PKSecureElement_secureElement_didChangeRestrictedMode___block_invoke;
  v6[3] = &unk_1E79C4EC8;
  v6[4] = self;
  modeCopy2 = mode;
  dispatch_async(replyQueue, v6);
  if (modeCopy)
  {
    AnalyticsSendEvent();
  }
}

- (void)remoteAdminCleanupProgress:(double)progress
{
  replyQueue = self->_replyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PKSecureElement_remoteAdminCleanupProgress___block_invoke;
  v4[3] = &unk_1E79CAED8;
  v4[4] = self;
  *&v4[5] = progress;
  dispatch_async(replyQueue, v4);
}

void __46__PKSecureElement_remoteAdminCleanupProgress___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = [*(*(a1 + 32) + 120) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 secureElement:*(a1 + 32) deletionOfAppletsDidUpdateToProgress:*(a1 + 40)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  if (*(a1 + 40) >= 1.0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 48));
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Successfully deleted all applets, unregistering applet event listeners", buf, 2u);
    }

    *(*(a1 + 32) + 24) = 0;
    v10 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
    [v10 unregisterEventListener:*(a1 + 32)];

    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    if (v12)
    {
      dispatch_source_cancel(v12);
      v13 = *(a1 + 32);
      v14 = *(v13 + 32);
      *(v13 + 32) = 0;

      v11 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v11 + 48));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v3;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v21 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            [v20 secureElement:*(a1 + 32) deletionOfAppletsDidFinishWithSuccess:{1, v21}];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v17);
    }
  }
}

- (void)initializeSecureElementQueuingServerConnection:(BOOL)connection withCompletion:(id)completion
{
  completionCopy = completion;
  if (PKSecureElementIsAvailable())
  {
    v7 = self->_replyQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__PKSecureElement_initializeSecureElementQueuingServerConnection_withCompletion___block_invoke;
    v9[3] = &unk_1E79D04C8;
    connectionCopy = connection;
    v10 = v7;
    v11 = completionCopy;
    v8 = v7;
    [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __81__PKSecureElement_initializeSecureElementQueuingServerConnection_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v13 = 0;
    v14 = 0;
    LOBYTE(v6) = 0;
    goto LABEL_16;
  }

  v5 = *(a1 + 48);
  v27 = 0;
  v6 = [v3 deleteAllApplets:v5 error:&v27];
  v7 = v27;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Secure Element pairing succeeded.";
    v11 = v8;
    v12 = 2;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v29 = v7;
    v10 = "Failed initializing the Secure Element pairing. Error: %@";
    v11 = v8;
    v12 = 12;
  }

  _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_9:

  v25 = 0;
  v26 = 0;
  v24 = v7;
  v15 = [v4 getCryptogram:&v26 challengeResponse:&v25 error:&v24];
  v14 = v26;
  v13 = v25;
  v16 = v24;

  if (!v15 || !v13 || !v14)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Could not fetch cryptogam and challenge. Error: %@", buf, 0xCu);
    }
  }

LABEL_16:
  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__PKSecureElement_initializeSecureElementQueuingServerConnection_withCompletion___block_invoke_258;
    v19[3] = &unk_1E79C46F8;
    v22 = v17;
    v23 = v6;
    v20 = v14;
    v21 = v13;
    dispatch_async(v18, v19);
  }
}

- (void)initializeSecureElementIfNecessaryWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKSecureElement_initializeSecureElementIfNecessaryWithHandler___block_invoke;
  v6[3] = &unk_1E79CA990;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(PKSecureElement *)self pairingStateWithCompletion:v6];
}

void __65__PKSecureElement_initializeSecureElementIfNecessaryWithHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 3)
  {
    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      if (!a2)
      {
        goto LABEL_4;
      }

      v5 = 0;
    }

    if (![*(a1 + 32) isOwnable] || ((v6 = objc_msgSend(*(a1 + 32), "ownershipStateForCurrentUser"), v6 <= 4) ? (v7 = ((1 << v6) & 0x16) == 0) : (v7 = 1), !v7))
    {
      if (v5)
      {
        v8 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Initializing Secure Element...", buf, 2u);
        }

        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __65__PKSecureElement_initializeSecureElementIfNecessaryWithHandler___block_invoke_259;
        v14[3] = &unk_1E79C5090;
        v9 = *(a1 + 32);
        v15 = *(a1 + 40);
        [v9 initializeSecureElementQueuingServerConnection:1 withCompletion:v14];
        v10 = v15;
        goto LABEL_21;
      }

LABEL_20:
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PKSecureElement_initializeSecureElementIfNecessaryWithHandler___block_invoke_2;
      v12[3] = &unk_1E79C5090;
      v11 = *(a1 + 32);
      v13 = *(a1 + 40);
      [v11 SEPPairingInfoWithCompletion:v12];
      v10 = v13;
LABEL_21:

      return;
    }

    if (!v5)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);

    v4();
  }
}

uint64_t __65__PKSecureElement_initializeSecureElementIfNecessaryWithHandler___block_invoke_259(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65__PKSecureElement_initializeSecureElementIfNecessaryWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)SEPPairingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (PKSecureElementIsAvailable())
  {
    v5 = self->_replyQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PKSecureElement_SEPPairingInfoWithCompletion___block_invoke;
    v9[3] = &unk_1E79D04F0;
    v10 = v5;
    v11 = completionCopy;
    v6 = v5;
    [(PKSecureElement *)self accessPrioritySecureElementManagerSessionWithHandler:v9];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Secure element not available", v8, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }
  }
}

void __48__PKSecureElement_SEPPairingInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18 = 0;
    v19 = 0;
    v5 = [v3 getCryptogram:&v19 challengeResponse:&v18];
    v6 = v19;
    v7 = v18;
    v8 = v7;
    if (v5 && v7 && v6)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: Could not fetch cryptogam and challenge.", buf, 2u);
      }
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__PKSecureElement_SEPPairingInfoWithCompletion___block_invoke_262;
    v12[3] = &unk_1E79C46F8;
    v15 = v10;
    v16 = v5;
    v13 = v6;
    v14 = v8;
    dispatch_async(v11, v12);
  }
}

- (void)pairingStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKSecureElementIsAvailable())
    {
      v5 = self->_replyQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __46__PKSecureElement_pairingStateWithCompletion___block_invoke;
      v7[3] = &unk_1E79D04F0;
      v8 = v5;
      v9 = completionCopy;
      v6 = v5;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v7];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __46__PKSecureElement_pairingStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10 = 0;
    v3 = [a2 validateSEPairings:&v10];
    v4 = 3;
    if (v3 != 24)
    {
      v4 = v3 == 0;
    }

    if (v3 == 27)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PKSecureElement_pairingStateWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C8958;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v5;
  dispatch_async(v6, block);
}

- (BOOL)hasRegistrationInformation
{
  pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  registrationInfo = [pKGetClassNFRemoteAdminManager() registrationInfo];
  allKeys = [registrationInfo allKeys];
  v5 = [allKeys count] != 0;

  return v5;
}

- (BOOL)setRegistrationInformation:(id)information primaryRegionTopic:(id)topic
{
  v13 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  topicCopy = topic;
  pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  v8 = [pKGetClassNFRemoteAdminManager() setRegistrationInfo:informationCopy primaryRegionTopic:topicCopy];

  if ((v8 & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = informationCopy;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to set Secure Element Registration Info: %@", &v11, 0xCu);
    }
  }

  return v8;
}

- (id)_allAppletsWithSession:(id)session
{
  if (session)
  {
    v3 = MEMORY[0x1E695DF70];
    sessionCopy = session;
    array = [v3 array];
    allApplets = [sessionCopy allApplets];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__PKSecureElement__allAppletsWithSession___block_invoke;
    v10[3] = &unk_1E79D0518;
    v7 = array;
    v11 = v7;
    [allApplets enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 copy];

  return v8;
}

void __42__PKSecureElement__allAppletsWithSession___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 managedBySP] & 1) == 0)
  {
    v3 = [PKSecureElementApplet secureElementAppletWithInternalApplet:v4];
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_appletsForAIDs:(id)ds withSession:(id)session
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sessionCopy = session;
  if (sessionCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [sessionCopy appletWithIdentifier:{*(*(&v17 + 1) + 8 * i), v17}];
          if (v13)
          {
            v14 = [PKSecureElementApplet secureElementAppletWithInternalApplet:v13];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = [v7 copy];

  return v15;
}

- (void)allAppletsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKSecureElementIsAvailable())
    {
      objc_initWeak(&location, self);
      v5 = self->_replyQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44__PKSecureElement_allAppletsWithCompletion___block_invoke;
      v7[3] = &unk_1E79D0540;
      objc_copyWeak(&v10, &location);
      v6 = v5;
      v8 = v6;
      v9 = completionCopy;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v7];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __44__PKSecureElement_allAppletsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _allAppletsWithSession:v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PKSecureElement_allAppletsWithCompletion___block_invoke_2;
  v9[3] = &unk_1E79C44A0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)allAppletsAndCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
    if (PKSecureElementIsAvailable())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __58__PKSecureElement_allAppletsAndCredentialsWithCompletion___block_invoke;
      v6[3] = &unk_1E79D0590;
      v6[4] = self;
      v7 = v5;
      [(PKSecureElement *)self accessAsyncSecureElementManagerSessionWithHandler:v6];
    }

    else
    {
      v5[2](v5, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void __58__PKSecureElement_allAppletsAndCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218240;
    v20 = v8;
    v21 = 2048;
    v22 = v5;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): starting to asynchronously fetch all applets and credentials.", buf, 0x16u);
  }

  if (v5)
  {
    v9 = [*(a1 + 32) _allAppletsWithSession:v5];
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__PKSecureElement_allAppletsAndCredentialsWithCompletion___block_invoke_265;
    v15[3] = &unk_1E79D0568;
    v11 = v6;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v17 = v11;
    v15[4] = v12;
    v18 = v13;
    v16 = v9;
    v14 = v9;
    [v10 _credentialsForAIDs:0 session:v5 completion:v15];
  }

  else
  {
    v6[2](v6);
    (*(*(a1 + 40) + 16))();
  }
}

void __58__PKSecureElement_allAppletsAndCredentialsWithCompletion___block_invoke_265(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 48) + 16))();
  v4 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKSecureElement_allAppletsAndCredentialsWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v9 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__PKSecureElement_allAppletsAndCredentialsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if ([*(a1 + 40) count])
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);

  return v5(v3, v2, v4);
}

- (void)appletCredentialsForAIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
    v9 = [dsCopy count];
    if (PKSecureElementIsAvailable() && v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__PKSecureElement_appletCredentialsForAIDs_completion___block_invoke;
      v10[3] = &unk_1E79D05E0;
      v10[4] = self;
      v13 = v9;
      v12 = v8;
      v11 = dsCopy;
      [(PKSecureElement *)self accessAsyncSecureElementManagerSessionWithHandler:v10];
    }

    else
    {
      v8[2](v8, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void __55__PKSecureElement_appletCredentialsForAIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    *buf = 134218496;
    v19 = v8;
    v20 = 2048;
    v21 = v5;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): starting to asynchronously fetch applets and credentials for %lu applets.", buf, 0x20u);
  }

  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__PKSecureElement_appletCredentialsForAIDs_completion___block_invoke_269;
    v15[3] = &unk_1E79D05B8;
    v12 = v6;
    v15[4] = *(a1 + 32);
    v16 = v12;
    v17 = *(a1 + 48);
    [v10 _credentialsForAIDs:v11 session:v5 completion:v15];

    v13 = v16;
  }

  else
  {
    v6[2](v6);
    v14 = *(a1 + 48);
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v14 + 16))(v14, 0, v13);
  }
}

void __55__PKSecureElement_appletCredentialsForAIDs_completion___block_invoke_269(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 32) + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKSecureElement_appletCredentialsForAIDs_completion___block_invoke_2;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __55__PKSecureElement_appletCredentialsForAIDs_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3, 0);
}

- (void)_credentialsForAIDs:(id)ds session:(id)session completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sessionCopy = session;
  completionCopy = completion;
  v10 = dispatch_group_create();
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = &unk_1ADB86000;
  v13 = sessionCopy;
  if (sessionCopy)
  {
    v24 = completionCopy;
    v14 = objc_alloc_init(PKDAManager);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    selfCopy = self;
    obj = [(PKSecureElement *)self secureElementIdentifiers];
    v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          dispatch_group_enter(v10);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __58__PKSecureElement__credentialsForAIDs_session_completion___block_invoke;
          v30[3] = &unk_1E79C4390;
          v31 = dsCopy;
          v32 = v11;
          v33 = v10;
          [(PKDAManager *)v14 listCredentialsWithSession:sessionCopy seid:v19 completion:v30];
        }

        v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v16);
    }

    self = selfCopy;
    completionCopy = v24;
    v12 = &unk_1ADB86000;
  }

  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = v12[283];
  block[2] = __58__PKSecureElement__credentialsForAIDs_session_completion___block_invoke_2;
  block[3] = &unk_1E79C44A0;
  v28 = v11;
  v29 = completionCopy;
  v21 = v11;
  v22 = completionCopy;
  dispatch_group_notify(v10, sessionQueue, block);
}

void __58__PKSecureElement__credentialsForAIDs_session_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 appletIdentifier];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = @"A000000809434343444B417631";
        }

        v12 = v11;

        v13 = *(a1 + 32);
        if (!v13 || [v13 containsObject:v12])
        {
          v14 = [*(a1 + 40) objectForKey:v12];
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 40) setObject:v14 forKey:v12];
          }

          [v14 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __58__PKSecureElement__credentialsForAIDs_session_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)consistencyCheckDeviceCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
    if (PKSecureElementIsAvailable())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke;
      v6[3] = &unk_1E79D0590;
      v6[4] = self;
      v7 = v5;
      [(PKSecureElement *)self accessAsyncSecureElementManagerSessionWithHandler:v6];
    }

    else
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218240;
    v52 = v8;
    v53 = 2048;
    v54 = v5;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p:session/%p): starting to asynchronously fetch all applets and credentials for consistency check.", buf, 0x16u);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v10 = &unk_1ADB86000;
  if (v5)
  {
    v30 = v5;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = [*(a1 + 32) _allAppletsWithSession:v5];
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v46;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [PKSEConsistencyCheckDeviceCredential deviceCredentialWithApplet:*(*(&v45 + 1) + 8 * i)];
          [v9 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v13);
    }

    v17 = objc_alloc_init(PKDAManager);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [*(a1 + 32) secureElementIdentifiers];
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * j);
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_273;
          v36[3] = &unk_1E79D0630;
          v37 = v17;
          v38 = v30;
          v39 = v23;
          v40 = v9;
          [(PKAsyncUnaryOperationComposer *)v31 addOperation:v36];
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v20);
    }

    v5 = v30;
    v10 = &unk_1ADB86000;
  }

  v24 = [MEMORY[0x1E695DFB0] null];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = v10[283];
  v32[2] = __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_3;
  v32[3] = &unk_1E79D0658;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v34 = v6;
  v32[4] = v25;
  v35 = v26;
  v33 = v9;
  v27 = v9;
  v28 = v6;
  v29 = [(PKAsyncUnaryOperationComposer *)v31 evaluateWithInput:v24 completion:v32];
}

void __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_273(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_2;
  v14[3] = &unk_1E79D0608;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v16 = v6;
  v17 = v7;
  v15 = v11;
  v12 = v6;
  v13 = v7;
  [v8 listDACredentialsWithSession:v9 seid:v10 completion:v14];
}

void __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [PKSEConsistencyCheckDeviceCredential deviceCredentialWithDAKeyInformation:*(*(&v10 + 1) + 8 * v7)];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

void __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 32) + 56);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_4;
  v3[3] = &unk_1E79C44A0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t __67__PKSecureElement_consistencyCheckDeviceCredentialsWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)appletWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKMockOsloSecureElementAuth())
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement appletWithIdentifier: mocking applet from SE", buf, 2u);
      }

      v9 = [PKSecureElementApplet alloc];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
      uUIDString2 = [uUID2 UUIDString];
      v14 = [(PKSecureElementApplet *)v9 initWithIdentifier:uUIDString packageIdentifier:uUIDString2 lifecycleState:15 locked:0 containsSubKeys:0];

      completionCopy[2](completionCopy, v14);
    }

    else if (PKSecureElementIsAvailable())
    {
      v15 = self->_replyQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__PKSecureElement_appletWithIdentifier_completion___block_invoke;
      v17[3] = &unk_1E79D07D8;
      v18 = identifierCopy;
      v19 = v15;
      v20 = completionCopy;
      v16 = v15;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v17];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

void __51__PKSecureElement_appletWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 appletWithIdentifier:*(a1 + 32)];
    if (v3)
    {
      v4 = [PKSecureElementApplet secureElementAppletWithInternalApplet:v3];
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElement appletWithIdentifier: failed to get NFApplet for identifier: %@ from NearField.", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PKSecureElement_appletWithIdentifier_completion___block_invoke_275;
  v10[3] = &unk_1E79C44A0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v4;
  v12 = v8;
  v9 = v4;
  dispatch_async(v7, v10);
}

- (void)areAnyAppletsSuspendedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PKSecureElement_areAnyAppletsSuspendedWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E79D04F0;
    v6[4] = self;
    v7 = handlerCopy;
    [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v6];
  }
}

void __63__PKSecureElement_areAnyAppletsSuspendedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [*(a1 + 32) secureElementIdentifiers];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = SESEndPointListContainers();
          v10 = 0;
          if (v10)
          {
            v11 = v10;
          }

          else
          {
            v12 = [v9 pk_containsObjectPassingTest:&__block_literal_global_278];

            if (v12)
            {
              v13 = 1;
              goto LABEL_15;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = [*(a1 + 32) _allAppletsWithSession:v3];
    v13 = [v4 pk_containsObjectPassingTest:&__block_literal_global_281];
LABEL_15:

    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"N";
      if (v13)
      {
        v16 = @"Y";
      }

      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKSecureElement areAnyAppletsSuspendedWithCompletionHandler returning %@", buf, 0xCu);
    }

    v14 = *(*(a1 + 40) + 16);
  }

  else
  {
    v14 = *(*(a1 + 40) + 16);
  }

  v14();
}

- (void)markAllAppletsForDeletionWithExternalAuthorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_completion___block_invoke;
  v8[3] = &unk_1E79C5268;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKSecureElement *)self markAllAppletsForDeletionWithExternalAuthorization:authorization obliterate:1 completion:v8];
}

uint64_t __81__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)markAllAppletsForDeletionWithExternalAuthorization:(id)authorization obliterate:(BOOL)obliterate completion:(id)completion
{
  completionCopy = completion;
  if (PKSecureElementIsAvailable())
  {
    if ([(PKSecureElement *)self isDeletingAllApplets])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke;
      v10[3] = &unk_1E79D06E8;
      obliterateCopy = obliterate;
      v10[4] = self;
      v11 = completionCopy;
      v9 = [pKGetClassNFHardwareManager() startSecureElementManagerSession:v10];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x2020000000;
    v58 = 0;
    v8 = [v5 allApplets];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_2;
    v53[3] = &unk_1E79D06C0;
    v53[4] = &buf;
    [v8 enumerateObjectsUsingBlock:v53];

    if (*(*(&buf + 1) + 24))
    {
      if (*(a1 + 48) == 1)
      {
        v52 = 0;
        v9 = [v5 deleteAllApplets:1 error:&v52];
        v10 = v52;
        if (v9)
        {
          v11 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v54 = 0;
            v12 = "All Applets marked for delete and server connection queued.";
LABEL_17:
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v12, v54, 2u);
            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v51 = 0;
        [v5 deleteAllAppletsOfType:4 queueConnection:1 error:&v51];
        v10 = v51;
      }

      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 138412290;
        v55 = v10;
        v18 = "Failed to mark all Applets for deletion. Error: %@";
LABEL_25:
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v18, v54, 0xCu);
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "No Applets exist to mark for delete. Ensuring non applet SE data is removed.", v54, 2u);
      }

      if (*(a1 + 48) == 1)
      {
        v50 = 0;
        v17 = [v5 deleteAllApplets:0 error:&v50];
        v10 = v50;
        if (v17)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v54 = 0;
            v12 = "All SE data removed.";
            goto LABEL_17;
          }

LABEL_18:
          v16 = 1;
LABEL_27:

          v19 = *(*(&buf + 1) + 24);
          os_unfair_lock_lock((*(a1 + 32) + 48));
          v20 = *(a1 + 32);
          if (v19)
          {
            *(v20 + 24) = 1;
            v21 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *v54 = 0;
              _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Beginning to delete applets; registering for updates", v54, 2u);
            }

            v22 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
            [v22 registerEventListener:*(a1 + 32)];

            v23 = *(a1 + 32);
            v24 = *(v23 + 32);
            if (v24)
            {
              dispatch_source_cancel(v24);
              v25 = *(a1 + 32);
              v26 = *(v25 + 32);
              *(v25 + 32) = 0;

              v23 = *(a1 + 32);
            }

            v27 = *(*(&buf + 1) + 24);
            v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v23 + 40));
            v29 = *(a1 + 32);
            v30 = *(v29 + 32);
            *(v29 + 32) = v28;

            v31 = (60 * v27 + 30);
            v32 = v28;
            v33 = *(*(a1 + 32) + 32);
            v34 = dispatch_time(0, (v31 * 1000000000.0));
            dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
            v35 = *(a1 + 32);
            v36 = *(v35 + 32);
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_289;
            handler[3] = &unk_1E79C4DD8;
            handler[4] = v35;
            v48 = v32;
            v37 = v32;
            dispatch_source_set_event_handler(v36, handler);
            dispatch_resume(v37);
            os_unfair_lock_unlock((*(a1 + 32) + 48));
          }

          else
          {
            v38 = *(v20 + 32);
            if (v38)
            {
              dispatch_source_cancel(v38);
              v39 = *(a1 + 32);
              v40 = *(v39 + 32);
              *(v39 + 32) = 0;

              v20 = *(a1 + 32);
            }

            os_unfair_lock_unlock((v20 + 48));
            v41 = *(a1 + 32);
            v42 = *(v41 + 56);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_2_291;
            block[3] = &unk_1E79C4EC8;
            block[4] = v41;
            v46 = v16;
            dispatch_async(v42, block);
          }

          [v5 endSession];

          _Block_object_dispose(&buf, 8);
          goto LABEL_37;
        }
      }

      else
      {
        v49 = 0;
        [v5 deleteAllAppletsOfType:4 queueConnection:0 error:&v49];
        v10 = v49;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 138412290;
        v55 = v10;
        v18 = "Failed to remove all SE data. Error: %@";
        goto LABEL_25;
      }
    }

    v16 = 0;
    goto LABEL_27;
  }

  v13 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Secure Element Session Error: %@", &buf, 0xCu);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_292;
  v44[3] = &unk_1E79C4E28;
  v44[4] = v14;
  dispatch_async(v15, v44);
  v16 = 0;
LABEL_37:
  v43 = *(a1 + 40);
  if (v43)
  {
    (*(v43 + 16))(v43, v16);
  }
}

void __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 managedBySP] & 1) == 0)
  {
    v3 = [v4 lifecycleState];
    if (([v4 isGPLocked] & 1) != 0 || (v3 - 129) < 2 || v3 == 15)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

void __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_289(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Server deletion payment applications timed out.", buf, 2u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 48));
  *(*(a1 + 32) + 24) = 0;
  v3 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  [v3 unregisterEventListener:*(a1 + 32)];

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (*(a1 + 40) == v5)
  {
    *(v4 + 32) = 0;

    v4 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v4 + 48));
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_290;
  block[3] = &unk_1E79C4E28;
  block[4] = v6;
  dispatch_async(v7, block);
}

void __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_290(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = [*(*(a1 + 32) + 120) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 secureElement:*(a1 + 32) deletionOfAppletsDidFinishWithSuccess:{0, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_2_291(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = [*(*(a1 + 32) + 120) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (*(a1 + 40) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v8 secureElement:*(a1 + 32) deletionOfAppletsDidUpdateToProgress:{1.0, v9}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v8 secureElement:*(a1 + 32) deletionOfAppletsDidFinishWithSuccess:*(a1 + 40)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __92__PKSecureElement_markAllAppletsForDeletionWithExternalAuthorization_obliterate_completion___block_invoke_292(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = [*(*(a1 + 32) + 120) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 secureElement:*(a1 + 32) deletionOfAppletsDidFinishWithSuccess:{0, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)markAppletWithIdentifierForDeletion:(id)deletion completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  deletionCopy = deletion;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  deletionCopy2 = deletion;
  v9 = [v6 arrayWithObjects:&deletionCopy count:1];

  [(PKSecureElement *)self markAppletsWithIdentifiersForDeletion:v9 completion:completionCopy, deletionCopy, v11];
}

- (void)markAppletsWithIdentifiersForDeletion:(id)deletion completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  deletionCopy = deletion;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v20 = 2112;
    v21 = deletionCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p): deleting applets %@.", buf, 0x16u);
  }

  v9 = self->_replyQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKSecureElement_markAppletsWithIdentifiersForDeletion_completion___block_invoke;
  v13[3] = &unk_1E79D0760;
  v14 = deletionCopy;
  selfCopy2 = self;
  v16 = v9;
  v17 = completionCopy;
  v10 = v9;
  v11 = completionCopy;
  v12 = deletionCopy;
  [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v13];
}

void __68__PKSecureElement_markAppletsWithIdentifiersForDeletion_completion___block_invoke(int8x16_t *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = a1[2].i64[0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __68__PKSecureElement_markAppletsWithIdentifiersForDeletion_completion___block_invoke_2;
    v27[3] = &unk_1E79D0710;
    v6 = v3;
    v28 = v6;
    v7 = v4;
    v29 = v7;
    v22 = a1[2];
    v8 = v22.i64[0];
    v30 = vextq_s8(v22, v22, 8uLL);
    [v5 enumerateObjectsUsingBlock:v27];
    if (![v7 count])
    {
      LOBYTE(v9) = 0;
LABEL_15:

      goto LABEL_16;
    }

    v26 = 0;
    v9 = [v6 deleteApplets:v7 queueServerConnection:1 error:&v26];
    v10 = v26;
    v11 = PKLogFacilityTypeGetObject(7uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!v9 || v10)
    {
      if (v12)
      {
        v19 = a1[2].i64[1];
        *buf = 134218498;
        v32 = v19;
        v33 = 2112;
        v34 = v7;
        v35 = 2112;
        v36 = v10;
        v14 = "PKSecureElement (%p): failed to delete applets %@ - %@.";
        v15 = v11;
        v16 = 32;
        goto LABEL_13;
      }
    }

    else if (v12)
    {
      v13 = a1[2].i64[1];
      *buf = 134218242;
      v32 = v13;
      v33 = 2112;
      v34 = v7;
      v14 = "PKSecureElement (%p): deleted applets %@.";
      v15 = v11;
      v16 = 22;
LABEL_13:
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

    goto LABEL_15;
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = a1[2].i64[0];
    v17 = a1[2].i64[1];
    *buf = 134218242;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p): no session to delete applets %@.", buf, 0x16u);
  }

  LOBYTE(v9) = 0;
LABEL_16:

  v20 = a1[3].i64[1];
  if (v20)
  {
    v21 = a1[3].i64[0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKSecureElement_markAppletsWithIdentifiersForDeletion_completion___block_invoke_295;
    block[3] = &unk_1E79C4748;
    v24 = v20;
    v25 = v9;
    dispatch_async(v21, block);
  }
}

void __68__PKSecureElement_markAppletsWithIdentifiersForDeletion_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) appletWithIdentifier:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = 134218242;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p): cannot find applet %@ to delete.", &v7, 0x16u);
    }
  }
}

- (void)signChallenge:(id)challenge forPaymentApplication:(id)application withCompletion:(id)completion
{
  challengeCopy = challenge;
  applicationCopy = application;
  completionCopy = completion;
  if (completionCopy)
  {
    IsAvailable = PKSecureElementIsAvailable();
    if (challengeCopy && IsAvailable && ([applicationCopy applicationIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v13))
    {
      v14 = self->_replyQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__PKSecureElement_signChallenge_forPaymentApplication_withCompletion___block_invoke;
      v16[3] = &unk_1E79D0760;
      v17 = challengeCopy;
      v18 = applicationCopy;
      v19 = v14;
      v20 = completionCopy;
      v15 = v14;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v16];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __70__PKSecureElement_signChallenge_forPaymentApplication_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v6 = [v4 applicationIdentifier];
    v27 = 0;
    v28 = 0;
    v7 = [v5 signChallenge:v3 forAID:v6 sigInfo:&v28 error:&v27];

    v8 = v28;
    v9 = v27;

    if (v8 && v7)
    {
      v10 = [v8 certificateVersion];
      v11 = [PKSecureElementCertificateSet alloc];
      v12 = [v8 rsaCert];
      v13 = [v8 eccCert];
      v14 = [(PKSecureElementCertificateSet *)v11 initWithRSACertificate:v12 ECDSACertificate:v13];

      v15 = [PKSecureElementSignatureInfo alloc];
      v16 = [v8 jsblCounter];
      v17 = [v8 platformId];
      v18 = [(PKSecureElementSignatureInfo *)v15 initWithSecureElementCertificateSet:v14 sequenceCounter:v16 platformIdentifier:v17 certificateVersion:v10];
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Failed to sign challange. Error: %@", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v7 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKSecureElement_signChallenge_forPaymentApplication_withCompletion___block_invoke_297;
  block[3] = &unk_1E79C44F0;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v25 = v18;
  v26 = v20;
  v24 = v7;
  v21 = v18;
  v22 = v7;
  dispatch_async(v19, block);
}

- (void)signChallenge:(id)challenge signatureEntanglementMode:(unint64_t)mode completion:(id)completion
{
  challengeCopy = challenge;
  completionCopy = completion;
  if (completionCopy)
  {
    IsAvailable = PKSecureElementIsAvailable();
    if (challengeCopy && IsAvailable)
    {
      v11 = self->_replyQueue;
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEBUG, "PKSecureElement: queuing SE session to sign challenge", buf, 2u);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __70__PKSecureElement_signChallenge_signatureEntanglementMode_completion___block_invoke;
      v14[3] = &unk_1E79D0800;
      v14[4] = self;
      modeCopy = mode;
      v15 = challengeCopy;
      v16 = v11;
      v17 = completionCopy;
      v13 = v11;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v14];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __70__PKSecureElement_signChallenge_signatureEntanglementMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v19 = 0;
  v7 = [v4 signChallenge:v5 signatureEntanglementMode:v6 session:v3 signatureInfo:&v19 error:0];

  v8 = v19;
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEBUG, "PKSecureElement: sign challenge completing, queueing reply", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKSecureElement_signChallenge_signatureEntanglementMode_completion___block_invoke_298;
  block[3] = &unk_1E79C44F0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v16 = v8;
  v17 = v11;
  v15 = v7;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

+ (id)signChallenge:(id)challenge signatureEntanglementMode:(unint64_t)mode session:(id)session signatureInfo:(id *)info error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  sessionCopy = session;
  v13 = sessionCopy;
  if (!sessionCopy)
  {
    v27 = 0;
    goto LABEL_17;
  }

  v35 = 0;
  v36 = 0;
  v14 = [sessionCopy signChallenge:challengeCopy useOSVersion:mode == 1 signatureInfo:&v36 error:&v35];
  v15 = v36;
  v16 = v35;
  if (v15 && v14)
  {
    v34 = v14;
    certificateVersion = [(PKSecureElementSignatureInfo *)v15 certificateVersion];
    v18 = [PKSecureElementCertificateSet alloc];
    rsaCert = [(PKSecureElementSignatureInfo *)v15 rsaCert];
    eccCert = [(PKSecureElementSignatureInfo *)v15 eccCert];
    v21 = [(PKSecureElementCertificateSet *)v18 initWithRSACertificate:rsaCert ECDSACertificate:eccCert];

    v22 = [PKSecureElementSignatureInfo alloc];
    jsblCounter = [(PKSecureElementSignatureInfo *)v15 jsblCounter];
    platformId = [(PKSecureElementSignatureInfo *)v15 platformId];
    v25 = [(PKSecureElementSignatureInfo *)v22 initWithSecureElementCertificateSet:v21 sequenceCounter:jsblCounter platformIdentifier:platformId certificateVersion:certificateVersion];

    if (info)
    {
      v26 = v25;
      *info = v25;
    }

    v14 = v34;
    v27 = v34;

    v16 = v15;
    goto LABEL_16;
  }

  v28 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v16;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Failed to sign challange. Error: %@", buf, 0xCu);
  }

  if (!error)
  {
    goto LABEL_14;
  }

  if (!v16)
  {
    v30 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A278];
    v38 = @"Sign challenge failed";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v32 = [v30 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v31];
    *error = v32;

LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  v29 = v16;
  v27 = 0;
  *error = v16;
LABEL_15:
  v25 = v15;
LABEL_16:

LABEL_17:

  return v27;
}

- (void)signatureForAuthToken:(id)token completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [token dataUsingEncoding:4];
  sHA256Hash = [v7 SHA256Hash];

  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    hexEncoding = [sHA256Hash hexEncoding];
    *buf = 138412290;
    v17 = hexEncoding;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Auth token data to be signed: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v11 = self->_replyQueue;
    if (PKSecureElementIsAvailable())
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__PKSecureElement_signatureForAuthToken_completion___block_invoke;
      v12[3] = &unk_1E79D07D8;
      v13 = sHA256Hash;
      v14 = v11;
      v15 = completionCopy;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v12];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __52__PKSecureElement_signatureForAuthToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v14 = 0;
    v4 = [a2 signChallenge:v3 certs:0 error:&v14];
    v5 = v14;
    if (v4)
    {
      v6 = [v4 hexEncoding];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to sign authentication token. Error: %@", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKSecureElement_signatureForAuthToken_completion___block_invoke_303;
  block[3] = &unk_1E79C44A0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12 = v6;
  v13 = v9;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)stateInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKSecureElementIsAvailable())
    {
      pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __50__PKSecureElement_stateInformationWithCompletion___block_invoke;
      v6[3] = &unk_1E79D0738;
      v7 = pKGetClassNFRemoteAdminManager();
      v8 = completionCopy;
      v5 = pKGetClassNFRemoteAdminManager();
      [v5 getSELDInfoForBroker:v6];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __50__PKSecureElement_stateInformationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Secure Element Remote Admin Manager Error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)signedPlatformDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKSecureElementIsAvailable())
    {
      objc_initWeak(&location, self);
      v5 = self->_replyQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __52__PKSecureElement_signedPlatformDataWithCompletion___block_invoke;
      v7[3] = &unk_1E79D0540;
      objc_copyWeak(&v10, &location);
      v6 = v5;
      v8 = v6;
      v9 = completionCopy;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v7];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __52__PKSecureElement_signedPlatformDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained primarySecureElementIdentifier];
  if (v3)
  {
    v28 = 0;
    v6 = [v3 getSignedPlatformDataForSeid:v5 error:&v28];
    v7 = v28;
    if (!v6)
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136315650;
        v30 = "[PKSecureElement signedPlatformDataWithCompletion:]_block_invoke";
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to retrieve platform data: %@ error: %@", buf, 0x20u);
      }

      v11 = 0;
      v10 = 0;
      goto LABEL_26;
    }

    v8 = PKGetConstantStringNFSignedPlatformData();
    v9 = PKGetConstantStringNFSignedPlatformSignatureBlob();
    if (v8)
    {
      v10 = [v6 objectForKey:v8];
      if (v10)
      {
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }

      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v10 = 0;
        if (v9)
        {
LABEL_6:
          v11 = [v6 objectForKey:v9];
          if (v11)
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          v12 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [MEMORY[0x1E696AF00] callStackSymbols];
            *buf = 136315394;
            v30 = "[PKSecureElement signedPlatformDataWithCompletion:]_block_invoke";
            v31 = 2112;
            v32 = v23;
            v13 = "%s missing platformDataSignature: %@";
LABEL_23:
            _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);

            goto LABEL_24;
          }

          goto LABEL_24;
        }

LABEL_21:
        v12 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [MEMORY[0x1E696AF00] callStackSymbols];
          *buf = 136315394;
          v30 = "[PKSecureElement signedPlatformDataWithCompletion:]_block_invoke";
          v31 = 2112;
          v32 = v23;
          v13 = "%s missing platformDataSignatureKey: %@";
          goto LABEL_23;
        }

LABEL_24:

        v11 = 0;
        goto LABEL_25;
      }

      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 136315394;
      v30 = "[PKSecureElement signedPlatformDataWithCompletion:]_block_invoke";
      v31 = 2112;
      v32 = v17;
      v18 = "%s missing platformData: %@";
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 136315394;
      v30 = "[PKSecureElement signedPlatformDataWithCompletion:]_block_invoke";
      v31 = 2112;
      v32 = v17;
      v18 = "%s missing platformDataKey: %@";
    }

    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);

    goto LABEL_20;
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 136315394;
    v30 = "[PKSecureElement signedPlatformDataWithCompletion:]_block_invoke";
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "%s Failed to create session: %@ ", buf, 0x16u);
  }

  v11 = 0;
  v10 = 0;
LABEL_27:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKSecureElement_signedPlatformDataWithCompletion___block_invoke_306;
  block[3] = &unk_1E79C44F0;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v26 = v11;
  v27 = v20;
  v25 = v10;
  v21 = v11;
  v22 = v10;
  dispatch_async(v19, block);
}

- (void)generateTransactionKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key withCompletion:(id)completion
{
  identifierCopy = identifier;
  keyCopy = key;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PKSecureElement_generateTransactionKeyWithReaderIdentifier_readerPublicKey_withCompletion___block_invoke;
  v14[3] = &unk_1E79D0760;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = keyCopy;
  v17 = completionCopy;
  v11 = keyCopy;
  v12 = identifierCopy;
  v13 = completionCopy;
  [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v14];
}

void __93__PKSecureElement_generateTransactionKeyWithReaderIdentifier_readerPublicKey_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKDAManager);
    v5 = [*(a1 + 32) primarySecureElementIdentifier];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__PKSecureElement_generateTransactionKeyWithReaderIdentifier_readerPublicKey_withCompletion___block_invoke_307;
    v10[3] = &unk_1E79D07B0;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 56);
    [(PKDAManager *)v4 generateTransactionKeyWithSession:v3 seid:v5 readerIdentifier:v6 readerPublicKey:v7 completion:v10];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement GenerateTransactionKeyWithReaderIdentifier failed to get session", buf, 2u);
    }

    v9 = *(a1 + 56);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v9 + 16))(v9, 0, 0, 0, v4);
  }
}

void __93__PKSecureElement_generateTransactionKeyWithReaderIdentifier_readerPublicKey_withCompletion___block_invoke_307(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 homeKeyInformation];
  v8 = [v6 publicKeyIdentifier];

  v9 = [v7 publicKey];
  v10 = [v7 appletIdentifier];
  v11 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKSecureElement_generateTransactionKeyWithReaderIdentifier_readerPublicKey_withCompletion___block_invoke_2;
  block[3] = &unk_1E79C4B30;
  v12 = *(a1 + 40);
  v21 = v5;
  v22 = v12;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v5;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v11, block);
}

- (void)createAliroHomeKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key homeIdentifier:(id)homeIdentifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  keyCopy = key;
  homeIdentifierCopy = homeIdentifier;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104__PKSecureElement_createAliroHomeKeyWithReaderIdentifier_readerPublicKey_homeIdentifier_withCompletion___block_invoke;
  v18[3] = &unk_1E79D0788;
  v21 = homeIdentifierCopy;
  v22 = completionCopy;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = keyCopy;
  v14 = homeIdentifierCopy;
  v15 = keyCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v18];
}

void __104__PKSecureElement_createAliroHomeKeyWithReaderIdentifier_readerPublicKey_homeIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKDAManager);
    v5 = [*(a1 + 32) primarySecureElementIdentifier];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__PKSecureElement_createAliroHomeKeyWithReaderIdentifier_readerPublicKey_homeIdentifier_withCompletion___block_invoke_309;
    v11[3] = &unk_1E79D07B0;
    v11[4] = *(a1 + 32);
    v8 = *(a1 + 56);
    v12 = *(a1 + 64);
    [(PKDAManager *)v4 createAliroHomeKey:v3 seid:v5 readerIdentifier:v6 readerPublicKey:v7 homeIdentifier:v8 withCompletion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElement createAliroHomeKeyWithReaderIdentifier failed to get session", buf, 2u);
    }

    v10 = *(a1 + 64);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, 0, v4);
  }
}

void __104__PKSecureElement_createAliroHomeKeyWithReaderIdentifier_readerPublicKey_homeIdentifier_withCompletion___block_invoke_309(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 homeKeyInformation];
  v8 = [v6 publicKeyIdentifier];

  v9 = [v7 publicKey];
  v10 = [v7 appletIdentifier];
  v11 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKSecureElement_createAliroHomeKeyWithReaderIdentifier_readerPublicKey_homeIdentifier_withCompletion___block_invoke_2;
  block[3] = &unk_1E79C4B30;
  v12 = *(a1 + 40);
  v15 = v5;
  v16 = v12;
  block[4] = v8;
  block[5] = v9;
  block[6] = v10;
  v13 = v5;
  dispatch_async(v11, block);
}

- (void)generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKSecureElement_generateTransactionKeyWithParameters_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  v12 = parametersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = parametersCopy;
  dispatch_async(sessionQueue, block);
}

void __71__PKSecureElement_generateTransactionKeyWithParameters_withCompletion___block_invoke(void *a1)
{
  v2 = objc_alloc_init(PKDAManager);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PKSecureElement_generateTransactionKeyWithParameters_withCompletion___block_invoke_2;
  v5[3] = &unk_1E79D07B0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [(PKDAManager *)v2 generateTransactionKeyWithParameters:v3 withCompletion:v5];
}

void __71__PKSecureElement_generateTransactionKeyWithParameters_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 hydraKeyInformation];
  v8 = [v6 publicKeyIdentifier];

  v9 = [v7 certificateChain];
  v10 = [v7 appletIdentifier];
  v11 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKSecureElement_generateTransactionKeyWithParameters_withCompletion___block_invoke_3;
  block[3] = &unk_1E79C4B30;
  v12 = *(a1 + 40);
  v21 = v5;
  v22 = v12;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v5;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v11, block);
}

- (void)createAliroHydraKeyWithServerParameters:(id)parameters withCompletion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKSecureElement_createAliroHydraKeyWithServerParameters_withCompletion___block_invoke;
  v10[3] = &unk_1E79D07D8;
  v11 = parametersCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = parametersCopy;
  v9 = completionCopy;
  [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v10];
}

void __74__PKSecureElement_createAliroHydraKeyWithServerParameters_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKDAManager);
    v5 = [*(a1 + 32) primarySecureElementIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PKSecureElement_createAliroHydraKeyWithServerParameters_withCompletion___block_invoke_310;
    v10[3] = &unk_1E79D07B0;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v7;
    [(PKDAManager *)v4 createAliroHydraKey:v3 seid:v5 serverParameters:v6 withCompletion:v10];

LABEL_7:
    goto LABEL_8;
  }

  v8 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement createAliroHydraKeyWithServerParameters failed to get session", buf, 2u);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v9 + 16))(v9, 0, 0, 0, v4);
    goto LABEL_7;
  }

LABEL_8:
}

void __74__PKSecureElement_createAliroHydraKeyWithServerParameters_withCompletion___block_invoke_310(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 hydraKeyInformation];
  v8 = [v6 publicKeyIdentifier];

  v9 = [v7 certificateChain];
  v10 = [v7 appletIdentifier];
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKSecureElement_createAliroHydraKeyWithServerParameters_withCompletion___block_invoke_2;
    block[3] = &unk_1E79C4B30;
    block[4] = v8;
    block[5] = v9;
    v15 = v11;
    block[6] = v10;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (void)updateAliroCredentialDocumentStatusWithSubcredentialIdentifier:(id)identifier documentType:(unint64_t)type isDocumentPresent:(BOOL)present signedDate:(id)date withCompletion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __139__PKSecureElement_updateAliroCredentialDocumentStatusWithSubcredentialIdentifier_documentType_isDocumentPresent_signedDate_withCompletion___block_invoke;
  v17[3] = &unk_1E79D0800;
  v21 = completionCopy;
  typeCopy = type;
  v18 = dateCopy;
  selfCopy = self;
  v20 = identifierCopy;
  v14 = identifierCopy;
  v15 = dateCopy;
  v16 = completionCopy;
  [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v17];
}

void __139__PKSecureElement_updateAliroCredentialDocumentStatusWithSubcredentialIdentifier_documentType_isDocumentPresent_signedDate_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKDAManager);
    v5 = *(a1 + 64);
    if (v5 == 1)
    {
      v10 = 0;
      v9 = 0;
      v8 = *(a1 + 32);
      v7 = 1;
      v6 = v8;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      if (v5)
      {
        v10 = 0;
        v9 = 0;
        goto LABEL_12;
      }

      v8 = *(a1 + 32);
      v9 = 1;
      v10 = v8;
    }

    v13 = v8;
LABEL_12:
    v14 = [*(a1 + 40) primarySecureElementIdentifier];
    v15 = [(PKDAManager *)v4 updateAliroCredentialDocumentStatusWithSession:v3 seid:v14 subcredentialIdentifier:*(a1 + 48) isAccessDocumentPresent:v9 accessDocumentSignedDate:v10 isRevocationDocumentPresent:v7 revocationDocumentSignedDate:v6];

    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 description];
      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKSecureElement updateAliroCredentialDocumentStatusWithKeyIdentifier completed with error: %@", buf, 0xCu);
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      (*(v18 + 16))(v18, v15);
    }

    goto LABEL_17;
  }

  v11 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKSecureElement createAliroHydraKeyWithServerParameters failed to get session", buf, 2u);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v12 + 16))(v12, v4);
LABEL_17:
  }
}

- (BOOL)queueConnectionToServerWithPushTopic:(id)topic
{
  topicCopy = topic;
  pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  v5 = [pKGetClassNFRemoteAdminManager() queueServerConnection:topicCopy];

  return v5;
}

- (BOOL)queueConnectionToServerForAppletIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  v5 = [pKGetClassNFRemoteAdminManager() queueServerConnectionForApplets:identifiersCopy];

  return v5;
}

- (void)connectToServerWithPushTopic:(id)topic performSECleanup:(BOOL)cleanup completion:(id)completion
{
  cleanupCopy = cleanup;
  completionCopy = completion;
  topicCopy = topic;
  pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (cleanupCopy)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PerformSECleanup"];
  }

  v12 = [v11 copy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PKSecureElement_connectToServerWithPushTopic_performSECleanup_completion___block_invoke;
  v14[3] = &unk_1E79C4450;
  v15 = completionCopy;
  v13 = completionCopy;
  [pKGetClassNFRemoteAdminManager() connectToServer:topicCopy initialClientRequestInfo:v12 callback:v14];
}

void __76__PKSecureElement_connectToServerWithPushTopic_performSECleanup_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Secure Element Remote Server Connection Error: %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0);
  }
}

- (void)peerPaymentEnrollmentDataWithAlternateDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKSecureElementIsAvailable())
    {
      v8 = self->_replyQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke;
      v10[3] = &unk_1E79D0760;
      v11 = dCopy;
      selfCopy = self;
      v13 = v8;
      v14 = completionCopy;
      v9 = v8;
      [(PKSecureElement *)self accessSecureElementManagerSessionWithHandler:v10];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v40[0] = 0;
    v5 = [v3 validateSEPairings:v40];
    v6 = v40[0];
    v7 = 0;
    if (v5)
    {
      if (v5 != 27 || (v39 = 0, v8 = [v4 deleteAllApplets:0 error:&v39], v7 = v39, !v8))
      {
        v24 = *(a1 + 48);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_3_334;
        v28[3] = &unk_1E79C4A40;
        v7 = v7;
        v29 = v7;
        v30 = *(a1 + 56);
        dispatch_async(v24, v28);

        v9 = v29;
LABEL_17:

        goto LABEL_18;
      }
    }

    v9 = objc_alloc_init(PKGetClassNFPeerPaymentEnrollmentRequest());
    v10 = [*(a1 + 32) dataUsingEncoding:4];
    v11 = [v10 SHA256Hash];
    [v9 setAlternateDSID:v11];

    v38 = 0;
    v12 = [v4 performPeerPaymentEnrollment:v9 error:&v38];
    v13 = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_2;
    aBlock[3] = &unk_1E79D0828;
    v14 = *(a1 + 48);
    aBlock[4] = *(a1 + 40);
    v36 = v14;
    v37 = *(a1 + 56);
    v15 = _Block_copy(aBlock);
    if (v13)
    {
      v16 = [v13 domain];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
      if ([v16 isEqualToString:v17])
      {
        v25 = v6;
        v18 = v12;
        v19 = [v13 code];

        v20 = v19 == 16;
        v12 = v18;
        v6 = v25;
        if (v20)
        {
          v21 = PKLogFacilityTypeGetObject(0xCuLL);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "SE Error: Handling NFCD NFResultCommmandError by reaching out to TSM, then retrying enrollment request.", buf, 2u);
          }

          v22 = *(a1 + 40);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_332;
          v31[3] = &unk_1E79D0850;
          v31[4] = v22;
          v32 = v9;
          v33 = v15;
          [v22 connectToServerWithPushTopic:0 completion:v31];

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    (*(v15 + 2))(v15, v12, v13);
LABEL_16:

    goto LABEL_17;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_335;
  block[3] = &unk_1E79C4428;
  v23 = *(a1 + 48);
  v27 = *(a1 + 56);
  dispatch_async(v23, block);
  v6 = v27;
LABEL_18:
}

void __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v42[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 prePeerPaymentCertificate];
  v8 = [v7 hexEncoding];

  v9 = [v5 prePeerPaymentCertificate];
  v10 = [v9 SHA256Hash];

  v32 = [*(a1 + 32) secureElementIdentifiers];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v12 = [v5 certificate];
  v13 = [v12 objectForKey:@"ECDSA"];

  if (v13)
  {
    v14 = [v13 hexEncoding];
    [v11 setObject:v14 forKeyedSubscript:@"ECDSA"];
  }

  v31 = v10;
  v15 = [v5 certificate];
  v16 = [v15 objectForKey:@"ECC"];

  if (v16)
  {
    v17 = [v16 hexEncoding];
    [v11 setObject:v17 forKeyedSubscript:@"ECC"];
  }

  v30 = v13;
  v18 = [v5 certificate];
  v19 = [v18 objectForKey:@"RSA"];

  if (v19)
  {
    v20 = [v19 hexEncoding];
    [v11 setObject:v20 forKeyedSubscript:@"RSA"];
  }

  v21 = v6;
  v22 = v32;
  if (!v6 && v5 && v8 && v11 && v32)
  {
    v42[0] = v8;
    v41[0] = @"signedEnrollmentData";
    v41[1] = @"casdCertificate";
    v23 = [v11 copy];
    v41[2] = @"seidList";
    v42[1] = v23;
    v42[2] = v32;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_3;
    block[3] = &unk_1E79C44F0;
    v25 = *(a1 + 40);
    v40 = *(a1 + 48);
    v38 = v24;
    v26 = v31;
    v39 = v31;
    v27 = v24;
    v28 = v25;
    v22 = v32;
    dispatch_async(v28, block);
  }

  else
  {
    v29 = *(a1 + 40);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_4;
    v33[3] = &unk_1E79C4D60;
    v34 = v5;
    v35 = v6;
    v36 = *(a1 + 48);
    dispatch_async(v29, v33);

    v27 = v34;
    v26 = v31;
  }
}

uint64_t __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "SE Error: Failed to get Peer Payment enrollment certificates from NearField with response: %@, error: %@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

void __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_332(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_2_333;
  v3[3] = &unk_1E79D04F0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 accessSecureElementManagerSessionWithHandler:v3];
}

void __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_2_333(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [a2 performPeerPaymentEnrollment:v3 error:&v6];
  v5 = v6;
  (*(*(a1 + 40) + 16))();
}

uint64_t __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_3_334(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "SE Error: Failed to ensure that the SE is paired to the SEP, hence failing peer payment enrollment request. Error: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __73__PKSecureElement_peerPaymentEnrollmentDataWithAlternateDSID_completion___block_invoke_335(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "SE Error: Failed to access the secure element access session, hence failing peer payment enrollment request.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  if (observerCopy && ![(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
    if (objc_opt_respondsToSelector())
    {
      [(PKSecureElement *)self _registerPairingChangeHandler];
    }

    if ([(NSHashTable *)self->_observers count]== 1)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_contactlessPaymentPassesAvailableDidChange name:@"PDContactlessPaymentPassesAvailableDidChangeNotification" object:0];
    }

    [(PKSecureElement *)self _updateHardwareManagerListener];
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  if (observerCopy && [(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    [(PKSecureElement *)self _updateHardwareManagerListener];
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (BOOL)supportsExpressModeForExpressPassType:(int64_t)type
{
  pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v6 = pKGetClassNFHardwareManager();
  if (!pKGetClassNFHardwareManager() || ![pKGetClassNFHardwareManager() isExpressModeSupported])
  {
    goto LABEL_6;
  }

  if (type == 2)
  {
    LOBYTE(v7) = 1;
    goto LABEL_7;
  }

  if (type == 1)
  {
    v7 = ([(PKSecureElement *)self supportedTechnologies]>> 2) & 1;
  }

  else
  {
LABEL_6:
    LOBYTE(v7) = 0;
  }

LABEL_7:

  return v7;
}

+ (BOOL)supportsExpressForAutomaticSelectionTechnologyType:(int64_t)type byHardware:(BOOL *)hardware outError:(id *)error
{
  result = [self hardwareSupportsExpressForAutomaticSelectionTechnologyType:type outError:error];
  if (hardware)
  {
    *hardware = result;
  }

  if (type == 3)
  {
    return 1;
  }

  return result;
}

+ (BOOL)hardwareSupportsExpressForAutomaticSelectionTechnologyType:(int64_t)type outError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v8 = pKGetClassNFHardwareManager();
  if (!pKGetClassNFHardwareManager())
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v22 = 0;
        v11 = &v22;
        v12 = &v22;
        v13 = 4;
        break;
      case 2:
        v21 = 0;
        v11 = &v21;
        v12 = &v21;
        v13 = 2;
        break;
      case 3:
        v20 = 0;
        v11 = &v20;
        v12 = &v20;
        v13 = 8;
        break;
      default:
        goto LABEL_21;
    }
  }

  else if ((type - 4) < 2)
  {
    v19 = 0;
    v11 = &v19;
    v12 = &v19;
    v13 = 32;
  }

  else if (type == 6)
  {
    v18 = 0;
    v11 = &v18;
    v12 = &v18;
    v13 = 512;
  }

  else
  {
    if (type != 7)
    {
      goto LABEL_21;
    }

    v17 = 0;
    v11 = &v17;
    v12 = &v17;
    v13 = 1024;
  }

  v10 = [pKGetClassNFHardwareManager() areFeaturesSupported:v13 outError:{v12, v17, v18, v19, v20, v21, v22}];
  v9 = *v11;
  if (v9)
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = self;
      v25 = 2048;
      typeCopy = type;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKSecureElement (%p): failed to check if feature %lu was supported, error: %@", buf, 0x20u);
    }

    if (error)
    {
      v15 = v9;
      *error = v9;
    }
  }

LABEL_21:

  return v10;
}

+ (BOOL)supportsExpressMode:(id)mode byHardware:(BOOL *)hardware
{
  modeCopy = mode;
  v7 = [self hardwareSupportsExpressMode:modeCopy];
  if (hardware)
  {
    *hardware = v7;
  }

  if (v7)
  {
    v8 = 1;
  }

  else if (modeCopy && @"type_a.generic")
  {
    v8 = [(__CFString *)modeCopy isEqual:@"type_a.generic"];
  }

  else
  {
    v8 = @"type_a.generic" == modeCopy;
  }

  return v8;
}

+ (BOOL)hardwareSupportsExpressMode:(id)mode
{
  modeCopy = mode;
  pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  if (!pKGetClassNFHardwareManager())
  {
    goto LABEL_15;
  }

  if (!modeCopy || !@"transit.felica.suica")
  {
    if (@"transit.felica.suica" == modeCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (([(__CFString *)modeCopy isEqual:@"transit.felica.suica"]& 1) == 0)
  {
LABEL_7:
    if (modeCopy && @"type_a.generic")
    {
      if (([(__CFString *)modeCopy isEqual:@"type_a.generic"]& 1) != 0)
      {
LABEL_10:
        v5 = 8;
        goto LABEL_14;
      }
    }

    else if (@"type_a.generic" == modeCopy)
    {
      goto LABEL_10;
    }

    if ([(__CFString *)modeCopy hasPrefix:@"access.hid."])
    {
      v5 = 2;
      goto LABEL_14;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

LABEL_5:
  v5 = 4;
LABEL_14:
  v6 = [pKGetClassNFHardwareManager() areFeaturesSupported:v5 outError:0];
LABEL_16:

  return v6;
}

- (unint64_t)ownershipStateForCurrentUser
{
  if (![(PKSecureElement *)self isOwnable])
  {
    return 3;
  }

  v3 = PKCurrentUserUUID();
  v4 = [(PKSecureElement *)self ownershipStateForUserUUID:v3];

  return v4;
}

- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  authCopy = auth;
  completionCopy = completion;
  v17 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = partyCopy;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement creating FIDO key for relyingParty: %@", buf, 0xCu);
  }

  v18 = PKLogFacilityTypeGetObject(0x24uLL);
  v19 = os_signpost_id_make_with_pointer(v18, self);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "fidoKey:create", "", buf, 2u);
    }
  }

  if (partyCopy && hashCopy && challengeCopy)
  {
    v33 = authCopy;
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v34 = 0;
    v22 = [mEMORY[0x1E69C86D0] createFidoKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy challenge:challengeCopy usingSession:0 withSessionSEID:0 error:&v34];
    v23 = v34;

    v24 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      authCopy = v33;
      if (v24)
      {
        *buf = 138412290;
        v36 = v23;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement unable to create FIDO key with error: %@", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v23);
    }

    else
    {
      if (v24)
      {
        fidoKeyHash = [v22 fidoKeyHash];
        hexEncoding = [fidoKeyHash hexEncoding];
        *buf = 138412290;
        v36 = hexEncoding;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement generated FIDO key for with keyHash: %@", buf, 0xCu);
      }

      v26 = v18;
      v27 = os_signpost_id_make_with_pointer(v26, self);
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = v27;
        if (os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v26, OS_SIGNPOST_INTERVAL_END, v28, "fidoKey:create", "", buf, 2u);
        }
      }

      fidoPublicKey = [v22 fidoPublicKey];
      fidoAttestation = [v22 fidoAttestation];
      fidoKeyHash2 = [v22 fidoKeyHash];
      (*(completionCopy + 2))(completionCopy, fidoPublicKey, fidoAttestation, fidoKeyHash2, 0);

      authCopy = v33;
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement creating FIDO key missing required parameters", buf, 2u);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v23);
  }
}

- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  completionCopy = completion;
  v14 = PKLogFacilityTypeGetObject(0x24uLL);
  v15 = os_signpost_id_make_with_pointer(v14, self);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "fidoKey:check", "", buf, 2u);
    }
  }

  v17 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = partyCopy;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement checking FIDO key for relyingParty: %@", buf, 0xCu);
  }

  if (partyCopy && hashCopy)
  {
    v30 = hashCopy;
    v18 = hashCopy;
    v19 = keyHashCopy;
    v20 = [MEMORY[0x1E69C86C8] withRelyingParty:partyCopy relyingPartyAccountHash:v18 fidoKeyHash:keyHashCopy];
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v31 = 0;
    v29 = v20;
    v22 = [mEMORY[0x1E69C86D0] checkFidoKeyPresence:v20 usingSession:0 withSessionSEID:0 error:&v31];
    v23 = v31;
    bOOLValue = [v22 BOOLValue];

    if (v23)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement failed to check FIDO key with error %@", buf, 0xCu);
      }

      bOOLValue = 0;
    }

    keyHashCopy = v19;
    hashCopy = v30;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"No";
      if (bOOLValue)
      {
        v25 = @"Yes";
      }

      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement check FIDO key found key: %@", buf, 0xCu);
    }

    v26 = v14;
    v27 = os_signpost_id_make_with_pointer(v26, self);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v28 = v27;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v26, OS_SIGNPOST_INTERVAL_END, v28, "fidoKey:check", "", buf, 2u);
      }
    }

    completionCopy[2](completionCopy, bOOLValue);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKSecureElement checking FIDO key missing required parameters", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)checkMultipleFidoKeyPresenceForFIDOProfiles:(id)profiles completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [profilesCopy description];
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement checking FIDO keys: %@", buf, 0xCu);
  }

  if (profilesCopy && [profilesCopy count])
  {
    v10 = PKLogFacilityTypeGetObject(0x24uLL);
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v10, OS_SIGNPOST_EVENT, v12, "fidoKey:checkForKey", "", buf, 2u);
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __74__PKSecureElement_checkMultipleFidoKeyPresenceForFIDOProfiles_completion___block_invoke;
    v24[3] = &unk_1E79D0878;
    v14 = v13;
    v25 = v14;
    [profilesCopy enumerateObjectsUsingBlock:v24];
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v23 = 0;
    v16 = [mEMORY[0x1E69C86D0] checkMultipleFidoKeyPresence:v14 usingSession:0 withSessionSEID:0 error:&v23];
    v17 = v23;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__PKSecureElement_checkMultipleFidoKeyPresenceForFIDOProfiles_completion___block_invoke_2;
    v20[3] = &unk_1E79D08A0;
    v19 = v18;
    v21 = v19;
    v22 = profilesCopy;
    [v16 enumerateObjectsUsingBlock:v20];
    if (v17)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement failed to check FIDO key with error %@", buf, 0xCu);
      }
    }

    completionCopy[2](completionCopy, v19);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElement checking FIDO key missing required parameters", buf, 2u);
    }

    completionCopy[2](completionCopy, MEMORY[0x1E695E0F8]);
  }
}

void __74__PKSecureElement_checkMultipleFidoKeyPresenceForFIDOProfiles_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C86C8];
  v4 = a2;
  v5 = [v4 relyingPartyIdentifier];
  v6 = [v4 accountHash];
  v7 = [v4 keyHash];

  v8 = [v7 pk_decodeHexadecimal];
  v9 = [v3 withRelyingParty:v5 relyingPartyAccountHash:v6 fidoKeyHash:v8];

  [*(a1 + 32) addObject:v9];
}

void __74__PKSecureElement_checkMultipleFidoKeyPresenceForFIDOProfiles_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v4 setObject:v6 forKey:v7];
}

- (void)findFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  completionCopy = completion;
  v14 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = partyCopy;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKSecureElement finding FIDO key for relyingParty: %@", buf, 0xCu);
  }

  v15 = PKLogFacilityTypeGetObject(0x24uLL);
  v16 = os_signpost_id_make_with_pointer(v15, self);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "fidoKey:find", "", buf, 2u);
    }
  }

  if (partyCopy && hashCopy && challengeCopy)
  {
    v18 = [MEMORY[0x1E69C86C8] withRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:0];
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v31 = v18;
    v32 = 0;
    v20 = [mEMORY[0x1E69C86D0] findAndAttest:v18 challenge:challengeCopy usingSession:0 withSessionSEID:0 error:&v32];
    v21 = v32;

    v22 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v22)
      {
        *buf = 138412546;
        v34 = partyCopy;
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKSecureElement unable to find FIDO key for: %@ with error: %@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v21);
    }

    else
    {
      if (v22)
      {
        fidoKeyHash = [v20 fidoKeyHash];
        hexEncoding = [fidoKeyHash hexEncoding];
        *buf = 138412546;
        v34 = partyCopy;
        v35 = 2112;
        v36 = hexEncoding;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKSecureElement found FIDO key for: %@ with keyHash: %@", buf, 0x16u);
      }

      v24 = v15;
      v25 = os_signpost_id_make_with_pointer(v24, self);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v26 = v25;
        if (os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v24, OS_SIGNPOST_INTERVAL_END, v26, "fidoKey:find", "", buf, 2u);
        }
      }

      fidoPublicKey = [v20 fidoPublicKey];
      fidoAttestation = [v20 fidoAttestation];
      fidoKeyHash2 = [v20 fidoKeyHash];
      (*(completionCopy + 2))(completionCopy, fidoPublicKey, fidoAttestation, fidoKeyHash2, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKSecureElement find FIDO key missing required parameters", buf, 2u);
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v21);
  }
}

- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  challengeCopy = challenge;
  identifierCopy = identifier;
  authCopy = auth;
  completionCopy = completion;
  v21 = PKLogFacilityTypeGetObject(0x24uLL);
  v22 = os_signpost_id_make_with_pointer(v21, self);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "fidoKey:sign", "", buf, 2u);
    }
  }

  v24 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = partyCopy;
    _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "PKSecureElement signing FIDO key for relyingParty: %@", buf, 0xCu);
  }

  v39 = keyHashCopy;
  if (partyCopy && hashCopy && challengeCopy && authCopy)
  {
    v38 = hashCopy;
    v25 = [MEMORY[0x1E69C86C8] withRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy];
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v27 = [MEMORY[0x1E695DEF0] dataWithHexEncodedString:identifierCopy];
    v28 = challengeCopy;
    v29 = v27;
    v41 = 0;
    v37 = v28;
    v36 = [mEMORY[0x1E69C86D0] signWithFidoKeyFor:v25 challenge:&v41 forNFCKeyWithIdentifier:? usingSession:? withSessionSEID:? externalizedAuth:? error:?];
    v30 = v41;

    if (v30)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v30;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "PKSecureElement unable to sign FIDO challenge with error: %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0, v30);
      challengeCopy = v37;
      hashCopy = v38;
      v31 = v36;
    }

    else
    {
      v32 = v21;
      v33 = os_signpost_id_make_with_pointer(v32, self);
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v34 = v33;
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v32, OS_SIGNPOST_INTERVAL_END, v34, "fidoKey:sign", "", buf, 2u);
        }
      }

      v31 = v36;
      fidoAssertion = [v36 fidoAssertion];
      (completionCopy)[2](completionCopy, fidoAssertion, 0);

      challengeCopy = v37;
      hashCopy = v38;
    }
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "PKSecureElement signing FIDO key missing required parameters", buf, 2u);
    }

    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    completionCopy[2](completionCopy, 0, v25);
  }
}

- (void)verifySignedChallenge:(id)challenge forRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  completionCopy = completion;
  v17 = PKLogFacilityTypeGetObject(0x24uLL);
  v18 = os_signpost_id_make_with_pointer(v17, self);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "fido:verifySignedChallenge", "", buf, 2u);
    }
  }

  v20 = PKLogFacilityTypeGetObject(0x2DuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = partyCopy;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKSecureElement verifying signed challenge for relyingParty: %@", buf, 0xCu);
  }

  if (challengeCopy && partyCopy && hashCopy)
  {
    v30 = keyHashCopy;
    v21 = [MEMORY[0x1E69C86C8] withRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy];
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v31 = 0;
    v29 = [mEMORY[0x1E69C86D0] verifyWithFidoKeyFor:v21 signedChallenge:challengeCopy usingSession:0 withSessionSEID:0 error:&v31];
    v23 = v31;

    if (v23)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKSecureElement unable to verify signed challenge with error: %@", buf, 0xCu);
      }

      bOOLValue = 0;
      v25 = v29;
    }

    else
    {
      v26 = v17;
      v27 = os_signpost_id_make_with_pointer(v26, self);
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = v27;
        if (os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v26, OS_SIGNPOST_INTERVAL_END, v28, "fido:verifySignedChallenge", "", buf, 2u);
        }
      }

      v25 = v29;
      bOOLValue = [v29 BOOLValue];
    }

    completionCopy[2](completionCopy, bOOLValue);

    keyHashCopy = v30;
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKSecureElement verifying signed challenge missing required parameters", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)deleteFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  completionCopy = completion;
  v13 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = partyCopy;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKSecureElement: deleting FIDO key for relyingParty: %@", buf, 0xCu);
  }

  if (partyCopy && hashCopy && keyHashCopy)
  {
    v14 = [MEMORY[0x1E69C86C8] withRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy];
    mEMORY[0x1E69C86D0] = [MEMORY[0x1E69C86D0] shared];
    v18 = 0;
    v16 = [mEMORY[0x1E69C86D0] deleteFidoKeyFor:v14 usingSession:0 withSessionSEID:0 error:&v18];
    v17 = v18;

    if (!v16 || v17)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v17;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "PKSecureElement: unable to delete FIDO challenge with error: %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0, v17);
    }

    else
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "PKSecureElement: delete FIDO key missing required parameters", buf, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v8 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKSecureElement_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke;
  v10[3] = &unk_1E79C4C20;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKDAManager *)v8 generateSEEncryptionCertificateForSubCredentialId:idCopy completion:v10];
}

void __80__PKSecureElement_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKSecureElement_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion
{
  existingCopy = existing;
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject(0x17uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (identifierCopy)
  {
    if (v10)
    {
      v11 = @"N";
      if (existingCopy)
      {
        v11 = @"Y";
      }

      *buf = 138412546;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElement LTPK: Generating key for groupIdentifier: '%@' reuse: '%@'", buf, 0x16u);
    }

    v12 = objc_alloc_init(PKDAManager);
    v13 = v12;
    if (existingCopy)
    {
      v24 = 0;
      v14 = [(PKDAManager *)v12 privacyKeysForGroupIdentifier:identifierCopy privacyKeyIdentifier:0 outError:&v24];
      v15 = v24;
      firstObject = [v14 firstObject];

      if (firstObject)
      {
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        publicKey = [firstObject publicKey];
        *buf = 138412290;
        v26 = publicKey;
        v18 = "PKSecureElement LTPK: Found key %@";
        goto LABEL_21;
      }
    }

    else
    {
      v19 = [(PKDAManager *)v12 privacyKeysForGroupIdentifier:identifierCopy privacyKeyIdentifier:0 outError:0];
      if ([v19 count] >= 0xA)
      {
        lastObject = [v19 lastObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = lastObject;
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElement LTPK: At max keys for groupIdentifier, deleting oldest key: %@", buf, 0xCu);
        }

        [v13 deletePrivacyKey:lastObject outError:0];
      }

      v15 = 0;
    }

    v21 = v15;
    v23 = v15;
    firstObject = [v13 createPrivacyKeyForGroupIdentifier:identifierCopy outError:&v23];
    v15 = v23;

    if (!firstObject)
    {
      goto LABEL_23;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_22:

      if (!v15)
      {
        if (completionCopy)
        {
          publicKey2 = [firstObject publicKey];
          completionCopy[2](completionCopy, publicKey2, 0);
        }

        v15 = 0;
        goto LABEL_30;
      }

LABEL_23:
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElement unable to get long term privacy key with error: %@", buf, 0xCu);
      }

      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, 0, v15);
      }

LABEL_30:

      goto LABEL_31;
    }

    publicKey = [firstObject publicKey];
    *buf = 138412290;
    v26 = publicKey;
    v18 = "PKSecureElement LTPK: Generated key %@";
LABEL_21:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);

    goto LABEL_22;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElement LTPK: Error: Missing group identifier", buf, 2u);
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (completionCopy)[2](completionCopy, 0, v13);
LABEL_31:
}

- (void)hasLongTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v6 = objc_alloc_init(PKDAManager);
  v7 = [(PKDAManager *)v6 hasLongTermPrivacyKeyForGroupIdentifier:identifierCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v7);
  }
}

- (void)longTermPrivacyKeysForCredentialGroupIdentifier:(id)identifier privacyKeyIdentifier:(id)keyIdentifier completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyIdentifierCopy = keyIdentifier;
  identifierCopy = identifier;
  v10 = objc_alloc_init(PKDAManager);
  v14 = 0;
  v11 = [(PKDAManager *)v10 privacyKeysForGroupIdentifier:identifierCopy privacyKeyIdentifier:keyIdentifierCopy outError:&v14];

  v12 = v14;
  if (v12)
  {
    v13 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKSecureElement unable to get long term privacy keys with error: %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v12);
    }
  }

  else if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v11, 0);
  }
}

- (id)secureElementSessionPrelude
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PKSecureElement_secureElementSessionPrelude__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sessionQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__PKSecureElement_secureElementSessionPrelude__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setSecureElementSessionPrelude:(id)prelude
{
  preludeCopy = prelude;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKSecureElement_setSecureElementSessionPrelude___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = preludeCopy;
  v6 = preludeCopy;
  dispatch_sync(sessionQueue, v7);
}

void __50__PKSecureElement_setSecureElementSessionPrelude___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (id)secureElementSessionPostlude
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PKSecureElement_secureElementSessionPostlude__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sessionQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__PKSecureElement_secureElementSessionPostlude__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setSecureElementSessionPostlude:(id)postlude
{
  postludeCopy = postlude;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKSecureElement_setSecureElementSessionPostlude___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = postludeCopy;
  v6 = postludeCopy;
  dispatch_sync(sessionQueue, v7);
}

void __51__PKSecureElement_setSecureElementSessionPostlude___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

- (BOOL)isProductionSigned
{
  secureElement = self->_secureElement;
  if (secureElement)
  {
    return [(NFSecureElement *)secureElement isProductionSigned];
  }

  else
  {
    return 1;
  }
}

- (BOOL)isInRestrictedMode
{
  os_unfair_lock_lock(&self->_lock);
  isInRestrictedMode = self->_isInRestrictedMode;
  if (self->_updatingIsInRestrictedMode || (isInRestrictedModeTimestamp = self->_isInRestrictedModeTimestamp, CFAbsoluteTimeGetCurrent() - isInRestrictedModeTimestamp < 60.0))
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_updatingIsInRestrictedMode = 1;
    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, self);
    replyQueue = self->_replyQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__PKSecureElement_isInRestrictedMode__block_invoke;
    v7[3] = &unk_1E79C9D80;
    objc_copyWeak(&v8, &location);
    dispatch_async(replyQueue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return isInRestrictedMode;
}

void __37__PKSecureElement_isInRestrictedMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 isInRestrictedMode];
    }

    else
    {
      v4 = 0;
    }

    [v5 _setIsInRestrictedMode:v4];
    v5[13] = 0;

    WeakRetained = v5;
  }
}

- (void)_setIsInRestrictedMode:(BOOL)mode
{
  modeCopy = mode;
  v30 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock(&self->_lock);
  isInRestrictedMode = self->_isInRestrictedMode;
  self->_isInRestrictedMode = modeCopy;
  self->_isInRestrictedModeTimestamp = Current;
  os_unfair_lock_unlock(&self->_lock);
  if (isInRestrictedMode != modeCopy)
  {
    os_unfair_lock_lock(&self->_observersLock);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    if (modeCopy)
    {
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v8 = allObjects;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v13 secureElementDidEnterRestrictedMode:self];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v14 = allObjects;
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v20 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v19 secureElementDidLeaveRestrictedMode:{self, v20}];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v16);
      }
    }
  }
}

- (BOOL)isDeletingAllApplets
{
  os_unfair_lock_lock(&self->_deletingAllAppletsPropertyLock);
  deletingAllApplets = self->_deletingAllApplets;
  os_unfair_lock_unlock(&self->_deletingAllAppletsPropertyLock);
  return deletingAllApplets;
}

- (NSString)primaryRegionTopic
{
  pKGetClassNFRemoteAdminManager() = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  primaryRegionTopic = [pKGetClassNFRemoteAdminManager() primaryRegionTopic];

  return primaryRegionTopic;
}

+ (id)primarySecureElementIdentifier
{
  if (qword_1ED6D1A08 != -1)
  {
    dispatch_once(&qword_1ED6D1A08, &__block_literal_global_366);
  }

  v3 = qword_1ED6D1A00;

  return v3;
}

void __49__PKSecureElement_primarySecureElementIdentifier__block_invoke()
{
  v2 = +[PKSecureElement sharedSecureElement];
  v0 = [v2 primarySecureElementIdentifier];
  v1 = qword_1ED6D1A00;
  qword_1ED6D1A00 = v0;
}

void __43__PKSecureElement_secureElementIdentifiers__block_invoke()
{
  v2 = +[PKSecureElement sharedSecureElement];
  v0 = [v2 secureElementIdentifiers];
  v1 = qword_1ED6D1A10;
  qword_1ED6D1A10 = v0;
}

- (void)_registerPairingChangeHandler
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_pairingChangeHandler)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PKSecureElement__registerPairingChangeHandler__block_invoke;
    v7[3] = &unk_1E79D08F0;
    objc_copyWeak(&v8, &location);
    v3 = _Block_copy(v7);
    pairingChangeHandler = self->_pairingChangeHandler;
    self->_pairingChangeHandler = v3;

    v5 = SSESetEffacementNotificationHandler();
    if (v5)
    {
      v6 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error setting the Secure Element Pairing change handler: %d", buf, 8u);
      }
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __48__PKSecureElement__registerPairingChangeHandler__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PKSecureElement__registerPairingChangeHandler__block_invoke_2;
    v6[3] = &unk_1E79D08C8;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(v5, v6);
  }
}

void __48__PKSecureElement__registerPairingChangeHandler__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = [*(*(a1 + 32) + 120) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (v3 == 2);
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = off_1E79D0960[v4];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Secure Element Pairing did change for reason: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 secureElementPairingDidChangeForReason:{v4, v13}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end