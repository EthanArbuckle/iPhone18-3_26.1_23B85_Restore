@interface IDSBAASigner
+ (BOOL)shouldRetryError:(id)error;
- (BOOL)isBAAProtocolHeader:(id)header;
- (BOOL)isDeviceIdentitySupported;
- (IDSBAASigner)initWithQueue:(id)queue;
- (id)alternateICloudSigningPayloadForData:(id)data currentTimestampInMs:(unint64_t *)ms;
- (id)baaCertTTLInMinutesFromServerBag;
- (id)baaFetchTimeoutFromServerBag;
- (id)errorStringForNSError:(id)error;
- (id)errorStringForNSErrorWithoutUnderlyingError:(id)error;
- (id)errorStringForSingingResult:(id)result;
- (id)headersBySigningData:(id)data baaSigningResult:(id)result baaCert:(id)cert intermediateRootCert:(id)rootCert;
- (id)hostErrorStringForSingingResult:(id)result;
- (id)icloudSignData:(id)data withKey:(__SecKey *)key error:(id *)error;
- (id)icloudSigningPayloadForData:(id)data withAltPayload:(id)payload;
- (id)isBAASupportedHeaderValue;
- (id)legacySignData:(id)data withKey:(__SecKey *)key signingTimestamp:(id *)timestamp error:(id *)error;
- (void)fetchBAAIdentityIfNeededWithCompletion:(id)completion;
- (void)headersBySigningData:(id)data serverTimestamp:(id)timestamp topic:(id)topic completion:(id)completion;
- (void)headersBySigningDataNoXPC:(id)c serverTimestamp:(id)timestamp completion:(id)completion;
- (void)headersBySigningDataXPC:(id)c serverTimestamp:(id)timestamp topic:(id)topic completion:(id)completion;
- (void)purgeBAACertForTopic:(id)topic completion:(id)completion;
- (void)purgeBAACertNoXPCWithCompletion:(id)completion;
- (void)purgeBAACertXPCForTopic:(id)topic completion:(id)completion;
- (void)signData:(id)data withKey:(__SecKey *)key completion:(id)completion;
@end

@implementation IDSBAASigner

- (BOOL)isDeviceIdentitySupported
{
  if (qword_1EAEDBEC0 != -1)
  {
    sub_195B33EF4();
  }

  v3 = off_1EAEDBEC8;
  if (off_1EAEDBEC8)
  {

    LOBYTE(v3) = v3();
  }

  return v3;
}

- (id)baaCertTTLInMinutesFromServerBag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"absinthe-baa-cert-ttl-minutes"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)baaFetchTimeoutFromServerBag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"absinthe-baa-timeout"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)isBAASupportedHeaderValue
{
  if ([(IDSBAASigner *)self isDeviceIdentitySupported])
  {
    v2 = @"1";
  }

  else
  {
    v2 = @"0";
  }

  return v2;
}

- (IDSBAASigner)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IDSBAASigner;
  v6 = [(IDSBAASigner *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.IDS.IDSBAASigner.BAA", v8);
    baaQueue = v7->_baaQueue;
    v7->_baaQueue = v9;
  }

  return v7;
}

- (void)headersBySigningData:(id)data serverTimestamp:(id)timestamp topic:(id)topic completion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  timestampCopy = timestamp;
  dataCopy = data;
  queue = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_195A9E71C;
  v20 = &unk_1E7441650;
  selfCopy = self;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = MEMORY[0x19A8BBEF0](&v17);
  if (_IDSRunningInDaemon())
  {
    [(IDSBAASigner *)self headersBySigningDataNoXPC:dataCopy serverTimestamp:timestampCopy completion:v16, v17, v18, v19, v20, selfCopy, v22];
  }

  else
  {
    [(IDSBAASigner *)self headersBySigningDataXPC:dataCopy serverTimestamp:timestampCopy topic:topicCopy completion:v16, v17, v18, v19, v20, selfCopy, v22];
  }
}

