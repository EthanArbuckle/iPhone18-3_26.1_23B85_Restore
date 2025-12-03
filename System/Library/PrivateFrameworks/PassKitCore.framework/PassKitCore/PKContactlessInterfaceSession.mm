@interface PKContactlessInterfaceSession
+ (BOOL)_useSTSForDevicePrimaryContactlessAccessControlForSecureElementPass:(id)pass;
+ (__SecAccessControl)_copyDevicePrimaryContactlessAccessControlForSecureElementPass:(id)pass;
+ (__SecAccessControl)copyAccessControlForPaymentApplication:(id)application subcredential:(id)subcredential onSecureElementPass:(id)pass;
+ (id)transitAppletStateFromPaymentSession:(id)session forPaymentApplication:(id)application;
- (BOOL)_activatePaymentApplications:(id)applications forPaymentPass:(id)pass forceReactivation:(BOOL)reactivation;
- (BOOL)activatePaymentApplication:(id)application forPaymentPass:(id)pass;
- (BOOL)activatePaymentApplication:(id)application forPaymentPass:(id)pass markAsDefault:(BOOL)default;
- (BOOL)activateValueAddedServicePasses:(id)passes;
- (BOOL)authorizeAndStartCardEmulationWithCredential:(id)credential;
- (BOOL)authorizeAndStartCardEmulationWithCredential:(id)credential deferAuthorization:(BOOL)authorization requiresConfirmationForHandoff:(BOOL)handoff startHandoffIfPending:(BOOL)pending;
- (BOOL)cancelRKEFunction:(id)function;
- (BOOL)isWaitingOnConfirmationForHandoff;
- (BOOL)paymentApplicationSupportsAutomaticAuthorization:(id)authorization;
- (BOOL)queuePersistentCardEmulation;
- (BOOL)resetPersistentCardEmulation;
- (BOOL)sendRKEFunction:(id)function action:(id)action authorization:(id)authorization;
- (BOOL)stopCardEmulation;
- (NSArray)activatedPaymentApplications;
- (PKContactlessInterfaceSession)initWithInternalSession:(id)session targetQueue:(id)queue;
- (PKContactlessInterfaceSessionDelegate)delegate;
- (PKPaymentApplication)activatedPaymentApplication;
- (PKPaymentPass)activatedPaymentPass;
- (id)_appletForPaymentApplication:(id)application inInternalSession:(id)session;
- (id)_appletWithIdentifier:(id)identifier inInternalSession:(id)session;
- (id)_createExpressTransactionForState:(id)state pass:(id)pass paymentApplications:(id)applications date:(id)date shouldGenerateTransaction:(BOOL *)transaction withSession:(id)session;
- (id)_filteredLoyaltyPassesFromVASTransactions:(id)transactions activatedPasses:(id)passes;
- (id)_paymentApplicationForEventAppletIdentifier:(id)identifier inContext:(id)context withSession:(id)session;
- (id)transitAppletStateForPaymentApplication:(id)application;
- (unint64_t)state;
- (void)_endLookup;
- (void)_endLookupAndNotify;
- (void)_endPersistentCardEmulationForPaymentPass:(id)pass paymentApplications:(id)applications;
- (void)_processEndEvent:(id)event withPartialContext:(id)context;
- (void)_session:(id)_session didEnterFieldWithNotification:(id)notification;
- (void)_session:(id)_session didExpireTransactionForApplet:(id)applet;
- (void)_session:(id)_session didExpressModeStateChange:(unsigned int)change withObject:(id)object;
- (void)_session:(id)_session didFailDeferredAuthorization:(BOOL)authorization;
- (void)_session:(id)_session didSelectApplet:(id)applet;
- (void)_sessionDidEndUnexpectedly:(id)unexpectedly;
- (void)_sessionDidExitField:(id)field;
- (void)_sessionDidReceiveActivityTimeout:(id)timeout result:(id)result;
- (void)_signalWalletTransactionForContext:(id)context;
- (void)_startLookup;
- (void)authorize18013RequestWithDataToRelease:(id)release credential:(id)credential;
- (void)handleSessionResumed:(id)resumed;
- (void)handleSessionSuspended:(id)suspended withToken:(id)token;
- (void)invalidateSessionWithCompletion:(id)completion;
- (void)loyaltyAndPaymentSession:(id)session didEndTransaction:(id)transaction;
- (void)loyaltyAndPaymentSession:(id)session didEnterFieldWithNotification:(id)notification;
- (void)loyaltyAndPaymentSession:(id)session didExpireTransactionForApplet:(id)applet;
- (void)loyaltyAndPaymentSession:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object;
- (void)loyaltyAndPaymentSession:(id)session didFailDeferredAuthorization:(BOOL)authorization;
- (void)loyaltyAndPaymentSession:(id)session didFelicaStateChange:(id)change;
- (void)loyaltyAndPaymentSession:(id)session didPerformValueAddedServiceTransactions:(id)transactions;
- (void)loyaltyAndPaymentSession:(id)session didSelectApplet:(id)applet;
- (void)loyaltyAndPaymentSession:(id)session didSelectValueAddedService:(BOOL)service;
- (void)loyaltyAndPaymentSession:(id)session didStartTransaction:(id)transaction;
- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)loyaltyAndPaymentSessionDidExitField:(id)field;
- (void)loyaltyAndPaymentSessionDidReceiveActivityTimeout:(id)timeout result:(id)result;
- (void)loyaltyAndPaymentSessionHasPendingServerRequest:(id)request;
- (void)resetExpressState;
- (void)sendRKEFunction:(id)function action:(id)action withAuthorization:(id)authorization completion:(id)completion;
- (void)session:(id)session didEndTransaction:(id)transaction;
- (void)session:(id)session didEnterFieldWithNotification:(id)notification;
- (void)session:(id)session didExpireTransactionForApplet:(id)applet;
- (void)session:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object;
- (void)session:(id)session didSelectApplet:(id)applet;
- (void)session:(id)session didStartTransaction:(id)transaction;
- (void)session:(id)session event:(id)event;
- (void)sessionDidEndUnexpectedly:(id)unexpectedly;
- (void)sessionDidExitField:(id)field;
- (void)sessionDidFailDeferredAuthorization:(id)authorization;
- (void)sessionDidReceiveActivityTimeout:(id)timeout result:(id)result;
- (void)setDelegate:(id)delegate;
- (void)setState:(unint64_t)state;
- (void)stsSession:(id)session didChangeExpressModeWithInfo:(id)info;
- (void)stsSession:(id)session didEndTransaction:(id)transaction;
- (void)stsSession:(id)session didExpireTransaction:(BOOL)transaction;
- (void)stsSession:(id)session didReceive18013Requests:(id)requests readerAuthInfo:(id)info;
- (void)stsSession:(id)session didReceiveActivityTimeout:(id)timeout;
- (void)stsSession:(id)session didReceiveFieldNotification:(id)notification;
- (void)stsSession:(id)session didStartTransaction:(id)transaction;
- (void)stsSessionDidEndUnexpectedly:(id)unexpectedly errorCode:(unint64_t)code;
- (void)stsSessionRequestHandoffConfirmation:(id)confirmation;
@end

@implementation PKContactlessInterfaceSession

- (PKContactlessInterfaceSession)initWithInternalSession:(id)session targetQueue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  nfSession = [sessionCopy nfSession];
  stsSession = [sessionCopy stsSession];
  if (!nfSession)
  {
    goto LABEL_6;
  }

  PKGetClassNFLoyaltyAndPaymentSession();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    goto LABEL_7;
  }

  PKGetClassNFDigitalCarKeySession();
  if (objc_opt_isKindOfClass())
  {
    v10 = 1;
  }

  else
  {
LABEL_6:
    v10 = 2;
  }

LABEL_7:
  v19.receiver = self;
  v19.super_class = PKContactlessInterfaceSession;
  v11 = [(PKPaymentSession *)&v19 initWithInternalSession:sessionCopy targetQueue:queueCopy];
  v12 = v11;
  if (v11)
  {
    v11->_sessionType = v10;
    v11->_delegateLock._os_unfair_lock_opaque = 0;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_initially_inactive(v13);

    v15 = dispatch_queue_create("com.apple.passkit.contactlessInterfaceSession.callbackQueue", v14);
    callbackQueue = v12->_callbackQueue;
    v12->_callbackQueue = v15;

    if (queueCopy)
    {
      dispatch_set_target_queue(v12->_callbackQueue, queueCopy);
    }

    dispatch_activate(v12->_callbackQueue);
    sessionType = v12->_sessionType;
    if (sessionType == 2)
    {
      [stsSession setDelegate:v12];
    }

    else if (sessionType <= 1)
    {
      [nfSession setDelegate:v12];
      [nfSession setSessionDelegate:v12];
    }
  }

  return v12;
}

+ (__SecAccessControl)copyAccessControlForPaymentApplication:(id)application subcredential:(id)subcredential onSecureElementPass:(id)pass
{
  v5 = [PKPaymentSession STSCredentialForPaymentApplication:application subcredential:subcredential onSecureElementPass:pass];
  copyAccessControl = [v5 copyAccessControl];

  return copyAccessControl;
}

+ (__SecAccessControl)_copyDevicePrimaryContactlessAccessControlForSecureElementPass:(id)pass
{
  result = pass;
  if (result)
  {
    v4 = result;
    devicePrimaryContactlessPaymentApplication = [(__SecAccessControl *)result devicePrimaryContactlessPaymentApplication];
    v6 = devicePrimaryContactlessPaymentApplication;
    if (devicePrimaryContactlessPaymentApplication)
    {
      subcredentials = [devicePrimaryContactlessPaymentApplication subcredentials];
      anyObject = [subcredentials anyObject];

      v9 = [PKPaymentSession STSCredentialForPaymentApplication:v6 subcredential:anyObject onSecureElementPass:v4];
      copyAccessControl = [v9 copyAccessControl];
    }

    else
    {
      copyAccessControl = 0;
    }

    return copyAccessControl;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (BOOL)_useSTSForDevicePrimaryContactlessAccessControlForSecureElementPass:(id)pass
{
  passCopy = pass;
  if (passCopy)
  {
    v4 = passCopy;
    devicePrimaryContactlessPaymentApplication = [passCopy devicePrimaryContactlessPaymentApplication];
    v6 = devicePrimaryContactlessPaymentApplication;
    if (devicePrimaryContactlessPaymentApplication)
    {
      subcredentials = [devicePrimaryContactlessPaymentApplication subcredentials];
      anyObject = [subcredentials anyObject];

      v9 = [PKPaymentSession useSTSForPaymentApplication:v6 subcredential:anyObject onSecureElementPass:v4];
    }

    else
    {
      v9 = 0;
    }

    LOBYTE(passCopy) = v9;
  }

  else
  {
    __break(1u);
  }

  return passCopy;
}

- (void)invalidateSessionWithCompletion:(id)completion
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKContactlessInterfaceSession_invalidateSessionWithCompletion___block_invoke;
  v6[3] = &unk_1E79C7A28;
  v6[4] = self;
  completionCopy = completion;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v6];
  v5.receiver = self;
  v5.super_class = PKContactlessInterfaceSession;
  [(PKPaymentSession *)&v5 invalidateSessionWithCompletion:completionCopy];
}

void __65__PKContactlessInterfaceSession_invalidateSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = atomic_load((*(a1 + 32) + 145));
  if (v4)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 146))
    {
      if (*(v5 + 40))
      {
        v7 = v3;
        v6 = [*(v5 + 32) count];
        v3 = v7;
        if (v6)
        {
          [*(a1 + 32) _endPersistentCardEmulationForPaymentPass:*(*(a1 + 32) + 40) paymentApplications:*(*(a1 + 32) + 32)];
          v3 = v7;
        }
      }
    }
  }
}

- (BOOL)activatePaymentApplication:(id)application forPaymentPass:(id)pass markAsDefault:(BOOL)default
{
  v13 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (application)
  {
    applicationCopy = application;
    v8 = MEMORY[0x1E695DEC8];
    applicationCopy2 = application;
    application = [v8 arrayWithObjects:&applicationCopy count:1];
  }

  v10 = [(PKContactlessInterfaceSession *)self activatePaymentApplications:application forPaymentPass:passCopy, applicationCopy, v13];

  return v10;
}

- (BOOL)activatePaymentApplication:(id)application forPaymentPass:(id)pass
{
  v12 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (application)
  {
    applicationCopy = application;
    v7 = MEMORY[0x1E695DEC8];
    applicationCopy2 = application;
    application = [v7 arrayWithObjects:&applicationCopy count:1];
  }

  v9 = [(PKContactlessInterfaceSession *)self _activatePaymentApplications:application forPaymentPass:passCopy forceReactivation:0, applicationCopy, v12];

  return v9;
}

- (BOOL)_activatePaymentApplications:(id)applications forPaymentPass:(id)pass forceReactivation:(BOOL)reactivation
{
  applicationsCopy = applications;
  passCopy = pass;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v10 = [applicationsCopy count];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKContactlessInterfaceSession__activatePaymentApplications_forPaymentPass_forceReactivation___block_invoke;
  v15[3] = &unk_1E79C7A70;
  v15[4] = self;
  v18 = v24;
  reactivationCopy = reactivation;
  v11 = applicationsCopy;
  v16 = v11;
  v19 = &v26;
  v20 = &v30;
  v21 = &v34;
  v22 = v10;
  v12 = passCopy;
  v17 = v12;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v15];
  if (*(v35 + 24) == 1 && (v31[3] & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(v27 + 24);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v13 & 1;
}

void __95__PKContactlessInterfaceSession__activatePaymentApplications_forPaymentPass_forceReactivation___block_invoke(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v59 = a2;
  v3 = *(a1 + 32);
  if (*(v3 + 80))
  {
    v4 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(a1 + 32) + 88) = 1;
    goto LABEL_78;
  }

  if ((*(a1 + 96) & 1) == 0 && (*(v3 + 128) - 1) <= 1)
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 32);
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {

LABEL_17:
      v4 = 0;
      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_78;
    }

    v9 = [v6 count];
    if (v9 == [v8 count])
    {
      v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = v6;
      v11 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
      if (v11)
      {
        v12 = *v81;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v81 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v80 + 1) + 8 * i);
            v76 = 0;
            v77 = &v76;
            v78 = 0x2020000000;
            v79 = 0;
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __PKPaymentApplicationsArrayMatch_block_invoke;
            v75[3] = &unk_1E79C7E48;
            v75[4] = v10;
            v75[5] = v14;
            v75[6] = &v76;
            [v8 enumerateObjectsUsingBlock:v75];
            v15 = *(v77 + 24);
            _Block_object_dispose(&v76, 8);
            if ((v15 & 1) == 0)
            {

              goto LABEL_20;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_20:
  v16 = *(a1 + 32);
  v17 = *(v16 + 152);
  switch(v17)
  {
    case 2:
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v60 = *(a1 + 40);
      v62 = [v60 countByEnumeratingWithState:&v69 objects:v85 count:16];
      if (v62)
      {
        v61 = *v70;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v70 != v61)
            {
              objc_enumerationMutation(v60);
            }

            v29 = *(*(&v69 + 1) + 8 * j);
            obja = [v29 subcredentials];
            if (obja && [obja count])
            {
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v30 = obja;
              v31 = [v30 countByEnumeratingWithState:&v65 objects:v84 count:16];
              if (v31)
              {
                v32 = *v66;
                do
                {
                  for (k = 0; k != v31; ++k)
                  {
                    if (*v66 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v34 = [PKPaymentSession STSCredentialForPaymentApplication:v29 subcredential:*(*(&v65 + 1) + 8 * k) onSecureElementPass:*(a1 + 48)];
                    if (v34)
                    {
                      [v20 addObject:v34];
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v65 objects:v84 count:16];
                }

                while (v31);
              }
            }

            else
            {
              v30 = [PKPaymentSession STSCredentialForPaymentApplication:v29 subcredential:0 onSecureElementPass:*(a1 + 48)];
              if (v30)
              {
                [v20 addObject:v30];
              }
            }
          }

          v62 = [v60 countByEnumeratingWithState:&v69 objects:v85 count:16];
        }

        while (v62);
      }

      v35 = [v20 count];
      if ((v35 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v87 = v35;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Invalid credentials count for STS session: (n: %lu)", buf, 0xCu);
        }

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      v37 = [v59 stsSession];
      v38 = [v20 copy];
      v22 = [v37 setActiveCredentials:v38];

      *(*(*(a1 + 80) + 8) + 24) = v22 == 0;
      if (!v22)
      {
        v4 = 0;
LABEL_76:

        v16 = *(a1 + 32);
        goto LABEL_77;
      }

      v39 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v87 = v20;
        v88 = 2112;
        v89 = v22;
        _os_log_impl(&dword_1AD337000, v39, OS_LOG_TYPE_DEFAULT, "Could not activate credentials %@ with error %@", buf, 0x16u);
      }

      v4 = 0;
LABEL_75:

      goto LABEL_76;
    case 1:
      v23 = *(a1 + 88);
      if (v23 == 1)
      {
        v24 = [*(a1 + 40) firstObject];
        v25 = [v24 subcredentials];
        v26 = [v25 count];
        if (v26 == 1)
        {
          v20 = [*(a1 + 32) _appletForPaymentApplication:v24 inInternalSession:v59];
          v27 = [v25 anyObject];
          v22 = [v27 identifier];
        }

        else
        {
          v42 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v87 = v26;
            _os_log_impl(&dword_1AD337000, v42, OS_LOG_TYPE_DEFAULT, "Invalid credentials count for Car Key session: %lu", buf, 0xCu);
          }

          v22 = 0;
          v20 = 0;
          *(*(*(a1 + 72) + 8) + 24) = 0;
        }
      }

      else
      {
        v40 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v87 = v23;
          _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Invalid applications count for Car Key session: %lu", buf, 0xCu);
        }

        v22 = 0;
        v20 = 0;
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      v39 = [v59 nfSession];
      v73 = 0;
      v43 = [v39 setActiveApplet:v20 key:v22 outError:&v73];
      v44 = v73;
      goto LABEL_74;
    case 0:
      v18 = *(a1 + 88);
      if (v18 == 1)
      {
        v19 = [*(a1 + 40) firstObject];
        v20 = [*(a1 + 32) _appletForPaymentApplication:v19 inInternalSession:v59];
        v21 = [v19 subcredentials];
        if ([v21 count])
        {
          v22 = [v21 pk_setBySafelyApplyingBlock:&__block_literal_global_8];
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v41 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v87 = v18;
          _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Invalid applications count for Loyalty Payment session: %lu", buf, 0xCu);
        }

        v22 = 0;
        v20 = 0;
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      v39 = [v59 nfSession];
      v74 = 0;
      v43 = [v39 setActivePaymentApplet:v20 keys:v22 error:&v74];
      v44 = v74;
LABEL_74:
      v4 = v44;
      *(*(*(a1 + 80) + 8) + 24) = v43;
      goto LABEL_75;
  }

  v4 = 0;
