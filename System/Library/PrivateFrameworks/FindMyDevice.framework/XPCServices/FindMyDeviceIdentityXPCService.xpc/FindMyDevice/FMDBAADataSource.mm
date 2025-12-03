@interface FMDBAADataSource
- (BOOL)passcodeActivationUnlockCertificateRequest:(id *)request withValidityInMins:(int64_t)mins refKey:(__SecKey *)key error:(id *)error;
- (void)activationLockCertificatesWithRequest:(id)request completion:(id)completion;
@end

@implementation FMDBAADataSource

- (BOOL)passcodeActivationUnlockCertificateRequest:(id *)request withValidityInMins:(int64_t)mins refKey:(__SecKey *)key error:(id *)error
{
  v20[0] = &off_10000FA18;
  v19[0] = kMAOptionsBAASCRTAttestation;
  v19[1] = kMAOptionsBAAValidity;
  v9 = [NSNumber numberWithInteger:mins];
  v20[1] = v9;
  v19[2] = kMAOptionsBAAOIDSToInclude;
  v18 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  v20[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = DeviceIdentityCreateClientCertificateRequest();
  v13 = 0;
  if (v13)
  {
    v14 = sub_100001AC8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000042DC(v13, v14);
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }
  }

  if (request)
  {
    v16 = v12;
    *request = v12;
  }

  if (key)
  {
    *key = 0;
  }

  return v13 != 0;
}

- (void)activationLockCertificatesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v16[0] = kMAOptionsBAAValidity;
  requestCopy = request;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [requestCopy validityInMinutes]);
  v17[0] = v7;
  v16[1] = kMAOptionsBAASCRTAttestation;
  useSCRT = [requestCopy useSCRT];

  v9 = &off_10000FA30;
  if (useSCRT)
  {
    v9 = &off_10000FA18;
  }

  v17[1] = v9;
  v16[2] = kMAOptionsBAAOIDSToInclude;
  v15 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v17[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  v12 = dispatch_get_global_queue(0, 0);
  v14 = completionCopy;
  v13 = completionCopy;
  DeviceIdentityIssueClientCertificateWithCompletion();
}

@end