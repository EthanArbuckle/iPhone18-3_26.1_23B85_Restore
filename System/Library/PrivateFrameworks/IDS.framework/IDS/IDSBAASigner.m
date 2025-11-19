@interface IDSBAASigner
+ (BOOL)shouldRetryError:(id)a3;
- (BOOL)isBAAProtocolHeader:(id)a3;
- (BOOL)isDeviceIdentitySupported;
- (IDSBAASigner)initWithQueue:(id)a3;
- (id)alternateICloudSigningPayloadForData:(id)a3 currentTimestampInMs:(unint64_t *)a4;
- (id)baaCertTTLInMinutesFromServerBag;
- (id)baaFetchTimeoutFromServerBag;
- (id)errorStringForNSError:(id)a3;
- (id)errorStringForNSErrorWithoutUnderlyingError:(id)a3;
- (id)errorStringForSingingResult:(id)a3;
- (id)headersBySigningData:(id)a3 baaSigningResult:(id)a4 baaCert:(id)a5 intermediateRootCert:(id)a6;
- (id)hostErrorStringForSingingResult:(id)a3;
- (id)icloudSignData:(id)a3 withKey:(__SecKey *)a4 error:(id *)a5;
- (id)icloudSigningPayloadForData:(id)a3 withAltPayload:(id)a4;
- (id)isBAASupportedHeaderValue;
- (id)legacySignData:(id)a3 withKey:(__SecKey *)a4 signingTimestamp:(id *)a5 error:(id *)a6;
- (void)fetchBAAIdentityIfNeededWithCompletion:(id)a3;
- (void)headersBySigningData:(id)a3 serverTimestamp:(id)a4 topic:(id)a5 completion:(id)a6;
- (void)headersBySigningDataNoXPC:(id)a3 serverTimestamp:(id)a4 completion:(id)a5;
- (void)headersBySigningDataXPC:(id)a3 serverTimestamp:(id)a4 topic:(id)a5 completion:(id)a6;
- (void)purgeBAACertForTopic:(id)a3 completion:(id)a4;
- (void)purgeBAACertNoXPCWithCompletion:(id)a3;
- (void)purgeBAACertXPCForTopic:(id)a3 completion:(id)a4;
- (void)signData:(id)a3 withKey:(__SecKey *)a4 completion:(id)a5;
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

- (IDSBAASigner)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = IDSBAASigner;
  v6 = [(IDSBAASigner *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.IDS.IDSBAASigner.BAA", v8);
    baaQueue = v7->_baaQueue;
    v7->_baaQueue = v9;
  }

  return v7;
}

- (void)headersBySigningData:(id)a3 serverTimestamp:(id)a4 topic:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(v14);

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_195A9E71C;
  v20 = &unk_1E7441650;
  v21 = self;
  v22 = v11;
  v15 = v11;
  v16 = MEMORY[0x19A8BBEF0](&v17);
  if (_IDSRunningInDaemon())
  {
    [(IDSBAASigner *)self headersBySigningDataNoXPC:v13 serverTimestamp:v12 completion:v16, v17, v18, v19, v20, v21, v22];
  }

  else
  {
    [(IDSBAASigner *)self headersBySigningDataXPC:v13 serverTimestamp:v12 topic:v10 completion:v16, v17, v18, v19, v20, v21, v22];
  }
}

- (void)headersBySigningDataXPC:(id)a3 serverTimestamp:(id)a4 topic:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "XPCing BAA sign {topic: %@, serverTimestamp: %@, data: %@}", buf, 0x20u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A9EA08;
  v21[3] = &unk_1E7441678;
  v22 = v12;
  v23 = v10;
  v24 = v11;
  v25 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  v19 = v12;
  [IDSXPCDaemonController performDaemonControllerTask:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)headersBySigningDataNoXPC:(id)a3 serverTimestamp:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(v11);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A9EC48;
  v15[3] = &unk_1E74416C8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IDSBAASigner *)self fetchBAAIdentityIfNeededWithCompletion:v15];
}

- (void)purgeBAACertForTopic:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (_IDSRunningInDaemon())
  {
    [(IDSBAASigner *)self purgeBAACertNoXPCWithCompletion:v6];
  }

  else
  {
    [(IDSBAASigner *)self purgeBAACertXPCForTopic:v7 completion:v6];
  }
}

- (void)purgeBAACertXPCForTopic:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A9F32C;
  v9[3] = &unk_1E743F8A0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [IDSXPCDaemonController performDaemonControllerTask:v9];
}

