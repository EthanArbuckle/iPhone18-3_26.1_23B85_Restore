@interface IDSPhoneCertificateVendor
- (IDSPhoneCertificateVendor)initWithQueue:(id)a3;
- (id)_clientErrorForCode:(int64_t)a3 underlyingError:(id)a4;
- (id)_debugDescriptionForErrorCode:(int64_t)a3;
- (id)_scheduleTimeoutForCarrierTokenCompletionBlock:(id)a3;
- (id)_scheduleTimeoutForPhoneAuthenticationCertificateRequestCompletionBlock:(id)a3;
- (id)_scheduleTimeoutForPhoneAuthenticationSignatureRequestCompletionBlock:(id)a3;
- (id)_scheduleTimeoutForPhoneSubscriptionSourceCompletionBlock:(id)a3;
- (int64_t)_subscriptionSourceForContext:(id)a3;
- (int64_t)_subscriptionSourceFromIntegerValue:(int64_t)a3;
- (int64_t)currentPhoneUserSubscriptionSourceWithError:(id *)a3;
- (void)_updateSelfRetentionBasedOnInFlightRequestCount;
- (void)authenticatePhoneWithCompletion:(id)a3;
- (void)dealloc;
- (void)didAuthenticatePhoneWithAuthenticationCertificateData:(id)a3 requestUUID:(id)a4 error:(id)a5;
- (void)didFetchPhoneUserSubscriptionSource:(id)a3 requestUUID:(id)a4 error:(id)a5;
- (void)didGeneratePhoneAuthenticationSignature:(id)a3 nonce:(id)a4 certificates:(id)a5 labelIDs:(id)a6 inputData:(id)a7 requestUUID:(id)a8 error:(id)a9;
- (void)didRequestCarrierTokenString:(id)a3 requestUUID:(id)a4 error:(id)a5;
- (void)didSetPhoneUserSubscriptionSource:(id)a3 requestUUID:(id)a4 error:(id)a5;
- (void)generatePhoneAuthenticationSignatureOverData:(id)a3 withCompletion:(id)a4;
- (void)requestCarrierTokenWithMessageBody:(id)a3 completion:(id)a4;
- (void)requestCarrierTokenWithParameters:(id)a3 completion:(id)a4;
- (void)requestCurrentPhoneUserSubscriptionSourceWithCompletion:(id)a3;
- (void)setCurrentPhoneUserSubscriptionSource:(int64_t)a3 completion:(id)a4;
@end

@implementation IDSPhoneCertificateVendor

- (IDSPhoneCertificateVendor)initWithQueue:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IDSPhoneCertificateVendor;
  v5 = [(IDSPhoneCertificateVendor *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create_with_target_V2("com.apple.IDS.IDSPhoneCertificateVendor", v6, v4);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_alloc_init(IDSDaemonRequestTimer);
    daemonRequestTimer = v5->_daemonRequestTimer;
    v5->_daemonRequestTimer = v9;

    v11 = +[IDSDaemonController sharedInstance];
    v12 = [v11 listener];
    [v12 addHandler:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  v4 = [v3 listener];
  [v4 removeHandler:self];

  v5.receiver = self;
  v5.super_class = IDSPhoneCertificateVendor;
  [(IDSPhoneCertificateVendor *)&v5 dealloc];
}

- (void)authenticatePhoneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSPhoneCertificateVendor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5D2D0;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)generatePhoneAuthenticationSignatureOverData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSPhoneCertificateVendor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A5D530;
  block[3] = &unk_1E7440308;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)requestCarrierTokenWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSPhoneCertificateVendor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A5D794;
  block[3] = &unk_1E7440308;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_updateSelfRetentionBasedOnInFlightRequestCount
{
  v3 = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  [v3 inFlightRequestCount];

  MEMORY[0x1EEE66B58](self, sel_setStrongSelfReference_);
}

- (id)_debugDescriptionForErrorCode:(int64_t)a3
{
  if (a3 > -1101)
  {
    if (a3 == -1100)
    {
      return @"Failed to fetch carrier token";
    }

    if (a3 != -900)
    {
      if (a3 == -1000)
      {
        return @"Failed to fetch local phone authentication certificate";
      }

      return @"Unknown phone certificate error";
    }

    return @"An unknown error occurred";
  }

  else
  {
    if (a3 == -4000)
    {
      return @"The requested operation is not supported on this platform";
    }

    if (a3 != -3000)
    {
      if (a3 == -2000)
      {
        return @"Failed to generate phone authentication signature";
      }

      return @"Unknown phone certificate error";
    }

    return @"Request timed out waiting for response from daemon";
  }
}

