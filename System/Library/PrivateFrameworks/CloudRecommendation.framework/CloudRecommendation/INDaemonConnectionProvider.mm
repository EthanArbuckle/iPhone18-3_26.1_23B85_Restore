@interface INDaemonConnectionProvider
- (void)renewCredentialsWithCompletion:(id)completion;
@end

@implementation INDaemonConnectionProvider

- (void)renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getINDaemonConnectionClass_softClass;
  v14 = getINDaemonConnectionClass_softClass;
  if (!getINDaemonConnectionClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getINDaemonConnectionClass_block_invoke;
    v10[3] = &unk_278DE0310;
    v10[4] = &v11;
    __getINDaemonConnectionClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__INDaemonConnectionProvider_renewCredentialsWithCompletion___block_invoke;
  v8[3] = &unk_278DE02E8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 renewCredentialsWithCompletion:v8];
}

@end