- (void)purgeBAACertNoXPCWithCompletion:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v6 = off_1EAEDC110;
    v7 = [(IDSBAASigner *)self baaQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A9F700;
    v9[3] = &unk_1E74416F0;
    v10 = v4;
    v6(v7, v5, v9);
  }

  else
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }

    v5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_195B33EB4();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchBAAIdentityIfNeededWithCompletion:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IDSBAASigner *)self queue];
  dispatch_assert_queue_V2(v5);

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
    v6 = [(IDSBAASigner *)self baaCertTTLInMinutesFromServerBag];
    v7 = v6;
    v8 = &unk_1F0A29CC0;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_195A9FBC0;
    v29[3] = &unk_1E7441768;
    v10 = v9;
    v30 = v10;
    v31 = self;
    v32 = v39;
    v33 = v37;
    v34 = v35;
    v11 = MEMORY[0x19A8BBEF0](v29);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_195AA04D8;
    v23 = &unk_1E74417B8;
    v24 = self;
    v26 = v39;
    v27 = v37;
    v28 = v35;
    v25 = v4;
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

    v18 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = v16;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Starting device identity fetch task with timeout {timeoutInSeconds: %f}", buf, 0xCu);
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
    (*(v4 + 2))(v4, 0, 0, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)signData:(id)a3 withKey:(__SecKey *)a4 completion:(id)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!a4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = 5;
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E69A6160] sharedInstance];
  v11 = [v10 isUnderFirstDataProtectionLock];

  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = 7;
LABEL_5:
    v14 = [v12 errorWithDomain:@"IDSBAASignerErrorDomain" code:v13 userInfo:0];
    v15 = [[IDSBAASigningResult alloc] initWithResultData:0 timestamp:0 error:v14];
    v9[2](v9, v15);

    goto LABEL_23;
  }

  v14 = [v8 sha256Digest];

  if (v14)
  {
    v63 = 0;
    v64 = 0;
    v16 = [(IDSBAASigner *)self legacySignData:v8 withKey:a4 signingTimestamp:&v64 error:&v63];
    v17 = v64;
    v14 = v63;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (_os_feature_enabled_impl() && [v8 includeIcloudBAAHeaders])
  {
    v18 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "BAA signer adding iCloud BAA headers!", buf, 2u);
    }

    v62 = 0;
    v19 = [(IDSBAASigner *)self alternateICloudSigningPayloadForData:v8 currentTimestampInMs:&v62];
    v20 = [v8 requestBody];

    v21 = v19;
    if (v20)
    {
      v21 = [(IDSBAASigner *)self icloudSigningPayloadForData:v8 withAltPayload:v19];
    }

    v44 = v21;
    v22 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v21;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "BAA signer payload %@", buf, 0xCu);
    }

    v23 = [v19 dataUsingEncoding:4];
    [v23 SHA256Data];
    v24 = v39 = v19;

    v25 = [v21 dataUsingEncoding:4];
    v26 = [v25 SHA256Data];

    v27 = v24;
    v61 = 0;
    v43 = [(IDSBAASigner *)self icloudSignData:v26 withKey:a4 error:&v61];
    v42 = v61;
    v60 = 0;
    v41 = [(IDSBAASigner *)self icloudSignData:v24 withKey:a4 error:&v60];
    v40 = v60;
    if ([(IDSBAASigner *)self isVirtualMachine])
    {
      v28 = [(IDSBAASigner *)self baaQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AA0CB8;
      block[3] = &unk_1E7441828;
      v46 = v26;
      v47 = v24;
      v48 = self;
      v58 = v9;
      v49 = v16;
      v50 = v17;
      v51 = v14;
      v59 = v62;
      v52 = v44;
      v53 = v39;
      v54 = v43;
      v55 = v41;
      v56 = v42;
      v57 = v40;
      dispatch_async(v28, block);

      v29 = v46;
      v30 = v39;
    }

    else
    {
      v32 = [IDSBAASigningResult alloc];
      v33 = v26;
      v34 = v27;
      v35 = v62;
      v29 = [&unk_1F0A29990 stringValue];
      v36 = v32;
      v30 = v39;
      v37 = [(IDSBAASigningResult *)v36 initWithResultData:v16 timestamp:v17 error:v14 currentTimestampInMs:v35 icloudDigest:v44 icloudAltDigest:v39 icloudResultData:v43 icloudAltResultData:v41 icloudError:v42 icloudAltError:v40 baaCertSource:v29];
      v9[2](v9, v37);

      v27 = v34;
      v26 = v33;
    }
  }

  else
  {
    v31 = [[IDSBAASigningResult alloc] initWithResultData:v16 timestamp:v17 error:v14];
    v9[2](v9, v31);
  }

LABEL_23:
  v38 = *MEMORY[0x1E69E9840];
}

