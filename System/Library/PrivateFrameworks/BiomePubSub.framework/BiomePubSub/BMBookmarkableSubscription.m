@interface BMBookmarkableSubscription
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (void)cancel;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BMBookmarkableSubscription

- (void)cancel
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];
}

- (void)requestDemand:(int64_t)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (id)upstreamSubscriptions
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

- (id)newBookmark
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [(BMBookmarkableSubscription *)self upstreamSubscriptions];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F4871E60])
        {
          v10 = [v9 newBookmark];
          if (v10)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v9;
            _os_log_error_impl(&dword_1C871B000, v11, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", buf, 0xCu);
          }
        }

        v10 = [MEMORY[0x1E695DFB0] null];
LABEL_13:
        v12 = v10;
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = [BMBookmarkNode alloc];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [(BMBookmarkNode *)v13 initWithValue:0 upstreams:v3 name:v15];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

@end