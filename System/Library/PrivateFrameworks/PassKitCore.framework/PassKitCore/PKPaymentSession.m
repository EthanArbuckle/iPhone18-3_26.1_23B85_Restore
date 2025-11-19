@interface PKPaymentSession
+ (BOOL)useSTSForPaymentApplication:(id)a3 subcredential:(id)a4 onSecureElementPass:(id)a5;
+ (id)STSCredentialForPaymentApplication:(id)a3 subcredential:(id)a4 onSecureElementPass:(id)a5;
+ (id)forceContactlessInterfaceSessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startApplePayTrustSessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startContactlessInterfaceSessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startDigitalCarKeySessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startInAppSessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startPeerPaymentSessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startReaderSessionWithCompletion:(id)a3 targetQueue:(id)a4;
+ (id)startSTSContactlessInterfaceSessionWithDelegate:(id)a3 completion:(id)a4;
+ (void)_STSCredentialTypeForPaymentApplication:(void *)a3 subcredential:(void *)a4 onSecureElementPass:(void *)a5 STSCredential:;
- (PKPaymentSession)initWithInternalSession:(id)a3 targetQueue:(id)a4;
- (void)createSessionHandoffTokenWithCompletion:(id)a3;
- (void)invalidateSessionWithCompletion:(id)a3;
- (void)performBlockAsyncOnInternalSession:(id)a3;
- (void)performBlockSyncOnInternalSession:(id)a3;
@end

@implementation PKPaymentSession

+ (id)startInAppSessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting in-app session...", buf, 2u);
  }

  PKTimeProfileBegin(v7, @"in_app_session_start");
  v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PKPaymentSession_startInAppSessionWithCompletion_targetQueue___block_invoke;
  v14[3] = &unk_1E79CC5C0;
  v15 = v6;
  v16 = v5;
  v9 = v5;
  v10 = v6;
  v11 = [v8 startECommercePaymentSession:v14];
  v12 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v11 targetQueue:v10];

  return v12;
}

void __64__PKPaymentSession_startInAppSessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  p_super = PKLogFacilityTypeGetObject(7uLL);
  v8 = PKTimeProfileEnd(p_super, @"in_app_session_start", @"In-App Payment Session Start");

  if (v5)
  {
    v9 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v10 = [[PKInAppPaymentSession alloc] initWithInternalSession:v9 targetQueue:*(a1 + 32)];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKInAppPaymentSession (%p): started in-app session %p.", &v12, 0x16u);
    }

    p_super = &v9->super;
  }

  else
  {
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start in-app session - %@.", &v12, 0xCu);
    }

    v10 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }
}

