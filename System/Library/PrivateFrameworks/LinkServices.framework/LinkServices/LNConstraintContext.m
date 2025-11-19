@interface LNConstraintContext
+ (id)synchronousContextForAction:(id)a3;
+ (void)contextForAction:(id)a3 completion:(id)a4;
@end

@implementation LNConstraintContext

+ (id)synchronousContextForAction:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 effectiveBundleIdentifiers];
  v6 = [v5 firstObject];
  v7 = [v6 bundleIdentifier];

  v17[0] = @"_";
  v15[0] = @"defaults";
  v8 = [[LNConstraintContextUserDefaults alloc] initWithIdentifier:v7];
  v15[1] = @"fflags";
  v16[0] = v8;
  v9 = objc_opt_new();
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v17[1] = @"action";
  v18[0] = v10;
  v11 = [[LNActionKVCAdapter alloc] initWithAction:v3];

  v18[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)contextForAction:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v7 = [v5 metadata];
  v8 = [v7 effectiveBundleIdentifiers];
  v9 = [v8 firstObject];
  v10 = [v9 bundleIdentifier];

  v11 = objc_alloc_init(LNVisibleAppManager);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__LNConstraintContext_contextForAction_completion___block_invoke;
  v15[3] = &unk_1E74B18E8;
  v19 = v20;
  v12 = v10;
  v16 = v12;
  v13 = v6;
  v18 = v13;
  v14 = v5;
  v17 = v14;
  [(LNVisibleAppManager *)v11 getCurrentAppWithCompletionHandler:v15];

  _Block_object_dispose(v20, 8);
}

void __51__LNConstraintContext_contextForAction_completion___block_invoke(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v3 = [a2 containsObject:?];
  }

  else
  {
    v3 = 0;
  }

  *(*(a1[7] + 8) + 24) = v3;
  v4 = a1[6];
  v14[0] = @"_";
  v12[0] = @"defaults";
  v5 = [[LNConstraintContextUserDefaults alloc] initWithIdentifier:a1[4]];
  v13[0] = v5;
  v12[1] = @"fflags";
  v6 = objc_opt_new();
  v13[1] = v6;
  v12[2] = @"frontmost";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1[7] + 8) + 24)];
  v13[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v14[1] = @"action";
  v15[0] = v8;
  v9 = [[LNActionKVCAdapter alloc] initWithAction:a1[5]];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  (*(v4 + 16))(v4, v10);

  v11 = *MEMORY[0x1E69E9840];
}

@end