- (void)headersBySigningDataXPC:(id)c serverTimestamp:(id)timestamp topic:(id)topic completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  cCopy = c;
  timestampCopy = timestamp;
  topicCopy = topic;
  completionCopy = completion;
  queue = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(queue);

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = topicCopy;
    v28 = 2112;
    v29 = timestampCopy;
    v30 = 2112;
    v31 = cCopy;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "XPCing BAA sign {topic: %@, serverTimestamp: %@, data: %@}", buf, 0x20u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A9EA08;
  v21[3] = &unk_1E7441678;
  v22 = topicCopy;
  v23 = cCopy;
  v24 = timestampCopy;
  v25 = completionCopy;
  v16 = timestampCopy;
  v17 = cCopy;
  v18 = completionCopy;
  v19 = topicCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)headersBySigningDataNoXPC:(id)c serverTimestamp:(id)timestamp completion:(id)completion
{
  cCopy = c;
  timestampCopy = timestamp;
  completionCopy = completion;
  queue = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(queue);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A9EC48;
  v15[3] = &unk_1E74416C8;
  v16 = cCopy;
  v17 = timestampCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = timestampCopy;
  v14 = cCopy;
  [(IDSBAASigner *)self fetchBAAIdentityIfNeededWithCompletion:v15];
}

- (void)purgeBAACertForTopic:(id)topic completion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  if (_IDSRunningInDaemon())
  {
    [(IDSBAASigner *)self purgeBAACertNoXPCWithCompletion:completionCopy];
  }

  else
  {
    [(IDSBAASigner *)self purgeBAACertXPCForTopic:topicCopy completion:completionCopy];
  }
}

- (void)purgeBAACertXPCForTopic:(id)topic completion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A9F32C;
  v9[3] = &unk_1E743F8A0;
  v10 = topicCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = topicCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v9];
}

- (void)purgeBAACertNoXPCWithCompletion:(id)completion
{
  v12[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (qword_1EAEDC118 != -1)
  {
    sub_195B33E78();
  }

  if (qword_1EAEDC120 != -1)
  {
    sub_195B33E8C();
  }

  if (qword_1EAEDC130 != -1)
  {
    sub_195B33EA0();
  }

  if (off_1EAEDC110 && qword_1EAEDC128 && qword_1EAEDC138)
  {
    v11[0] = qword_1EAEDC128;
    v11[1] = qword_1EAEDC138;
    v12[0] = @"com.apple.IDS";
    v12[1] = MEMORY[0x1E695E118];
    registration = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v6 = off_1EAEDC110;
    baaQueue = [(IDSBAASigner *)self baaQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A9F700;
    v9[3] = &unk_1E74416F0;
    v10 = completionCopy;
    v6(baaQueue, registration, v9);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_195B33EB4();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchBAAIdentityIfNeededWithCompletion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  queue = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(IDSBAASigner *)self isDeviceIdentitySupported])
  {
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_195A00784;
    v37[4] = sub_195A03D68;
    v38 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = sub_195A00784;
    v35[4] = sub_195A03D68;
    v36 = 0;
    baaCertTTLInMinutesFromServerBag = [(IDSBAASigner *)self baaCertTTLInMinutesFromServerBag];
    v7 = baaCertTTLInMinutesFromServerBag;
    v8 = &unk_1F0A29CC0;
    if (baaCertTTLInMinutesFromServerBag)
    {
      v8 = baaCertTTLInMinutesFromServerBag;
    }

    v9 = v8;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_195A9FBC0;
    v29[3] = &unk_1E7441768;
    v10 = v9;
    v30 = v10;
    selfCopy = self;
    v32 = v39;
    v33 = v37;
    v34 = v35;
    v11 = MEMORY[0x19A8BBEF0](v29);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_195AA04D8;
    v23 = &unk_1E74417B8;
    selfCopy2 = self;
    v26 = v39;
    v27 = v37;
    v28 = v35;
    v25 = completionCopy;
    v12 = MEMORY[0x19A8BBEF0](&v20);
    v13 = [(IDSBAASigner *)self baaFetchTimeoutFromServerBag:v20];
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 60.0;
    }

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = v16;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Starting device identity fetch task with timeout {timeoutInSeconds: %f}", buf, 0xCu);
    }

    dispatch_time(0, (v16 * 1000000000.0));
    im_dispatch_async_with_timeout();

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);

    _Block_object_dispose(v39, 8);
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSBAASignerErrorDomain" code:8 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)signData:(id)data withKey:(__SecKey *)key completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  if (!key)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = 5;
    goto LABEL_5;
  }

  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x1E69A6160] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = 7;