LABEL_77:
  *(v16 + 148) = 0;
  *(*(a1 + 32) + 147) = 0;
LABEL_78:
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v45 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 40);
      *buf = 138412290;
      v87 = v46;
      v47 = "Activating Payment Applications: %@";
LABEL_88:
      _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, v47, buf, 0xCu);
      goto LABEL_89;
    }

    goto LABEL_89;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v45 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 40);
        *buf = 138412290;
        v87 = v48;
        v47 = "Activating Payment Applications (deferred): %@";
        goto LABEL_88;
      }

LABEL_89:

      v50 = [*(a1 + 40) copy];
      v51 = *(a1 + 32);
      v52 = *(v51 + 32);
      *(v51 + 32) = v50;

      objc_storeStrong((*(a1 + 32) + 40), *(a1 + 48));
      if ([*(*(a1 + 32) + 32) count] || objc_msgSend(*(*(a1 + 32) + 48), "count"))
      {
        if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
        {
          [*(a1 + 32) setState:1];
        }
      }

      else
      {
        [*(a1 + 32) setState:0];
      }

      goto LABEL_98;
    }

LABEL_86:
    v45 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a1 + 40);
      *buf = 138412290;
      v87 = v49;
      v47 = "Skipping Activatation of Payment Applications: %@";
      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_86;
  }

  v53 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *(a1 + 40);
    *buf = 138412546;
    v87 = v54;
    v88 = 2112;
    v89 = v4;
    _os_log_impl(&dword_1AD337000, v53, OS_LOG_TYPE_DEFAULT, "Failed to Activate Payment Applications: %@, Error: %@", buf, 0x16u);
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v56 = *(a1 + 32);
    v55 = a1 + 32;
    v57 = *(v56 + 32);
    *(v56 + 32) = 0;

    v58 = *(*v55 + 40);
    *(*v55 + 40) = 0;
  }

LABEL_98:
}

- (BOOL)activateValueAddedServicePasses:(id)passes
{
  passesCopy = passes;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [passesCopy count];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__PKContactlessInterfaceSession_activateValueAddedServicePasses___block_invoke;
  v17[3] = &unk_1E79C7A98;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  [passesCopy enumerateObjectsUsingBlock:v17];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKContactlessInterfaceSession_activateValueAddedServicePasses___block_invoke_128;
  v13[3] = &unk_1E79C7B58;
  v13[4] = self;
  v16 = &v20;
  v10 = v8;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v13];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

void __65__PKContactlessInterfaceSession_activateValueAddedServicePasses___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 nfcPayload];

  if (v4)
  {
    v5 = v3;
    v6 = [v5 passTypeIdentifier];
    v7 = [v6 dataUsingEncoding:4];
    v8 = [v7 SHA256Hash];

    v9 = [v5 nfcPayload];
    v10 = [v9 message];
    v11 = [v10 dataUsingEncoding:4];

    v12 = [v5 nfcPayload];
    v13 = [v12 encryptionPublicKeyData];

    if (v13)
    {
      v14 = [v5 nfcPayload];
      v15 = PKCreateEncryptedPassPayload([v14 encryptionPublicKeyData], v11, v8, 0);
    }

    else
    {
      v15 = v11;
    }

    v16 = objc_alloc_init(PKGetClassNFValueAddedServiceCard());
    [v16 setIdentifier:v8];
    [v16 setData:v15];
    [v16 setUserInterventionRequired:0];
    v17 = [MEMORY[0x1E695DEF0] data];
    [v16 setToken:v17];

    v18 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v5 passTypeIdentifier];
      v20 = [v16 identifier];
      v21 = [v5 serialNumber];
      v22 = [v16 data];
      v23 = 138413058;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2048;
      v30 = [v22 length];
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Activating NFC Pass: %@(%@)/%@ with Message of Size: %tu", &v23, 0x2Au);
    }

    [*(a1 + 32) addObject:v16];
    [*(a1 + 40) addObject:v5];
  }
}

void __65__PKContactlessInterfaceSession_activateValueAddedServicePasses___block_invoke_128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  if (*(v4 + 80) || *(v4 + 152))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v12 = [v3 nfSession];
    *(*(*(a1 + 56) + 8) + 24) = [v12 setHostCards:*(a1 + 40)];
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 48) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    v8 = [*(a1 + 40) copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    *(v9 + 56) = v8;

    if ([*(*(a1 + 32) + 32) count])
    {
      v11 = 1;
    }

    else
    {
      v11 = [*(*(a1 + 32) + 48) count] != 0;
    }

    [*(a1 + 32) setState:v11];
  }
}

- (BOOL)authorizeAndStartCardEmulationWithCredential:(id)credential
{
  selfCopy = self;
  activatedPaymentApplications = self->_activatedPaymentApplications;
  credentialCopy = credential;
  LOBYTE(selfCopy) = [(PKContactlessInterfaceSession *)selfCopy authorizeAndStartCardEmulationWithCredential:credentialCopy deferAuthorization:[(NSArray *)activatedPaymentApplications pk_containsObjectPassingTest:&__block_literal_global_131]];

  return selfCopy;
}

- (BOOL)authorizeAndStartCardEmulationWithCredential:(id)credential deferAuthorization:(BOOL)authorization requiresConfirmationForHandoff:(BOOL)handoff startHandoffIfPending:(BOOL)pending
{
  credentialCopy = credential;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __150__PKContactlessInterfaceSession_authorizeAndStartCardEmulationWithCredential_deferAuthorization_requiresConfirmationForHandoff_startHandoffIfPending___block_invoke;
  v14[3] = &unk_1E79C7AE0;
  v14[4] = self;
  v16 = &v20;
  pendingCopy = pending;
  handoffCopy = handoff;
  v11 = credentialCopy;
  v15 = v11;
  authorizationCopy = authorization;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v14];
  v12 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v12;
}

void __150__PKContactlessInterfaceSession_authorizeAndStartCardEmulationWithCredential_deferAuthorization_requiresConfirmationForHandoff_startHandoffIfPending___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 80))
  {
    [v4 _endLookup];
    v4 = *(a1 + 32);
  }

  *(v4 + 120) = 0;
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24) != 1)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v6 = *(a1 + 32);
  if (*(v6 + 128) == 2 || !*(v6 + 146))
  {
    v11 = 0;
    goto LABEL_12;
  }

  *(v5 + 24) = 0;
  v7 = *(*(a1 + 32) + 152);
  switch(v7)
  {
    case 2:
      v16 = [v3 stsSession];
      v11 = [v16 stopTransaction];

      *(*(*(a1 + 48) + 8) + 24) = v11 == 0;
      break;
    case 1:
      v8 = [v3 nfSession];
      v46 = 0;
      v9 = [v8 stopCardEmulation:&v46];
      v10 = v46;
      goto LABEL_18;
    case 0:
      v8 = [v3 nfSession];
      v47 = 0;
      v9 = [v8 stopCardEmulation:&v47];
      v10 = v47;
LABEL_18:
      v11 = v10;
      *(*(*(a1 + 48) + 8) + 24) = v9;

      break;
    default:
      v11 = 0;
      break;
  }

  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    goto LABEL_28;
  }

  *(*(a1 + 32) + 146) = 0;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    goto LABEL_28;
  }

  v6 = *(a1 + 32);
LABEL_12:
  if ([*(v6 + 32) count])
  {
    goto LABEL_28;
  }

  v12 = *(*(a1 + 32) + 152);
  if (v12 == 2)
  {
    v18 = [v3 stsSession];
    v13 = [v18 setActiveCredential:0];

    v14 = v13 == 0;
  }

  else
  {
    if (v12 == 1)
    {
      v13 = [v3 nfSession];
      v44 = v11;
      v14 = [v13 setActiveApplet:0 key:0 outError:&v44];
      v15 = v44;
    }

    else
    {
      if (v12)
      {
        goto LABEL_28;
      }

      v13 = [v3 nfSession];
      v45 = v11;
      v14 = [v13 setActivePaymentApplet:0 error:&v45];
      v15 = v45;
    }

    v17 = v15;

    v11 = v17;
  }

  *(*(*(a1 + 48) + 8) + 24) = v14;

LABEL_28:
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    goto LABEL_76;
  }

  v19 = *(a1 + 32);
  if (!*(v19 + 152) && !*(v19 + 48))
  {
    v20 = [v3 nfSession];
    *(*(*(a1 + 48) + 8) + 24) = [v20 setHostCards:MEMORY[0x1E695E0F0]];

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_76;
    }

    v19 = *(a1 + 32);
  }

  if (*(a1 + 56))
  {
    if (*(v19 + 128) == 2)
    {
      if (*(v19 + 148) == 1)
      {
        v21 = [v3 stsSession];
        v22 = [v21 startHandoff];

        v23 = v22 == 0;
        v24 = PKLogFacilityTypeGetObject(7uLL);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v25)
          {
            *buf = 138412290;
            v49 = v22;
            _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: failed to start handoff with error %@", buf, 0xCu);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        else
        {
          if (v25)
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: performed hand off", buf, 2u);
          }
        }

        v19 = *(a1 + 32);
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  *(v19 + 148) = 0;
  *(*(a1 + 32) + 147) = *(a1 + 57);
  if (!v23 && *(*(*(a1 + 48) + 8) + 24))
  {
    v26 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Starting Card Emulation For Transaction", buf, 2u);
    }

    if ([*(*(a1 + 32) + 32) count])
    {
      v27 = *(a1 + 40);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = *(a1 + 32);
    v30 = *(v29 + 152);
    if (v30 == 2)
    {
      if (*(v29 + 147))
      {
        v37 = *(a1 + 58) | 2;
      }

      else
      {
        v37 = *(a1 + 58);
      }

      v38 = [v3 stsSession];
      v33 = [v38 startTransactionWithAuthorization:v28 options:v37];

      *(*(*(a1 + 48) + 8) + 24) = v33 == 0;
      if (v33)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v33;
          _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Could not start transaction with error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v30 == 1)
      {
        v33 = [v3 nfSession];
        v36 = *(a1 + 58);
        v41 = v11;
        v34 = [v33 startCardEmulationAuthorization:v28 deferred:v36 error:&v41];
        v35 = v41;
      }

      else
      {
        if (v30)
        {
          goto LABEL_72;
        }

        v31 = *(a1 + 58);
        v32 = [v3 nfSession];
        v33 = v32;
        if (v31 == 1)
        {
          v43 = v11;
          v34 = [v32 startDeferredCardEmulation:3 authorization:v28 error:&v43];
          v35 = v43;
        }

        else
        {
          v42 = v11;
          v34 = [v32 startCardEmulation:3 authorization:v28 error:&v42];
          v35 = v42;
        }
      }

      v39 = v35;

      *(*(*(a1 + 48) + 8) + 24) = v34;
      v11 = v39;
    }

LABEL_72:
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_73;
    }

    goto LABEL_76;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v26 = PKLogFacilityTypeGetObject(7uLL);
LABEL_73:
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Started Card Emulation For Transaction", buf, 2u);
    }

    *(*(a1 + 32) + 146) = 3;
    [*(a1 + 32) setState:2];
    goto LABEL_83;
  }

LABEL_76:
  v40 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v11;
    _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session failed to authorize and start Card Emulation. Error: %{public}@", buf, 0xCu);
  }

  if (v11 && [v11 code] == 38)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Express transaction in progress: proceeding without card emulation...", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_83:
}

- (void)authorize18013RequestWithDataToRelease:(id)release credential:(id)credential
{
  releaseCopy = release;
  credentialCopy = credential;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKContactlessInterfaceSession_authorize18013RequestWithDataToRelease_credential___block_invoke;
  v10[3] = &unk_1E79C7B08;
  v10[4] = self;
  v11 = releaseCopy;
  v12 = credentialCopy;
  v8 = credentialCopy;
  v9 = releaseCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v10];
}

void __83__PKContactlessInterfaceSession_authorize18013RequestWithDataToRelease_credential___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_storeStrong((*(a1 + 32) + 160), *(a1 + 40));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v37 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v36 + 1) + 8 * v8);
      if ([v9 paymentType] == 1002)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (!v10)
    {
      goto LABEL_27;
    }

    v31 = v3;
    v11 = [v10 subcredentials];
    v12 = [v11 anyObject];

    v30 = v12;
    v29 = [PKPaymentSession STSCredentialForPaymentApplication:v10 subcredential:v12 onSecureElementPass:*(*(a1 + 32) + 40)];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [*(a1 + 40) elements];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v20 = [v19 elementNamespace];
          v21 = [v13 objectForKey:v20];

          if (!v21)
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v22 = [v19 elementNamespace];
            [v13 setObject:v21 forKey:v22];
          }

          v23 = [v19 identifier];
          [v21 addObject:v23];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v16);
    }

    v24 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Releasing Credential For Fields %@", buf, 0xCu);
    }

    v3 = v31;
    v25 = [v31 stsSession];
    v26 = *(a1 + 48);
    v27 = [v13 copy];
    v28 = [v25 releaseCredential:v29 withAuthorization:v26 iso18013Selection:v27];

    if (v28)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v28;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Released Credential Failed with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_27:
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session authorize18013RequestWithDataToRelease Failed. No valid PKPaymentApplication is found", buf, 2u);
    }
  }
}

- (BOOL)stopCardEmulation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PKContactlessInterfaceSession_stopCardEmulation__block_invoke;
  v4[3] = &unk_1E79C7B30;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__PKContactlessInterfaceSession_stopCardEmulation__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(a1 + 32) + 146))
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Stopping Card Emulation", buf, 2u);
    }

    v5 = *(*(a1 + 32) + 152);
    switch(v5)
    {
      case 2:
        v10 = [v3 stsSession];
        v9 = [v10 stopTransaction];

        *(*(*(a1 + 40) + 8) + 24) = v9 == 0;
        break;
      case 1:
        v6 = [v3 nfSession];
        v24 = 0;
        v7 = [v6 stopCardEmulation:&v24];
        v8 = v24;
        goto LABEL_10;
      case 0:
        v6 = [v3 nfSession];
        v25 = 0;
        v7 = [v6 stopCardEmulation:&v25];
        v8 = v25;
LABEL_10:
        v9 = v8;
        *(*(*(a1 + 40) + 8) + 24) = v7;

        break;
      default:
        v9 = 0;
        break;
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *(*(a1 + 32) + 146) = 0;
      v11 = *(a1 + 32);
      v12 = *(v11 + 48);
      *(v11 + 48) = 0;

      v13 = *(a1 + 32);
      v14 = *(v13 + 56);
      *(v13 + 56) = 0;

      v15 = *(a1 + 32);
      if (*(v15 + 40))
      {
        v16 = [*(v15 + 32) count] != 0;
      }

      else
      {
        v16 = 0;
      }

      [v15 setState:v16];
      v19 = atomic_load((*(a1 + 32) + 145));
      if ((v19 & 1) == 0 || *(*(a1 + 32) + 152))
      {
        goto LABEL_23;
      }

      v17 = [v3 nfSession];
      v20 = (*(a1 + 32) + 145);
      v23 = v9;
      v21 = [v17 enablePlasticCardMode:0 error:&v23];
      v18 = v23;

      atomic_store(v21 ^ 1, v20);
      v22 = *(a1 + 32);
      if (*(v22 + 40) && [*(v22 + 32) count])
      {
        [*(a1 + 32) _endPersistentCardEmulationForPaymentPass:*(*(a1 + 32) + 40) paymentApplications:*(*(a1 + 32) + 32)];
      }

      if (v18)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v18;
          _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to disable Persistent Card Emulation. Error: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to stop Card Emulation. Error: %@", buf, 0xCu);
      }

      v17 = v4;
      v18 = v9;
    }

    v9 = v18;
LABEL_23:

    goto LABEL_24;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_24:
}

- (void)resetExpressState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__PKContactlessInterfaceSession_resetExpressState__block_invoke;
  v2[3] = &unk_1E79C7A28;
  v2[4] = self;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v2];
}

void __50__PKContactlessInterfaceSession_resetExpressState__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

- (BOOL)sendRKEFunction:(id)function action:(id)action authorization:(id)authorization
{
  functionCopy = function;
  actionCopy = action;
  authorizationCopy = authorization;
  v11 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (self->_sessionType == 1)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PKContactlessInterfaceSession_sendRKEFunction_action_authorization___block_invoke;
    v13[3] = &unk_1E79C7B58;
    v14 = actionCopy;
    v15 = functionCopy;
    v17 = &v18;
    v16 = authorizationCopy;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v13];

    v11 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);

  return v11 & 1;
}

