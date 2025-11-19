@interface NDODeviceServicesInterface
- (NDODeviceServicesInterface)init;
- (id)createFirmwareUpdateRequestPayload:(id)a3;
- (id)createPairingRequestPayload:(id)a3;
- (id)firmwareUpdateURL;
- (id)firstPairingDataRequestURL;
- (id)generatePEMDataWithCertificateChain:(id)a3;
- (id)pemFormattedCertificateData:(id)a3;
- (id)signData:(id)a3 withPrivateKey:(__SecKey *)a4;
- (void)_appendBase64Data:(id)a3 toString:(id)a4;
- (void)createSignedFirmwareUpdateRequest:(id)a3 completionHandler:(id)a4;
- (void)createSignedPairingRequest:(id)a3 completionHandler:(id)a4;
- (void)createSignedRequestDictionary:(id)a3 completionHandler:(id)a4;
- (void)sendDictionaryData:(id)a3 toServer:(id)a4 forNotification:(int64_t)a5 completionHandler:(id)a6;
- (void)sendFirmwareUpdateRequest:(id)a3 completionHandler:(id)a4;
- (void)sendPairingRequest:(id)a3 completionHandler:(id)a4;
- (void)signPayload:(id)a3 completionHandler:(id)a4;
- (void)writeCertsToDevice:(id)a3;
@end

@implementation NDODeviceServicesInterface

- (NDODeviceServicesInterface)init
{
  v3.receiver = self;
  v3.super_class = NDODeviceServicesInterface;
  return [(NDODeviceServicesInterface *)&v3 init];
}

- (id)firmwareUpdateURL
{
  v2 = +[_TtC8ndoagent37NDODeviceServicesInternalDebugHelpers getLocalURLOverridesForDeviceServices];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"https://albert.apple.com";
  }

  v4 = [NSString stringWithFormat:@"%@%@", v3, @"/deviceservices/activity/audio/firmware"];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (id)firstPairingDataRequestURL
{
  v2 = +[_TtC8ndoagent37NDODeviceServicesInternalDebugHelpers getLocalURLOverridesForDeviceServices];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"https://albert.apple.com";
  }

  v4 = [NSString stringWithFormat:@"%@%@", v3, @"/deviceservices/activity/audio/pairing"];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (id)signData:(id)a3 withPrivateKey:(__SecKey *)a4
{
  v5 = a3;
  v6 = 0;
  error = 0;
  if (v5 && a4)
  {
    v7 = SecKeyCreateSignature(a4, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v5, &error);
    if (v7)
    {
      goto LABEL_8;
    }

    v6 = error;
  }

  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100072FE8();
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)generatePEMDataWithCertificateChain:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(NSMutableString);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = SecCertificateCopyData(*(*(&v15 + 1) + 8 * v10));
          if ([(__CFData *)v11 length])
          {
            v12 = [(NDODeviceServicesInterface *)self pemFormattedCertificateData:v11];
            [v5 appendString:v12];
          }

          else
          {
            v12 = _NDOLogSystem();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_100073068(buf, &v20, v12);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = [v5 dataUsingEncoding:4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)pemFormattedCertificateData:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString string];
  [v5 appendString:@"-----BEGIN CERTIFICATE-----\n"];
  [(NDODeviceServicesInterface *)self _appendBase64Data:v4 toString:v5];

  [v5 appendString:@"\n-----END CERTIFICATE-----\n"];

  return v5;
}

- (void)_appendBase64Data:(id)a3 toString:(id)a4
{
  v5 = a4;
  v6 = [a3 base64EncodedStringWithOptions:33];
  [v5 appendString:v6];
}

- (void)writeCertsToDevice:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count] > 1)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:1];
    v5 = SecCertificateCopyData(v6);
    v8 = SecCertificateCopyData(v7);
    [v5 writeToFile:@"/tmp/leafCertificate" atomically:1];
    [(__CFData *)v8 writeToFile:@"/tmp/intermediateCertificate" atomically:1];
  }

  else
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000730B8(v5);
    }
  }
}

- (void)signPayload:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[NDODeviceServicesInterface signPayload:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[bluetooth_accessory] %{public}s: Initiating device authentication", &buf, 0xCu);
  }

  v9 = objc_opt_new();
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.ndoagent.airpods_sign_completion_queue", v10);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E034;
  v20[3] = &unk_10009AA90;
  v12 = v11;
  v21 = v12;
  p_buf = &buf;
  v13 = v7;
  v24 = v13;
  v22 = self;
  v14 = v6;
  v23 = v14;
  if (([v9 generateBAACertficate:v20] & 1) == 0)
  {
    v15 = _NDOLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [NSNumber numberWithBool:0];
      sub_1000730FC(v16, v26, v15);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E4C4;
    block[3] = &unk_10009A750;
    v19 = &buf;
    v18 = v13;
    dispatch_sync(v12, block);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)createSignedRequestDictionary:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v17 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:a3 format:100 options:0 error:&v17];
  v8 = v7;
  v9 = v17;
  if (v7)
  {
    v10 = v17 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000E640;
    v14[3] = &unk_10009AAB8;
    v15 = v7;
    v16 = v6;
    v13 = v9;
    [(NDODeviceServicesInterface *)self signPayload:v15 completionHandler:v14];
  }

  else
  {
    v11 = v6[2];
    v12 = v17;
    v11(v6, 0);
  }
}

