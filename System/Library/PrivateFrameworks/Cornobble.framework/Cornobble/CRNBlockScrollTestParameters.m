@interface CRNBlockScrollTestParameters
- (CRNBlockScrollTestParameters)initWithTestName:(id)a3 withComposerBlock:(id)a4 completionHandler:(id)a5;
- (RCPSyntheticEventStream)eventStream;
- (id)composerBlock;
@end

@implementation CRNBlockScrollTestParameters

- (CRNBlockScrollTestParameters)initWithTestName:(id)a3 withComposerBlock:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CRNBlockScrollTestParameters;
  v12 = [(CRNBlockScrollTestParameters *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_testName, a3);
    v14 = MEMORY[0x24C1B6890](v10);
    composerBlock = v13->_composerBlock;
    v13->_composerBlock = v14;

    v16 = MEMORY[0x24C1B6890](v11);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;
  }

  return v13;
}

- (RCPSyntheticEventStream)eventStream
{
  if (RecapLibraryCore_3())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getRCPSyntheticEventStreamClass_softClass_3;
    v12 = getRCPSyntheticEventStreamClass_softClass_3;
    if (!getRCPSyntheticEventStreamClass_softClass_3)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getRCPSyntheticEventStreamClass_block_invoke_3;
      v8[3] = &unk_278EDC538;
      v8[4] = &v9;
      __getRCPSyntheticEventStreamClass_block_invoke_3(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    v5 = [(CRNBlockScrollTestParameters *)self composerBlock];
    v6 = [v3 eventStreamWithEventActions:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)composerBlock
{
  v2 = MEMORY[0x24C1B6890](self->_composerBlock, a2);

  return v2;
}

@end