void __70__PKContactlessInterfaceSession_sendRKEFunction_action_authorization___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Sending RKE action %{public}@ for function %{public}@.", &v9, 0x16u);
  }

  v7 = [v3 nfSession];
  v8 = [v7 sendRKEFunction:a1[5] rkeAction:a1[4] authorization:a1[6]];
  *(*(a1[7] + 8) + 24) = v8 == 0;
}

- (void)sendRKEFunction:(id)function action:(id)action withAuthorization:(id)authorization completion:(id)completion
{
  functionCopy = function;
  actionCopy = action;
  authorizationCopy = authorization;
  completionCopy = completion;
  if (self->_sessionType == 1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__PKContactlessInterfaceSession_sendRKEFunction_action_withAuthorization_completion___block_invoke;
    v14[3] = &unk_1E79C7BA8;
    v15 = actionCopy;
    v16 = functionCopy;
    v17 = authorizationCopy;
    v18 = completionCopy;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v14];
  }
}

void __85__PKContactlessInterfaceSession_sendRKEFunction_action_withAuthorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Sending RKE action %{public}@ for function %{public}@.", buf, 0x16u);
  }

  v7 = [v3 nfSession];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PKContactlessInterfaceSession_sendRKEFunction_action_withAuthorization_completion___block_invoke_133;
  v11[3] = &unk_1E79C7B80;
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  [v7 sendRKEFunction:v8 action:v9 authorization:v10 completion:v11];
}

uint64_t __85__PKContactlessInterfaceSession_sendRKEFunction_action_withAuthorization_completion___block_invoke_133(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (BOOL)cancelRKEFunction:(id)function
{
  functionCopy = function;
  v5 = functionCopy;
  v6 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (self->_sessionType == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PKContactlessInterfaceSession_cancelRKEFunction___block_invoke;
    v8[3] = &unk_1E79C7BD0;
    v10 = &v11;
    v9 = functionCopy;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v8];

    v6 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void __51__PKContactlessInterfaceSession_cancelRKEFunction___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 nfSession];
  v3 = [v4 cancelRKEFunction:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
}

- (BOOL)queuePersistentCardEmulation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKContactlessInterfaceSession_queuePersistentCardEmulation__block_invoke;
  v4[3] = &unk_1E79C7B30;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __61__PKContactlessInterfaceSession_queuePersistentCardEmulation__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  v7 = atomic_load((v5 + 145));
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = v7 & 1;
LABEL_11:

    return;
  }

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_11;
  }

  v8 = [v3 nfSession];
  v14 = 0;
  v9 = [v8 enablePlasticCardMode:1 error:&v14];
  v10 = v14;
  v11 = 0;
  *(*(*(a1 + 40) + 8) + 24) = v9;
  atomic_compare_exchange_strong((*(a1 + 32) + 145), &v11, *(*(*(a1 + 40) + 8) + 24));
  if (!v11)
  {
    v12 = v10;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Failed to enable Persistent Card Emulation. Error: %@", buf, 0xCu);
      }
    }

    goto LABEL_11;
  }

  __break(1u);
}

- (BOOL)resetPersistentCardEmulation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKContactlessInterfaceSession_resetPersistentCardEmulation__block_invoke;
  v4[3] = &unk_1E79C7B30;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __61__PKContactlessInterfaceSession_resetPersistentCardEmulation__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  v7 = atomic_load((v5 + 145));
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = (v7 & 1) == 0;
LABEL_11:

    return;
  }

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_11;
  }

  v8 = [v3 nfSession];
  v14 = 0;
  v9 = [v8 enablePlasticCardMode:0 error:&v14];
  v10 = v14;
  *(*(*(a1 + 40) + 8) + 24) = v9;
  v11 = 1;
  atomic_compare_exchange_strong((*(a1 + 32) + 145), &v11, (*(*(*(a1 + 40) + 8) + 24) & 1) == 0);
  if (v11 == 1)
  {
    v12 = v10;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Failed to disable Persistent Card Emulation. Error: %@", buf, 0xCu);
      }
    }

    goto LABEL_11;
  }

  __break(1u);
}

- (BOOL)paymentApplicationSupportsAutomaticAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKContactlessInterfaceSession_paymentApplicationSupportsAutomaticAuthorization___block_invoke;
  v9[3] = &unk_1E79C7C68;
  v11 = &v12;
  v9[4] = self;
  v5 = authorizationCopy;
  v10 = v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v9];
  v6 = v13[5];
  if (v6)
  {
    v7 = [v6 authTransientSupport] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __82__PKContactlessInterfaceSession_paymentApplicationSupportsAutomaticAuthorization___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _appletForPaymentApplication:*(a1 + 40) inInternalSession:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __47__PKContactlessInterfaceSession_enableDemoMode__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 nfSession];
  v4 = [v3 enableDemoMode];
  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3 || v4)
  {
    if (v6)
    {
      v8 = 138412290;
      v9 = v4;
      v7 = "PKPaymentSession: failed to enter demo mode for session - %@.";
      goto LABEL_7;
    }
  }

  else if (v6)
  {
    v8 = 134217984;
    v9 = v2;
    v7 = "PKPaymentSession: successfully enabled demo mode for nearfield session %p.";
LABEL_7:
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
  }
}

- (PKPaymentApplication)activatedPaymentApplication
{
  activatedPaymentApplications = [(PKContactlessInterfaceSession *)self activatedPaymentApplications];
  firstObject = [activatedPaymentApplications firstObject];

  return firstObject;
}

- (NSArray)activatedPaymentApplications
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKContactlessInterfaceSession_activatedPaymentApplications__block_invoke;
  v4[3] = &unk_1E79C7BD0;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (PKPaymentPass)activatedPaymentPass
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PKContactlessInterfaceSession_activatedPaymentPass__block_invoke;
  v4[3] = &unk_1E79C7BD0;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setState:(unint64_t)state
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PKContactlessInterfaceSession_setState___block_invoke;
  v3[3] = &unk_1E79C7C40;
  v3[4] = self;
  v3[5] = state;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v3];
}

void __42__PKContactlessInterfaceSession_setState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PKContactlessInterfaceSession_setState___block_invoke_2;
  block[3] = &unk_1E79C7C18;
  block[4] = v4;
  block[5] = v3;
  block[6] = v2;
  dispatch_async(v5, block);
}

void __42__PKContactlessInterfaceSession_setState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSession:*(a1 + 32) didTransitionFromState:*(a1 + 40) toState:*(a1 + 48)];
  }
}

- (id)transitAppletStateForPaymentApplication:(id)application
{
  applicationCopy = application;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PKContactlessInterfaceSession_transitAppletStateForPaymentApplication___block_invoke;
  v8[3] = &unk_1E79C7C68;
  v8[4] = self;
  v10 = &v11;
  v5 = applicationCopy;
  v9 = v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __73__PKContactlessInterfaceSession_transitAppletStateForPaymentApplication___block_invoke(void *a1, void *a2)
{
  if (!*(a1[4] + 152))
  {
    v3 = a2;
    v4 = objc_opt_class();
    v8 = [v3 nfSession];

    v5 = [v4 transitAppletStateFromPaymentSession:v8 forPaymentApplication:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

+ (id)transitAppletStateFromPaymentSession:(id)session forPaymentApplication:(id)application
{
  v31 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  applicationCopy = application;
  if (!applicationCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  applicationIdentifier = [applicationCopy applicationIdentifier];
  v8 = [sessionCopy appletWithIdentifier:applicationIdentifier];

  if (!v8)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  appletDataFormat = [applicationCopy appletDataFormat];
  v10 = appletDataFormat;
  if (appletDataFormat && @"transit.felica.suica")
  {
    if (([(__CFString *)appletDataFormat isEqual:@"transit.felica.suica"]& 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (appletDataFormat != @"transit.felica.suica")
  {
    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = 0;
    v13 = [sessionCopy felicaAppletState:v8 error:&v26];
    v14 = v26;
    v15 = v14;
    if (v13)
    {
      if (PKTransitDumpStates())
      {
        v16 = PKLogFacilityTypeGetObject(0xDuLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          applicationIdentifier2 = [applicationCopy applicationIdentifier];
          *buf = 138412546;
          v28 = applicationIdentifier2;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Felica state for AID<%@>:\n%@", buf, 0x16u);
        }
      }

      v18 = [[PKFelicaAppletHistory alloc] initWithDictionary:v13 source:1];
      goto LABEL_29;
    }

    if (!v14)
    {
      goto LABEL_39;
    }

    v22 = PKLogFacilityTypeGetObject(0xDuLL);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 138412290;
    v28 = v15;
    v23 = "Failed to acquire Felica state. Error: %@";
    goto LABEL_37;
  }

LABEL_21:
  if (![(__CFString *)v10 hasPrefix:@"transit.apple"]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = 0;
    v15 = 0;
LABEL_43:
    v11 = 0;
    goto LABEL_44;
  }

  v25 = 0;
  v13 = [sessionCopy transitAppletState:v8 error:&v25];
  v19 = v25;
  v15 = v19;
  if (!v13)
  {
    if (!v19)
    {
LABEL_39:
      v13 = 0;
      goto LABEL_43;
    }

    v22 = PKLogFacilityTypeGetObject(0xDuLL);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:

      goto LABEL_39;
    }

    *buf = 138412290;
    v28 = v15;
    v23 = "Failed to acquire transit state. Error: %@";
LABEL_37:
    _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
    goto LABEL_38;
  }

  if (PKTransitDumpStates())
  {
    v20 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier3 = [applicationCopy applicationIdentifier];
      *buf = 138412546;
      v28 = applicationIdentifier3;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Transit state for AID<%@>:\n%@", buf, 0x16u);
    }
  }

  v18 = [[PKTransitAppletHistory alloc] initWithDictionary:v13 source:1];
  if (!v18)
  {
    v24 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "\tFailed to create transit history from transit state: %@", buf, 0xCu);
    }

    goto LABEL_43;
  }

LABEL_29:
  v11 = v18;
LABEL_44:

LABEL_10:

  return v11;
}

- (unint64_t)state
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PKContactlessInterfaceSession_state__block_invoke;
  v4[3] = &unk_1E79C7BD0;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (PKContactlessInterfaceSessionDelegate)delegate
{
  os_unfair_lock_lock(&self->_delegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_delegateLock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegateLock);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (delegateCopy)
  {
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 134218242;
      selfCopy2 = self;
      v16 = 2114;
      v17 = v8;
      _os_log_debug_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEBUG, "PKContactlessInterfaceSession (%p): switching to delegate of kind %{public}@.", buf, 0x16u);
    }
  }

  else if (v6)
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEBUG, "PKContactlessInterfaceSession (%p): switching to nil delegate.", buf, 0xCu);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  os_unfair_lock_unlock(&self->_delegateLock);
  if (delegateCopy)
  {
    objc_initWeak(buf, delegateCopy);
    objc_initWeak(&location, self);
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKContactlessInterfaceSession_setDelegate___block_invoke;
    block[3] = &unk_1E79C7C90;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(&v12, buf);
    dispatch_async(callbackQueue, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __45__PKContactlessInterfaceSession_setDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[144] == 1)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = objc_loadWeakRetained((a1 + 40));

    if (v4 == v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5[144] = 0;
      [v3 contactlessInterfaceSessionHasPendingServerRequest:?];
    }

    WeakRetained = v5;
  }
}

- (BOOL)isWaitingOnConfirmationForHandoff
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PKContactlessInterfaceSession_isWaitingOnConfirmationForHandoff__block_invoke;
  v4[3] = &unk_1E79C7BD0;
  v4[4] = self;
  v4[5] = &v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)_paymentApplicationForEventAppletIdentifier:(id)identifier inContext:(id)context withSession:(id)session
{
  v70 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  sessionCopy = session;
  paymentPass = [contextCopy paymentPass];
  [contextCopy activatedPaymentApplications];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = v63 = 0u;
  obj = [v11 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (!obj)
  {
    v33 = 0;
    goto LABEL_55;
  }

  v44 = contextCopy;
  v45 = paymentPass;
  v12 = *v61;
  v49 = sessionCopy;
  v50 = *v61;
  v51 = v11;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v61 != v12)
    {
      objc_enumerationMutation(v11);
    }

    v14 = *(*(&v60 + 1) + 8 * v13);
    applicationIdentifier = [v14 applicationIdentifier];
    v16 = applicationIdentifier;
    if (identifierCopy && applicationIdentifier)
    {
      v17 = [applicationIdentifier isEqual:identifierCopy];

      if (v17)
      {
        goto LABEL_35;
      }
    }

    else
    {

      if (v16 == identifierCopy)
      {
LABEL_35:
        v33 = v14;
LABEL_36:
        contextCopy = v44;
        paymentPass = v45;
        goto LABEL_55;
      }
    }

    v18 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: primary applet identifiers do not match, inspecting group AIDs...", buf, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      applicationIdentifier2 = [v14 applicationIdentifier];
      v20 = [sessionCopy appletWithIdentifier:applicationIdentifier2];

      if (v20)
      {
        break;
      }
    }

LABEL_32:
    if (obj == ++v13)
    {
      obj = [v11 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (obj)
      {
        goto LABEL_3;
      }

      v33 = 0;
      goto LABEL_36;
    }
  }

  identifier = [v20 identifier];
  groupMemberIDs = [v20 groupMemberIDs];
  multiSEGroupMemberIDs = [v20 multiSEGroupMemberIDs];
  if (![groupMemberIDs count])
  {
    v24 = multiSEGroupMemberIDs;
    groupHeadID = [v20 groupHeadID];
    if (objc_opt_respondsToSelector())
    {
      v46 = identifier;
      v26 = [sessionCopy appletWithIdentifier:groupHeadID];
      if (v26)
      {
        v27 = v26;
        v52 = groupHeadID;

        groupMemberIDs2 = [v27 groupMemberIDs];

        multiSEGroupMemberIDs2 = [v27 multiSEGroupMemberIDs];

        groupMemberIDs = v27;
        v24 = multiSEGroupMemberIDs2;
        identifier = v52;
      }

      else
      {
        groupMemberIDs2 = 0;
      }
    }

    else
    {
      groupMemberIDs2 = 0;
    }

    groupMemberIDs = groupMemberIDs2;
    multiSEGroupMemberIDs = v24;
    sessionCopy = v49;
    v12 = v50;
  }

  v53 = multiSEGroupMemberIDs;
  if ([multiSEGroupMemberIDs count])
  {
    v29 = identifier;
    if (groupMemberIDs)
    {
      v30 = [groupMemberIDs mutableCopy];
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v31 = v30;
    [v30 addObjectsFromArray:multiSEGroupMemberIDs];
    v32 = [v31 copy];

    groupMemberIDs = v32;
    identifier = v29;
    v12 = v50;
  }

  if (!identifierCopy || (!groupMemberIDs || ([groupMemberIDs containsObject:identifierCopy] & 1) == 0) && !objc_msgSend(identifier, "isEqualToString:", identifierCopy))
  {

    v11 = v51;
    goto LABEL_32;
  }

  v48 = identifier;
  [v45 devicePaymentApplications];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obja = v59 = 0u;
  v34 = [obja countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v57;
LABEL_40:
    v37 = 0;
    while (1)
    {
      if (*v57 != v36)
      {
        objc_enumerationMutation(obja);
      }

      v38 = *(*(&v56 + 1) + 8 * v37);
      applicationIdentifier3 = [v38 applicationIdentifier];
      v40 = [applicationIdentifier3 isEqualToString:identifierCopy];

      if (v40)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [obja countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v35)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }
    }

    v33 = v38;

    if (!v33)
    {
      goto LABEL_51;
    }

    sessionCopy = v49;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier4 = [v33 applicationIdentifier];
      *buf = 138412546;
      v65 = applicationIdentifier4;
      v66 = 2112;
      v67 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: Applet is member of group and actual payment application identified; aliasing (%@ ↔ %@).", buf, 0x16u);
    }

    paymentPass = v45;
    v42 = v48;
  }

  else
  {
LABEL_46:

LABEL_51:
    v42 = v48;
    sessionCopy = v49;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: Applet is member of group but failed to identify actual payment application.", buf, 2u);
    }

    v33 = 0;
    paymentPass = v45;
  }

  contextCopy = v44;
  v11 = v51;
LABEL_55:

  return v33;
}

- (id)_appletForPaymentApplication:(id)application inInternalSession:(id)session
{
  sessionCopy = session;
  applicationIdentifier = [application applicationIdentifier];
  v8 = [(PKContactlessInterfaceSession *)self _appletWithIdentifier:applicationIdentifier inInternalSession:sessionCopy];

  return v8;
}

