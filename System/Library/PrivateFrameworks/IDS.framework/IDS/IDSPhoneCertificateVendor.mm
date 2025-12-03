@interface IDSPhoneCertificateVendor
- (IDSPhoneCertificateVendor)initWithQueue:(id)queue;
- (id)_clientErrorForCode:(int64_t)code underlyingError:(id)error;
- (id)_debugDescriptionForErrorCode:(int64_t)code;
- (id)_scheduleTimeoutForCarrierTokenCompletionBlock:(id)block;
- (id)_scheduleTimeoutForPhoneAuthenticationCertificateRequestCompletionBlock:(id)block;
- (id)_scheduleTimeoutForPhoneAuthenticationSignatureRequestCompletionBlock:(id)block;
- (id)_scheduleTimeoutForPhoneSubscriptionSourceCompletionBlock:(id)block;
- (int64_t)_subscriptionSourceForContext:(id)context;
- (int64_t)_subscriptionSourceFromIntegerValue:(int64_t)value;
- (int64_t)currentPhoneUserSubscriptionSourceWithError:(id *)error;
- (void)_updateSelfRetentionBasedOnInFlightRequestCount;
- (void)authenticatePhoneWithCompletion:(id)completion;
- (void)dealloc;
- (void)didAuthenticatePhoneWithAuthenticationCertificateData:(id)data requestUUID:(id)d error:(id)error;
- (void)didFetchPhoneUserSubscriptionSource:(id)source requestUUID:(id)d error:(id)error;
- (void)didGeneratePhoneAuthenticationSignature:(id)signature nonce:(id)nonce certificates:(id)certificates labelIDs:(id)ds inputData:(id)data requestUUID:(id)d error:(id)error;
- (void)didRequestCarrierTokenString:(id)string requestUUID:(id)d error:(id)error;
- (void)didSetPhoneUserSubscriptionSource:(id)source requestUUID:(id)d error:(id)error;
- (void)generatePhoneAuthenticationSignatureOverData:(id)data withCompletion:(id)completion;
- (void)requestCarrierTokenWithMessageBody:(id)body completion:(id)completion;
- (void)requestCarrierTokenWithParameters:(id)parameters completion:(id)completion;
- (void)requestCurrentPhoneUserSubscriptionSourceWithCompletion:(id)completion;
- (void)setCurrentPhoneUserSubscriptionSource:(int64_t)source completion:(id)completion;
@end

@implementation IDSPhoneCertificateVendor

