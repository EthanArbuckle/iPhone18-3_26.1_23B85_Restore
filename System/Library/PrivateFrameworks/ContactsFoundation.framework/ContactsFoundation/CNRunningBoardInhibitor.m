@interface CNRunningBoardInhibitor
@end

@implementation CNRunningBoardInhibitor

uint64_t __34___CNRunningBoardInhibitor_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "running-board-inhibitor");
  v1 = os_log_cn_once_object_1_15;
  os_log_cn_once_object_1_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __33___CNRunningBoardInhibitor_start__block_invoke()
{
  v19[2] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v0 = getRBSDomainAttributeClass_softClass;
  v18 = getRBSDomainAttributeClass_softClass;
  if (!getRBSDomainAttributeClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getRBSDomainAttributeClass_block_invoke;
    v13 = &unk_1E6ED5A80;
    v14 = &v15;
    __getRBSDomainAttributeClass_block_invoke(&v10);
    v0 = v16[3];
  }

  v1 = v0;
  _Block_object_dispose(&v15, 8);
  v2 = [v0 attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getRBSAcquisitionCompletionAttributeClass_softClass;
  v18 = getRBSAcquisitionCompletionAttributeClass_softClass;
  v19[0] = v2;
  if (!getRBSAcquisitionCompletionAttributeClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getRBSAcquisitionCompletionAttributeClass_block_invoke;
    v13 = &unk_1E6ED5A80;
    v14 = &v15;
    __getRBSAcquisitionCompletionAttributeClass_block_invoke(&v10);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = [v3 attributeWithCompletionPolicy:1];
  v19[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v7 = [v6 copy];
  v8 = start_cn_once_object_3;
  start_cn_once_object_3 = v7;

  v9 = *MEMORY[0x1E69E9840];
}

void __46___CNRunningBoardInhibitor_runningBoardTarget__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getRBSTargetClass_softClass;
  v8 = getRBSTargetClass_softClass;
  if (!getRBSTargetClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getRBSTargetClass_block_invoke;
    v4[3] = &unk_1E6ED5A80;
    v4[4] = &v5;
    __getRBSTargetClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 currentProcess];
  v3 = runningBoardTarget_cn_once_object_5;
  runningBoardTarget_cn_once_object_5 = v2;
}

@end