- (id)_appletWithIdentifier:(id)identifier inInternalSession:(id)session
{
  identifierCopy = identifier;
  sessionCopy = session;
  v8 = sessionCopy;
  if (identifierCopy && self->_sessionType <= 1)
  {
    nfSession = [sessionCopy nfSession];
    v10 = [nfSession appletWithIdentifier:identifierCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_filteredLoyaltyPassesFromVASTransactions:(id)transactions activatedPasses:(id)passes
{
  v41 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  passesCopy = passes;
  array = [MEMORY[0x1E695DF70] array];
  if ([transactionsCopy count])
  {
    v30 = transactionsCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = passesCopy;
    v9 = passesCopy;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          passTypeIdentifier = [v14 passTypeIdentifier];
          v16 = [passTypeIdentifier dataUsingEncoding:4];
          sHA256Hash = [v16 SHA256Hash];

          array2 = [dictionary objectForKey:sHA256Hash];
          if (!array2)
          {
            array2 = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array2 forKey:sHA256Hash];
          }

          [array2 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v30;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          merchant = [*(*(&v31 + 1) + 8 * j) merchant];
          identifier = [merchant identifier];
          v26 = [dictionary objectForKey:identifier];

          if (v26)
          {
            [array addObjectsFromArray:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v21);
    }

    passesCopy = v29;
    transactionsCopy = v30;
  }

  v27 = [array copy];

  return v27;
}

- (void)_endPersistentCardEmulationForPaymentPass:(id)pass paymentApplications:(id)applications
{
  passCopy = pass;
  applicationsCopy = applications;
  delegate = [(PKContactlessInterfaceSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke;
    v23[3] = &unk_1E79C7CB8;
    v24 = applicationsCopy;
    v25 = passCopy;
    selfCopy = self;
    v10 = v9;
    v27 = v10;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v23];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke_2;
    block[3] = &unk_1E79C4E00;
    block[4] = delegate;
    block[5] = self;
    v22 = v10;
    v12 = v10;
    dispatch_async(callbackQueue, block);

    v13 = v24;
LABEL_5:

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:passCopy activatedPaymentApplications:applicationsCopy];
    [(PKContactlessInterfaceTransactionContext *)v14 setSuccess:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke_3;
    v19[3] = &unk_1E79C7CE0;
    v19[4] = self;
    v15 = v14;
    v20 = v15;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v19];
    v16 = self->_callbackQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke_4;
    v17[3] = &unk_1E79C4E00;
    v17[4] = delegate;
    v17[5] = self;
    v18 = v15;
    v12 = v15;
    dispatch_async(v16, v17);

    v13 = v20;
    goto LABEL_5;
  }

LABEL_6:
}

void __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:*(a1 + 40) activatedPaymentApplications:*(a1 + 32)];
        [(PKContactlessInterfaceTransactionContext *)v8 setSuccess:1];
        [(PKContactlessInterfaceTransactionContext *)v8 setPaymentApplication:v7];
        if (!*(*(a1 + 48) + 152))
        {
          v9 = objc_opt_class();
          v10 = [v12 nfSession];
          v11 = [v9 transitAppletStateFromPaymentSession:v10 forPaymentApplication:v7];

          if (v11)
          {
            [(PKContactlessInterfaceTransactionContext *)v8 setTransitHistory:v11];
          }
        }

        [*(a1 + 56) addObject:{v8, v12}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 contactlessInterfaceSession:v2 didEndPersistentCardEmulationWithContexts:v3];
}

void __95__PKContactlessInterfaceSession__endPersistentCardEmulationForPaymentPass_paymentApplications___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!*(v4 + 152))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(v4 + 32);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = objc_opt_class();
          v12 = [v3 nfSession];
          v13 = [v11 transitAppletStateFromPaymentSession:v12 forPaymentApplication:v10];

          [*(a1 + 40) setPaymentApplication:v10];
          if (v13)
          {
            [*(a1 + 40) setTransitHistory:v13];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_processEndEvent:(id)event withPartialContext:(id)context
{
  v77 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  contextCopy = context;
  delegate = [(PKContactlessInterfaceSession *)self delegate];
  paymentPass = [contextCopy paymentPass];
  paymentApplication = [contextCopy paymentApplication];
  if (!paymentApplication)
  {
    applet = [eventCopy applet];
    identifier = [applet identifier];

    if (delegate && ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
    {
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy7 = self;
        v72 = 2112;
        v73 = identifier;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): received event for unexpected applet identifier %@.", buf, 0x16u);
      }

      AnalyticsSendEvent();
      if (objc_opt_respondsToSelector())
      {
        activatedPaymentApplications = [contextCopy activatedPaymentApplications];
        valueAddedServicePasses = [contextCopy valueAddedServicePasses];
        [delegate contactlessInterfaceSessionDidFail:self forPaymentApplications:activatedPaymentApplications paymentPass:paymentPass valueAddedServicePasses:valueAddedServicePasses];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_80;
        }

        activatedPaymentApplications = [contextCopy activatedPaymentApplications];
        valueAddedServicePasses = [activatedPaymentApplications firstObject];
        valueAddedServicePasses2 = [contextCopy valueAddedServicePasses];
        [delegate contactlessInterfaceSessionDidFail:self forPaymentApplication:valueAddedServicePasses paymentPass:paymentPass valueAddedServicePasses:valueAddedServicePasses2];
      }

      goto LABEL_80;
    }

    v21 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v72 = 2112;
      v73 = identifier;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): received event for unexpected applet identifier %@; dropped.", buf, 0x16u);
    }

LABEL_49:

    AnalyticsSendEvent();
    goto LABEL_80;
  }

  didError = [eventCopy didError];
  type = [eventCopy type];
  paymentType = [paymentApplication paymentType];
  if ((paymentType - 1001) > 3 || paymentType == 1002)
  {
    selfCopy3 = self;
    transactionIdentifier = [eventCopy transactionIdentifier];
    identifier = [transactionIdentifier uppercaseString];

    if (didError)
    {
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v24 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          selfCopy7 = selfCopy3;
          v72 = 2112;
          v73 = paymentApplication;
          v74 = 1024;
          LODWORD(v75) = [eventCopy result];
          _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Failed Transaction for %@: result %d.", buf, 0x1Cu);
        }

        AnalyticsSendEvent();
        [delegate contactlessInterfaceSessionDidFailTransaction:selfCopy3 forPaymentApplication:paymentApplication paymentPass:paymentPass];
        goto LABEL_80;
      }

      v21 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        selfCopy7 = selfCopy3;
        v72 = 2112;
        v73 = paymentApplication;
        v74 = 1024;
        LODWORD(v75) = [eventCopy result];
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Failed Transaction for %@: result %d; dropped.", buf, 0x1Cu);
      }

      goto LABEL_49;
    }

    if (type == 256)
    {

      [contextCopy setSuccess:1];
      identifier = 0;
    }

    else
    {
      [contextCopy setSuccess:1];
      if (type <= 0x22 && ((1 << type) & 0x500000004) != 0)
      {
        [paymentApplication supportsTransitHistory];
        v29 = 0;
        appletCurrencyCode = 0;
        v26 = 1;
        goto LABEL_63;
      }
    }

    if ([paymentPass isTransitPass])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    supportsTransitHistory = [paymentApplication supportsTransitHistory];
    if (type != 256 || (supportsTransitHistory & 1) != 0)
    {
      appletCurrencyCode = 0;
      v29 = 0;
      goto LABEL_62;
    }

    transitHistory = [contextCopy transitHistory];
    if (transitHistory)
    {
      v60 = transitHistory;
      if ((-[NSObject supportsSuica](paymentApplication, "supportsSuica") & 1) != 0 || [eventCopy result] == 61443)
      {
        appletCurrencyCode = 0;
        v29 = 0;
      }

      else
      {
        if ([v60 source])
        {
          appletCurrencyCode = 0;
          v29 = 0;
          transitHistory = v60;
          goto LABEL_61;
        }

        historyRecords = [v60 historyRecords];
        firstObject = [historyRecords firstObject];
        felicaHistoryRecord = [firstObject felicaHistoryRecord];
        transactionID = [felicaHistoryRecord transactionID];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = historyRecords;
        v29 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
        if (v29)
        {
          v57 = v26;
          v58 = paymentPass;
          v43 = 0;
          v63 = 0;
          v65 = *v67;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v67 != v65)
              {
                objc_enumerationMutation(obj);
              }

              felicaHistoryRecord2 = [*(*(&v66 + 1) + 8 * i) felicaHistoryRecord];
              v46 = felicaHistoryRecord2;
              if (felicaHistoryRecord2)
              {
                transactionType = [felicaHistoryRecord2 transactionType];
                unsignedIntegerValue = [transactionType unsignedIntegerValue];

                if (unsignedIntegerValue == 240 || unsignedIntegerValue == 74)
                {
                  amountType = [v46 amountType];
                  unsignedIntegerValue2 = [amountType unsignedIntegerValue];

                  if (unsignedIntegerValue2 != 3)
                  {
                    v51 = PKLogFacilityTypeGetObject(7uLL);
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      LODWORD(selfCopy7) = unsignedIntegerValue2;
                      _os_log_impl(&dword_1AD337000, v51, OS_LOG_TYPE_DEFAULT, "Invalid amount type detected for Felica transaction: %d", buf, 8u);
                    }
                  }

                  amount = [v46 amount];
                  integerValue = [amount integerValue];

                  if (integerValue < 0)
                  {
                    v54 = integerValue;
                  }

                  else
                  {
                    v54 = -integerValue;
                  }

                  if (unsignedIntegerValue == 240)
                  {
                    v54 = integerValue;
                  }

                  v63 += v54;
                  v43 = 1;
                }
              }
            }

            v29 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
          }

          while (v29);

          if (v43)
          {
            if (v63 >= 0)
            {
              v55 = v63;
            }

            else
            {
              v55 = -v63;
            }

            v29 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v55 exponent:0 isNegative:v63 >> 31];
            appletCurrencyCode = [paymentApplication appletCurrencyCode];
            v26 = v57;
            paymentPass = v58;
            if (!appletCurrencyCode)
            {
              v56 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v56, OS_LOG_TYPE_DEFAULT, "Felica payment transaction missing applet currency code - will be ignored.", buf, 2u);
              }
            }

            if (v63 < 0)
            {
              v26 = 1;
            }
          }

          else
          {
            appletCurrencyCode = 0;
            v29 = 0;
            v26 = v57;
            paymentPass = v58;
          }
        }

        else
        {

          appletCurrencyCode = 0;
        }

        identifier = transactionID;
      }

      transitHistory = v60;
    }

    else
    {
      appletCurrencyCode = 0;
      v29 = 0;
    }

LABEL_61:

LABEL_62:
    if (v26 == 2)
    {
LABEL_71:
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v36 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          transaction = [contextCopy transaction];
          *buf = 134218498;
          selfCopy7 = selfCopy3;
          v72 = 2112;
          v73 = paymentApplication;
          v74 = 2112;
          v75 = transaction;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Successful Transaction for %@: %@.", buf, 0x20u);
        }

        AnalyticsSendEvent();
        [(PKContactlessInterfaceSession *)selfCopy3 _signalWalletTransactionForContext:contextCopy];
        [delegate contactlessInterfaceSession:selfCopy3 didFinishTransactionWithContext:contextCopy];
      }

      else
      {
        v38 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          transaction2 = [contextCopy transaction];
          *buf = 134218498;
          selfCopy7 = selfCopy3;
          v72 = 2112;
          v73 = paymentApplication;
          v74 = 2112;
          v75 = transaction2;
          _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Successful Transaction for %@: %@; dropped.", buf, 0x20u);
        }

        AnalyticsSendEvent();
        [(PKContactlessInterfaceSession *)selfCopy3 _signalWalletTransactionForContext:contextCopy];
      }

      goto LABEL_80;
    }

LABEL_63:
    if (([paymentPass isEMoneyPass] & 1) == 0)
    {
      v64 = v29;
      [contextCopy setTransitHistory:0];
      v31 = [PKPaymentTransaction paymentTransactionWithSource:1];
      [v31 setOriginatedByDevice:1];
      [v31 setTransactionType:v26];
      [v31 setPaymentHash:identifier];
      [v31 addUpdateReasons:1];
      paymentApplication2 = [contextCopy paymentApplication];
      dpanIdentifier = [paymentApplication2 dpanIdentifier];
      [v31 setDPANIdentifier:dpanIdentifier];

      [v31 setPaymentNetworkIdentifier:{objc_msgSend(paymentApplication2, "paymentNetworkIdentifier")}];
      date = [contextCopy date];
      [v31 setTransactionDate:date];

      if (([eventCopy informative] & 0x100) != 0)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      [v31 setTechnologyType:v35];
      if (appletCurrencyCode && v64)
      {
        [v31 setAmount:v64];
        [v31 setCurrencyCode:appletCurrencyCode];
      }

      [contextCopy setTransaction:v31];

      v29 = v64;
    }

    goto LABEL_71;
  }

  if (didError)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy7 = self;
        v72 = 2112;
        v73 = paymentApplication;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Failed Access Event for %@.", buf, 0x16u);
      }

      [delegate contactlessInterfaceSessionDidFailTransaction:self forPaymentApplication:paymentApplication paymentPass:paymentPass];
      goto LABEL_81;
    }

    identifier = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v72 = 2112;
      v73 = paymentApplication;
      _os_log_impl(&dword_1AD337000, identifier, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Failed Access Event for %@; dropped.", buf, 0x16u);
    }

LABEL_80:

    goto LABEL_81;
  }

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v72 = 2112;
      v73 = paymentApplication;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Successful Access Event for %@.", buf, 0x16u);
    }

    [contextCopy setSuccess:1];
    [(PKContactlessInterfaceSession *)self _signalWalletTransactionForContext:contextCopy];
    [delegate contactlessInterfaceSession:self didFinishTransactionWithContext:contextCopy];
  }

  else
  {
    v22 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v72 = 2112;
      v73 = paymentApplication;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): Successful Access Event for %@; dropped.", buf, 0x16u);
    }

    [contextCopy setSuccess:1];
    [(PKContactlessInterfaceSession *)self _signalWalletTransactionForContext:contextCopy];
  }

LABEL_81:
}

- (void)_signalWalletTransactionForContext:(id)context
{
  contextCopy = context;
  paymentPass = [contextCopy paymentPass];
  v6 = paymentPass;
  if (paymentPass)
  {
    firstObject = paymentPass;
  }

  else
  {
    valueAddedServicePasses = [contextCopy valueAddedServicePasses];
    firstObject = [valueAddedServicePasses firstObject];
  }

  transaction = [contextCopy transaction];
  if (firstObject)
  {
    outstandingTransactionType = self->_outstandingTransactionType;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PKContactlessInterfaceSession__signalWalletTransactionForContext___block_invoke;
    aBlock[3] = &unk_1E79C7D08;
    v11 = firstObject;
    v17 = v11;
    v12 = _Block_copy(aBlock);
    callbackQueue = self->_callbackQueue;
    if (transaction)
    {
      [PKWalletTransactionSignal donateSignalForPass:v11 transaction:transaction queue:callbackQueue completion:v12];
    }

    else
    {
      [PKWalletTransactionSignal donateSignalForPass:v11 transactionType:outstandingTransactionType queue:callbackQueue completion:v12];
    }

    v14 = v17;
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Unable to donate signal for nil pass!", &v15, 2u);
    }
  }
}

void __68__PKContactlessInterfaceSession__signalWalletTransactionForContext___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) uniqueID];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unable to donate signal for pass %@. Error: %@", &v6, 0x16u);
    }
  }
}

- (void)loyaltyAndPaymentSessionHasPendingServerRequest:(id)request
{
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Received Pending Priority Session Notification...", buf, 2u);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKContactlessInterfaceSession_loyaltyAndPaymentSessionHasPendingServerRequest___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __81__PKContactlessInterfaceSession_loyaltyAndPaymentSessionHasPendingServerRequest___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    *(v3 + 144) = 0;
    [v4 contactlessInterfaceSessionHasPendingServerRequest:*(a1 + 32)];
  }

  else
  {
    *(v3 + 144) = 1;
  }
}

- (void)loyaltyAndPaymentSession:(id)session didStartTransaction:(id)transaction
{
  v12 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  kdebug_trace();
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = transactionCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Started Transaction Event: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
  PKTimeProfileBegin(v6, @"contactless_transaction");

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didStartTransaction___block_invoke;
  v8[3] = &unk_1E79C7CE0;
  v8[4] = self;
  v9 = transactionCopy;
  v7 = transactionCopy;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v8];
}

void __78__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didStartTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(a1 + 32) + 80))
  {
    *(*(a1 + 32) + 96) = mach_absolute_time();
    if ([*(a1 + 40) paymentMode] == 2)
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      v6 = *(v5 + 136);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didStartTransaction___block_invoke_2;
      block[3] = &unk_1E79C4E00;
      block[4] = v5;
      v8 = v4;
      v9 = v3;
      dispatch_async(v6, block);
    }
  }
}

void __78__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didStartTransaction___block_invoke_2(id *a1)
{
  v8 = [a1[4] delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:*(a1[4] + 5) activatedPaymentApplications:*(a1[4] + 4)];
    v3 = [a1[5] applet];
    v4 = [v3 identifier];

    v5 = a1[4];
    v6 = [a1[6] nfSession];
    v7 = [v5 _paymentApplicationForEventAppletIdentifier:v4 inContext:v2 withSession:v6];
    [(PKContactlessInterfaceTransactionContext *)v2 setPaymentApplication:v7];

    [v8 contactlessInterfaceSessionDidStartTransaction:a1[4] withContext:v2];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v8 contactlessInterfaceSessionDidStartTransaction:a1[4]];
  }
}

- (void)loyaltyAndPaymentSessionDidReceiveActivityTimeout:(id)timeout result:(id)result
{
  resultCopy = result;
  timeoutCopy = timeout;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:timeoutCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidReceiveActivityTimeout:v8 result:resultCopy];
}

