@interface CNUICoreScreentimePasscodeInspector
- (unint64_t)screentimePasscodeStatus;
- (unint64_t)screentimePasscodeStatusOfDelegateWithInfo:(id)a3;
@end

@implementation CNUICoreScreentimePasscodeInspector

- (unint64_t)screentimePasscodeStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getSTRemotePasscodeControllerClass_softClass;
  v9 = getSTRemotePasscodeControllerClass_softClass;
  if (!getSTRemotePasscodeControllerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSTRemotePasscodeControllerClass_block_invoke;
    v5[3] = &unk_1E76E79E0;
    v5[4] = &v6;
    __getSTRemotePasscodeControllerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  if ([v2 isRestrictionsPasscodeSet])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)screentimePasscodeStatusOfDelegateWithInfo:(id)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return [(CNUICoreScreentimePasscodeInspector *)self screentimePasscodeStatus];
  }
}

@end