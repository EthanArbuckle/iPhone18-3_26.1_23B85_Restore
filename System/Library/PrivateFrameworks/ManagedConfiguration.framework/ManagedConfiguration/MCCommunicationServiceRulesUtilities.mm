@interface MCCommunicationServiceRulesUtilities
+ (id)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4;
+ (id)restrictionsForValidatedCommunicationServiceRules:(id)a3;
+ (id)validServiceTypes;
+ (id)validatedCommunicationServiceRules:(id)a3 outError:(id *)a4;
@end

@implementation MCCommunicationServiceRulesUtilities

+ (id)validServiceTypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"AudioCall";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)validatedCommunicationServiceRules:(id)a3 outError:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = [a3 mutableCopy];
  v35 = 0;
  v7 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"DefaultServiceHandlers" isRequired:0 outError:&v35];
  v8 = v35;
  v9 = [v7 mutableCopy];

  if (v8)
  {

    v10 = 0;
  }

  else
  {
    v28 = v6;
    v29 = a4;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [a1 validServiceTypes];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = objc_opt_class();
          v30 = 0;
          v20 = [v9 MCValidateAndRemoveObjectOfClass:v19 withKey:v18 isRequired:0 outError:&v30];
          v21 = v30;
          if (v21)
          {
            v8 = v21;

            v10 = 0;
            v11 = 0;
            v6 = v28;
            a4 = v29;
            goto LABEL_23;
          }

          if (v20)
          {
            [v12 setObject:v20 forKeyedSubscript:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if ([v9 count])
    {
      v22 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = v9;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_ERROR, "The following communication service default handlers were not understood & ignored: %{public}@", buf, 0xCu);
      }
    }

    if ([v12 count])
    {
      v36 = @"DefaultServiceHandlers";
      v37 = v12;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    }

    else
    {
      v10 = 0;
    }

    v6 = v28;

    a4 = v29;
    if ([v10 count])
    {
      v10 = v10;
      v8 = 0;
      v11 = v10;
      goto LABEL_23;
    }

    v8 = 0;
  }

  v11 = 0;
LABEL_23:
  if ([v6 count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v6;
      _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, "The following communication service rules were not understood & ignored: %{public}@", buf, 0xCu);
    }
  }

  if (a4)
  {
    v24 = v8;
    *a4 = v8;
  }

  v25 = v11;

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)restrictionsForValidatedCommunicationServiceRules:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKey:@"DefaultServiceHandlers"];

  v6 = [v5 objectForKey:@"AudioCall"];
  v7 = v6;
  if (v6)
  {
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v4 MCSetUnionRestriction:@"audioCallDefaultHandlerAppBundleIDs" values:v8];
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4
{
  v5 = MEMORY[0x1E6959A48];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultStore];
  v9 = [v8 accountWithIdentifier:v6];

  v10 = [v9 communicationServiceRules];
  v11 = [v10 objectForKeyedSubscript:@"DefaultServiceHandlers"];
  v12 = [v11 objectForKeyedSubscript:v7];

  return v12;
}

@end