- (void)loyaltyAndPaymentSession:(id)session didEndTransaction:(id)transaction
{
  v24 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  transactionCopy = transaction;
  if ([transactionCopy result] != 61443)
  {
    kdebug_trace();
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = transactionCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Finished Transaction Event: %@", buf, 0xCu);
    }

    v9 = PKTimeProfileEnd(v8, @"contactless_transaction", @"Transaction Event");
    v10 = mach_absolute_time();
    v11 = PKSecondsFromMachTimeInterval(v10 - self->_transactionStartTime);
    date = [MEMORY[0x1E695DF00] date];
    v20 = @"duration";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v21 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    AnalyticsSendEvent();

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didEndTransaction___block_invoke;
    v16[3] = &unk_1E79C7CB8;
    v16[4] = self;
    v17 = transactionCopy;
    v18 = date;
    v19 = sessionCopy;
    v15 = date;
    [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v16];
  }
}

void __76__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didEndTransaction___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  if (!v5)
  {
    v6 = *(v4 + 40);
    v7 = [*(*(a1 + 32) + 48) copy];
    v8 = *(*(a1 + 32) + 64);
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = 0;

    [*(a1 + 32) setState:1];
    v11 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:v6 activatedPaymentApplications:*(*(a1 + 32) + 32)];
    [(PKContactlessInterfaceTransactionContext *)v11 setDate:*(a1 + 48)];
    v12 = [*(a1 + 32) _filteredLoyaltyPassesFromVASTransactions:v8 activatedPasses:v7];
    [(PKContactlessInterfaceTransactionContext *)v11 setValueAddedServicePasses:v12];

    [(PKContactlessInterfaceTransactionContext *)v11 setValueAddedServiceTransactions:v8];
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) applet];
    v15 = [v14 identifier];
    v16 = [v3 nfSession];
    v17 = [v13 _paymentApplicationForEventAppletIdentifier:v15 inContext:v11 withSession:v16];
    [(PKContactlessInterfaceTransactionContext *)v11 setPaymentApplication:v17];

    v18 = [(PKContactlessInterfaceTransactionContext *)v11 paymentApplication];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 supportsTransitHistory];
      if ([*(a1 + 40) type] == 256 && (v20 & 1) == 0)
      {
        if ([v19 supportsSuica])
        {
          v21 = *(a1 + 56);
          v22 = [v21 activeApplet];
          v42 = 0;
          v23 = [v21 felicaAppletState:v22 error:&v42];
          v24 = v42;

          v25 = 1;
          if (!v23)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = [*(a1 + 40) felicaInfo];
          v25 = 0;
          v24 = 0;
          if (!v23)
          {
LABEL_16:
            v37 = v24;
            v30 = PKLogFacilityTypeGetObject(0xDuLL);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v37;
              _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "\tFailed to acquire Felica state for transaction. Error: %@", buf, 0xCu);
            }

            v24 = v37;
          }
        }

        v28 = [[PKFelicaAppletHistory alloc] initWithDictionary:v23 source:v25];
        [(PKContactlessInterfaceTransactionContext *)v11 setTransitHistory:v28];
        goto LABEL_20;
      }

      if (v20)
      {
        v26 = *(a1 + 56);
        v27 = [v26 activeApplet];
        v41 = 0;
        v23 = [v26 transitAppletState:v27 error:&v41];
        v24 = v41;

        if (!v23)
        {
          v28 = PKLogFacilityTypeGetObject(0xDuLL);
          if (os_log_type_enabled(&v28->super.super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v24;
            _os_log_impl(&dword_1AD337000, &v28->super.super, OS_LOG_TYPE_DEFAULT, "\tFailed to acquire transit state for transaction. Error: %@", buf, 0xCu);
          }

          v23 = 0;
          goto LABEL_20;
        }

        v28 = [[PKTransitAppletHistory alloc] initWithDictionary:v23 source:1];
        if (v28)
        {
          [(PKContactlessInterfaceTransactionContext *)v11 setTransitHistory:v28];
          if (!PKTransitDumpStates())
          {
LABEL_20:

            goto LABEL_21;
          }

          log = PKLogFacilityTypeGetObject(0xDuLL);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            [v19 applicationIdentifier];
            v29 = v36 = v24;
            *buf = 138412546;
            v44 = v29;
            v45 = 2112;
            v46 = v23;
            _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "Transit state for AID<%@>:\n%@", buf, 0x16u);

            v24 = v36;
          }
        }

        else
        {
          log = PKLogFacilityTypeGetObject(0xDuLL);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v23;
            _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "\tFailed to create transit history from transit state: %@", buf, 0xCu);
          }
        }

        goto LABEL_20;
      }
    }

LABEL_21:
    v32 = *(a1 + 32);
    v31 = *(a1 + 40);
    v33 = *(v32 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didEndTransaction___block_invoke_192;
    block[3] = &unk_1E79C4E00;
    block[4] = v32;
    v39 = v31;
    v40 = v11;
    v34 = v11;
    dispatch_async(v33, block);

    goto LABEL_22;
  }

  PKFieldPropertiesResolveSecondaryLookup(v5, *(a1 + 40));
  [*(a1 + 32) _endLookupAndNotify];
LABEL_22:
}

- (void)loyaltyAndPaymentSession:(id)session didExpireTransactionForApplet:(id)applet
{
  appletCopy = applet;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v8 didExpireTransactionForApplet:appletCopy];
}

- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  v5 = [[PKTransactionSessionWrapper alloc] initWithNFSession:unexpectedlyCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidEndUnexpectedly:v5];
}

- (void)loyaltyAndPaymentSession:(id)session didPerformValueAddedServiceTransactions:(id)transactions
{
  v13 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = transactionsCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session got Value Added Service Transactions: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke;
  v8[3] = &unk_1E79C7CE0;
  v9 = transactionsCopy;
  selfCopy = self;
  v7 = transactionsCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v8];
}

void __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v5 = *(a1 + 32);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke_2;
  v26[3] = &unk_1E79C7D30;
  v6 = v4;
  v27 = v6;
  v28 = &v29;
  [v5 enumerateObjectsUsingBlock:v26];
  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    PKFieldPropertiesResolveSecondaryLookup(v7, *(a1 + 32));
    [*(a1 + 40) _endLookupAndNotify];
  }

  else if ((v30[3] & 1) == 0)
  {
    v8 = [v6 firstObject];
    v9 = [v8 terminalMode];

    v10 = [*(*(a1 + 40) + 32) count];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke_3;
    v21[3] = &unk_1E79C7D58;
    v21[4] = &v22;
    [v6 enumerateObjectsUsingBlock:v21];
    v11 = [v3 nfSession];
    [v11 setHostCards:0];

    if (v10 && v9 == 3 && (v23[3] & 1) != 0)
    {
      v12 = [v6 copy];
      v13 = *(a1 + 40);
      v14 = *(v13 + 64);
      *(v13 + 64) = v12;
    }

    else
    {
      v15 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:*(*(a1 + 40) + 40) activatedPaymentApplications:*(*(a1 + 40) + 32)];
      [(PKContactlessInterfaceTransactionContext *)v15 setValueAddedServiceTransactions:v6];
      v16 = [*(a1 + 40) _filteredLoyaltyPassesFromVASTransactions:v6 activatedPasses:*(*(a1 + 40) + 48)];
      [(PKContactlessInterfaceTransactionContext *)v15 setValueAddedServicePasses:v16];

      [*(a1 + 40) _signalWalletTransactionForContext:v15];
      v17 = *(a1 + 40);
      v18 = *(v17 + 136);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke_4;
      block[3] = &unk_1E79C4DD8;
      block[4] = v17;
      v20 = v15;
      v14 = v15;
      dispatch_async(v18, block);
    }

    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v29, 8);
}

void __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = objc_alloc_init(PKValueAddedServiceTransaction);
  v4 = objc_alloc_init(PKValueAddedMerchant);
  v5 = [v17 merchantId];
  [(PKValueAddedMerchant *)v4 setIdentifier:v5];

  [(PKValueAddedServiceTransaction *)v3 setMerchant:v4];
  v6 = [v17 signupUrl];
  [(PKValueAddedServiceTransaction *)v3 setMerchantURL:v6];

  v7 = [v17 terminalAppVersion];
  [(PKValueAddedServiceTransaction *)v3 setTerminalApplicationVersion:v7];

  v8 = [v17 terminalMode];
  v9 = [v8 unsignedIntegerValue] - 1;
  if (v9 > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1ADB98E50[v9];
  }

  [(PKValueAddedServiceTransaction *)v3 setTerminalMode:v10];

  v11 = [v17 error];
  v12 = [v11 code];
  if (v12 == 27012)
  {
    v13 = 3;
  }

  else
  {
    v13 = v12 == 27267;
  }

  if (v12 == 25223)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  [(PKValueAddedServiceTransaction *)v3 setError:v14];

  v15 = [v17 didSucceed];
  -[PKValueAddedServiceTransaction setDidSucceed:](v3, "setDidSucceed:", [v15 BOOLValue]);

  v16 = [MEMORY[0x1E695DF00] date];
  [(PKValueAddedServiceTransaction *)v3 setTransactionDate:v16];

  [*(a1 + 32) addObject:v3];
  if (![(PKValueAddedServiceTransaction *)v3 didSucceed]&& [(PKValueAddedServiceTransaction *)v3 error]== 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 didSucceed];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __98__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke_4(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session VAS transaction finished.", v4, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 contactlessInterfaceSession:*(a1 + 32) didFinishTransactionWithContext:*(a1 + 40)];
  }
}

- (void)loyaltyAndPaymentSession:(id)session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v8 didEnterFieldWithNotification:notificationCopy];
}

- (void)loyaltyAndPaymentSessionDidExitField:(id)field
{
  fieldCopy = field;
  v5 = [[PKTransactionSessionWrapper alloc] initWithNFSession:fieldCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidExitField:v5];
}

- (void)loyaltyAndPaymentSession:(id)session didSelectApplet:(id)applet
{
  appletCopy = applet;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v8 didSelectApplet:appletCopy];
}

- (void)loyaltyAndPaymentSession:(id)session didSelectValueAddedService:(BOOL)service
{
  serviceCopy = service;
  sessionCopy = session;
  if (serviceCopy)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Did Select Value Added Service", buf, 2u);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didSelectValueAddedService___block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_async(callbackQueue, block);
  }
}

void __85__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didSelectValueAddedService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidSelectValueAddedService:*(a1 + 32)];
  }
}

- (void)loyaltyAndPaymentSession:(id)session didFailDeferredAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  sessionCopy = session;
  v7 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v7 didFailDeferredAuthorization:authorizationCopy];
}

- (void)loyaltyAndPaymentSession:(id)session didFelicaStateChange:(id)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PKContactlessInterfaceSession_loyaltyAndPaymentSession_didFelicaStateChange___block_invoke;
  v4[3] = &unk_1E79C7A28;
  v4[4] = self;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v4, change];
}

- (void)loyaltyAndPaymentSession:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object
{
  v5 = *&change;
  objectCopy = object;
  sessionCopy = session;
  v10 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v10 didExpressModeStateChange:v5 withObject:objectCopy];
}

- (void)session:(id)session event:(id)event
{
  sessionCopy = session;
  eventCopy = event;
  v8 = MEMORY[0x1E696AEC0];
  if (PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_NAME_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_NAME_onceToken, &__block_literal_global_115);
  }

  v9 = [v8 stringWithUTF8String:PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_NAME_constant];
  v10 = [eventCopy objectForKey:v9];
  stringValue = [v10 stringValue];

  if ([stringValue isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.lock"])
  {
    v12 = 1;
  }

  else
  {
    if (![stringValue isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.unlock"])
    {
      goto LABEL_13;
    }

    v12 = 2;
  }

  v13 = PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER();
  v14 = [eventCopy objectForKey:v13];
  stringValue2 = [v14 stringValue];

  if (stringValue2)
  {
    v29 = v12;
    v16 = PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER();
    v17 = [eventCopy objectForKey:v16];
    stringValue3 = [v17 stringValue];

    v19 = self->_activatedPaymentPass;
    date = [MEMORY[0x1E695DF00] date];
    v21 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:v19 activatedPaymentApplications:self->_activatedPaymentApplications];
    v30 = date;
    [(PKContactlessInterfaceTransactionContext *)v21 setDate:date];
    [(PKContactlessInterfaceTransactionContext *)v21 setAppletIdentifier:stringValue2];
    [(PKContactlessInterfaceTransactionContext *)v21 setCredentialIdentifier:stringValue3];
    v31 = sessionCopy;
    v22 = [(PKContactlessInterfaceSession *)self _paymentApplicationForEventAppletIdentifier:stringValue2 inContext:v21 withSession:sessionCopy];
    [(PKContactlessInterfaceTransactionContext *)v21 setPaymentApplication:v22];

    paymentApplication = [(PKContactlessInterfaceTransactionContext *)v21 paymentApplication];

    if (paymentApplication)
    {
      uniqueID = [(PKObject *)v19 uniqueID];
      v25 = [PKExpressTransactionState createForStandaloneTransaction:v29 applicationIdentifier:stringValue2 keyIdentifier:stringValue3 passUniqueIdentifier:uniqueID];
    }

    else
    {
      v25 = [PKExpressTransactionState createForStandaloneTransaction:v29 applicationIdentifier:stringValue2 keyIdentifier:stringValue3 passUniqueIdentifier:0];
    }

    status = [v25 status];
    [(PKContactlessInterfaceTransactionContext *)v21 setExpressState:v25];
    [(PKContactlessInterfaceTransactionContext *)v21 setSuccess:status == 1];
    [(PKContactlessInterfaceTransactionContext *)v21 setIncompatible:status == 3];
    [(PKContactlessInterfaceSession *)self _signalWalletTransactionForContext:v21];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PKContactlessInterfaceSession_session_event___block_invoke;
    block[3] = &unk_1E79C4DD8;
    block[4] = self;
    v33 = v21;
    v28 = v21;
    dispatch_async(callbackQueue, block);

    sessionCopy = v31;
  }

LABEL_13:
}

void __47__PKContactlessInterfaceSession_session_event___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSession:*(a1 + 32) didFinishTransactionWithContext:*(a1 + 40)];
  }
}

- (void)session:(id)session didStartTransaction:(id)transaction
{
  v12 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  kdebug_trace();
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = transactionCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Started Transaction Event: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
  PKTimeProfileBegin(v6, @"contactless_transaction");

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKContactlessInterfaceSession_session_didStartTransaction___block_invoke;
  v8[3] = &unk_1E79C7CE0;
  v8[4] = self;
  v9 = transactionCopy;
  v7 = transactionCopy;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v8];
}

void __61__PKContactlessInterfaceSession_session_didStartTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(a1 + 32) + 80))
  {
    *(*(a1 + 32) + 96) = mach_absolute_time();
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKContactlessInterfaceSession_session_didStartTransaction___block_invoke_2;
    block[3] = &unk_1E79C4E00;
    block[4] = v4;
    v7 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v5, block);
  }
}

void __61__PKContactlessInterfaceSession_session_didStartTransaction___block_invoke_2(id *a1)
{
  v8 = [a1[4] delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:*(a1[4] + 5) activatedPaymentApplications:*(a1[4] + 4)];
    v3 = [a1[5] applet];
    v4 = [v3 identifier];

    v5 = a1[4];
    v6 = [a1[6] nfSession];
    v7 = [v5 _paymentApplicationForEventAppletIdentifier:v4 inContext:v2 withSession:v6];
    [(PKContactlessInterfaceTransactionContext *)v2 setPaymentApplication:v7];

    [v8 contactlessInterfaceSessionDidStartTransaction:a1[4] withContext:v2];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v8 contactlessInterfaceSessionDidStartTransaction:a1[4]];
  }
}

- (void)session:(id)session didEndTransaction:(id)transaction
{
  v22 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  kdebug_trace();
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = transactionCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Finished Transaction Event: %@", buf, 0xCu);
  }

  v7 = PKTimeProfileEnd(v6, @"contactless_transaction", @"Transaction Event");
  v8 = mach_absolute_time();
  v9 = PKSecondsFromMachTimeInterval(v8 - self->_transactionStartTime);
  date = [MEMORY[0x1E695DF00] date];
  v18 = @"duration";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v19 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  AnalyticsSendEvent();

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PKContactlessInterfaceSession_session_didEndTransaction___block_invoke;
  v15[3] = &unk_1E79C7B08;
  v15[4] = self;
  v16 = transactionCopy;
  v17 = date;
  v13 = date;
  v14 = transactionCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v15];
}

void __59__PKContactlessInterfaceSession_session_didEndTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  if (v5)
  {
    PKFieldPropertiesResolveSecondaryLookup(v5, *(a1 + 40));
    [*(a1 + 32) _endLookupAndNotify];
  }

  else
  {
    v6 = *(v4 + 40);
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    [*(a1 + 32) setState:1];
    v9 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:v6 activatedPaymentApplications:*(*(a1 + 32) + 32)];
    [(PKContactlessInterfaceTransactionContext *)v9 setDate:*(a1 + 48)];
    v10 = [*(a1 + 40) applet];
    v11 = [v10 identifier];

    v12 = *(a1 + 32);
    v13 = [v3 nfSession];
    v14 = [v12 _paymentApplicationForEventAppletIdentifier:v11 inContext:v9 withSession:v13];
    [(PKContactlessInterfaceTransactionContext *)v9 setPaymentApplication:v14];

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(v16 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PKContactlessInterfaceSession_session_didEndTransaction___block_invoke_2;
    block[3] = &unk_1E79C7D80;
    block[4] = v16;
    v22 = v9;
    v23 = v15;
    v24 = v6;
    v25 = v11;
    v18 = v11;
    v19 = v6;
    v20 = v9;
    dispatch_async(v17, block);
  }
}

