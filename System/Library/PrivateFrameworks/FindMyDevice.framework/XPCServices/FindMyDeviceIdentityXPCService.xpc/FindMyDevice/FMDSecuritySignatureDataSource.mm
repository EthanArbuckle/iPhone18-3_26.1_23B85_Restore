@interface FMDSecuritySignatureDataSource
- (id)passcodeActivationUnlockSignatureForPayload:(id)a3 usingKey:(__SecKey *)a4 error:(id *)a5;
@end

@implementation FMDSecuritySignatureDataSource

- (id)passcodeActivationUnlockSignatureForPayload:(id)a3 usingKey:(__SecKey *)a4 error:(id *)a5
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      v8 = sub_100001AC8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDSecuritySignatureDataSource signing payload.", &v16, 2u);
      }

      v16 = 0;
      Signature = SecKeyCreateSignature(a4, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v7, &v16);
      if (v16)
      {
        v10 = sub_100001AC8();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100003F2C(&v16, v10);
        }

        if (a5)
        {
          *a5 = v16;
        }
      }

      goto LABEL_17;
    }

    v11 = @"key";
  }

  else
  {
    v11 = @"payload";
  }

  v12 = sub_100001AC8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100003FA8(v11, v12);
  }

  if (a5)
  {
    v13 = kFindMyDeviceIdentityXPCInterfaceErrorDomain;
    v17 = @"kFMDSecuritySignatureDataSourceErrorMissingField";
    v18 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a5 = [NSError errorWithDomain:v13 code:1 userInfo:v14];
  }

  Signature = 0;
LABEL_17:

  return Signature;
}

@end