LABEL_5:
    sha256Digest = [v12 errorWithDomain:@"IDSBAASignerErrorDomain" code:v13 userInfo:0];
    v15 = [[IDSBAASigningResult alloc] initWithResultData:0 timestamp:0 error:sha256Digest];
    completionCopy[2](completionCopy, v15);

    goto LABEL_23;
  }

  sha256Digest = [dataCopy sha256Digest];

  if (sha256Digest)
  {
    v63 = 0;
    v64 = 0;
    v16 = [(IDSBAASigner *)self legacySignData:dataCopy withKey:key signingTimestamp:&v64 error:&v63];
    v17 = v64;
    sha256Digest = v63;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (_os_feature_enabled_impl() && [dataCopy includeIcloudBAAHeaders])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "BAA signer adding iCloud BAA headers!", buf, 2u);
    }

    v62 = 0;
    v19 = [(IDSBAASigner *)self alternateICloudSigningPayloadForData:dataCopy currentTimestampInMs:&v62];
    requestBody = [dataCopy requestBody];

    v21 = v19;
    if (requestBody)
    {
      v21 = [(IDSBAASigner *)self icloudSigningPayloadForData:dataCopy withAltPayload:v19];
    }

    v44 = v21;
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v21;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "BAA signer payload %@", buf, 0xCu);
    }

    v23 = [v19 dataUsingEncoding:4];
    [v23 SHA256Data];
    v24 = v39 = v19;

    v25 = [v21 dataUsingEncoding:4];
    sHA256Data = [v25 SHA256Data];

    v27 = v24;
    v61 = 0;
    v43 = [(IDSBAASigner *)self icloudSignData:sHA256Data withKey:key error:&v61];
    v42 = v61;
    v60 = 0;
    v41 = [(IDSBAASigner *)self icloudSignData:v24 withKey:key error:&v60];
    v40 = v60;
    if ([(IDSBAASigner *)self isVirtualMachine])
    {
      baaQueue = [(IDSBAASigner *)self baaQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AA0CB8;
      block[3] = &unk_1E7441828;
      v46 = sHA256Data;
      v47 = v24;
      selfCopy = self;
      v58 = completionCopy;
      v49 = v16;
      v50 = v17;
      v51 = sha256Digest;
      v59 = v62;
      v52 = v44;
      v53 = v39;
      v54 = v43;
      v55 = v41;
      v56 = v42;
      v57 = v40;
      dispatch_async(baaQueue, block);

      stringValue = v46;
      v30 = v39;
    }

    else
    {
      v32 = [IDSBAASigningResult alloc];
      v33 = sHA256Data;
      v34 = v27;
      v35 = v62;
      stringValue = [&unk_1F0A29990 stringValue];
      v36 = v32;
      v30 = v39;
      v37 = [(IDSBAASigningResult *)v36 initWithResultData:v16 timestamp:v17 error:sha256Digest currentTimestampInMs:v35 icloudDigest:v44 icloudAltDigest:v39 icloudResultData:v43 icloudAltResultData:v41 icloudError:v42 icloudAltError:v40 baaCertSource:stringValue];
      completionCopy[2](completionCopy, v37);

      v27 = v34;
      sHA256Data = v33;
    }
  }

  else
  {
    v31 = [[IDSBAASigningResult alloc] initWithResultData:v16 timestamp:v17 error:sha256Digest];
    completionCopy[2](completionCopy, v31);
  }

LABEL_23:
  v38 = *MEMORY[0x1E69E9840];
}

- (id)legacySignData:(id)data withKey:(__SecKey *)key signingTimestamp:(id *)timestamp error:(id *)error
{
  dataCopy = data;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v12 = v11;

  serverTimestamp = [dataCopy serverTimestamp];

  if (serverTimestamp)
  {
    serverTimestamp2 = [dataCopy serverTimestamp];
    [serverTimestamp2 doubleValue];
    v12 = v15 / 1000.0;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", (v12 * 1000.0)];
  v29 = bswap64((v12 * 1000.0));
  sha256Digest = [dataCopy sha256Digest];
  v18 = [sha256Digest mutableCopy];

  [v18 appendBytes:&v29 length:8];
  error = 0;
  v19 = *MEMORY[0x1E697B128];
  v20 = [v18 copy];
  v21 = SecKeyCreateSignature(key, v19, v20, &error);

  if (v21)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Successfully signed legacy baa data in baa signer", buf, 2u);
    }

    errorCopy = 0;
  }

  else
  {
    errorCopy = error;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_195B34160();
    }
  }

  if (error)
  {
    v24 = errorCopy;
    *error = errorCopy;
  }

  if (timestamp)
  {
    v25 = v16;
    *timestamp = v16;
  }

  return v21;
}

