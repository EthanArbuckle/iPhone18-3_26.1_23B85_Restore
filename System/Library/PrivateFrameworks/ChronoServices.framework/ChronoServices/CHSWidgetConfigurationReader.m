@interface CHSWidgetConfigurationReader
- (CHSWidgetConfigurationReader)init;
- (id)_transformResults:(id)a3;
- (void)allConfiguredWidgetsWithCompletion:(id)a3;
@end

@implementation CHSWidgetConfigurationReader

- (CHSWidgetConfigurationReader)init
{
  v6.receiver = self;
  v6.super_class = CHSWidgetConfigurationReader;
  v2 = [(CHSWidgetConfigurationReader *)&v6 init];
  if (v2)
  {
    v3 = +[CHSChronoServicesConnection sharedInstance];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)allConfiguredWidgetsWithCompletion:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CHSWidgetConfigurationReader_allConfiguredWidgetsWithCompletion___block_invoke;
  v7[3] = &unk_1E7453E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CHSChronoServicesConnection *)connection allWidgetConfigurationsByHostWithCompletion:v7];
}

void __67__CHSWidgetConfigurationReader_allConfiguredWidgetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 configurationsByHost];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [*(a1 + 32) _transformResults:v5];
  }

  else
  {
    v7 = 0;
  }

  (*(v6 + 16))(v6, v7, v8);
  if (v5)
  {
  }
}

- (id)_transformResults:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CHSWidgetConfigurationReader.m" lineNumber:43 description:@"Must have results to parse results."];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CHSWidgetConfigurationReader__transformResults___block_invoke;
  v10[3] = &unk_1E7453E50;
  v7 = v6;
  v11 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  return v7;
}

void __50__CHSWidgetConfigurationReader__transformResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 containerDescriptors];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) widgets];
        [v7 addObjectsFromArray:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [_CHSWidgetConfigurationHost alloc];
  v14 = [v6 metricsSpecification];
  v15 = [(_CHSWidgetConfigurationHost *)v13 initWithIdentifier:v5 configurations:v7 metricsSpecification:v14];

  [*(a1 + 32) addObject:v15];
  v16 = *MEMORY[0x1E69E9840];
}

@end