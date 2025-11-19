@interface PKPaymentVerificationObserver
- (BOOL)_handleVerificationCode:(id)a3 fromSource:(id)a4;
- (PKPaymentVerificationObserver)initWithPaymentPass:(id)a3 verificationChannel:(id)a4 identifier:(id)a5;
- (PKPaymentVerificationObserver)initWithVerificationMethod:(id)a3 identifier:(id)a4;
- (PKPaymentVerificationObserverDelegate)delegate;
- (void)_queue_stop;
- (void)_startObserving;
- (void)_startObservingUsingLegacyObserver;
- (void)dealloc;
- (void)startObservingVerificationSourceWithTimeout:(double)a3;
- (void)stop;
@end

@implementation PKPaymentVerificationObserver

- (PKPaymentVerificationObserver)initWithPaymentPass:(id)a3 verificationChannel:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [PKPassVerificationMethod methodFromLegacyChannel:a4];
  if (v11)
  {
    v12 = [(PKPaymentVerificationObserver *)self initWithVerificationMethod:v11 identifier:v10];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_pass, a3);
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PKPaymentVerificationObserver)initWithVerificationMethod:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKPaymentVerificationObserver;
  v9 = [(PKPaymentVerificationObserver *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("VerificationObserver", 0);
    internalQueue = v9->_internalQueue;
    v9->_internalQueue = v10;

    objc_storeStrong(&v9->_verificationMethod, a3);
    objc_storeStrong(&v9->_identifier, a4);
  }

  return v9;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = PKPaymentVerificationObserver;
  [(PKPaymentVerificationObserver *)&v4 dealloc];
}

- (void)startObservingVerificationSourceWithTimeout:(double)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PKPaymentVerificationObserver_startObservingVerificationSourceWithTimeout___block_invoke;
  v4[3] = &unk_1E79CAED8;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_sync(internalQueue, v4);
}

void __77__PKPaymentVerificationObserver_startObservingVerificationSourceWithTimeout___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    if ([*(*(a1 + 32) + 8) type] == 1)
    {
      v3 = *(*(a1 + 32) + 8);
      if ([v3 channel] == 1)
      {
        v4 = PKLogFacilityTypeGetObject(0x26uLL);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          v6 = *(*(a1 + 32) + 56);
          v7 = [v3 sourceAddress];
          *buf = 138412802;
          v23 = v6;
          v24 = 2048;
          v25 = v5;
          v26 = 2112;
          v27 = v7;
          _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Observer<%@>: Starting SMS verification observer with timeout: %f sourceAddress: %@", buf, 0x20u);
        }

        v8 = PKEnableUpdatedOneTimeCodeParsing();
        v9 = *(a1 + 32);
        if (v8)
        {
          [v9 _startObserving];
        }

        else
        {
          [v9 _startObservingUsingLegacyObserver];
        }
      }
    }

    if (*(a1 + 40) > 0.0)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      if (v11)
      {
        dispatch_source_cancel(v11);
        v12 = *(a1 + 32);
        v13 = *(v12 + 32);
        *(v12 + 32) = 0;

        v10 = *(a1 + 32);
      }

      v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v10 + 24));
      v15 = *(a1 + 32);
      v16 = *(v15 + 32);
      *(v15 + 32) = v14;

      v17 = *(*(a1 + 32) + 32);
      v18 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      objc_initWeak(buf, *(a1 + 32));
      v19 = *(*(a1 + 32) + 32);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__PKPaymentVerificationObserver_startObservingVerificationSourceWithTimeout___block_invoke_55;
      v20[3] = &unk_1E79C54B8;
      objc_copyWeak(&v21, buf);
      v20[4] = *(a1 + 32);
      dispatch_source_set_event_handler(v19, v20);
      dispatch_resume(*(*(a1 + 32) + 32));
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }
}

void __77__PKPaymentVerificationObserver_startObservingVerificationSourceWithTimeout___block_invoke_55(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 16) == 1)
  {
    v4 = PKLogFacilityTypeGetObject(0x26uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 56);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Observer<%@>: Verification observer timed out", &v7, 0xCu);
    }

    [v3 _queue_stop];
    v6 = objc_loadWeakRetained(v3 + 9);
    [v6 verificationObserverDidTimeout:v3];
  }
}

