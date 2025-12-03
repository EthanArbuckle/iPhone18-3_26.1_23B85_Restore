@interface CHContactProvider
- (CHContactProvider)initWithDataSource:(id)source;
- (id)contactsByHandleForCalls:(id)calls keyDescriptors:(id)descriptors error:(id *)error;
- (id)contactsByHandleForHandles:(id)handles keyDescriptors:(id)descriptors error:(id *)error;
@end

@implementation CHContactProvider

- (CHContactProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = CHContactProvider;
  v6 = [(CHContactProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)contactsByHandleForCalls:(id)calls keyDescriptors:(id)descriptors error:(id *)error
{
  selfCopy = self;
  errorCopy = error;
  v36 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  descriptorsCopy = descriptors;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = callsCopy;
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
        remoteParticipantHandles = [v14 remoteParticipantHandles];
        v16 = [remoteParticipantHandles countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(remoteParticipantHandles);
              }

              [v8 addObject:*(*(&v26 + 1) + 8 * j)];
            }

            v17 = [remoteParticipantHandles countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  allObjects = [v8 allObjects];
  v21 = [(CHContactProvider *)selfCopy contactsByHandleForHandles:allObjects keyDescriptors:descriptorsCopy error:errorCopy];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)contactsByHandleForHandles:(id)handles keyDescriptors:(id)descriptors error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  descriptorsCopy = descriptors;
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = handlesCopy;
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
        normalizedValue = [v13 normalizedValue];
        if (![normalizedValue length])
        {
          value = [v13 value];

          normalizedValue = value;
        }

        if ([normalizedValue length])
        {
          v16 = [v41 objectForKeyedSubscript:normalizedValue];
          if (v16)
          {
            v17 = v16;
            [v16 addObject:v13];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
            [v41 setObject:v17 forKeyedSubscript:normalizedValue];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v10);
  }

  dataSource = [(CHContactProvider *)self dataSource];
  v19 = v41;
  allKeys = [v41 allKeys];
  v21 = [dataSource contactsByContactHandleForContactHandles:allKeys keyDescriptors:descriptorsCopy error:error];

  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    allKeys2 = [v21 allKeys];
    v40 = [allKeys2 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v40)
    {
      v39 = *v47;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(allKeys2);
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

        v40 = [allKeys2 countByEnumeratingWithState:&v46 objects:v55 count:16];
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