- (IDSPhoneCertificateVendor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = IDSPhoneCertificateVendor;
  v5 = [(IDSPhoneCertificateVendor *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create_with_target_V2("com.apple.IDS.IDSPhoneCertificateVendor", v6, queueCopy);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_alloc_init(IDSDaemonRequestTimer);
    daemonRequestTimer = v5->_daemonRequestTimer;
    v5->_daemonRequestTimer = v9;

    v11 = +[IDSDaemonController sharedInstance];
    listener = [v11 listener];
    [listener addHandler:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  listener = [v3 listener];
  [listener removeHandler:self];

  v5.receiver = self;
  v5.super_class = IDSPhoneCertificateVendor;
  [(IDSPhoneCertificateVendor *)&v5 dealloc];
}

- (void)authenticatePhoneWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5D2D0;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)generatePhoneAuthenticationSignatureOverData:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A5D530;
  block[3] = &unk_1E7440308;
  v12 = dataCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = dataCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)requestCarrierTokenWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A5D794;
  block[3] = &unk_1E7440308;
  v12 = parametersCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = parametersCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_updateSelfRetentionBasedOnInFlightRequestCount
{
  daemonRequestTimer = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  [daemonRequestTimer inFlightRequestCount];

  MEMORY[0x1EEE66B58](self, sel_setStrongSelfReference_);
}

- (id)_debugDescriptionForErrorCode:(int64_t)code
{
  if (code > -1101)
  {
    if (code == -1100)
    {
      return @"Failed to fetch carrier token";
    }

    if (code != -900)
    {
      if (code == -1000)
      {
        return @"Failed to fetch local phone authentication certificate";
      }

      return @"Unknown phone certificate error";
    }

    return @"An unknown error occurred";
  }

  else
  {
    if (code == -4000)
    {
      return @"The requested operation is not supported on this platform";
    }

    if (code != -3000)
    {
      if (code == -2000)
      {
        return @"Failed to generate phone authentication signature";
      }

      return @"Unknown phone certificate error";
    }

    return @"Request timed out waiting for response from daemon";
  }
}

- (id)_clientErrorForCode:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(IDSPhoneCertificateVendor *)self _debugDescriptionForErrorCode:code];
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (errorCopy)
  {
    [v7 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneCertificateVendorErrorDomain" code:code userInfo:v7];

  return v9;
}

- (void)didAuthenticatePhoneWithAuthenticationCertificateData:(id)data requestUUID:(id)d error:(id)error
{
  dataCopy = data;
  dCopy = d;
  errorCopy = error;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5DC48;
  v15[3] = &unk_1E743EEE8;
  v16 = dataCopy;
  selfCopy = self;
  v18 = errorCopy;
  v19 = dCopy;
  v12 = dCopy;
  v13 = errorCopy;
  v14 = dataCopy;
  dispatch_async(queue, v15);
}

- (void)didGeneratePhoneAuthenticationSignature:(id)signature nonce:(id)nonce certificates:(id)certificates labelIDs:(id)ds inputData:(id)data requestUUID:(id)d error:(id)error
{
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  dsCopy = ds;
  dataCopy = data;
  dCopy = d;
  errorCopy = error;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_195A5DFAC;
  v30[3] = &unk_1E7440850;
  v31 = certificatesCopy;
  selfCopy = self;
  v33 = errorCopy;
  v34 = signatureCopy;
  v35 = nonceCopy;
  v36 = dsCopy;
  v37 = dataCopy;
  v38 = dCopy;
  v23 = dCopy;
  v24 = dataCopy;
  v25 = dsCopy;
  v26 = nonceCopy;
  v27 = signatureCopy;
  v28 = errorCopy;
  v29 = certificatesCopy;
  dispatch_async(queue, v30);
}

- (void)didRequestCarrierTokenString:(id)string requestUUID:(id)d error:(id)error
{
  stringCopy = string;
  dCopy = d;
  errorCopy = error;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5E358;
  v15[3] = &unk_1E743EEE8;
  v16 = stringCopy;
  selfCopy = self;
  v18 = errorCopy;
  v19 = dCopy;
  v12 = dCopy;
  v13 = errorCopy;
  v14 = stringCopy;
  dispatch_async(queue, v15);
}

- (int64_t)_subscriptionSourceFromIntegerValue:(int64_t)value
{
  if (value == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (value == 2);
  }
}

- (int64_t)_subscriptionSourceForContext:(id)context
{
  result = [context slotID];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)_scheduleTimeoutForPhoneAuthenticationSignatureRequestCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](blockCopy);
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:queue];

  daemonRequestTimer = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5E69C;
  v16 = &unk_1E743F110;
  selfCopy = self;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = [daemonRequestTimer scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:20.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (id)_scheduleTimeoutForPhoneAuthenticationCertificateRequestCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](blockCopy);
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:queue];

  daemonRequestTimer = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5E8DC;
  v16 = &unk_1E743F110;
  selfCopy = self;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = [daemonRequestTimer scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:360.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (id)_scheduleTimeoutForCarrierTokenCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](blockCopy);
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:queue];

  daemonRequestTimer = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5EB1C;
  v16 = &unk_1E743F110;
  selfCopy = self;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = [daemonRequestTimer scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:360.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (void)requestCarrierTokenWithMessageBody:(id)body completion:(id)completion
{
  completionCopy = completion;
  v6 = [[IDSCarrierTokenRequestParameters alloc] initWithSubscriptionSource:1 IMEI:@"TEST_IMEI" carrierNonce:@"TEST_NONCE"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A5ED68;
  v8[3] = &unk_1E7440878;
  v9 = completionCopy;
  v7 = completionCopy;
  [(IDSPhoneCertificateVendor *)self requestCarrierTokenWithParameters:v6 completion:v8];
}

- (void)setCurrentPhoneUserSubscriptionSource:(int64_t)source completion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A5EEC0;
  block[3] = &unk_1E743FA98;
  block[4] = self;
  v10 = completionCopy;
  sourceCopy = source;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)requestCurrentPhoneUserSubscriptionSourceWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5F120;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (int64_t)currentPhoneUserSubscriptionSourceWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAEDC0F8 != -1)
  {
    sub_195B2B434();
  }

  v5 = qword_1EAEDC0F0;
  if (!qword_1EAEDC0F0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_195B2B448(registration);
    }

    v5 = qword_1EAEDC0F0;
  }

  sharedInstance = [v5 sharedInstance];
  v18 = 0;
  v8 = [sharedInstance selectedPhoneNumberRegistrationSubscriptionWithError:&v18];
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

  if (error)
  {
    v15 = v12;
    *error = v12;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_scheduleTimeoutForPhoneSubscriptionSourceCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [IDSDaemonResponseHandler alloc];
  v6 = MEMORY[0x19A8BBEF0](blockCopy);
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v8 = [(IDSDaemonResponseHandler *)v5 initWithBlock:v6 queue:queue];

  daemonRequestTimer = [(IDSPhoneCertificateVendor *)self daemonRequestTimer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A5F624;
  v16 = &unk_1E743F110;
  selfCopy = self;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = [daemonRequestTimer scheduleTimeoutWithResponseHandler:v8 timeoutInterval:&v13 timeoutBlock:360.0];

  [(IDSPhoneCertificateVendor *)self _updateSelfRetentionBasedOnInFlightRequestCount:v13];

  return v11;
}

- (void)didSetPhoneUserSubscriptionSource:(id)source requestUUID:(id)d error:(id)error
{
  sourceCopy = source;
  dCopy = d;
  errorCopy = error;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5F82C;
  v15[3] = &unk_1E743EEE8;
  v16 = sourceCopy;
  selfCopy = self;
  v18 = errorCopy;
  v19 = dCopy;
  v12 = dCopy;
  v13 = errorCopy;
  v14 = sourceCopy;
  dispatch_async(queue, v15);
}

- (void)didFetchPhoneUserSubscriptionSource:(id)source requestUUID:(id)d error:(id)error
{
  sourceCopy = source;
  dCopy = d;
  errorCopy = error;
  queue = [(IDSPhoneCertificateVendor *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A5FABC;
  v15[3] = &unk_1E743EEE8;
  v16 = sourceCopy;
  selfCopy = self;
  v18 = errorCopy;
  v19 = dCopy;
  v12 = dCopy;
  v13 = errorCopy;
  v14 = sourceCopy;
  dispatch_async(queue, v15);
}

@end