- (id)createPairingRequestPayload:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [v3 objectForKeyedSubscript:@"caseSerialNumber"];
    [NDOTypeChecking safeAddValue:v8 forKey:@"SerialNumber" toDictionary:v5];

    v9 = [v3 objectForKeyedSubscript:@"caseModelNumber"];
    [NDOTypeChecking safeAddValue:v9 forKey:@"ModelNumber" toDictionary:v5];

    v10 = [v3 objectForKeyedSubscript:@"caseFirmwareVersion"];
    [NDOTypeChecking safeAddValue:v10 forKey:@"FirmwareVersion" toDictionary:v5];

    v11 = [v3 objectForKeyedSubscript:@"caseFirmwareMarketingName"];
    [NDOTypeChecking safeAddValue:v11 forKey:@"FirmwareMarketingName" toDictionary:v5];

    v12 = [v3 objectForKeyedSubscript:@"caseVersion"];
    [NDOTypeChecking safeAddValue:v12 forKey:@"CaseVersion" toDictionary:v5];

    v13 = [v3 objectForKeyedSubscript:@"caseFirstPairingDate"];
    [NDOTypeChecking safeAddValue:v13 forKey:@"FirstPairingDate" toDictionary:v5];

    [v4 setObject:v5 forKeyedSubscript:@"AudioDeviceInfo"];
    v14 = [v3 objectForKeyedSubscript:@"isAirPodsMax"];
    LOBYTE(v13) = [v14 BOOLValue];

    if ((v13 & 1) == 0)
    {
      [v3 objectForKeyedSubscript:@"leftBudSerialNumber"];
      v15 = v27 = v4;
      [NDOTypeChecking safeAddValue:v15 forKey:@"SerialNumber" toDictionary:v6];

      v16 = [v3 objectForKeyedSubscript:@"leftBudModelNumber"];
      [NDOTypeChecking safeAddValue:v16 forKey:@"ModelNumber" toDictionary:v6];

      v17 = [v3 objectForKeyedSubscript:@"leftBudFirmwareVersion"];
      [NDOTypeChecking safeAddValue:v17 forKey:@"FirmwareVersion" toDictionary:v6];

      v18 = [v3 objectForKeyedSubscript:@"leftBudFirmwareMarketingName"];
      [NDOTypeChecking safeAddValue:v18 forKey:@"FirmwareMarketingName" toDictionary:v6];

      v19 = [v3 objectForKeyedSubscript:@"leftBudFirstPairingDate"];
      [NDOTypeChecking safeAddValue:v19 forKey:@"FirstPairingDate" toDictionary:v6];

      v20 = [v3 objectForKeyedSubscript:@"rightBudSerialNumber"];
      [NDOTypeChecking safeAddValue:v20 forKey:@"SerialNumber" toDictionary:v7];

      v21 = [v3 objectForKeyedSubscript:@"rightBudModelNumber"];
      [NDOTypeChecking safeAddValue:v21 forKey:@"ModelNumber" toDictionary:v7];

      v22 = [v3 objectForKeyedSubscript:@"rightBudFirmwareVersion"];
      v4 = v27;
      [NDOTypeChecking safeAddValue:v22 forKey:@"FirmwareVersion" toDictionary:v7];

      v23 = [v3 objectForKeyedSubscript:@"rightBudFirmwareMarketingName"];
      [NDOTypeChecking safeAddValue:v23 forKey:@"FirmwareMarketingName" toDictionary:v7];

      v24 = [v3 objectForKeyedSubscript:@"rightBudFirstPairingDate"];
      [NDOTypeChecking safeAddValue:v24 forKey:@"FirstPairingDate" toDictionary:v7];

      if ([v6 count])
      {
        if ([v7 count])
        {
          v28[0] = @"LeftBud";
          v28[1] = @"RightBud";
          v29[0] = v6;
          v29[1] = v7;
          v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
          [v27 setObject:v25 forKeyedSubscript:@"AudioBudsInfo"];
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)createSignedPairingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(NDODeviceServicesInterface *)self createPairingRequestPayload:a3];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000ED40;
    v8[3] = &unk_10009A818;
    v9 = v6;
    [(NDODeviceServicesInterface *)self createSignedRequestDictionary:v7 completionHandler:v8];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (id)createFirmwareUpdateRequestPayload:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [v3 objectForKeyedSubscript:@"caseSerialNumber"];
    [NDOTypeChecking safeAddValue:v8 forKey:@"SerialNumber" toDictionary:v5];

    v9 = [v3 objectForKeyedSubscript:@"caseModelNumber"];
    [NDOTypeChecking safeAddValue:v9 forKey:@"ModelNumber" toDictionary:v5];

    v10 = [v3 objectForKeyedSubscript:@"caseFirmwareVersion"];
    [NDOTypeChecking safeAddValue:v10 forKey:@"FirmwareVersion" toDictionary:v5];

    v11 = [v3 objectForKeyedSubscript:@"caseFirmwareMarketingName"];
    [NDOTypeChecking safeAddValue:v11 forKey:@"FirmwareMarketingName" toDictionary:v5];

    v12 = [v3 objectForKeyedSubscript:@"caseVersion"];
    [NDOTypeChecking safeAddValue:v12 forKey:@"CaseVersion" toDictionary:v5];

    v13 = [v3 objectForKeyedSubscript:@"firmwareUpdateDate"];
    [NDOTypeChecking safeAddValue:v13 forKey:@"FirmwareUpdateDate" toDictionary:v5];

    [v4 setObject:v5 forKeyedSubscript:@"AudioDeviceInfo"];
    v14 = [v3 objectForKeyedSubscript:@"isAirPodsMax"];
    LOBYTE(v13) = [v14 BOOLValue];

    if ((v13 & 1) == 0)
    {
      v15 = [v3 objectForKeyedSubscript:@"leftBudSerialNumber"];
      [NDOTypeChecking safeAddValue:v15 forKey:@"SerialNumber" toDictionary:v6];

      [v3 objectForKeyedSubscript:@"leftBudModelNumber"];
      v16 = v27 = v4;
      [NDOTypeChecking safeAddValue:v16 forKey:@"ModelNumber" toDictionary:v6];

      v17 = [v3 objectForKeyedSubscript:@"leftBudFirmwareVersion"];
      [NDOTypeChecking safeAddValue:v17 forKey:@"FirmwareVersion" toDictionary:v6];

      v18 = [v3 objectForKeyedSubscript:@"leftBudFirmwareMarketingName"];
      [NDOTypeChecking safeAddValue:v18 forKey:@"FirmwareMarketingName" toDictionary:v6];

      v19 = [v3 objectForKeyedSubscript:@"firmwareUpdateDate"];
      [NDOTypeChecking safeAddValue:v19 forKey:@"FirmwareUpdateDate" toDictionary:v6];

      v20 = [v3 objectForKeyedSubscript:@"rightBudSerialNumber"];
      [NDOTypeChecking safeAddValue:v20 forKey:@"SerialNumber" toDictionary:v7];

      v21 = [v3 objectForKeyedSubscript:@"rightBudModelNumber"];
      [NDOTypeChecking safeAddValue:v21 forKey:@"ModelNumber" toDictionary:v7];

      v22 = [v3 objectForKeyedSubscript:@"rightBudFirmwareVersion"];
      [NDOTypeChecking safeAddValue:v22 forKey:@"FirmwareVersion" toDictionary:v7];

      v23 = [v3 objectForKeyedSubscript:@"rightBudFirmwareMarketingName"];
      [NDOTypeChecking safeAddValue:v23 forKey:@"FirmwareMarketingName" toDictionary:v7];

      v24 = [v3 objectForKeyedSubscript:@"firmwareUpdateDate"];
      [NDOTypeChecking safeAddValue:v24 forKey:@"FirmwareUpdateDate" toDictionary:v7];

      v4 = v27;
      if ([v6 count])
      {
        if ([v7 count])
        {
          v28[0] = @"LeftBud";
          v28[1] = @"RightBud";
          v29[0] = v6;
          v29[1] = v7;
          v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
          [v27 setObject:v25 forKeyedSubscript:@"AudioBudsInfo"];
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)createSignedFirmwareUpdateRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(NDODeviceServicesInterface *)self createFirmwareUpdateRequestPayload:a3];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F334;
    v8[3] = &unk_10009A818;
    v9 = v6;
    [(NDODeviceServicesInterface *)self createSignedRequestDictionary:v7 completionHandler:v8];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)sendDictionaryData:(id)a3 toServer:(id)a4 forNotification:(int64_t)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (v9 && v10)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000F47C;
    v21[3] = &unk_10009AB08;
    v24 = v11;
    v22 = v9;
    v23 = v10;
    v25 = a5;
    [_TtC8ndoagent28NDODeviceServicesComposition isAccCheckInDisabledWithCompletionHandler:v21];
  }

  else
  {
    v13 = _NDOLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000732C4(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v12[2](v12, 0);
  }
}

- (void)sendFirmwareUpdateRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NDODeviceServicesInterface *)self firmwareUpdateURL];
  v9 = v8;
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F954;
    v10[3] = &unk_10009AB30;
    v10[4] = self;
    v11 = v8;
    v12 = v7;
    [(NDODeviceServicesInterface *)self createSignedFirmwareUpdateRequest:v6 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)sendPairingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NDODeviceServicesInterface *)self firstPairingDataRequestURL];
  v9 = v8;
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000FA74;
    v10[3] = &unk_10009AB30;
    v10[4] = self;
    v11 = v8;
    v12 = v7;
    [(NDODeviceServicesInterface *)self createSignedPairingRequest:v6 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

@end