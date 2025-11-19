@interface LNActionKVCAdapter
- (LNActionKVCAdapter)initWithAction:(id)a3;
- (id)valueForKey:(id)a3;
@end

@implementation LNActionKVCAdapter

- (id)valueForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(LNAction *)self->_action parameters];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v12 = [v9 value];
          v6 = kvcValueForValue(v12);

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (LNActionKVCAdapter)initWithAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LNActionKVCAdapter;
  v6 = [(LNActionKVCAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
  }

  return v7;
}

@end