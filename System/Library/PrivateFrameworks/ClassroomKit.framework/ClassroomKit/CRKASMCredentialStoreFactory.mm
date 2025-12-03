@interface CRKASMCredentialStoreFactory
+ (CRKASMCredentialStore)instructorCredentialStoreWithoutKeychain;
+ (id)makeCredentialStoreWithRole:(id)role keychainOverride:(id)override;
@end

@implementation CRKASMCredentialStoreFactory

+ (CRKASMCredentialStore)instructorCredentialStoreWithoutKeychain
{
  v3 = objc_opt_new();
  v4 = [self makeInstructorCredentialStoreWithKeychainOverride:v3];

  return v4;
}

+ (id)makeCredentialStoreWithRole:(id)role keychainOverride:(id)override
{
  overrideCopy = override;
  roleCopy = role;
  v8 = [self storageKeyWithRole:roleCopy suffix:@"certificates"];
  v9 = [self storageKeyWithRole:roleCopy suffix:@"identities"];

  if (overrideCopy)
  {
    keychain = overrideCopy;
  }

  else
  {
    v11 = +[CRKKeychainProvider sharedProvider];
    keychain = [v11 keychain];
  }

  v12 = [[CRKASMCredentialStore alloc] initWithKeychain:keychain accessGroup:@"com.apple.classroom" certificateManifestStorageKey:v8 identityManifestStorageKey:v9];

  return v12;
}

@end