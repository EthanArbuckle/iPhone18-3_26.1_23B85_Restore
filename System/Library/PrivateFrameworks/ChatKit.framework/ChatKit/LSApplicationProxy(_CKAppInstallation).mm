@interface LSApplicationProxy(_CKAppInstallation)
- (id)__ck_messagesPluginKitProxy;
@end

@implementation LSApplicationProxy(_CKAppInstallation)

- (id)__ck_messagesPluginKitProxy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__63;
  v9 = __Block_byref_object_dispose__63;
  v10 = 0;
  plugInKitPlugins = [self plugInKitPlugins];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__LSApplicationProxy__CKAppInstallation____ck_messagesPluginKitProxy__block_invoke;
  v4[3] = &unk_1E72F6BD8;
  v4[4] = &v5;
  [plugInKitPlugins enumerateObjectsUsingBlock:v4];

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end