void __59__PKContactlessInterfaceSession_session_didEndTransaction___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 40) paymentApplication];
  if (!v3)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 64);
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Received an Unexpected Applet Identifier: %@", &v19, 0xCu);
    }

    AnalyticsSendEvent();
    if (objc_opt_respondsToSelector())
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) activatedPaymentApplications];
      v12 = *(a1 + 56);
      v13 = [*(a1 + 40) valueAddedServicePasses];
      [v2 contactlessInterfaceSessionDidFail:v10 forPaymentApplications:v11 paymentPass:v12 valueAddedServicePasses:v13];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) activatedPaymentApplications];
      v16 = [v11 firstObject];
      v17 = *(a1 + 56);
      v18 = [*(a1 + 40) valueAddedServicePasses];
      [v2 contactlessInterfaceSessionDidFail:v15 forPaymentApplication:v16 paymentPass:v17 valueAddedServicePasses:v18];
    }

    goto LABEL_22;
  }

  v4 = [*(a1 + 48) didError];
  v5 = [v3 paymentType] - 1001;
  if (v5 <= 3 && v5 != 1)
  {
    if (v4)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v3;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Reported Failed Access Event (Payment Application: %@)", &v19, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [v2 contactlessInterfaceSessionDidFailTransaction:*(a1 + 32) forPaymentApplication:v3 paymentPass:*(a1 + 56)];
      }
    }

    else
    {
      [*(a1 + 40) setSuccess:1];
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v3;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Reported Successful Access Event (Payment Application: %@)", &v19, 0xCu);
      }

      [*(a1 + 32) _signalWalletTransactionForContext:*(a1 + 40)];
      if (objc_opt_respondsToSelector())
      {
        [v2 contactlessInterfaceSession:*(a1 + 32) didFinishTransactionWithContext:*(a1 + 40)];
      }
    }
  }

LABEL_22:
}

- (void)session:(id)session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v8 didEnterFieldWithNotification:notificationCopy];
}

- (void)sessionDidExitField:(id)field
{
  fieldCopy = field;
  v5 = [[PKTransactionSessionWrapper alloc] initWithNFSession:fieldCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidExitField:v5];
}

- (void)session:(id)session didSelectApplet:(id)applet
{
  appletCopy = applet;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v8 didSelectApplet:appletCopy];
}

- (void)session:(id)session didExpireTransactionForApplet:(id)applet
{
  appletCopy = applet;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v8 didExpireTransactionForApplet:appletCopy];
}

- (void)sessionDidEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  v5 = [[PKTransactionSessionWrapper alloc] initWithNFSession:unexpectedlyCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidEndUnexpectedly:v5];
}

- (void)sessionDidFailDeferredAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = [[PKTransactionSessionWrapper alloc] initWithNFSession:authorizationCopy];

  [(PKContactlessInterfaceSession *)self _session:v5 didFailDeferredAuthorization:1];
}

- (void)sessionDidReceiveActivityTimeout:(id)timeout result:(id)result
{
  resultCopy = result;
  timeoutCopy = timeout;
  v8 = [[PKTransactionSessionWrapper alloc] initWithNFSession:timeoutCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidReceiveActivityTimeout:v8 result:resultCopy];
}

- (void)session:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object
{
  v5 = *&change;
  objectCopy = object;
  sessionCopy = session;
  v10 = [[PKTransactionSessionWrapper alloc] initWithNFSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _session:v10 didExpressModeStateChange:v5 withObject:objectCopy];
}

- (void)stsSession:(id)session didReceiveFieldNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKContactlessInterfaceSession_stsSession_didReceiveFieldNotification___block_invoke;
  v7[3] = &unk_1E79C7CE0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v7];
}

void __72__PKContactlessInterfaceSession_stsSession_didReceiveFieldNotification___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  atomic_store(1u, (*(a1 + 32) + 104));
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Did Enter Field: %@", &v12, 0xCu);
  }

  v6 = [PKFieldProperties fieldPropertiesForSTSFieldNotification:*(a1 + 40)];
  v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session did identify field properties: %@", &v12, 0xCu);
    }

    v8 = PKWalletTransactionTypeForPKFieldTerminalType([v6 terminalType]);
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session did not identify field properties", &v12, 2u);
    }

    v8 = PKWalletTransactionTypeForSTSTerminalType([*(a1 + 40) terminalType]);
  }

  *(*(a1 + 32) + 168) = v8;
  v9 = *(a1 + 32);
  if (*(v9 + 128) != 2)
  {
    objc_storeStrong((v9 + 80), v6);
    CanLookupSecondaryProperties = PKFieldPropertiesCanLookupSecondaryProperties(*(*(a1 + 32) + 80));
    v11 = *(a1 + 32);
    if (CanLookupSecondaryProperties)
    {
      [v11[10] setSecondaryPropertiesRequired:1];
      [*(a1 + 32) _startLookup];
    }

    else
    {
      [v11 _endLookupAndNotify];
    }
  }
}

- (void)stsSession:(id)session didStartTransaction:(id)transaction
{
  v15 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  kdebug_trace();
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    credential = [transactionCopy credential];
    *buf = 138412546;
    v12 = transactionCopy;
    v13 = 2112;
    v14 = credential;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Started Transaction Event: %@, credential: %@", buf, 0x16u);
  }

  AnalyticsSendEvent();
  PKTimeProfileBegin(v6, @"contactless_transaction");

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKContactlessInterfaceSession_stsSession_didStartTransaction___block_invoke;
  v9[3] = &unk_1E79C7CE0;
  v9[4] = self;
  v10 = transactionCopy;
  v8 = transactionCopy;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v9];
}

void __64__PKContactlessInterfaceSession_stsSession_didStartTransaction___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 80))
  {
    v8 = v1;
    v9 = v2;
    *(*(a1 + 32) + 96) = mach_absolute_time();
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PKContactlessInterfaceSession_stsSession_didStartTransaction___block_invoke_2;
    v6[3] = &unk_1E79C4DD8;
    v6[4] = v4;
    v7 = *(a1 + 40);
    dispatch_async(v5, v6);
  }
}

void __64__PKContactlessInterfaceSession_stsSession_didStartTransaction___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:v3 activatedPaymentApplications:*(*(a1 + 32) + 32)];
    v5 = [*(a1 + 40) credential];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v3 devicePaymentApplications];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (PKPaymentApplicationMatchesSTSEventCredential(v11, v5))
          {
            [(PKContactlessInterfaceTransactionContext *)v4 setPaymentApplication:v11];
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    [v2 contactlessInterfaceSessionDidStartTransaction:*(a1 + 32) withContext:v4];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidStartTransaction:*(a1 + 32)];
  }
}

- (void)stsSession:(id)session didEndTransaction:(id)transaction
{
  v46 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  kdebug_trace();
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = transactionCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Finished Transaction Event: %@", buf, 0xCu);
  }

  v7 = PKTimeProfileEnd(v6, @"contactless_transaction", @"Transaction Event");
  v8 = mach_absolute_time();
  v9 = PKSecondsFromMachTimeInterval(v8 - self->_transactionStartTime);
  date = [MEMORY[0x1E695DF00] date];
  v11 = self->_activatedPaymentPass;
  v12 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:v11 activatedPaymentApplications:self->_activatedPaymentApplications];
  v29 = date;
  [(PKContactlessInterfaceTransactionContext *)v12 setDate:date];
  v30 = transactionCopy;
  credential = [(PKPaymentPass *)transactionCopy credential];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  devicePaymentApplications = [(PKSecureElementPass *)v11 devicePaymentApplications];
  v15 = [devicePaymentApplications countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        if (PKPaymentApplicationMatchesSTSEventCredential(v19, credential))
        {
          [(PKContactlessInterfaceTransactionContext *)v12 setPaymentApplication:v19];
          goto LABEL_13;
        }
      }

      v16 = [devicePaymentApplications countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  paymentApplication = [(PKContactlessInterfaceTransactionContext *)v12 paymentApplication];

  if (paymentApplication)
  {
    v41 = @"duration";
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v42 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    AnalyticsSendEvent();

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__PKContactlessInterfaceSession_stsSession_didEndTransaction___block_invoke;
    v34[3] = &unk_1E79C7B08;
    v34[4] = self;
    v23 = &v35;
    v24 = v30;
    v25 = &v36;
    v35 = v30;
    v36 = v12;
    v26 = v12;
    [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v34];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v11;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: STS event does not match active pass %@", buf, 0xCu);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PKContactlessInterfaceSession_stsSession_didEndTransaction___block_invoke_210;
    block[3] = &unk_1E79C4E00;
    v23 = &v32;
    block[4] = self;
    v32 = v12;
    v25 = &v33;
    v33 = v11;
    v28 = v12;
    dispatch_async(callbackQueue, block);
    v24 = v30;
  }
}

void __62__PKContactlessInterfaceSession_stsSession_didEndTransaction___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKContactlessInterfaceSession_stsSession_didEndTransaction___block_invoke_2;
  block[3] = &unk_1E79C4E00;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __62__PKContactlessInterfaceSession_stsSession_didEndTransaction___block_invoke_2(id *a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!v2[10])
  {
    v3 = v2[5];
    v4 = a1[4];
    v5 = v4[8];
    v4[8] = 0;

    [a1[4] setState:1];
    if (([v3 isIdentityPass] & 1) == 0 && !objc_msgSend(v3, "isHybridIdentityPass"))
    {
LABEL_114:
      v66 = [a1[4] delegate];
      if (![a1[5] status])
      {
        [a1[6] setSuccess:1];
        if (([v3 isAccessPass] & 1) == 0 && (objc_msgSend(v3, "isTransitPass") & 1) == 0)
        {
          v73 = objc_alloc_init(PKPaymentTransaction);
          [(PKPaymentTransaction *)v73 setTransactionSource:1];
          [(PKPaymentTransaction *)v73 setTransactionType:15];
          v74 = [MEMORY[0x1E695DF00] date];
          [(PKPaymentTransaction *)v73 setTransactionDate:v74];

          [(PKPaymentTransaction *)v73 setTransactionStatus:1];
          v75 = [MEMORY[0x1E696AFB0] UUID];
          v76 = [v75 UUIDString];
          [(PKPaymentTransaction *)v73 setIdentifier:v76];

          [(PKPaymentTransaction *)v73 setOriginatedByDevice:1];
          [(PKPaymentTransaction *)v73 setReleasedData:*(a1[4] + 20)];
          [(PKPaymentTransaction *)v73 setHasNotificationServiceData:1];
          [a1[6] setTransaction:v73];
        }

        v77 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = [a1[6] paymentApplication];
          *buf = 138412290;
          v97 = v78;
          _os_log_impl(&dword_1AD337000, v77, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Reported Successful Transaction Event (Payment Application: %@)", buf, 0xCu);
        }

        [a1[4] _signalWalletTransactionForContext:a1[6]];
        if (objc_opt_respondsToSelector())
        {
          [v66 contactlessInterfaceSession:a1[4] didFinishTransactionWithContext:a1[6]];
        }

        goto LABEL_135;
      }

      v67 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [a1[6] paymentApplication];
        *buf = 138412290;
        v97 = v68;
        _os_log_impl(&dword_1AD337000, v67, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Reported Failed Transaction Event (Payment Application: %@)", buf, 0xCu);
      }

      if ([a1[5] status] != 4 && objc_msgSend(a1[5], "status") != 3)
      {
        if (objc_opt_respondsToSelector())
        {
          v80 = a1[4];
          v81 = [a1[6] paymentApplication];
          [v66 contactlessInterfaceSessionDidFailTransaction:v80 forPaymentApplication:v81 paymentPass:v3];
        }

        goto LABEL_135;
      }

      if ([a1[5] status] == 4)
      {
        v92[0] = @"wallet";
        v92[1] = @"contactless";
        v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
        v90[0] = @"eventType";
        v90[1] = @"errorType";
        v91[0] = @"readerError";
        v91[1] = @"untrustedReader";
        v70 = MEMORY[0x1E695DF20];
        v71 = v91;
        v72 = v90;
      }

      else
      {
        if ([a1[5] status] != 3)
        {
          goto LABEL_131;
        }

        v89[0] = @"wallet";
        v89[1] = @"contactless";
        v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
        v87[0] = @"eventType";
        v87[1] = @"errorType";
        v88[0] = @"readerError";
        v88[1] = @"readerRequestError";
        v70 = MEMORY[0x1E695DF20];
        v71 = v88;
        v72 = v87;
      }

      v79 = [v70 dictionaryWithObjects:v71 forKeys:v72 count:2];
      [PKAnalyticsReporter subjects:v69 sendEvent:v79];

LABEL_131:
      if (objc_opt_respondsToSelector())
      {
        [v66 contactlessInterfaceSessionDidReceiveTerminalError:a1[4]];
      }

LABEL_135:

      return;
    }

    v6 = objc_alloc(MEMORY[0x1E695DF90]);
    v95[0] = @"identity";
    v94[0] = @"productType";
    v94[1] = @"subType";
    v7 = [a1[5] anonymousCredentialInfoSharing];
    v8 = PKAnalyticsReportIdentitySubtypeJPKI;
    if (!v7)
    {
      v8 = PKAnalyticsReportIdentitySubtypeMdoc;
    }

    v95[1] = *v8;
    v94[2] = @"issuer";
    v9 = [v3 issuerAdministrativeAreaCode];
    v95[2] = v9;
    v94[3] = @"productSubType";
    v10 = v3;
    v11 = [v10 secureElementPass];
    if ([v11 isIdentityPass])
    {
      v12 = [v11 identityType];
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v13 = PKAnalyticsReportDriversLicenseProductSubtype;
          goto LABEL_30;
        }

        if (v12 == 2)
        {
          v13 = PKAnalyticsReportStateIDProductSubtype;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            goto LABEL_14;
          case 4:
            v13 = PKAnalyticsReportIDCardProductSubtype;
            goto LABEL_30;
          case 5:
LABEL_14:
            v13 = PKAnalyticsReportPassportVerifiedPhotoIDProductSubtype;
LABEL_30:
            v18 = *v13;
LABEL_43:

            v95[3] = v18;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:4];
            v21 = [v6 initWithDictionary:v20];

            v22 = v21;
            v23 = v10;
            v24 = v23;
            if (!v23 || !v22)
            {
LABEL_113:

              v93[0] = @"identity";
              v93[1] = @"contactless";
              v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
              [PKAnalyticsReporter subjects:v65 sendEvent:v22];

              goto LABEL_114;
            }

            v25 = [v23 passType];
            if ((v25 + 1) >= 3)
            {
              v26 = @"unknown";
            }

            else
            {
              v26 = off_1E79C7E90[v25 + 1];
            }

            [v22 setObject:v26 forKeyedSubscript:@"passType"];

            v27 = [v24 style];
            v28 = [v24 secureElementPass];
            v29 = [v28 isIdentityPass];

            if (v29)
            {
              v30 = @"identity";
            }

            else if (v27 < 0xE && ((0x27FFu >> v27) & 1) != 0)
            {
              v30 = off_1E79C7EA8[v27];
            }

            else
            {
              v30 = @"unknown";
            }

            [v22 setObject:v30 forKeyedSubscript:@"passStyle"];

            v31 = [v24 nfcPayload];
            v32 = PKAnalyticsReportSwitchToggleResultValue(v31 != 0);
            [v22 setObject:v32 forKeyedSubscript:@"hasNFC"];

            v33 = v24;
            if ([v33 passType] == 1)
            {
              v34 = [v33 secureElementPass];
              v35 = [v34 cardType];
              if (v35 <= 4)
              {
                v32 = *off_1E79C7F18[v35];
              }
            }

            else
            {
              v32 = @"other";
            }

            [v22 setObject:v32 forKeyedSubscript:@"productType"];
            v36 = v33;
            v37 = [v36 secureElementPass];
            if ([v37 isIdentityPass])
            {
              v38 = [v37 identityType];
              if (v38 <= 2)
              {
                if (v38 == 1)
                {
                  v39 = PKAnalyticsReportDriversLicenseProductSubtype;
                  goto LABEL_80;
                }

                if (v38 == 2)
                {
                  v39 = PKAnalyticsReportStateIDProductSubtype;
                  goto LABEL_80;
                }
              }

              else
              {
                switch(v38)
                {
                  case 3:
                    goto LABEL_64;
                  case 4:
                    v39 = PKAnalyticsReportIDCardProductSubtype;
                    goto LABEL_80;
                  case 5:
LABEL_64:
                    v39 = PKAnalyticsReportPassportVerifiedPhotoIDProductSubtype;
LABEL_80:
                    v43 = *v39;
                    goto LABEL_93;
                }
              }

LABEL_73:
              v39 = PKAnalyticsReportUnknownValue;
              goto LABEL_80;
            }

            if (![v37 isAccessPass])
            {
              goto LABEL_73;
            }

            v40 = [v37 accessType];
            v41 = [v37 accessReportingType];
            v42 = v41;
            if (v40 <= 2)
            {
              switch(v40)
              {
                case 0:
                  v44 = @"general";
                  if (v41)
                  {
                    v44 = v41;
                  }

                  goto LABEL_88;
                case 1:
                  v43 = @"hospitality";
                  goto LABEL_92;
                case 2:
                  v43 = @"corporate";
LABEL_92:

LABEL_93:
                  [v22 setObject:v43 forKeyedSubscript:@"productSubType"];

                  v45 = [v36 secureElementPass];
                  v46 = [v45 devicePaymentApplications];
                  v47 = [v46 count] > 1;

                  v48 = PKAnalyticsReportSwitchToggleResultValue(v47);

                  [v22 setObject:v48 forKeyedSubscript:@"coBadgeEnable"];
                  v49 = [v36 secureElementPass];
                  v50 = @"unknown";
                  v51 = [v49 organizationName];
                  if ([v51 length])
                  {
                    v52 = [v49 cardType];
                    if (v52 <= 4 && ((1 << v52) & 0x16) != 0)
                    {
                      v53 = v51;

                      v50 = v53;
                    }
                  }

                  [v22 setObject:v50 forKeyedSubscript:@"issuer"];
                  v54 = [v36 secureElementPass];
                  v55 = v54;
                  if (v54)
                  {
                    [v54 devicePaymentApplications];
                    v83 = 0u;
                    v84 = 0u;
                    v85 = 0u;
                    v56 = v86 = 0u;
                    v57 = [v56 countByEnumeratingWithState:&v83 objects:buf count:16];
                    v82 = v3;
                    if (v57)
                    {
                      v58 = v57;
                      v59 = 0;
                      v60 = *v84;
                      while (2)
                      {
                        for (i = 0; i != v58; ++i)
                        {
                          if (*v84 != v60)
                          {
                            objc_enumerationMutation(v56);
                          }

                          v62 = *(*(&v83 + 1) + 8 * i);
                          if (v59 && v59 != [*(*(&v83 + 1) + 8 * i) paymentType])
                          {

                            v63 = @"multiple";
                            goto LABEL_111;
                          }

                          v59 = [v62 paymentType];
                        }

                        v58 = [v56 countByEnumeratingWithState:&v83 objects:buf count:16];
                        if (v58)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    else
                    {
                      v59 = 0;
                    }

                    v63 = PKPaymentMethodTypeToString(v59);
LABEL_111:

                    [v22 setObject:v63 forKeyedSubscript:@"paymentMethodType"];
                    v64 = [v55 issuerCountryCode];
                    [v22 setObject:v64 forKeyedSubscript:@"issuerCountryCode"];

                    v3 = v82;
                  }

                  goto LABEL_113;
              }
            }

            else
            {
              if (v40 <= 4)
              {
                if (v40 == 3)
                {
                  v43 = @"singlefamily";
                }

                else
                {
                  v43 = @"cars";
                }

                goto LABEL_92;
              }

              if (v40 == 5)
              {
                v43 = @"multifamily";
                goto LABEL_92;
              }

              if (v40 == 6)
              {
                v43 = @"urbanmobility";
                goto LABEL_92;
              }
            }

            v44 = @"unknown";
LABEL_88:
            v43 = v44;
            goto LABEL_92;
        }
      }

LABEL_23:
      v13 = PKAnalyticsReportUnknownValue;
      goto LABEL_30;
    }

    if (![v11 isAccessPass])
    {
      goto LABEL_23;
    }

    v14 = v3;
    v15 = [v11 accessType];
    v16 = [v11 accessReportingType];
    v17 = v16;
    if (v15 <= 2)
    {
      switch(v15)
      {
        case 0:
          v19 = @"general";
          if (v16)
          {
            v19 = v16;
          }

          goto LABEL_38;
        case 1:
          v18 = @"hospitality";
          goto LABEL_42;
        case 2:
          v18 = @"corporate";
LABEL_42:

          v3 = v14;
          goto LABEL_43;
      }
    }

    else
    {
      if (v15 <= 4)
      {
        if (v15 == 3)
        {
          v18 = @"singlefamily";
        }

        else
        {
          v18 = @"cars";
        }

        goto LABEL_42;
      }

      if (v15 == 5)
      {
        v18 = @"multifamily";
        goto LABEL_42;
      }

      if (v15 == 6)
      {
        v18 = @"urbanmobility";
        goto LABEL_42;
      }
    }

    v19 = @"unknown";
