@interface MUScrollViewImpressionsCalculator
- (MUScrollViewImpressionsCalculator)initWithConfiguration:(id)a3 visibleItemsProvider:(id)a4;
- (void)logImpressions;
@end

@implementation MUScrollViewImpressionsCalculator

- (void)logImpressions
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(MUImpressionsCalculator *)self isActive])
  {
    v3 = MEMORY[0x1E695DFA8];
    v4 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
    v5 = [v4 allKeys];
    v6 = [v3 setWithArray:v5];

    WeakRetained = objc_loadWeakRetained(&self->_visibleItemsProvider);
    v8 = [WeakRetained visibleImpressionElements];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        v13 = 0;
        do
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v36 + 1) + 8 * v13);
          v15 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
          v16 = [v14 elementIdentifier];
          v17 = [v15 objectForKey:v16];

          if (v17)
          {
            [v14 frame];
            [(_MUImpressionUIElement *)v17 setFrame:?];
            v18 = [v14 elementIdentifier];
            [v6 removeObject:v18];
          }

          else
          {
            v17 = objc_alloc_init(_MUImpressionUIElement);
            [v14 frame];
            [(_MUImpressionUIElement *)v17 setFrame:?];
            [(_MUImpressionUIElement *)v17 setClientElement:v14];
            v18 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
            v19 = [v14 elementIdentifier];
            [v18 setObject:v17 forKey:v19];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
    }

    v31 = v9;

    v20 = [MEMORY[0x1E695DF00] date];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [v6 allObjects];
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        v25 = 0;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * v25);
          v27 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
          v28 = [v27 objectForKey:v26];

          [(MUImpressionsCalculator *)self _logExitForImpressionUIElement:v28 usingExitDate:v20];
          v29 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
          [v29 removeObjectForKey:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    [(MUImpressionsCalculator *)self _checkVisibilityForAllItemsOnDate:v20];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (MUScrollViewImpressionsCalculator)initWithConfiguration:(id)a3 visibleItemsProvider:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MUScrollViewImpressionsCalculator;
  v7 = [(MUImpressionsCalculator *)&v10 initWithConfiguration:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_visibleItemsProvider, v6);
  }

  return v8;
}

@end