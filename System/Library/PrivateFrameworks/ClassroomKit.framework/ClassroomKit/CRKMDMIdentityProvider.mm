@interface CRKMDMIdentityProvider
+ (CRKIdentity)identity;
+ (id)new;
+ (void)identity;
- (CRKMDMIdentityProvider)init;
@end

@implementation CRKMDMIdentityProvider

+ (CRKIdentity)identity
{
  v2 = CFBundleCreate(0, [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/ManagedConfiguration.framework"]);
  v3 = v2;
  if (v2)
  {
    if (CFBundleLoadExecutable(v2))
    {
      FunctionPointerForName = CFBundleGetFunctionPointerForName(v3, @"MCMDMFilePath");
      if (FunctionPointerForName)
      {
        v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:FunctionPointerForName()];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0];
        v7 = [v6 valueForKey:*MEMORY[0x277D24808]];
        if (v7)
        {
          v8 = +[CRKKeychainProvider sharedProvider];
          v9 = [v8 keychain];
          v10 = [v9 identityWithPersistentID:v7];
        }

        else
        {
          v10 = 0;
        }

LABEL_12:
        CFRelease(v3);
        goto LABEL_13;
      }
    }
  }

  v11 = _CRKLogGeneral_4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[(CRKMDMIdentityProvider *)v11];
  }

  v10 = 0;
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v10;
}

- (CRKMDMIdentityProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CRKMDMIdentityProvider.m" lineNumber:83 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CRKMDMIdentityProvider.m" lineNumber:88 description:{@"%@ is unavailable for %@", v5, a1}];

  return 0;
}

+ (void)identity
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch the MDM identity %{public}@", &v2, 0xCu);
}

@end