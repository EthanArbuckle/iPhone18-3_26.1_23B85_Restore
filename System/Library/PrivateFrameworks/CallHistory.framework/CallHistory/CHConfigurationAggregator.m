@interface CHConfigurationAggregator
- (BOOL)isCloudKitEnabled;
- (CHConfigurationAggregator)initWithConfigurations:(id)a3 queue:(id)a4;
- (CHConfigurationAggregatorDelegate)delegate;
- (void)propertiesDidChangeForConfiguration:(id)a3;
- (void)registerConfigurationDelegate;
@end

@implementation CHConfigurationAggregator

- (CHConfigurationAggregator)initWithConfigurations:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHConfigurationAggregator;
  v9 = [(CHConfigurationAggregator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurations, a3);
    objc_storeStrong(&v10->_queue, a4);
    [(CHConfigurationAggregator *)v10 registerConfigurationDelegate];
  }

  return v10;
}

- (void)registerConfigurationDelegate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CHConfigurationAggregator *)self configurations];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(CHConfigurationAggregator *)self queue];
        [v8 addDelegate:self queue:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCloudKitEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(CHConfigurationAggregator *)self configurations];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 &= [*(*(&v10 + 1) + 8 * i) isCloudKitEnabled];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)propertiesDidChangeForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CHConfigurationAggregator *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CHConfigurationAggregator_propertiesDidChangeForConfiguration___block_invoke;
  v7[3] = &unk_1E81DBE38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__CHConfigurationAggregator_propertiesDidChangeForConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 configurationAggregator:*(a1 + 32) didChangeConfiguration:*(a1 + 40)];
  }
}

- (CHConfigurationAggregatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end