LABEL_38:
    v18 = v19;
    goto LABEL_42;
  }

  [v2 _endLookupAndNotify];
}

void __62__PKContactlessInterfaceSession_stsSession_didEndTransaction___block_invoke_210(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  AnalyticsSendEvent();
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) activatedPaymentApplications];
    [v6 contactlessInterfaceSessionDidFail:v2 forPaymentApplications:v3 paymentPass:*(a1 + 48) valueAddedServicePasses:0];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    v3 = [*(a1 + 40) activatedPaymentApplications];
    v5 = [v3 firstObject];
    [v6 contactlessInterfaceSessionDidFail:v4 forPaymentApplication:v5 paymentPass:*(a1 + 48) valueAddedServicePasses:0];
  }

LABEL_6:
}

- (void)stsSessionDidEndUnexpectedly:(id)unexpectedly errorCode:(unint64_t)code
{
  v12 = *MEMORY[0x1E69E9840];
  unexpectedlyCopy = unexpectedly;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    codeCopy = code;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session did end unexpectedly, error: %lu", &v10, 0xCu);
  }

  delegate = [(PKContactlessInterfaceSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (code > 4)
    {
      if (code == 5)
      {
        v9 = 2;
        goto LABEL_15;
      }

      if (code == 6)
      {
        v9 = 3;
        goto LABEL_15;
      }

LABEL_11:
      v9 = 0;
      goto LABEL_15;
    }

    if (code != 3)
    {
      if (code == 4)
      {
        v9 = 4;
LABEL_15:
        [delegate contactlessInterfaceSessionDidTerminate:self withErrorCode:v9];
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (self->_noCredentialForISO18013Request)
    {
      [delegate contactlessInterfaceSessionDidTerminate:self withErrorCode:1];
      self->_noCredentialForISO18013Request = 0;
    }
  }

LABEL_16:
}

- (void)stsSession:(id)session didReceiveActivityTimeout:(id)timeout
{
  timeoutCopy = timeout;
  sessionCopy = session;
  v8 = [[PKTransactionSessionWrapper alloc] initWithSTSSession:sessionCopy];

  [(PKContactlessInterfaceSession *)self _sessionDidReceiveActivityTimeout:v8 result:timeoutCopy];
}

- (void)stsSession:(id)session didChangeExpressModeWithInfo:(id)info
{
  sessionCopy = session;
  state = [info state];
  if (state <= 5)
  {
    if (state == 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = 0;
    }

    if (state == 4)
    {
      v8 = 4;
    }

    if (state == 3)
    {
      v8 = 3;
    }

    if (state == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    if (state == 1)
    {
      v9 = 1;
    }

    if (state <= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_26;
  }

  if (state <= 8)
  {
    if (state == 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (state == 7)
    {
      v11 = 7;
    }

    if (state == 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v11;
    }

    goto LABEL_26;
  }

  if ((state - 9) >= 2)
  {
    v10 = 0;
LABEL_26:
    v12 = [[PKTransactionSessionWrapper alloc] initWithSTSSession:sessionCopy];
    [(PKContactlessInterfaceSession *)self _session:v12 didExpressModeStateChange:v10 withObject:0];

    goto LABEL_27;
  }

  v13 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session dropping lock / unlock event.", v14, 2u);
  }

LABEL_27:
}

- (void)stsSession:(id)session didExpireTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v12 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"N";
    if (transactionCopy)
    {
      v8 = @"Y";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session didExpireTransaction: %@", &v10, 0xCu);
  }

  if (transactionCopy)
  {
    v9 = [[PKTransactionSessionWrapper alloc] initWithSTSSession:sessionCopy];
    [(PKContactlessInterfaceSession *)self _session:v9 didExpireTransactionForApplet:0];
  }
}

- (void)stsSession:(id)session didReceive18013Requests:(id)requests readerAuthInfo:(id)info
{
  v72 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  requestsCopy = requests;
  infoCopy = info;
  kdebug_trace();
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = requestsCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Received ISO18013 Requests %@", buf, 0xCu);
  }

  v42 = requestsCopy;

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  selfCopy = self;
  obj = self->_activatedPaymentApplications;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v63;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v63 != v13)
        {
          objc_enumerationMutation(obj);
        }

        subcredentials = [*(*(&v62 + 1) + 8 * i) subcredentials];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v16 = [subcredentials countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v59;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v59 != v18)
              {
                objc_enumerationMutation(subcredentials);
              }

              identifier = [*(*(&v58 + 1) + 8 * j) identifier];
              [v10 pk_safelyAddObject:identifier];
            }

            v17 = [subcredentials countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v17);
        }
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v12);
  }

  v44 = [v10 copy];
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0u;
  v41 = v42;
  obja = [v41 countByEnumeratingWithState:&v54 objects:v67 count:16];
  v21 = 0;
  if (obja)
  {
    v43 = *v55;
    do
    {
      for (k = 0; k != obja; k = k + 1)
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v23 = *(*(&v54 + 1) + 8 * k);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v24 = v44;
        v25 = [v24 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v51;
          while (2)
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v51 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v50 + 1) + 8 * m);
              credentialIdentifier = [v23 credentialIdentifier];
              v31 = v29;
              v32 = v31;
              if (credentialIdentifier == v31)
              {

LABEL_39:
                v35 = v23;

                v21 = v35;
                goto LABEL_40;
              }

              if (v31)
              {
                v33 = credentialIdentifier == 0;
              }

              else
              {
                v33 = 1;
              }

              if (v33)
              {
              }

              else
              {
                v34 = [credentialIdentifier isEqualToString:v31];

                if (v34)
                {
                  goto LABEL_39;
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v50 objects:v66 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

LABEL_40:
      }

      obja = [v41 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (obja);
  }

  selfCopy->_noCredentialForISO18013Request = v21 == 0;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __83__PKContactlessInterfaceSession_stsSession_didReceive18013Requests_readerAuthInfo___block_invoke;
  v47[3] = &unk_1E79C7B08;
  v47[4] = selfCopy;
  v48 = v21;
  v49 = infoCopy;
  v36 = infoCopy;
  v37 = v21;
  [(PKPaymentSession *)selfCopy performBlockAsyncOnInternalSession:v47];
}

void __83__PKContactlessInterfaceSession_stsSession_didReceive18013Requests_readerAuthInfo___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 121) == 1)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session stopping transaction due to a credential identifier mismatch, the current credential cannot satisfy the reader request.", buf, 2u);
    }

    v6 = [v3 stsSession];
    v7 = [v6 stopTransaction];

    if (v7)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Contactless Interface Could Not Stop Transaction with Error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = *(v4 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKContactlessInterfaceSession_stsSession_didReceive18013Requests_readerAuthInfo___block_invoke_220;
    block[3] = &unk_1E79C4E00;
    block[4] = v4;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }
}

void __83__PKContactlessInterfaceSession_stsSession_didReceive18013Requests_readerAuthInfo___block_invoke_220(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSession:*(a1 + 32) didReceive18013Request:*(a1 + 40) readerAuthInfo:*(a1 + 48)];
  }
}

- (void)stsSessionRequestHandoffConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: Requested handoff confirmation", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKContactlessInterfaceSession_stsSessionRequestHandoffConfirmation___block_invoke;
  v7[3] = &unk_1E79C7CE0;
  v7[4] = self;
  v8 = confirmationCopy;
  v6 = confirmationCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v7];
}

void __70__PKContactlessInterfaceSession_stsSessionRequestHandoffConfirmation___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 147) == 1)
  {
    *(v4 + 148) = 1;
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session waiting to confirm handoff", buf, 2u);
    }
  }

  else
  {
    v5 = [*(a1 + 40) startHandoff];
    if (v5)
    {
      v6 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session: failed to start handoff with error %@", buf, 0xCu);
      }

      v7 = *(a1 + 32);
      v8 = *(v7 + 136);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__PKContactlessInterfaceSession_stsSessionRequestHandoffConfirmation___block_invoke_223;
      block[3] = &unk_1E79C4E28;
      block[4] = v7;
      dispatch_async(v8, block);
    }
  }
}

void __70__PKContactlessInterfaceSession_stsSessionRequestHandoffConfirmation___block_invoke_223(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(*(a1 + 32) + 32) firstObject];
    [v3 contactlessInterfaceSessionDidFailTransaction:*(a1 + 32) forPaymentApplication:v2 paymentPass:*(*(a1 + 32) + 40)];
  }
}

- (void)handleSessionSuspended:(id)suspended withToken:(id)token
{
  tokenCopy = token;
  callbackQueue = self->_callbackQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKContactlessInterfaceSession_handleSessionSuspended_withToken___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = tokenCopy;
  v7 = tokenCopy;
  dispatch_async(callbackQueue, v8);
}

void __66__PKContactlessInterfaceSession_handleSessionSuspended_withToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSession:*(a1 + 32) didSuspendWithToken:*(a1 + 40)];
  }
}

- (void)handleSessionResumed:(id)resumed
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKContactlessInterfaceSession_handleSessionResumed___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __54__PKContactlessInterfaceSession_handleSessionResumed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidResume:*(a1 + 32)];
  }
}

- (void)_session:(id)_session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKContactlessInterfaceSession__session_didEnterFieldWithNotification___block_invoke;
  v7[3] = &unk_1E79C7CE0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v7];
}

void __72__PKContactlessInterfaceSession__session_didEnterFieldWithNotification___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  atomic_store(1u, (*(a1 + 32) + 104));
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Did Enter Field: %@", &v13, 0xCu);
  }

  v6 = [PKFieldProperties fieldPropertiesForFieldNotification:*(a1 + 40)];
  v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v7)
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session did identify field properties: %@", &v13, 0xCu);
    }

    v8 = PKWalletTransactionTypeForPKFieldTerminalType([v6 terminalType]);
  }

  else
  {
    if (v7)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session did not identify field properties", &v13, 2u);
    }

    v9 = [*(a1 + 40) notificationType];
    if ((v9 - 1) >= 3)
    {
      __break(1u);
      return;
    }

    v8 = dword_1ADB98E90[v9 - 1];
  }

  *(*(a1 + 32) + 168) = v8;
  v10 = *(a1 + 32);
  if (*(v10 + 128) != 2)
  {
    objc_storeStrong((v10 + 80), v6);
    CanLookupSecondaryProperties = PKFieldPropertiesCanLookupSecondaryProperties(*(*(a1 + 32) + 80));
    v12 = *(a1 + 32);
    if (CanLookupSecondaryProperties)
    {
      [v12[10] setSecondaryPropertiesRequired:1];
      [*(a1 + 32) _startLookup];
    }

    else
    {
      [v12 _endLookupAndNotify];
    }
  }
}

- (void)_sessionDidExitField:(id)field
{
  kdebug_trace();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PKContactlessInterfaceSession__sessionDidExitField___block_invoke;
  v4[3] = &unk_1E79C7A28;
  v4[4] = self;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v4];
}

void __54__PKContactlessInterfaceSession__sessionDidExitField___block_invoke(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(a1 + 32) + 104), &v2, 0);
  v3 = v2 == 1;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;

  v6 = PKLogFacilityTypeGetObject(7uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = "Contactless Interface Session Did Exit Field";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = "Contactless Interface Session Did Exit Field (unbalanced)";
  }

  _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
LABEL_7:

  v9 = *(a1 + 32);
  if (v9[10])
  {
    [v9 _endLookup];
  }

  if (v3)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKContactlessInterfaceSession__sessionDidExitField___block_invoke_228;
    block[3] = &unk_1E79C4E28;
    block[4] = v10;
    dispatch_async(v11, block);
  }
}

void __54__PKContactlessInterfaceSession__sessionDidExitField___block_invoke_228(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidExitField:*(a1 + 32)];
  }
}

- (void)_session:(id)_session didSelectApplet:(id)applet
{
  identifier = [applet identifier];
  v6 = [identifier isEqualToString:@"325041592E5359532E4444463031"];

  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Did Select Payment (PPSE)", buf, 2u);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKContactlessInterfaceSession__session_didSelectApplet___block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_async(callbackQueue, block);
  }
}

void __58__PKContactlessInterfaceSession__session_didSelectApplet___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidSelectPayment:*(a1 + 32)];
  }
}

- (void)_session:(id)_session didExpireTransactionForApplet:(id)applet
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__PKContactlessInterfaceSession__session_didExpireTransactionForApplet___block_invoke;
  v4[3] = &unk_1E79C7A28;
  v4[4] = self;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v4, applet];
}

void __72__PKContactlessInterfaceSession__session_didExpireTransactionForApplet___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setState:1];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 32);
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Timed Out (Payment Applications: %@)", buf, 0xCu);
  }

  v6 = *(*(a1 + 32) + 40);
  v7 = *(*(a1 + 32) + 48);
  v8 = atomic_load((*(a1 + 32) + 145));
  if (v8)
  {
    v9 = *(a1 + 32);
    if (*(v9 + 152))
    {
      v10 = 0;
    }

    else
    {
      v11 = (v9 + 145);
      v12 = [v3 nfSession];
      v21 = 0;
      v13 = [v12 enablePlasticCardMode:0 error:&v21];
      v10 = v21;
      atomic_store(v13 ^ 1, v11);

      if (v10)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to disable Persistent Card Emulation. Error: %@", buf, 0xCu);
        }
      }
    }

    if (v6 && [*(*(a1 + 32) + 32) count])
    {
      [*(a1 + 32) _endPersistentCardEmulationForPaymentPass:v6 paymentApplications:*(*(a1 + 32) + 32)];
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 136);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PKContactlessInterfaceSession__session_didExpireTransactionForApplet___block_invoke_233;
  v18[3] = &unk_1E79C4E00;
  v18[4] = v14;
  v19 = v6;
  v20 = v7;
  v16 = v7;
  v17 = v6;
  dispatch_async(v15, v18);
}

void __72__PKContactlessInterfaceSession__session_didExpireTransactionForApplet___block_invoke_233(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 contactlessInterfaceSessionDidTimeout:*(a1 + 32) forPaymentApplications:*(*(a1 + 32) + 32) paymentPass:*(a1 + 40) valueAddedServicePasses:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [*(v2 + 32) firstObject];
    [v4 contactlessInterfaceSessionDidTimeout:v2 forPaymentApplication:v3 paymentPass:*(a1 + 40) valueAddedServicePasses:*(a1 + 48)];
  }
}

