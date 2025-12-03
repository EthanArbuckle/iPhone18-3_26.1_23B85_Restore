@interface CRNGroupScrollTestParameters
+ (id)parametersByCombining:(id)combining testName:(id)name completionHandler:(id)handler;
- (CRNGroupScrollTestParameters)initWithTestName:(id)name withParameters:(id)parameters completionHandler:(id)handler;
- (RCPSyntheticEventStream)eventStream;
- (id)composerBlock;
@end

@implementation CRNGroupScrollTestParameters

+ (id)parametersByCombining:(id)combining testName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  combiningCopy = combining;
  v10 = [[CRNGroupScrollTestParameters alloc] initWithTestName:nameCopy withParameters:combiningCopy completionHandler:handlerCopy];

  return v10;
}

- (CRNGroupScrollTestParameters)initWithTestName:(id)name withParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = CRNGroupScrollTestParameters;
  v9 = [(CRNGroupScrollTestParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(CRNGroupScrollTestParameters *)v9 setParameters:parametersCopy];
    [(CRNGroupScrollTestParameters *)v10 setCompletionHandler:handlerCopy];
  }

  return v10;
}

- (RCPSyntheticEventStream)eventStream
{
  if (RecapLibraryCore_0())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getRCPSyntheticEventStreamClass_softClass_0;
    v12 = getRCPSyntheticEventStreamClass_softClass_0;
    if (!getRCPSyntheticEventStreamClass_softClass_0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getRCPSyntheticEventStreamClass_block_invoke_0;
      v8[3] = &unk_278EDC538;
      v8[4] = &v9;
      __getRCPSyntheticEventStreamClass_block_invoke_0(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    composerBlock = [(CRNGroupScrollTestParameters *)self composerBlock];
    v6 = [v3 eventStreamWithEventActions:composerBlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CRNGroupScrollTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_278EDC560;
  v4[4] = self;
  v2 = MEMORY[0x24C1B6890](v4, a2);

  return v2;
}

void __45__CRNGroupScrollTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) parameters];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) composerBlock];
        (v9)[2](v9, v3);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end