- (id)legacySignData:(id)a3 withKey:(__SecKey *)a4 signingTimestamp:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  v13 = [v9 serverTimestamp];

  if (v13)
  {
    v14 = [v9 serverTimestamp];
    [v14 doubleValue];
    v12 = v15 / 1000.0;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", (v12 * 1000.0)];
  v29 = bswap64((v12 * 1000.0));
  v17 = [v9 sha256Digest];
  v18 = [v17 mutableCopy];

  [v18 appendBytes:&v29 length:8];
  error = 0;
  v19 = *MEMORY[0x1E697B128];
  v20 = [v18 copy];
  v21 = SecKeyCreateSignature(a4, v19, v20, &error);

  if (v21)
  {
    v22 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Successfully signed legacy baa data in baa signer", buf, 2u);
    }

    v23 = 0;
  }

  else
  {
    v23 = error;
    v22 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_195B34160();
    }
  }

  if (a6)
  {
    v24 = v23;
    *a6 = v23;
  }

  if (a5)
  {
    v25 = v16;
    *a5 = v16;
  }

  return v21;
}

- (id)icloudSignData:(id)a3 withKey:(__SecKey *)a4 error:(id *)a5
{
  error = 0;
  v7 = *MEMORY[0x1E697B128];
  v8 = [a3 copy];
  v9 = SecKeyCreateSignature(a4, v7, v8, &error);

  if (v9)
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Successfully signed baa data in baa signer", v14, 2u);
    }

    v11 = 0;
  }

  else
  {
    v11 = error;
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_195B341D0();
    }
  }

  if (a5)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v9;
}

- (id)icloudSigningPayloadForData:(id)a3 withAltPayload:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [a3 requestBody];
  v8 = [v7 SHA256Data];
  v9 = [v8 __imHexString];
  v10 = [v9 lowercaseString];
  v11 = [v5 stringWithFormat:@"%@%@", v10, v6];

  return v11;
}

- (id)alternateICloudSigningPayloadForData:(id)a3 currentTimestampInMs:(unint64_t *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = [v6 serverTimestamp];

  if (v10)
  {
    v11 = [v6 serverTimestamp];
    v12 = [v11 unsignedLongLongValue];

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = (v9 * 1000.0);
  if (a4)
  {
LABEL_3:
    *a4 = v12;
  }

LABEL_4:
  v13 = MEMORY[0x1E696AEC0];
  v14 = *MEMORY[0x1E69A4990];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
  v16 = *MEMORY[0x1E69A4998];
  v17 = [(IDSBAASigner *)self icloudBAAVersion];
  v18 = [v13 stringWithFormat:@"|%@=%@|%@=%@", v14, v15, v16, v17];

  return v18;
}

- (BOOL)isBAAProtocolHeader:(id)a3
{
  v3 = a3;
  if (qword_1EAEDC150 != -1)
  {
    sub_195B34240();
  }

  if ([qword_1EAEDC158 containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"x-apple-baa"];
  }

  return v4;
}

+ (BOOL)shouldRetryError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"IDSBAASignerErrorDomain"), v5, v6))
  {
    v7 = [v4 code];
    if (v7 <= 8)
    {
      v8 = 0x12u >> v7;
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

- (id)headersBySigningData:(id)a3 baaSigningResult:(id)a4 baaCert:(id)a5 intermediateRootCert:(id)a6
{
  v71[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v12 mutableCopy];
  [v15 appendData:v13];
  v16 = [v10 sha256Digest];

  if (v16)
  {
    v69 = v12;
    v17 = v13;
    v18 = v10;
    v19 = [v10 sha256Digest];
    v20 = [v19 base64EncodedStringWithOptions:0];

    v21 = v15;
    v22 = self;
    if (v20)
    {
      CFDictionarySetValue(v14, @"baa-message", v20);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B34254();
    }

    v23 = MEMORY[0x1E696AEC0];
    v24 = [v11 resultData];
    v25 = [v24 base64EncodedStringWithOptions:0];
    v26 = [v11 timestamp];
    v27 = [v23 stringWithFormat:@"%@:%@", v25, v26];

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
    self = v22;
    v10 = v18;
    if (v29)
    {
      CFDictionarySetValue(v14, @"baa-certs", v29);
      v13 = v17;
    }

    else
    {
      v13 = v17;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B34364();
      }
    }

    v12 = v69;
  }

  if (_os_feature_enabled_impl() && [v10 includeIcloudBAAHeaders])
  {
    v70 = v15;
    v30 = [(IDSBAASigner *)self icloudBAAVersion];
    v31 = [v30 stringValue];

    if (v31)
    {
      CFDictionarySetValue(v14, *MEMORY[0x1E69A4998], v31);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B343EC();
    }

    if (v12 && v13)
    {
      v71[0] = v12;
      v71[1] = v13;
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

    if ([v11 currentTimestampInMs])
    {
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "currentTimestampInMs")}];
      v35 = [v34 stringValue];

      if (v35)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4990], v35);
      }
    }

    v36 = [v11 icloudAltResultData];

    if (v36)
    {
      v37 = [v11 icloudAltResultData];
      v38 = [v37 base64EncodedStringWithOptions:0];

      if (v38)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4970], v38);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B344FC();
      }
    }

    v39 = [v11 icloudResultData];

    if (v39)
    {
      v40 = [v11 icloudResultData];
      v41 = [v40 base64EncodedStringWithOptions:0];

      if (v41)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4978], v41);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B34584();
      }
    }

    v42 = [(IDSBAASigner *)self errorStringForSingingResult:v11];
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
      v44 = [v11 hostCertChain];

      if (v44)
      {
        v45 = v12;
        v46 = v13;
        v47 = self;
        v48 = [v11 hostCertChain];
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

        self = v47;
        v13 = v46;
        v12 = v45;
      }

      v52 = [v11 hostAltResultData];

      if (v52)
      {
        v53 = [v11 hostAltResultData];
        v54 = [v53 base64EncodedStringWithOptions:0];

        if (v54)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4960], v54);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B3471C();
        }
      }

      v55 = [v11 hostResultData];

      if (v55)
      {
        v56 = [v11 hostResultData];
        v57 = [v56 base64EncodedStringWithOptions:0];

        if (v57)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4968], v57);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B347A4();
        }
      }

      v58 = [(IDSBAASigner *)self hostErrorStringForSingingResult:v11];
      if ([v58 length])
      {
        v59 = v12;
        v60 = v13;
        v61 = self;
        v62 = v58;
        if (v62)
        {
          CFDictionarySetValue(v14, *MEMORY[0x1E69A4958], v62);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B3482C();
        }

        self = v61;
        v13 = v60;
        v12 = v59;
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
    v64 = [(IDSBAASigner *)self isBAASupportedHeaderValue];
    if (v64)
    {
      CFDictionarySetValue(v14, *MEMORY[0x1E69A4988], v64);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B348B4();
    }

    v65 = [v11 baaCertSource];

    if (v65)
    {
      v66 = [v11 baaCertSource];
      if (v66)
      {
        CFDictionarySetValue(v14, *MEMORY[0x1E69A4980], v66);
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

- (id)errorStringForNSErrorWithoutUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v5)
  {
    v6 = [v3 localizedDescription];
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@":, "}];
    v8 = [v6 stringByRemovingCharactersFromSet:v7];

    v9 = MEMORY[0x1E696AEC0];
    v10 = [v3 domain];
    v11 = [v3 code];

    v12 = [v9 stringWithFormat:@"%@:%ld:%@", v10, v11, v8];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v8 = [v3 domain];
    v14 = [v3 code];

    v12 = [v13 stringWithFormat:@"%@:%ld", v8, v14];
  }

  return v12;
}

