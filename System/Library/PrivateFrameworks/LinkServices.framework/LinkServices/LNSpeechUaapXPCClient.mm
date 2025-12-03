@interface LNSpeechUaapXPCClient
- (void)registerUaapApp:(id)app forLocale:(id)locale withAssetFiles:(id)files completion:(id)completion;
@end

@implementation LNSpeechUaapXPCClient

- (void)registerUaapApp:(id)app forLocale:(id)locale withAssetFiles:(id)files completion:(id)completion
{
  appCopy = app;
  localeCopy = locale;
  filesCopy = files;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v13 = getCSSpeechUaapXPCClientClass_softClass;
  v20 = getCSSpeechUaapXPCClientClass_softClass;
  if (!getCSSpeechUaapXPCClientClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getCSSpeechUaapXPCClientClass_block_invoke;
    v16[3] = &unk_1E74B26D0;
    v16[4] = &v17;
    __getCSSpeechUaapXPCClientClass_block_invoke(v16);
    v13 = v18[3];
  }

  v14 = v13;
  _Block_object_dispose(&v17, 8);
  v15 = objc_alloc_init(v13);
  [v15 registerUaapApp:appCopy forLocale:localeCopy withAssetFiles:filesCopy completion:completionCopy];
}

@end