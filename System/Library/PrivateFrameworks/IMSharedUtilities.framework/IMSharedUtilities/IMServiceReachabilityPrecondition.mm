@interface IMServiceReachabilityPrecondition
+ (id)_preconditionClasses;
+ (id)preconditionWithDictionary:(id)dictionary;
- (id)_latestResultsForServiceName:(id)name fromLatestResults:(id)results;
@end

@implementation IMServiceReachabilityPrecondition

+ (id)_preconditionClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)preconditionWithDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[IMServiceReachabilityPrecondition _preconditionClasses];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) preconditionWithDictionary:dictionaryCopy];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_latestResultsForServiceName:(id)name fromLatestResults:(id)results
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  resultsCopy = results;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [resultsCopy allValues];
  v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        service = [v13 service];
        v15 = [service isEqualToString:nameCopy];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

@end