- (id)errorStringForNSError:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [(IDSBAASigner *)self errorStringForNSErrorWithoutUnderlyingError:v4];
    v7 = [v5 underlyingErrors];
    if (v7)
    {
      v8 = v7;
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

              v18 = [v14 underlyingErrors];
              v19 = v18;
              if (v8)
              {
                v20 = [v8 arrayByAddingObjectsFromArray:v18];

                v8 = v20;
              }

              else
              {
                v8 = v18;
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

- (id)errorStringForSingingResult:(id)a3
{
  v4 = a3;
  v5 = [v4 icloudError];

  if (v5)
  {
    v6 = [v4 icloudError];
    v7 = [(IDSBAASigner *)self errorStringForNSError:v6];
    v5 = [&stru_1F09E7B80 stringByAppendingString:v7];
  }

  v8 = [v4 icloudAltError];

  if (v8)
  {
    if ([v5 length])
    {
      v9 = [v5 stringByAppendingString:{@", "}];
    }

    else
    {
      v9 = &stru_1F09E7B80;
    }

    v10 = [v4 icloudAltError];
    v11 = [(IDSBAASigner *)self errorStringForNSError:v10];
    v5 = [(__CFString *)v9 stringByAppendingString:v11];
  }

  return v5;
}

- (id)hostErrorStringForSingingResult:(id)a3
{
  v4 = a3;
  v5 = [v4 hostError];

  if (v5)
  {
    v6 = [v4 hostError];
    v7 = [(IDSBAASigner *)self errorStringForNSError:v6];
    v5 = [&stru_1F09E7B80 stringByAppendingString:v7];
  }

  v8 = [v4 hostAltError];

  if (v8)
  {
    if ([v5 length])
    {
      v9 = [v5 stringByAppendingString:{@", "}];
    }

    else
    {
      v9 = &stru_1F09E7B80;
    }

    v10 = [v4 hostAltError];
    v11 = [(IDSBAASigner *)self errorStringForNSError:v10];
    v5 = [(__CFString *)v9 stringByAppendingString:v11];
  }

  return v5;
}

@end