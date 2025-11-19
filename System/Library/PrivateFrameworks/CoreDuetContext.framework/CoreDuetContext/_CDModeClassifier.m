@interface _CDModeClassifier
- (_CDModeClassifier)init;
- (void)_enableFocusModesIfPossible;
@end

@implementation _CDModeClassifier

- (_CDModeClassifier)init
{
  v5.receiver = self;
  v5.super_class = _CDModeClassifier;
  v2 = [(_CDModeClassifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_CDModeClassifier *)v2 _enableFocusModesIfPossible];
  }

  return v3;
}

- (void)_enableFocusModesIfPossible
{
  objc_initWeak(&location, self);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getATXModeClassifierClass_softClass;
  v20 = getATXModeClassifierClass_softClass;
  if (!getATXModeClassifierClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getATXModeClassifierClass_block_invoke;
    v15 = &unk_1E7886480;
    v16 = &v17;
    ProactiveContextClientLibraryCore();
    Class = objc_getClass("ATXModeClassifier");
    *(v16[1] + 24) = Class;
    getATXModeClassifierClass_softClass = *(v16[1] + 24);
    v2 = v18[3];
  }

  v4 = v2;
  _Block_object_dispose(&v17, 8);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v5 = getATXModeDuetHelperClass_softClass;
  v20 = getATXModeDuetHelperClass_softClass;
  if (!getATXModeDuetHelperClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getATXModeDuetHelperClass_block_invoke;
    v15 = &unk_1E7886480;
    v16 = &v17;
    ProactiveContextClientLibraryCore();
    v6 = objc_getClass("ATXModeDuetHelper");
    *(v16[1] + 24) = v6;
    getATXModeDuetHelperClass_softClass = *(v16[1] + 24);
    v5 = v18[3];
  }

  v7 = v5;
  _Block_object_dispose(&v17, 8);
  v8 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48___CDModeClassifier__enableFocusModesIfPossible__block_invoke;
  v9[3] = &unk_1E7886710;
  objc_copyWeak(&v10, &location);
  [v2 provideModeClassifierWhenReadyWithDuetHelper:v8 block:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end