- (void)_startObserving
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(getIMOneTimeCodeAcceleratorClass[0]());
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PKPaymentVerificationObserver__startObserving__block_invoke;
  v6[3] = &unk_1E79DEFC8;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [v3 initWithBlockForUpdates:v6];
  oneTimeCodeObserver = self->_oneTimeCodeObserver;
  self->_oneTimeCodeObserver = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__PKPaymentVerificationObserver__startObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PKPaymentVerificationObserver__startObserving__block_invoke_2;
  block[3] = &unk_1E79C9528;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void __48__PKPaymentVerificationObserver__startObserving__block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && *(WeakRetained + 16) == 1)
  {
    v19 = WeakRetained;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = a1[4];
    v3 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          v8 = PKLogFacilityTypeGetObject(0x26uLL);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(a1[5] + 7);
            *buf = 138412547;
            v26 = v9;
            v27 = 2113;
            v28 = v7;
            _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Observer<%@>: Detected potential verification code: %{private}@", buf, 0x16u);
          }

          v10 = _MergedGlobals_180();
          v11 = [v7 PKStringForKey:v10];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v14 = off_1ED6D1170();
            v13 = [v7 PKStringForKey:v14];
          }

          v15 = off_1ED6D1178();
          v16 = [v7 PKStringForKey:v15];

          v17 = off_1ED6D1180();
          v18 = [v7 PKStringForKey:v17];

          if (v13 && v16 && v18 && [a1[5] _handleVerificationCode:v13 fromSource:v16])
          {
            [v19[5] consumeCodeWithGuid:v18];
            [v19 _queue_stop];

            goto LABEL_21;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    WeakRetained = v19;
  }
}

- (void)_startObservingUsingLegacyObserver
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __67__PKPaymentVerificationObserver__startObservingUsingLegacyObserver__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPaymentVerificationObserver__startObservingUsingLegacyObserver__block_invoke_2;
  v13[3] = &unk_1E79DEFF0;
  v13[4] = v9;
  v14 = v7;
  v11 = v7;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = v8;
  v12 = v8;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v16);
}

void __67__PKPaymentVerificationObserver__startObservingUsingLegacyObserver__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x26uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);
    v6 = 138412547;
    v7 = v4;
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Observer<%@>: Detected candidate verification code: %{private}@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleVerificationCode:*(a1 + 40) fromSource:*(a1 + 48)];
}

- (BOOL)_handleVerificationCode:(id)a3 fromSource:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length] <= 4)
  {
    v8 = PKLogFacilityTypeGetObject(0x26uLL);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v26 = 138412803;
      v27 = identifier;
      v28 = 2113;
      v29 = v6;
      v30 = 1024;
      LODWORD(v31) = 5;
      v10 = "Observer<%@>: Verification code %{private}@ is not of minimum length %d -- ignoring.";
      p_super = &v8->super;
      v12 = 28;
LABEL_14:
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, v10, &v26, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if ([(PKPassVerificationMethod *)self->_verificationMethod type]== 1)
  {
    v8 = self->_verificationMethod;
    v13 = [(PKPassVerificationMethod *)v8 sourceAddress];
    v14 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v13];
    v15 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v7];
    if (self->_skipSourceCheck || !v14 || ([v14 isLikePhoneNumber:v15] & 1) != 0)
    {
      v16 = PKLogFacilityTypeGetObject(0x26uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_identifier;
        v26 = 138412547;
        v27 = v17;
        v28 = 2113;
        v29 = v6;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Observer<%@>: handling valid code %{private}@", &v26, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (!WeakRetained)
      {
        v20 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 verificationObserver:self didObserveVerificationCode:v6];
      v20 = 1;
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject(0x26uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_identifier;
        v23 = [v15 stringValue];
        v24 = [v14 stringValue];
        v26 = 138413059;
        v27 = v22;
        v28 = 2113;
        v29 = v6;
        v30 = 2112;
        v31 = v23;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Observer<%@>: Verification code %{private}@ source address %@ does not match expected source address: %@ -- ignoring", &v26, 0x2Au);
      }

      v20 = 0;
    }

    goto LABEL_21;
  }

  v8 = PKLogFacilityTypeGetObject(0x26uLL);
  if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_identifier;
    v26 = 138412547;
    v27 = v21;
    v28 = 2113;
    v29 = v6;
    v10 = "Observer<%@>: Verification code %{private}@ ignored because method type invalid -- ignoring.";
    p_super = &v8->super;
    v12 = 22;
    goto LABEL_14;
  }

LABEL_15:
  v20 = 0;
LABEL_22:

  return v20;
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PKPaymentVerificationObserver_stop__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_queue_stop
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0x26uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v9 = 138412290;
    v10 = identifier;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Observer<%@>: Stopping verification observer", &v9, 0xCu);
  }

  if (self->_observing)
  {
    self->_observing = 0;
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v6 = self->_timer;
      self->_timer = 0;
    }

    if (self->_identifier)
    {
      HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier();
      v7 = self->_identifier;
      self->_identifier = 0;
    }

    oneTimeCodeObserver = self->_oneTimeCodeObserver;
    self->_oneTimeCodeObserver = 0;
  }
}

- (PKPaymentVerificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end