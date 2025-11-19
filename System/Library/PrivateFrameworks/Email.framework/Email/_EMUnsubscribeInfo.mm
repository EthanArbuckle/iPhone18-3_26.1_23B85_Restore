@interface _EMUnsubscribeInfo
- (_EMUnsubscribeInfo)initWithHeaders:(id)a3;
- (void)setMailtoURL:(uint64_t)a1;
- (void)setPostContent:(uint64_t)a1;
- (void)setPostURL:(uint64_t)a1;
@end

@implementation _EMUnsubscribeInfo

- (_EMUnsubscribeInfo)initWithHeaders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 listUnsubscribePostContent];
  [(_EMUnsubscribeInfo *)v4 setPostContent:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 listUnsubscribeCommands];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v15 + 1) + 8 * v9)];
        if ([v10 ef_hasScheme:@"mailto"])
        {
          [(_EMUnsubscribeInfo *)v4 setMailtoURL:v10];
        }

        else if ([v10 ef_hasScheme:@"https"])
        {
          [(_EMUnsubscribeInfo *)v4 setPostURL:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v11 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v7 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)setPostContent:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)setMailtoURL:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setPostURL:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

@end