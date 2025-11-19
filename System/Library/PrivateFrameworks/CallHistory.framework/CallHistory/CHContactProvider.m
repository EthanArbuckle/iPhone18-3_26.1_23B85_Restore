@interface CHContactProvider
- (CHContactProvider)initWithDataSource:(id)a3;
- (id)contactsByHandleForCalls:(id)a3 keyDescriptors:(id)a4 error:(id *)a5;
- (id)contactsByHandleForHandles:(id)a3 keyDescriptors:(id)a4 error:(id *)a5;
@end

@implementation CHContactProvider

- (CHContactProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHContactProvider;
  v6 = [(CHContactProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)contactsByHandleForCalls:(id)a3 keyDescriptors:(id)a4 error:(id *)a5
{
  v24 = self;
  v25 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = [v14 remoteParticipantHandles];
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v8 addObject:*(*(&v26 + 1) + 8 * j)];
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v20 = [v8 allObjects];
  v21 = [(CHContactProvider *)v24 contactsByHandleForHandles:v20 keyDescriptors:v7 error:v25];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)contactsByHandleForHandles:(id)a3 keyDescriptors:(id)a4 error:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = a4;
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v50 + 1) + 8 * i);
        v14 = [v13 normalizedValue];
        if (![v14 length])
        {
          v15 = [v13 value];

          v14 = v15;
        }

        if ([v14 length])
        {
          v16 = [v41 objectForKeyedSubscript:v14];
          if (v16)
          {
            v17 = v16;
            [v16 addObject:v13];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
            [v41 setObject:v17 forKeyedSubscript:v14];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v10);
  }

  v18 = [(CHContactProvider *)self dataSource];
  v19 = v41;
  v20 = [v41 allKeys];
  v21 = [v18 contactsByContactHandleForContactHandles:v20 keyDescriptors:v36 error:a5];

  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = [v21 allKeys];
    v40 = [v37 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v40)
    {
      v39 = *v47;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v24 = *(*(&v46 + 1) + 8 * j);
          v25 = [v19 objectForKeyedSubscript:v24];
          v26 = v25;
          if (v25)
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v27 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v43;
              do
              {
                for (k = 0; k != v28; ++k)
                {
                  if (*v43 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v42 + 1) + 8 * k);
                  v32 = [v21 objectForKeyedSubscript:v24];
                  [v22 setObject:v32 forKeyedSubscript:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v42 objects:v54 count:16];
              }

              while (v28);
            }
          }

          v19 = v41;
        }

        v40 = [v37 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v40);
    }
  }

  else
  {
    v22 = 0;
  }

  v33 = [v22 copy];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

@end