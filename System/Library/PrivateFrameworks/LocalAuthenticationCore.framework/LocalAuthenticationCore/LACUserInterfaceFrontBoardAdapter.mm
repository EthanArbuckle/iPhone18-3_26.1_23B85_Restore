@interface LACUserInterfaceFrontBoardAdapter
+ (id)applicationPayloadURLForBundleID:(id)d rootControllerName:(id)name parameters:(id)parameters;
@end

@implementation LACUserInterfaceFrontBoardAdapter

+ (id)applicationPayloadURLForBundleID:(id)d rootControllerName:(id)name parameters:(id)parameters
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  parametersCopy = parameters;
  v10 = objc_opt_new();
  [v10 setScheme:dCopy];
  [v10 setHost:nameCopy];
  if ([parametersCopy count])
  {
    v28 = dCopy;
    v11 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = parametersCopy;
    v12 = parametersCopy;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = objc_alloc(MEMORY[0x1E696AF60]);
          v19 = [v12 objectForKeyedSubscript:v17];
          v20 = [v18 initWithName:v17 value:v19];

          [v11 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    [v10 setQueryItems:v11];
    dCopy = v28;
    parametersCopy = v27;
  }

  v21 = [v10 URL];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_opt_new();
  }

  v24 = v23;

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end