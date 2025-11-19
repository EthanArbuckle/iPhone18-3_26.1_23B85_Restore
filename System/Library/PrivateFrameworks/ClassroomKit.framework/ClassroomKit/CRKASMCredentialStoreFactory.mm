@interface CRKASMCredentialStoreFactory
+ (CRKASMCredentialStore)instructorCredentialStoreWithoutKeychain;
+ (id)makeCredentialStoreWithRole:(id)a3 keychainOverride:(id)a4;
@end

@implementation CRKASMCredentialStoreFactory

+ (CRKASMCredentialStore)instructorCredentialStoreWithoutKeychain
{
  v3 = objc_opt_new();
  v4 = [a1 makeInstructorCredentialStoreWithKeychainOverride:v3];

  return v4;
}

+ (id)makeCredentialStoreWithRole:(id)a3 keychainOverride:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 storageKeyWithRole:v7 suffix:@"certificates"];
  v9 = [a1 storageKeyWithRole:v7 suffix:@"identities"];

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v11 = +[CRKKeychainProvider sharedProvider];
    v10 = [v11 keychain];
  }

  v12 = [[CRKASMCredentialStore alloc] initWithKeychain:v10 accessGroup:@"com.apple.classroom" certificateManifestStorageKey:v8 identityManifestStorageKey:v9];

  return v12;
}

@end