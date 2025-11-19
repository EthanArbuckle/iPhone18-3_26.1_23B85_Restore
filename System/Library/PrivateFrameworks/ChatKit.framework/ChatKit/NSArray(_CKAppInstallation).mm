@interface NSArray(_CKAppInstallation)
- (id)__ck_proxyWithBundleIdentifier:()_CKAppInstallation;
@end

@implementation NSArray(_CKAppInstallation)

- (id)__ck_proxyWithBundleIdentifier:()_CKAppInstallation
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__63;
  v15 = __Block_byref_object_dispose__63;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__NSArray__CKAppInstallation____ck_proxyWithBundleIdentifier___block_invoke;
  v8[3] = &unk_1E72F3860;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end