- (id)_clientErrorForCode:(int64_t)a3 underlyingError:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(IDSPhoneCertificateVendor *)self _debugDescriptionForErrorCode:a3];
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneCertificateVendorErrorDomain" code:a3 userInfo:v7];

  return v9;
}

- (void)didAuthenticatePhoneWithAuthenticationCertificateData:(id)a3 requestUUID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5DC48;
  v15[3] = &unk_1E743EEE8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)didGeneratePhoneAuthenticationSignature:(id)a3 nonce:(id)a4 certificates:(id)a5 labelIDs:(id)a6 inputData:(id)a7 requestUUID:(id)a8 error:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(IDSPhoneCertificateVendor *)self queue];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_195A5DFAC;
  v30[3] = &unk_1E7440850;
  v31 = v17;
  v32 = self;
  v33 = v21;
  v34 = v15;
  v35 = v16;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v16;
  v27 = v15;
  v28 = v21;
  v29 = v17;
  dispatch_async(v22, v30);
}

- (void)didRequestCarrierTokenString:(id)a3 requestUUID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5E358;
  v15[3] = &unk_1E743EEE8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (int64_t)_subscriptionSourceFromIntegerValue:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (int64_t)_subscriptionSourceForContext:(id)a3
{
  result = [a3 slotID];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)_scheduleTimeoutForPhoneAuthenticationSignatureRequestCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](v4);
  v7 = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:v7];

  v9 = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5E69C;
  v16 = &unk_1E743F110;
  v17 = self;
  v18 = v4;
  v10 = v4;
  v11 = [v9 scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:20.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (id)_scheduleTimeoutForPhoneAuthenticationCertificateRequestCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](v4);
  v7 = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:v7];

  v9 = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5E8DC;
  v16 = &unk_1E743F110;
  v17 = self;
  v18 = v4;
  v10 = v4;
  v11 = [v9 scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:360.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (id)_scheduleTimeoutForCarrierTokenCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](v4);
  v7 = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:v7];

  v9 = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5EB1C;
  v16 = &unk_1E743F110;
  v17 = self;
  v18 = v4;
  v10 = v4;
  v11 = [v9 scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:360.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (void)requestCarrierTokenWithMessageBody:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [[IDSCarrierTokenRequestParameters alloc] initWithSubscriptionSource:1 IMEI:@"TEST_IMEI" carrierNonce:@"TEST_NONCE"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A5ED68;
  v8[3] = &unk_1E7440878;
  v9 = v5;
  v7 = v5;
  [(IDSPhoneCertificateVendor *)self requestCarrierTokenWithParameters:v6 completion:v8];
}

- (void)setCurrentPhoneUserSubscriptionSource:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IDSPhoneCertificateVendor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A5EEC0;
  block[3] = &unk_1E743FA98;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)requestCurrentPhoneUserSubscriptionSourceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSPhoneCertificateVendor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5F120;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (int64_t)currentPhoneUserSubscriptionSourceWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAEDC0F8 != -1)
  {
    sub_195B2B434();
  }

  v5 = qword_1EAEDC0F0;
  if (!qword_1EAEDC0F0)
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_195B2B448(v6);
    }

    v5 = qword_1EAEDC0F0;
  }

  v7 = [v5 sharedInstance];
  v18 = 0;
  v8 = [v7 selectedPhoneNumberRegistrationSubscriptionWithError:&v18];
  v9 = v18;

  if (v8 && (v10 = [(IDSPhoneCertificateVendor *)self _subscriptionSourceForContext:v8]) != 0)
  {
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v20 = 0;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Unable to determine selected phone user subscription source synchronously {subscriptionSource: %ld, selectedContext: %@, subscriptionError: %@}", buf, 0x20u);
    }

    v12 = [(IDSPhoneCertificateVendor *)self _clientErrorForCode:-900 underlyingError:v9];
    v11 = 0;
  }

  v14 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Returning current phone user subscription source synchronously {subscriptionSource: %ld, clientError: %@}", buf, 0x16u);
  }

  if (a3)
  {
    v15 = v12;
    *a3 = v12;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_scheduleTimeoutForPhoneSubscriptionSourceCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](v4);
  v7 = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:v7];

  v9 = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5F624;
  v16 = &unk_1E743F110;
  v17 = self;
  v18 = v4;
  v10 = v4;
  v11 = [v9 scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:360.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (void)didSetPhoneUserSubscriptionSource:(id)a3 requestUUID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5F82C;
  v15[3] = &unk_1E743EEE8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)didFetchPhoneUserSubscriptionSource:(id)a3 requestUUID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5FABC;
  v15[3] = &unk_1E743EEE8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

@end