- (id)icloudSignData:(id)data withKey:(__SecKey *)key error:(id *)error
{
  error = 0;
  v7 = *MEMORY[0x1E697B128];
  v8 = [data copy];
  v9 = SecKeyCreateSignature(key, v7, v8, &error);

  if (v9)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Successfully signed baa data in baa signer", v14, 2u);
    }

    errorCopy = 0;
  }

  else
  {
    errorCopy = error;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_195B341D0();
    }
  }

  if (error)
  {
    v12 = errorCopy;
    *error = errorCopy;
  }

  return v9;
}

- (id)icloudSigningPayloadForData:(id)data withAltPayload:(id)payload
{
  v5 = MEMORY[0x1E696AEC0];
  payloadCopy = payload;
  requestBody = [data requestBody];
  sHA256Data = [requestBody SHA256Data];
  __imHexString = [sHA256Data __imHexString];
  lowercaseString = [__imHexString lowercaseString];
  payloadCopy = [v5 stringWithFormat:@"%@%@", lowercaseString, payloadCopy];

  return payloadCopy;
}

- (id)alternateICloudSigningPayloadForData:(id)data currentTimestampInMs:(unint64_t *)ms
{
  dataCopy = data;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v9 = v8;

  serverTimestamp = [dataCopy serverTimestamp];

  if (serverTimestamp)
  {
    serverTimestamp2 = [dataCopy serverTimestamp];
    unsignedLongLongValue = [serverTimestamp2 unsignedLongLongValue];

    if (!ms)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  unsignedLongLongValue = (v9 * 1000.0);
  if (ms)
  {
LABEL_3:
    *ms = unsignedLongLongValue;
  }

LABEL_4:
  v13 = MEMORY[0x1E696AEC0];
  v14 = *MEMORY[0x1E69A4990];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
  v16 = *MEMORY[0x1E69A4998];
  icloudBAAVersion = [(IDSBAASigner *)self icloudBAAVersion];
  v18 = [v13 stringWithFormat:@"|%@=%@|%@=%@", v14, v15, v16, icloudBAAVersion];

  return v18;
}

- (BOOL)isBAAProtocolHeader:(id)header
{
  headerCopy = header;
  if (qword_1EAEDC150 != -1)
  {
    sub_195B34240();
  }

  if ([qword_1EAEDC158 containsObject:headerCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [headerCopy hasPrefix:@"x-apple-baa"];
  }

  return v4;
}

+ (BOOL)shouldRetryError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && ([errorCopy domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"IDSBAASignerErrorDomain"), v5, v6))
  {
    code = [v4 code];
    if (code <= 8)
    {
      v8 = 0x12u >> code;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)headersBySigningData:(id)data baaSigningResult:(id)result baaCert:(id)cert intermediateRootCert:(id)rootCert
{
  v71[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  resultCopy = result;
  certCopy = cert;
  rootCertCopy = rootCert;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [certCopy mutableCopy];
  [v15 appendData:rootCertCopy];
  sha256Digest = [dataCopy sha256Digest];

  if (sha256Digest)
  {
    v69 = certCopy;
    v17 = rootCertCopy;
    v18 = dataCopy;
    sha256Digest2 = [dataCopy sha256Digest];
    v20 = [sha256Digest2 base64EncodedStringWithOptions:0];

    v21 = v15;
    selfCopy = self;
    if (v20)
    {
      CFDictionarySetValue(v14, @"baa-message", v20);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B34254();
    }

    v23 = MEMORY[0x1E696AEC0];
    resultData = [resultCopy resultData];
    v25 = [resultData base64EncodedStringWithOptions:0];
    timestamp = [resultCopy timestamp];
    v27 = [v23 stringWithFormat:@"%@:%@", v25, timestamp];

    v28 = v27;
    if (v28)
    {
      CFDictionarySetValue(v14, @"baa-signature", v28);
      v15 = v21;
    }

    else
    {
      v15 = v21;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B342DC();
      }
    }

    v29 = [v15 base64EncodedStringWithOptions:0];
    self = selfCopy;
    dataCopy = v18;
    if (v29)
    {
      CFDictionarySetValue(v14, @"baa-certs", v29);
      rootCertCopy = v17;
    }

    else
    {
      rootCertCopy = v17;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B34364();
      }
    }

    certCopy = v69;
  }

  if (_os_feature_enabled_impl() && [dataCopy includeIcloudBAAHeaders])
  {
    v70 = v15;
    icloudBAAVersion = [(IDSBAASigner *)self icloudBAAVersion];
    stringValue = [icloudBAAVersion stringValue];

    if (stringValue)
    {
      CFDictionarySetValue(v14, *MEMORY[0x1E69A4998], stringValue);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B343EC();
    }

    if (certCopy && rootCertCopy)
    {
      v71[0] = certCopy;
      v71[1] = rootCertCopy;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      v33 = IDSPEMFormatCertificates();

      if (v33)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4938], v33);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B34474();
      }
    }

    if ([resultCopy currentTimestampInMs])
    {
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(resultCopy, "currentTimestampInMs")}];
      stringValue2 = [v34 stringValue];

      if (stringValue2)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4990], stringValue2);
      }
    }

    icloudAltResultData = [resultCopy icloudAltResultData];

    if (icloudAltResultData)
    {
      icloudAltResultData2 = [resultCopy icloudAltResultData];
      v38 = [icloudAltResultData2 base64EncodedStringWithOptions:0];

      if (v38)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4970], v38);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B344FC();
      }
    }

    icloudResultData = [resultCopy icloudResultData];

    if (icloudResultData)
    {
      icloudResultData2 = [resultCopy icloudResultData];
      v41 = [icloudResultData2 base64EncodedStringWithOptions:0];

      if (v41)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4978], v41);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B34584();
      }
    }

    v42 = [(IDSBAASigner *)self errorStringForSingingResult:resultCopy];
    if ([v42 length])
    {
      v43 = v42;
      if (v43)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4948], v43);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B3460C();
      }
    }

    if ([(IDSBAASigner *)self isVirtualMachine])
    {
      hostCertChain = [resultCopy hostCertChain];

      if (hostCertChain)
      {
        v45 = certCopy;
        v46 = rootCertCopy;
        selfCopy2 = self;
        hostCertChain2 = [resultCopy hostCertChain];
        v49 = IDSParseDERCertificatesFromChain();
        v50 = IDSPEMFormatCertificates();

        v51 = v50;
        if (v51)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4950], v51);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B34694();
        }

        self = selfCopy2;
        rootCertCopy = v46;
        certCopy = v45;
      }

      hostAltResultData = [resultCopy hostAltResultData];

      if (hostAltResultData)
      {
        hostAltResultData2 = [resultCopy hostAltResultData];
        v54 = [hostAltResultData2 base64EncodedStringWithOptions:0];

        if (v54)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4960], v54);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B3471C();
        }
      }

      hostResultData = [resultCopy hostResultData];

      if (hostResultData)
      {
        hostResultData2 = [resultCopy hostResultData];
        v57 = [hostResultData2 base64EncodedStringWithOptions:0];

        if (v57)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4968], v57);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B347A4();
        }
      }

      v58 = [(IDSBAASigner *)self hostErrorStringForSingingResult:resultCopy];
      if ([v58 length])
      {
        v59 = certCopy;
        v60 = rootCertCopy;
        selfCopy3 = self;
        v62 = v58;
        if (v62)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4958], v62);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B3482C();
        }

        self = selfCopy3;
        rootCertCopy = v60;
        certCopy = v59;
      }
    }

    if ([(IDSBAASigner *)self isVirtualMachine])
    {
      v63 = @"2";
    }

    else
    {
      v63 = @"1";
    }

    CFDictionarySetValue(v14, *MEMORY[0x1E69A4940], v63);
    isBAASupportedHeaderValue = [(IDSBAASigner *)self isBAASupportedHeaderValue];
    if (isBAASupportedHeaderValue)
    {
      CFDictionarySetValue(v14, *MEMORY[0x1E69A4988], isBAASupportedHeaderValue);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B348B4();
    }

    baaCertSource = [resultCopy baaCertSource];

    if (baaCertSource)
    {
      baaCertSource2 = [resultCopy baaCertSource];
      if (baaCertSource2)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4980], baaCertSource2);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B3493C();
      }
    }

    v15 = v70;
  }

  v67 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)errorStringForNSErrorWithoutUnderlyingError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v5)
  {
    localizedDescription = [errorCopy localizedDescription];
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@":, "}];
    domain2 = [localizedDescription stringByRemovingCharactersFromSet:v7];

    v9 = MEMORY[0x1E696AEC0];
    domain = [errorCopy domain];
    code = [errorCopy code];

    v12 = [v9 stringWithFormat:@"%@:%ld:%@", domain, code, domain2];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    domain2 = [errorCopy domain];
    code2 = [errorCopy code];

    v12 = [v13 stringWithFormat:@"%@:%ld", domain2, code2];
  }

  return v12;
}

