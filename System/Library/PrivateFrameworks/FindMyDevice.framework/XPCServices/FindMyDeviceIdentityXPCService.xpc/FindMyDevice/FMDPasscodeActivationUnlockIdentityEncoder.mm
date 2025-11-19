@interface FMDPasscodeActivationUnlockIdentityEncoder
- (BOOL)_certificateRequestAndRefKeyWithError:(id *)a3;
- (FMDPasscodeActivationUnlockIdentityEncoder)initWithCertificateDataSource:(id)a3 signatureDataSource:(id)a4;
- (id)_payloadWithContext:(id)a3 error:(id *)a4;
- (id)_signatureForPayload:(id)a3 error:(id *)a4;
- (void)_populateDeviceIdentifiersIntoDict:(id)a3;
- (void)identityForPasscodeActivationUnlockWithContext:(id)a3 completion:(id)a4;
@end

@implementation FMDPasscodeActivationUnlockIdentityEncoder

- (FMDPasscodeActivationUnlockIdentityEncoder)initWithCertificateDataSource:(id)a3 signatureDataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMDPasscodeActivationUnlockIdentityEncoder;
  v9 = [(FMDPasscodeActivationUnlockIdentityEncoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificateDataSource, a3);
    objc_storeStrong(&v10->_signatureDataSource, a4);
  }

  return v10;
}

- (void)identityForPasscodeActivationUnlockWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v25[0] = 0;
  v9 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self _payloadWithContext:v6 error:v25];
  v10 = v25[0];
  v11 = [v9 base64EncodedStringWithOptions:0];
  [v8 fm_safelyMapKey:@"payload" toObject:v11];
  if (!v10)
  {
    v24 = 0;
    [(FMDPasscodeActivationUnlockIdentityEncoder *)self _certificateRequestAndRefKeyWithError:&v24];
    v10 = v24;
    v12 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self certRequest];
    [v8 fm_safelyMapKey:@"certRequest" toObject:v12];

    if (!v10)
    {
      v23 = 0;
      v13 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self _signatureForPayload:v9 error:&v23];
      v10 = v23;
      v14 = [v13 base64EncodedStringWithOptions:0];
      [v8 fm_safelyMapKey:@"signature" toObject:v14];
    }
  }

  v15 = [v10 description];
  [v8 fm_safelyMapKey:@"error" toObject:v15];

  v16 = sub_100001AC8();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "resultDict : %@", buf, 0xCu);
  }

  v22 = 0;
  v17 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v22];
  v18 = v22;
  if (v18)
  {
    v19 = sub_100001AC8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100004354();
    }
  }

  v20 = [v17 base64EncodedStringWithOptions:0];
  if (v7)
  {
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v10;
    }

    (v7)[2](v7, v20, v21);
  }
}

- (id)_payloadWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  [(FMDPasscodeActivationUnlockIdentityEncoder *)self _populateDeviceIdentifiersIntoDict:v7];
  v8 = sub_100001AC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Payload dict : %@", buf, 0xCu);
  }

  v14 = 0;
  v9 = [NSJSONSerialization dataWithJSONObject:v7 options:0 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = sub_100001AC8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100004354();
    }

    if (a4)
    {
      v15 = NSUnderlyingErrorKey;
      v16[0] = v10;
      v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.PasscodeActivationUnlock" code:0 userInfo:v12];
    }
  }

  return v9;
}

- (void)_populateDeviceIdentifiersIntoDict:(id)a3
{
  v3 = a3;
  v4 = +[FMSystemInfo sharedInstance];
  v5 = [v4 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:v5];

  v6 = +[FMSystemInfo sharedInstance];
  v7 = [v6 imei];
  [v3 fm_safelyMapKey:@"imei" toObject:v7];

  v8 = +[FMSystemInfo sharedInstance];
  v9 = [v8 meid];
  [v3 fm_safelyMapKey:@"meid" toObject:v9];

  v10 = +[FMSystemInfo sharedInstance];
  v11 = [v10 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:v11];

  v12 = +[FMSystemInfo sharedInstance];
  v13 = [v12 ecid];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v13 longLongValue]);
  [v3 fm_safelyMapKey:@"ecid" toObject:v14];

  v15 = +[FMSystemInfo sharedInstance];
  v16 = [v15 chipId];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v16 longLongValue]);
  [v3 fm_safelyMapKey:@"chipId" toObject:v17];

  v18 = +[FMSystemInfo sharedInstance];
  v19 = [v18 wifiMacAddress];
  [v3 fm_safelyMapKey:@"wifiMac" toObject:v19];

  v21 = +[FMSystemInfo sharedInstance];
  v20 = [v21 btMacAddress];
  [v3 fm_safelyMapKey:@"btMac" toObject:v20];
}

- (BOOL)_certificateRequestAndRefKeyWithError:(id *)a3
{
  v15 = 0;
  v5 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self certificateDataSource];
  v13 = 0;
  v14 = 0;
  [v5 passcodeActivationUnlockCertificateRequest:&v14 withValidityInMins:10 refKey:&v15 error:&v13];
  v6 = v14;
  v7 = v13;

  if (!v7)
  {
    v9 = [v6 HTTPBody];
    v8 = [v9 base64EncodedStringWithOptions:0];

    v10 = +[NSMutableDictionary dictionary];
    v11 = [v6 allHTTPHeaderFields];
    [v10 fm_safelyMapKey:@"headers" toObject:v11];

    [v10 fm_safelyMapKey:@"body" toObject:v8];
    [(FMDPasscodeActivationUnlockIdentityEncoder *)self setCertRequest:v10];
    [(FMDPasscodeActivationUnlockIdentityEncoder *)self setRefKey:v15];

    goto LABEL_5;
  }

  if (a3)
  {
    v16 = NSUnderlyingErrorKey;
    v17 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *a3 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.PasscodeActivationUnlock" code:1 userInfo:v8];
LABEL_5:
  }

  return v7 != 0;
}

- (id)_signatureForPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self signatureDataSource];
  v12 = 0;
  v8 = [v7 passcodeActivationUnlockSignatureForPayload:v6 usingKey:-[FMDPasscodeActivationUnlockIdentityEncoder refKey](self error:{"refKey"), &v12}];

  v9 = v12;
  if (!v8)
  {
    if (v9)
    {
      v13 = NSUnderlyingErrorKey;
      v14 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      if (!a4)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      v10 = 0;
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    *a4 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.PasscodeActivationUnlock" code:2 userInfo:v10];
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

@end