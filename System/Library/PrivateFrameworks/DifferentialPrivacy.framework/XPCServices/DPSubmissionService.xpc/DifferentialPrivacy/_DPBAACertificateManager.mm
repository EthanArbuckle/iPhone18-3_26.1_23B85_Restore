@interface _DPBAACertificateManager
+ (id)signWithDeviceIdentity:(id)a3;
+ (id)signWithDeviceIdentity:(id)a3 canRecover:(BOOL *)a4;
@end

@implementation _DPBAACertificateManager

+ (id)signWithDeviceIdentity:(id)a3
{
  v4 = a3;
  v5 = +[_DPSubmissionServiceUserDefaults baaCertificateBackoffDate];
  if (v5)
  {
    v6 = +[NSDate now];
    v7 = [v6 dateByAddingTimeInterval:3600.0];
    v8 = [v5 compare:v7];

    if ([v6 compare:v5] == -1 && v8 + 1 <= 1)
    {
      v13 = +[_DPLog service];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Backoff time was set, not going to try to get a BAA signature until %@.", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_15;
    }
  }

  v21 = 0;
  v10 = [a1 signWithDeviceIdentity:v4 canRecover:&v21];
  if (!v10)
  {
    v16 = 10;
    v17 = 3;
    while (v21 == 1)
    {
      if (--v17)
      {
        v18 = arc4random_uniform(0xAu) + v16;
        v19 = +[_DPLog service];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v23) = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Waiting for %u seconds until trying again to obtain BAA signature.", buf, 8u);
        }

        [a1 sleepForSeconds:v18];
        v16 *= 2;
        v10 = [a1 signWithDeviceIdentity:v4 canRecover:&v21];
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v20 = +[_DPLog service];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10004E8C8(v20);
    }
  }

LABEL_9:
  if (v21 == 1)
  {
    v11 = +[NSDate now];
    v12 = [v11 dateByAddingTimeInterval:3600.0];

    [_DPSubmissionServiceUserDefaults setBAACertificateBackoffDate:v12];
  }

  else
  {
    [_DPSubmissionServiceUserDefaults setBAACertificateBackoffDate:0];
  }

LABEL_15:

  return v10;
}

+ (id)signWithDeviceIdentity:(id)a3 canRecover:(BOOL *)a4
{
  v5 = a3;
  if (DeviceIdentityIsSupported())
  {
    v6 = DeviceIdentityUCRTAttestationSupported();
    v58[0] = &off_1000759F0;
    v57[0] = kMAOptionsBAAValidity;
    v57[1] = kMAOptionsBAASCRTAttestation;
    v7 = [NSNumber numberWithBool:v6 ^ 1u];
    v58[1] = v7;
    v57[2] = kMAOptionsBAAKeychainAccessGroup;
    v58[2] = @"com.apple.DPSubmissionService";
    v8 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];
    v9 = [v8 mutableCopy];

    if ((+[_DPDeviceInfo isRunningAsLaunchDaemon]& 1) == 0)
    {
      [v9 setValue:@"differential-privacy-baa-signing" forKey:kMAOptionsBAAKeychainLabel];
    }

    *buf = 0;
    v46 = buf;
    v47 = 0x3032000000;
    v48 = sub_10000B500;
    v49 = sub_10000B510;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_10000B500;
    v43 = sub_10000B510;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_10000B500;
    v37 = sub_10000B510;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v10 = dispatch_semaphore_create(0);
    v27 = v5;
    DeviceIdentityIssueClientCertificateWithCompletion();
    v11 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = [_DPLog service:_NSConcreteStackBlock];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004E90C(v12, v13, v14, v15, v16, v17, v18, v19);
      }

      v20 = 0;
      *a4 = 0;
    }

    else
    {
      *a4 = *(v30 + 24);
      if (v34[5] && *(v46 + 5) && v40[5])
      {
        v20 = [_DPBAASignature signatureWithDeviceSignature:_NSConcreteStackBlock leafCertificate:3221225472 intermediateCertificate:sub_10000B518, &unk_100071170, v10, v27, &v29, buf, &v39, &v33];
      }

      else
      {
        v21 = [_DPLog service:_NSConcreteStackBlock];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = v34[5] != 0;
          v24 = *(v46 + 5) != 0;
          v25 = v40[5] != 0;
          *v51 = 67109632;
          v52 = v23;
          v53 = 1024;
          v54 = v24;
          v55 = 1024;
          v56 = v25;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "BAA signing failed! (signature: %d, leaf: %d, intermediate: %d)", v51, 0x14u);
        }

        v20 = 0;
      }
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = +[_DPLog service];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "DeviceIdentity not supported on this platform.", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

@end