- (void)_sessionDidEndUnexpectedly:(id)unexpectedly
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PKContactlessInterfaceSession__sessionDidEndUnexpectedly___block_invoke;
  v3[3] = &unk_1E79C7A28;
  v3[4] = self;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v3];
}

void __60__PKContactlessInterfaceSession__sessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Ended Unexpectedly", buf, 2u);
  }

  v3 = atomic_load((*(a1 + 32) + 145));
  v4 = v3 & 1;
  v5 = *(*(a1 + 32) + 40);
  v6 = *(*(a1 + 32) + 48);
  v7 = *(a1 + 32);
  v8 = *(v7 + 136);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PKContactlessInterfaceSession__sessionDidEndUnexpectedly___block_invoke_238;
  v11[3] = &unk_1E79C7DA8;
  v14 = v4;
  v11[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

void __60__PKContactlessInterfaceSession__sessionDidEndUnexpectedly___block_invoke_238(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 146))
    {
      if (*(a1 + 40) && [*(v3 + 32) count])
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = v2;
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v5 = *(*(a1 + 32) + 32);
          v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v20;
            do
            {
              v9 = 0;
              do
              {
                if (*v20 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = *(*(&v19 + 1) + 8 * v9);
                v11 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:*(a1 + 40) activatedPaymentApplications:*(*(a1 + 32) + 32)];
                [(PKContactlessInterfaceTransactionContext *)v11 setSuccess:1];
                [(PKContactlessInterfaceTransactionContext *)v11 setPaymentApplication:v10];
                [(PKContactlessInterfaceTransactionContext *)v4 addObject:v11];

                ++v9;
              }

              while (v7 != v9);
              v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
            }

            while (v7);
          }

          v12 = *(a1 + 32);
          v13 = [(PKContactlessInterfaceTransactionContext *)v4 copy];
          v2 = v18;
          [v18 contactlessInterfaceSession:v12 didEndPersistentCardEmulationWithContexts:v13];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_17;
          }

          v4 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:*(a1 + 40) activatedPaymentApplications:*(*(a1 + 32) + 32)];
          [(PKContactlessInterfaceTransactionContext *)v4 setSuccess:1];
          v14 = [(PKContactlessInterfaceTransactionContext *)v4 activatedPaymentApplications];
          v15 = [v14 firstObject];
          [(PKContactlessInterfaceTransactionContext *)v4 setPaymentApplication:v15];

          [v2 contactlessInterfaceSession:*(a1 + 32) didEndPersistentCardEmulationWithContext:v4];
        }
      }
    }
  }

LABEL_17:
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidTerminate:*(a1 + 32)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidFail:*(a1 + 32) forPaymentApplications:*(*(a1 + 32) + 32) paymentPass:*(a1 + 40) valueAddedServicePasses:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v16 = *(a1 + 32);
    v17 = [*(v16 + 32) firstObject];
    [v2 contactlessInterfaceSessionDidFail:v16 forPaymentApplication:v17 paymentPass:*(a1 + 40) valueAddedServicePasses:*(a1 + 48)];
  }
}

- (void)_session:(id)_session didFailDeferredAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  v13 = *MEMORY[0x1E69E9840];
  _sessionCopy = _session;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @" Not";
    if (authorizationCopy)
    {
      v8 = &stru_1F227FD28;
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Did%@ Fail Authorization", buf, 0xCu);
  }

  if (authorizationCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKContactlessInterfaceSession__session_didFailDeferredAuthorization___block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_async(callbackQueue, block);
  }
}

void __71__PKContactlessInterfaceSession__session_didFailDeferredAuthorization___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidFailDeferredAuthorization:*(a1 + 32)];
  }
}

- (void)_sessionDidReceiveActivityTimeout:(id)timeout result:(id)result
{
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Received Transaction Activity Timeout.", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PKContactlessInterfaceSession__sessionDidReceiveActivityTimeout_result___block_invoke;
  v6[3] = &unk_1E79C7A28;
  v6[4] = self;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v6];
}

void __74__PKContactlessInterfaceSession__sessionDidReceiveActivityTimeout_result___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 80))
  {
    block[5] = v1;
    block[6] = v2;
    v4 = *(v3 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKContactlessInterfaceSession__sessionDidReceiveActivityTimeout_result___block_invoke_2;
    block[3] = &unk_1E79C4E28;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __74__PKContactlessInterfaceSession__sessionDidReceiveActivityTimeout_result___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidReceiveActivityTimeout:*(a1 + 32)];
  }
}

- (void)_session:(id)_session didExpressModeStateChange:(unsigned int)change withObject:(id)object
{
  _sessionCopy = _session;
  date = [MEMORY[0x1E695DF00] date];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PKContactlessInterfaceSession__session_didExpressModeStateChange_withObject___block_invoke;
  v11[3] = &unk_1E79C7DF8;
  changeCopy = change;
  v11[4] = self;
  v12 = date;
  v13 = _sessionCopy;
  v9 = _sessionCopy;
  v10 = date;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v11];
}

void __79__PKContactlessInterfaceSession__session_didExpressModeStateChange_withObject___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    *buf = 67109120;
    v43 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Received Express Mode State: %u", buf, 8u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  v8 = *(v6 + 40);
  v9 = *(*(a1 + 32) + 112);
  v10 = v9;
  v11 = 0;
  v12 = 0;
  v41 = 0;
  v13 = *(a1 + 56);
  if (v13 <= 4)
  {
    if (v13 > 2)
    {
      if (v13 != 3)
      {
        v16 = *(a1 + 32);
        if (v16[14])
        {
          v12 = [v16 _createExpressTransactionForState:v10 pass:v8 paymentApplications:v16[4] date:*(a1 + 40) shouldGenerateTransaction:&v41 withSession:*(a1 + 48)];
          [v10 resolve];
          v17 = *(a1 + 32);
          v18 = *(v17 + 112);
          *(v17 + 112) = 0;

          v11 = 1;
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (*(*(a1 + 32) + 112))
      {
        v15 = 2;
        goto LABEL_32;
      }
    }

    else
    {
      if (v13 == 1)
      {
        if (!*(*(a1 + 32) + 112))
        {
          v19 = [PKExpressTransactionState createForExpressType:0];
          v20 = *(a1 + 32);
          v21 = *(v20 + 112);
          *(v20 + 112) = v19;

          v22 = *(*(a1 + 32) + 112);
          v12 = 0;
          v11 = 1;
          v10 = v22;
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (v13 != 2)
      {
        goto LABEL_37;
      }

      if (*(*(a1 + 32) + 112))
      {
        v15 = 1;
        goto LABEL_32;
      }
    }

LABEL_33:
    v12 = 0;
    v11 = 0;
    goto LABEL_37;
  }

  if (v13 <= 6)
  {
    if (v13 == 5)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "API CONTRACT VIOLATION: NFLoyaltyAndPaymentSession returned NFExpressModeStateServiceRequested.", buf, 2u);
      }

      goto LABEL_33;
    }

    if (*(*(a1 + 32) + 112))
    {
      v15 = 4;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  switch(v13)
  {
    case 7:
      if (!*(*(a1 + 32) + 112))
      {
        goto LABEL_33;
      }

      v15 = 512;
LABEL_32:
      v11 = [v9 receiveEvents:v15];
      v12 = 0;
      break;
    case 8:
      if (*(*(a1 + 32) + 112))
      {
        v15 = 256;
        goto LABEL_32;
      }

      goto LABEL_33;
    case 9:
      v14 = *(*(a1 + 32) + 112);
      if (v14)
      {
        v11 = [v9 receiveEvents:1024];
      }

      else
      {
        v23 = [PKExpressTransactionState createForExpressType:0];
        v24 = *(a1 + 32);
        v25 = *(v24 + 112);
        *(v24 + 112) = v23;

        v26 = *(*(a1 + 32) + 112);
        v11 = [v26 receiveEvents:1024];
        [v26 resolve];
        v27 = *(a1 + 32);
        v28 = *(v27 + 112);
        *(v27 + 112) = 0;

        v10 = v26;
      }

      v12 = 0;
      if (!v14)
      {
        v11 = 1;
      }

      break;
  }

LABEL_37:
  if ([v10 isProcessing])
  {
    v29 = [v10 copy];

    v10 = v29;
  }

  v30 = *(a1 + 32);
  v31 = *(v30 + 136);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __79__PKContactlessInterfaceSession__session_didExpressModeStateChange_withObject___block_invoke_251;
  v34[3] = &unk_1E79C7DD0;
  v38 = v41;
  v34[4] = v30;
  v35 = v12;
  v39 = v7 != 0;
  v40 = v11;
  v36 = v10;
  v37 = *(a1 + 56);
  v32 = v10;
  v33 = v12;
  dispatch_async(v31, v34);
}

void __79__PKContactlessInterfaceSession__session_didExpressModeStateChange_withObject___block_invoke_251(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 60) != 1)
  {
    goto LABEL_22;
  }

  v3 = *(a1 + 40);
  v4 = PKLogFacilityTypeGetObject(7uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 && v2)
  {
    if (v5)
    {
      v6 = *(*(a1 + 32) + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Created Express Transaction (Payment Applications: %@)", &v10, 0xCu);
    }

    AnalyticsSendEvent();
    [*(a1 + 32) _signalWalletTransactionForContext:*(a1 + 40)];
    if (objc_opt_respondsToSelector())
    {
      [v2 contactlessInterfaceSession:*(a1 + 32) didFinishTransactionWithContext:*(a1 + 40)];
    }

    goto LABEL_22;
  }

  if (v5)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Failed to handle Express Mode Exit. Dropping!!", &v10, 2u);
  }

  if (*(a1 + 61))
  {
    if (*(a1 + 40))
    {
      goto LABEL_18;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v7 = "\tAID mismatch (this should happen extremely rarely).";
LABEL_16:
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, v7, &v10, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    v7 = "\tUnmatched Express Mode exited...";
    goto LABEL_16;
  }

LABEL_18:
  if (!v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "\tLost delegate before delivery of Express Mode Exit state.", &v10, 2u);
    }
  }

LABEL_22:
  if (*(a1 + 62) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 contactlessInterfaceSession:*(a1 + 32) didReceiveExpressTransactionState:*(a1 + 48)];
    }

    else
    {
      v8 = *(a1 + 56) - 1;
      if (v8 > 7)
      {
        v9 = 0;
      }

      else
      {
        v9 = qword_1ADB98EA0[v8];
      }

      if (objc_opt_respondsToSelector())
      {
        [v2 contactlessInterfaceSession:*(a1 + 32) didReceiveExpressState:v9 expressTransactionEvent:{objc_msgSend(*(a1 + 48), "receivedEvents")}];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v2 contactlessInterfaceSession:*(a1 + 32) didReceiveExpressState:v9];
      }
    }
  }
}

- (id)_createExpressTransactionForState:(id)state pass:(id)pass paymentApplications:(id)applications date:(id)date shouldGenerateTransaction:(BOOL *)transaction withSession:(id)session
{
  v43 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  passCopy = pass;
  applicationsCopy = applications;
  dateCopy = date;
  sessionCopy = session;
  status = [stateCopy status];
  if (stateCopy)
  {
    v20 = status == 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  *transaction = v21;
  if (v20)
  {
    sessionType = self->_sessionType;
    if (sessionType >= 2)
    {
      activeApplet = 0;
      v38 = 0;
      v24 = sessionType == 2;
    }

    else
    {
      nfSession = [sessionCopy nfSession];
      activeApplet = [nfSession activeApplet];

      if (activeApplet)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __135__PKContactlessInterfaceSession__createExpressTransactionForState_pass_paymentApplications_date_shouldGenerateTransaction_withSession___block_invoke;
        v39[3] = &unk_1E79C7E20;
        v35 = &v40;
        activeApplet = activeApplet;
        v40 = activeApplet;
        v24 = [applicationsCopy pk_containsObjectPassingTest:v39];
        v38 = 1;
      }

      else
      {
        v38 = 0;
        v24 = 0;
      }
    }

    v27 = [[PKContactlessInterfaceTransactionContext alloc] initWithPaymentPass:passCopy activatedPaymentApplications:self->_activatedPaymentApplications];
    if (v24)
    {
      v37 = applicationsCopy;
      nfSession2 = [sessionCopy nfSession];
      if (activeApplet)
      {
        identifier = [activeApplet identifier];
        firstObject = [(PKContactlessInterfaceSession *)self _paymentApplicationForEventAppletIdentifier:identifier inContext:v27 withSession:nfSession2];
      }

      else
      {
        firstObject = [(NSArray *)self->_activatedPaymentApplications firstObject];
      }

      [(PKContactlessInterfaceTransactionContext *)v27 setSuccess:1];
      [(PKContactlessInterfaceTransactionContext *)v27 setIncompatible:0];
      v36 = dateCopy;
      [(PKContactlessInterfaceTransactionContext *)v27 setDate:dateCopy];
      [(PKContactlessInterfaceTransactionContext *)v27 setPaymentApplication:firstObject];
      applicationIdentifier = [firstObject applicationIdentifier];
      uniqueID = [passCopy uniqueID];
      [stateCopy associateWithApplicationIdentifier:applicationIdentifier keyIdentifier:0 terminalReaderIdentifier:0 passUniqueIdentifier:uniqueID];

      [(PKContactlessInterfaceTransactionContext *)v27 setExpressState:stateCopy];
      if (nfSession2)
      {
        v33 = [objc_opt_class() transitAppletStateFromPaymentSession:nfSession2 forPaymentApplication:firstObject];
        if (v33)
        {
          [(PKContactlessInterfaceTransactionContext *)v27 setTransitHistory:v33];
        }
      }

      dateCopy = v36;
      applicationsCopy = v37;
    }

    if (v38)
    {
    }
  }

  else
  {
    activeApplet = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(activeApplet, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      receivedEvents = [stateCopy receivedEvents];
      _os_log_impl(&dword_1AD337000, activeApplet, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session not generating transaction because missing prerequisite express activity. Activity: %lu", buf, 0xCu);
    }

    v27 = 0;
  }

  return v27;
}

uint64_t __135__PKContactlessInterfaceSession__createExpressTransactionForState_pass_paymentApplications_date_shouldGenerateTransaction_withSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 applicationIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 isEqual:v4];
  }

  else
  {
    v6 = v3 == v4;
  }

  return v6;
}

- (void)_startLookup
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PKContactlessInterfaceSession__startLookup__block_invoke;
  v2[3] = &unk_1E79C7A28;
  v2[4] = self;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v2];
}

void __45__PKContactlessInterfaceSession__startLookup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Starting Field Properties Lookup", buf, 2u);
  }

  v15 = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  switch(v6)
  {
    case 0:
      v13 = *(v5 + 80);
      v8 = [v3 nfSession];
      started = PKFieldPropertiesStartSecondaryLookup(v13, v8, &v15);
LABEL_11:
      v14 = started;

      *(*(a1 + 32) + 88) = v15;
      if (v14)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    case 2:
      v10 = *(v5 + 80);
      v11 = [v3 nfSession];
      if (v10)
      {
        v15 = 0;
      }

      v12 = v15;
      v5 = *(a1 + 32);
      break;
    case 1:
      v7 = *(v5 + 80);
      v8 = [v3 nfSession];
      started = PKFieldPropertiesStartSecondaryLookup(v7, v8, &v15);
      goto LABEL_11;
    default:
      v12 = 0;
      break;
  }

  *(v5 + 88) = v12;
LABEL_15:
  [*(a1 + 32) _endLookupAndNotify];
LABEL_16:
}

- (void)_endLookupAndNotify
{
  v12 = *MEMORY[0x1E69E9840];
  fieldPropertiesToLookup = self->_fieldPropertiesToLookup;
  v4 = fieldPropertiesToLookup;
  [(PKContactlessInterfaceSession *)self _endLookup];
  objc_storeStrong(&self->_fieldProperties, fieldPropertiesToLookup);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Contactless Interface Did Enter Field With Properties: %@", buf, 0xCu);
  }

  callbackQueue = self->_callbackQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PKContactlessInterfaceSession__endLookupAndNotify__block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(callbackQueue, v8);
}

void __52__PKContactlessInterfaceSession__endLookupAndNotify__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contactlessInterfaceSessionDidEnterField:*(a1 + 32) withProperties:*(a1 + 40)];
  }
}

- (void)_endLookup
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__PKContactlessInterfaceSession__endLookup__block_invoke;
  v2[3] = &unk_1E79C7A28;
  v2[4] = self;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v2];
}

void __43__PKContactlessInterfaceSession__endLookup__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Contactless Interface Session Ending Lookup & Stopping Card Emulation", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  if (v6)
  {
    *(v5 + 80) = 0;

    v7 = *(*(a1 + 32) + 152);
    v8 = [v3 nfSession];
    v9 = v8;
    if (v7)
    {
      v14 = 0;
      v10 = &v14;
    }

    else
    {
      v15 = 0;
      v10 = &v15;
    }

    [v8 stopCardEmulation:{v10, v14, v15}];
    v11 = *v10;

    if (v11)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to stop Card Emulation: %@", buf, 0xCu);
      }
    }

    v12 = *(a1 + 32);
    if (!*(v12 + 152))
    {
      v13 = [v3 nfSession];
      [v13 setHostCards:*(*(a1 + 32) + 56)];

      v12 = *(a1 + 32);
    }

    if (*(v12 + 88) == 1)
    {
      *(v12 + 88) = 0;
      if ([*(*(a1 + 32) + 32) count])
      {
        [*(a1 + 32) _activatePaymentApplications:*(*(a1 + 32) + 32) forPaymentPass:*(*(a1 + 32) + 40) forceReactivation:1];
      }
    }
  }
}

@end