+ (id)startContactlessInterfaceSessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting contactless nearfield session...", buf, 2u);
    }

    v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PKPaymentSession_startContactlessInterfaceSessionWithCompletion_targetQueue___block_invoke;
    v13[3] = &unk_1E79CC5E8;
    v9 = v6;
    v14 = v9;
    v15 = v5;
    v10 = [v8 startLoyaltyAndContactlessPaymentSession:v13];
    v11 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v10 targetQueue:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __79__PKPaymentSession_startContactlessInterfaceSessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v8 = [[PKContactlessInterfaceSession alloc] initWithInternalSession:v7 targetQueue:*(a1 + 32)];
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): started contactless nearfield session %p.", &v10, 0x16u);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, &v7->super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start contactless nearfield session - %@.", &v10, 0xCu);
    }

    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)startDigitalCarKeySessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting car key session...", buf, 2u);
    }

    v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__PKPaymentSession_startDigitalCarKeySessionWithCompletion_targetQueue___block_invoke;
    v13[3] = &unk_1E79CC610;
    v9 = v6;
    v14 = v9;
    v15 = v5;
    v10 = [v8 startDigitalCarKeySession:v13];
    v11 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v10 targetQueue:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __72__PKPaymentSession_startDigitalCarKeySessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v8 = [[PKContactlessInterfaceSession alloc] initWithInternalSession:v7 targetQueue:*(a1 + 32)];
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): started car key session %p.", &v10, 0x16u);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, &v7->super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start car key session - %@.", &v10, 0xCu);
    }

    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)forceContactlessInterfaceSessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: force starting contactless nearfield session...", buf, 2u);
    }

    v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PKPaymentSession_forceContactlessInterfaceSessionWithCompletion_targetQueue___block_invoke;
    v13[3] = &unk_1E79CC5E8;
    v9 = v6;
    v14 = v9;
    v15 = v5;
    v10 = [v8 forceLoyaltyAndContactlessPaymentSession:v13];
    v11 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v10 targetQueue:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __79__PKPaymentSession_forceContactlessInterfaceSessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v8 = [[PKContactlessInterfaceSession alloc] initWithInternalSession:v7 targetQueue:*(a1 + 32)];
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): force started contactless nearfield session %p.", &v10, 0x16u);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, &v7->super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to force start contactless nearfield session - %@.", &v10, 0xCu);
    }

    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)startSTSContactlessInterfaceSessionWithDelegate:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v6 = getSTSSessionClass[0];
    v7 = a3;
    v8 = objc_alloc_init(v6());
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting contactless STS session %p...", buf, 0xCu);
    }

    buf[0] = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __79__PKPaymentSession_startSTSContactlessInterfaceSessionWithDelegate_completion___block_invoke;
    v22 = &unk_1E79C4860;
    v23 = v8;
    v24 = v5;
    v10 = v8;
    [v10 startWithDelegate:v7 isFirstInQueue:buf completion:&v19];

    v11 = [PKPaymentSessionHandle alloc];
    v12 = buf[0];
    v13 = v10;
    v14 = v13;
    if (v11 && v13)
    {
      v15 = [(PKPaymentSessionHandle *)v11 _initWithQueue:?];
      v16 = v15;
      if (v15)
      {
        objc_storeStrong(v15 + 3, v8);
        v16[32] = v12;
      }

      else
      {
        [v14 endSessionWithCompletion:{0, v19, v20, v21, v22, v23, v24}];
      }

      v11 = v16;
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __79__PKPaymentSession_startSTSContactlessInterfaceSessionWithDelegate_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start contactless STS session - %@.", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [[PKTransactionSessionWrapper alloc] initWithSTSSession:*(a1 + 32)];
    v6 = [[PKContactlessInterfaceSession alloc] initWithInternalSession:v5 targetQueue:0];
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PKTransactionSessionWrapper *)v5 stsSession];
      v9 = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSession (%p): started contactless STS session %p.", &v9, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)startReaderSessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting reader nearfield session...", buf, 2u);
  }

  v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PKPaymentSession_startReaderSessionWithCompletion_targetQueue___block_invoke;
  v14[3] = &unk_1E79CC638;
  v15 = v6;
  v16 = v5;
  v9 = v5;
  v10 = v6;
  v11 = [v8 startReaderSession:v14];
  v12 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v11 targetQueue:v10];

  return v12;
}

void __65__PKPaymentSession_startReaderSessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v8 = [[PKNFCTagReaderSession alloc] initWithInternalSession:v7 targetQueue:*(a1 + 32)];
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v8;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKNFCTagReaderSession (%p): started reader nearfield session %p.", &v11, 0x16u);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, &v7->super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start reader nearfield session - %@.", &v11, 0xCu);
    }

    v8 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v6);
  }
}

+ (id)startPeerPaymentSessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting peer-payment session...", buf, 2u);
  }

  PKTimeProfileBegin(v7, @"peer_payment_session_start");
  v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PKPaymentSession_startPeerPaymentSessionWithCompletion_targetQueue___block_invoke;
  v14[3] = &unk_1E79CC660;
  v15 = v6;
  v16 = v5;
  v9 = v5;
  v10 = v6;
  v11 = [v8 startPeerPaymentSession:v14];
  v12 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v11 targetQueue:v10];

  return v12;
}

void __70__PKPaymentSession_startPeerPaymentSessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  p_super = PKLogFacilityTypeGetObject(7uLL);
  v8 = PKTimeProfileEnd(p_super, @"peer_payment_session_start", @"Peer Payment Session Start");

  if (v5)
  {
    v9 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v10 = [[PKPeerPaymentSession alloc] initWithInternalSession:v9 targetQueue:*(a1 + 32)];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSession (%p): started peer-payment session %p.", &v12, 0x16u);
    }

    p_super = &v9->super;
  }

  else
  {
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start peer-payment session - %@.", &v12, 0xCu);
    }

    v10 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }
}

