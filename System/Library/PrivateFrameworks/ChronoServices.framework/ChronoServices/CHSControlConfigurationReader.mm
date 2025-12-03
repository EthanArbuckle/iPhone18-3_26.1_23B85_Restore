@interface CHSControlConfigurationReader
- (CHSControlConfigurationReader)init;
- (id)_transformResults:(id)results;
- (void)allConfiguredControlsWithCompletion:(id)completion;
@end

@implementation CHSControlConfigurationReader

- (CHSControlConfigurationReader)init
{
  v6.receiver = self;
  v6.super_class = CHSControlConfigurationReader;
  v2 = [(CHSControlConfigurationReader *)&v6 init];
  if (v2)
  {
    v3 = +[CHSControlService sharedInstance];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)allConfiguredControlsWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CHSControlConfigurationReader_allConfiguredControlsWithCompletion___block_invoke;
  v7[3] = &unk_1E7453DB0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CHSControlService *)connection allControlConfigurationsByHostWithCompletion:v7];
}

void __69__CHSControlConfigurationReader_allConfiguredControlsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v8)
  {
    v7 = [*(a1 + 32) _transformResults:?];
  }

  else
  {
    v7 = 0;
  }

  (*(v6 + 16))(v6, v7, v5);
  if (v8)
  {
  }
}

- (id)_transformResults:(id)results
{
  resultsCopy = results;
  if (!resultsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSControlConfigurationReader.m" lineNumber:44 description:@"Must have results to parse results."];
  }

  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CHSControlConfigurationReader__transformResults___block_invoke;
  v10[3] = &unk_1E7453DD8;
  v7 = array;
  v11 = v7;
  [resultsCopy enumerateKeysAndObjectsUsingBlock:v10];

  return v7;
}

void __51__CHSControlConfigurationReader__transformResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v17 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v17 controlItems];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [_CHSControlConfigurationReference alloc];
        v12 = [v10 controlIdentity];
        v13 = [v10 uniqueIdentifier];
        v14 = [(_CHSControlConfigurationReference *)v11 initWithControlIdentity:v12 uniqueIdentifier:v13];
        [v5 addObject:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = [[_CHSControlConfigurationHost alloc] initWithIdentifier:v18 configurations:v5];
  [*(a1 + 32) addObject:v15];

  v16 = *MEMORY[0x1E69E9840];
}

@end