- (id)errorStringForNSError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v23 = errorCopy;
  if (errorCopy)
  {
    v5 = errorCopy;
    v6 = [(IDSBAASigner *)self errorStringForNSErrorWithoutUnderlyingError:errorCopy];
    underlyingErrors = [v5 underlyingErrors];
    if (underlyingErrors)
    {
      v8 = underlyingErrors;
      do
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        obj = v8;
        v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v8 = 0;
          v11 = *v26;
          do
          {
            v12 = 0;
            v13 = v6;
            do
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v25 + 1) + 8 * v12);
              v15 = MEMORY[0x1E696AEC0];
              v16 = [(IDSBAASigner *)self errorStringForNSErrorWithoutUnderlyingError:v14];
              v17 = [v15 stringWithFormat:@", %@", v16];
              v6 = [(__CFString *)v13 stringByAppendingString:v17];

              underlyingErrors2 = [v14 underlyingErrors];
              v19 = underlyingErrors2;
              if (v8)
              {
                v20 = [v8 arrayByAddingObjectsFromArray:underlyingErrors2];

                v8 = v20;
              }

              else
              {
                v8 = underlyingErrors2;
              }

              ++v12;
              v13 = v6;
            }

            while (v10 != v12);
            v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v10);
        }

        else
        {
          v8 = 0;
        }
      }

      while (v8);
    }
  }

  else
  {
    v6 = &stru_1F09E7B80;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)errorStringForSingingResult:(id)result
{
  resultCopy = result;
  icloudError = [resultCopy icloudError];

  if (icloudError)
  {
    icloudError2 = [resultCopy icloudError];
    v7 = [(IDSBAASigner *)self errorStringForNSError:icloudError2];
    icloudError = [&stru_1F09E7B80 stringByAppendingString:v7];
  }

  icloudAltError = [resultCopy icloudAltError];

  if (icloudAltError)
  {
    if ([icloudError length])
    {
      v9 = [icloudError stringByAppendingString:{@", "}];
    }

    else
    {
      v9 = &stru_1F09E7B80;
    }

    icloudAltError2 = [resultCopy icloudAltError];
    v11 = [(IDSBAASigner *)self errorStringForNSError:icloudAltError2];
    icloudError = [(__CFString *)v9 stringByAppendingString:v11];
  }

  return icloudError;
}

- (id)hostErrorStringForSingingResult:(id)result
{
  resultCopy = result;
  hostError = [resultCopy hostError];

  if (hostError)
  {
    hostError2 = [resultCopy hostError];
    v7 = [(IDSBAASigner *)self errorStringForNSError:hostError2];
    hostError = [&stru_1F09E7B80 stringByAppendingString:v7];
  }

  hostAltError = [resultCopy hostAltError];

  if (hostAltError)
  {
    if ([hostError length])
    {
      v9 = [hostError stringByAppendingString:{@", "}];
    }

    else
    {
      v9 = &stru_1F09E7B80;
    }

    hostAltError2 = [resultCopy hostAltError];
    v11 = [(IDSBAASigner *)self errorStringForNSError:hostAltError2];
    hostError = [(__CFString *)v9 stringByAppendingString:v11];
  }

  return hostError;
}

@end