+ (id)startApplePayTrustSessionWithCompletion:(id)a3 targetQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: starting trust session...", buf, 2u);
  }

  v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PKPaymentSession_startApplePayTrustSessionWithCompletion_targetQueue___block_invoke;
  v14[3] = &unk_1E79CC688;
  v15 = v6;
  v16 = v5;
  v9 = v5;
  v10 = v6;
  v11 = [v8 startTrustSession:v14];
  v12 = [[PKPaymentSessionHandle alloc] initWithInternalNFSessionHandle:v11 targetQueue:v10];

  return v12;
}

void __72__PKPaymentSession_startApplePayTrustSessionWithCompletion_targetQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[PKTransactionSessionWrapper alloc] initWithNFSession:v5];
    v8 = [[PKApplePayTrustSession alloc] initWithInternalSession:v7 targetQueue:*(a1 + 32)];
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v8;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKApplePayTrustSession (%p): started trust session %p.", &v11, 0x16u);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, &v7->super, OS_LOG_TYPE_DEFAULT, "PKPaymentSession: failed to start trust session - %@.", &v11, 0xCu);
    }

    v8 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

+ (void)_STSCredentialTypeForPaymentApplication:(void *)a3 subcredential:(void *)a4 onSecureElementPass:(void *)a5 STSCredential:
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  if (v10 && v8)
  {
    v11 = [v9 identifier];
    v12 = v11;
    if (v9 && !v11)
    {
      if (a5)
      {
        v13 = *a5;
        *a5 = 0;
      }

      goto LABEL_44;
    }

    v14 = [v8 subcredentials];
    v15 = v14;
    if (!v9 || v14 && ([v14 containsObject:v9] & 1) != 0)
    {
      v16 = [v8 applicationIdentifier];
      if (!v16)
      {
        if (a5)
        {
          v27 = *a5;
          *a5 = 0;
        }

        goto LABEL_43;
      }

      v17 = [v10 devicePaymentApplications];
      if (v17)
      {
        v32 = v15;
        v33 = v12;
        v34 = v10;
        v35 = a5;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v37;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v37 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = [*(*(&v36 + 1) + 8 * i) applicationIdentifier];
              v25 = v16;
              if (v24 == v25)
              {
                v21 = 1;
              }

              else if (v24)
              {
                v21 |= [v24 isEqualToString:v25];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v20);

          if (v21)
          {
            v10 = v34;
            if ([v34 isCarKeyPass])
            {
              v26 = 4;
              v12 = v33;
              if (!v35)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v12 = v33;
              if ([v34 isIdentityPass])
              {
                if ([v34 isHybridIdentityPass])
                {
                  v26 = 5;
                }

                else
                {
                  v26 = 2;
                }

                if (!v35)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v28 = [v8 subcredentials];
                v29 = [v28 count];

                if (v29)
                {
                  v26 = 3;
                }

                else
                {
                  v26 = 1;
                }

                if (!v35)
                {
                  goto LABEL_42;
                }
              }
            }

            v30 = [objc_alloc(getSTSCredentialClass[0]()) initWithType:v26 identifier:v25 subIdentifier:v12];
            v31 = *v35;
            *v35 = v30;

LABEL_42:
            v15 = v32;
LABEL_43:

LABEL_44:
            return;
          }
        }

        else
        {
        }
      }
    }
  }

  __break(1u);
}

+ (BOOL)useSTSForPaymentApplication:(id)a3 subcredential:(id)a4 onSecureElementPass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PKPaymentSession *)a1 _STSCredentialTypeForPaymentApplication:v8 subcredential:v9 onSecureElementPass:v10 STSCredential:0];
  LODWORD(a1) = 0x2Cu >> v11;

  return a1 & 1;
}

