@interface LACUNManagerProvider
+ (id)sharedInstance;
- (LACUNManagerProvider)init;
- (id)sharedInstanceWithBundleIdentifier:(id)a3 categories:(id)a4 replyQueue:(id)a5;
@end

@implementation LACUNManagerProvider

- (LACUNManagerProvider)init
{
  v5.receiver = self;
  v5.super_class = LACUNManagerProvider;
  v2 = [(LACUNManagerProvider *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(LACUNManagerProvider *)v2 setSharedInstances:v3];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23 != -1)
  {
    +[LACUNManagerProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_21;

  return v3;
}

uint64_t __38__LACUNManagerProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACUNManagerProvider);
  v1 = sharedInstance_sharedInstance_21;
  sharedInstance_sharedInstance_21 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)sharedInstanceWithBundleIdentifier:(id)a3 categories:(id)a4 replyQueue:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v7 = a4;
  v26 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 sortedArrayUsingSelector:sel_identifier];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v12 = &stru_1F2652748;
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = MEMORY[0x1E696AEC0];
        v16 = [*(*(&v31 + 1) + 8 * v13) identifier];
        v12 = [v15 stringWithFormat:@"%@-%@", v14, v16];

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = &stru_1F2652748;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v27, v12];
  v18 = [(LACUNManagerProvider *)self sharedInstances];
  v19 = [v18 objectForKeyedSubscript:v17];

  if (!v19)
  {
    v20 = [LACUNManagerQueueDecorator alloc];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __81__LACUNManagerProvider_sharedInstanceWithBundleIdentifier_categories_replyQueue___block_invoke;
    v28[3] = &unk_1E7A97CF8;
    v29 = v27;
    v30 = v7;
    v21 = __81__LACUNManagerProvider_sharedInstanceWithBundleIdentifier_categories_replyQueue___block_invoke(v28);
    v19 = [(LACUNManagerQueueDecorator *)v20 initWithManager:v21 replyQueue:v26];

    v22 = [(LACUNManagerProvider *)self sharedInstances];
    [v22 setObject:v19 forKeyedSubscript:v17];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v19;
}

LACUNManagerSetUpDecorator *__81__LACUNManagerProvider_sharedInstanceWithBundleIdentifier_categories_replyQueue___block_invoke(uint64_t a1)
{
  v2 = [LACUNManagerSetUpDecorator alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__LACUNManagerProvider_sharedInstanceWithBundleIdentifier_categories_replyQueue___block_invoke_2;
  v5[3] = &unk_1E7A97CD0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [(LACUNManagerSetUpDecorator *)v2 initWithManagerBuilder:v5];

  return v3;
}

LACUNManager *__81__LACUNManagerProvider_sharedInstanceWithBundleIdentifier_categories_replyQueue___block_invoke_2(uint64_t a1)
{
  v1 = [[LACUNManager alloc] initWithBundleIdentifier:*(a1 + 32) categories:*(a1 + 40)];

  return v1;
}

@end