+ (id)STSCredentialForPaymentApplication:(id)a3 subcredential:(id)a4 onSecureElementPass:(id)a5
{
  v7 = 0;
  [(PKPaymentSession *)a1 _STSCredentialTypeForPaymentApplication:a3 subcredential:a4 onSecureElementPass:a5 STSCredential:&v7];
  v5 = v7;

  return v5;
}

- (PKPaymentSession)initWithInternalSession:(id)a3 targetQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PKPaymentSession;
  v9 = [(PKPaymentSession *)&v15 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_initially_inactive(v10);

    v12 = dispatch_queue_create("com.apple.passkit.paymentsession.internalSession", v11);
    v13 = *(v9 + 1);
    *(v9 + 1) = v12;

    if (v8)
    {
      dispatch_set_target_queue(*(v9 + 1), v8);
    }

    dispatch_activate(*(v9 + 1));
    objc_storeStrong(v9 + 2, a3);
    dispatch_queue_set_specific(*(v9 + 1), @"context", v9, 0);
  }

  else
  {
    [v7 endSession];
  }

  return v9;
}

- (void)invalidateSessionWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKPaymentSession_invalidateSessionWithCompletion___block_invoke;
  v6[3] = &unk_1E79CC6B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v6];
}

void __52__PKPaymentSession_invalidateSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(a1 + 32) + 16))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ (%p): invalidating...", buf, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__PKPaymentSession_invalidateSessionWithCompletion___block_invoke_100;
    v15[3] = &unk_1E79C4EA0;
    v16 = v5;
    v18 = v6;
    v17 = *(a1 + 40);
    v9 = v5;
    [v8 endSessionWithCompletion:v15];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    *(v10 + 16) = 0;

    goto LABEL_7;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v9 = dispatch_get_global_queue(21, 0);
    v13 = v12;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __dispatch_async_ar_block_invoke_4;
    v20 = &unk_1E79C4428;
    v21 = v13;
    v14 = v13;
    dispatch_async(v9, buf);

LABEL_7:
  }
}

void __52__PKPaymentSession_invalidateSessionWithCompletion___block_invoke_100(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    *v9 = 138543618;
    *&v9[4] = v3;
    *&v9[12] = 2048;
    *&v9[14] = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (%p): invalidated.", v9, 0x16u);
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = dispatch_get_global_queue(21, 0);
    v7 = v5;
    *v9 = MEMORY[0x1E69E9820];
    *&v9[8] = 3221225472;
    *&v9[16] = __dispatch_async_ar_block_invoke_4;
    v10 = &unk_1E79C4428;
    v11 = v7;
    v8 = v7;
    dispatch_async(v6, v9);
  }
}

- (void)createSessionHandoffTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKPaymentSession_createSessionHandoffTokenWithCompletion___block_invoke;
    v6[3] = &unk_1E79CC6B0;
    v6[4] = self;
    v7 = v4;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v6];
  }
}

void __60__PKPaymentSession_createSessionHandoffTokenWithCompletion___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) nfSession];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 16) nfSession];
    v9 = 0;
    v4 = [v3 createSessionHandoffToken:&v9];
    v5 = v9;

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = @"createSessionHandoffTokenWithCompletion: only works for NFSession";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v8 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v5];
    v6 = *(v7 + 16);
  }

  v6();
}

- (void)performBlockAsyncOnInternalSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    internalSessionSerialQueue = self->_internalSessionSerialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PKPaymentSession_performBlockAsyncOnInternalSession___block_invoke;
    v8[3] = &unk_1E79C44A0;
    v8[4] = self;
    v9 = v4;
    v7 = v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_4;
    block[3] = &unk_1E79C4428;
    v11 = v7;
    dispatch_async(internalSessionSerialQueue, block);
  }
}

- (void)performBlockSyncOnInternalSession:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (dispatch_get_specific(@"context") == self)
    {
      v4[2](v4, self->_internalSession);
    }

    else
    {
      internalSessionSerialQueue = self->_internalSessionSerialQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __54__PKPaymentSession_performBlockSyncOnInternalSession___block_invoke;
      v6[3] = &unk_1E79C44A0;
      v6[4] = self;
      v7 = v4;
      dispatch_sync(internalSessionSerialQueue, v6);
    }
  }
}

@end