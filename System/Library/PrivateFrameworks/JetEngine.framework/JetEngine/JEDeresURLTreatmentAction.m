@interface JEDeresURLTreatmentAction
- (JEDeresURLTreatmentAction)initWithField:(id)a3 configuration:(id)a4;
- (id)allowedQueryItemsFromItems:(id)a3;
- (id)performAction:(id)a3 context:(id)a4;
@end

@implementation JEDeresURLTreatmentAction

- (JEDeresURLTreatmentAction)initWithField:(id)a3 configuration:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v29.receiver = self;
  v29.super_class = JEDeresURLTreatmentAction;
  v7 = [(JETreatmentAction *)&v29 initWithField:a3 configuration:v6];
  if (!v7)
  {
LABEL_19:
    v9 = v7;
    goto LABEL_20;
  }

  v8 = [v6 objectForKeyedSubscript:@"scope"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(JEDeresURLTreatmentAction *)v9 copy];
    scope = v7->_scope;
    v7->_scope = v10;

    v12 = [v6 objectForKeyedSubscript:@"allowedParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v13;
      v16 = [(NSDictionary *)v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        v19 = MEMORY[0x1E695E0F8];
        do
        {
          v20 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v14 setObject:v19 forKeyedSubscript:{*(*(&v25 + 1) + 8 * v20++), v25}];
          }

          while (v17 != v20);
          v17 = [(NSDictionary *)v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v17);
      }

      v21 = [v14 copy];
      allowedParameters = v7->_allowedParameters;
      v7->_allowedParameters = v21;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v12 copy];
        v15 = v7->_allowedParameters;
        v7->_allowedParameters = v23;
      }

      else
      {
        v15 = v7->_allowedParameters;
        v7->_allowedParameters = MEMORY[0x1E695E0F8];
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

- (id)performAction:(id)a3 context:(id)a4
{
  v9.receiver = self;
  v9.super_class = JEDeresURLTreatmentAction;
  v5 = [(JETreatmentAction *)&v9 performAction:a3 context:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(JEDeresURLTreatmentAction *)v6 performAction:&v10 context:?];
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allowedQueryItemsFromItems:(id)a3
{
  v4 = a3;
  if (self)
  {
    allowedParameters = self->_allowedParameters;
  }

  else
  {
    allowedParameters = 0;
  }

  if (-[NSDictionary count](allowedParameters, "count") && [v4 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__JEDeresURLTreatmentAction_allowedQueryItemsFromItems___block_invoke;
    v11[3] = &unk_1E794A8E8;
    v11[4] = self;
    v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v11];
    v7 = [v4 filteredArrayUsingPredicate:v6];
    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __56__JEDeresURLTreatmentAction_allowedQueryItemsFromItems___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[12];
  }

  v6 = v5;
  [v4 name];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_0() objectForKeyedSubscript:?];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"allowedValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = [v4 value];
      v10 = [v9 containsObject:v11];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)performAction:(uint64_t *)a3 context:.cold.1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = [MEMORY[0x1E696AF20] componentsWithString:a1];
  if (a2)
  {
    v6 = *(a2 + 88);
  }

  else
  {
    v6 = 0;
  }

  if (![v6 isEqualToString:@"hostname"])
  {
    [OUTLINED_FUNCTION_1() setPassword:?];
    [OUTLINED_FUNCTION_1() setUser:?];
    if (a2)
    {
      v8 = *(a2 + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if ([v9 isEqualToString:@"urlWithoutParams"])
    {
    }

    else
    {
      if (a2)
      {
        v10 = *(a2 + 88);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 isEqualToString:@"fullWithoutParams"];

      if ((v11 & 1) == 0)
      {
        if (a2)
        {
          v13 = *(a2 + 88);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        if ([v14 isEqualToString:@"urlWithoutPath"])
        {
        }

        else
        {
          if (a2)
          {
            v15 = *(a2 + 88);
          }

          else
          {
            v15 = 0;
          }

          v16 = [v15 isEqualToString:@"fullWithoutPath"];

          if ((v16 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        [OUTLINED_FUNCTION_1() setFragment:?];
        [v5 queryItems];
        objc_claimAutoreleasedReturnValue();
        v17 = [OUTLINED_FUNCTION_0() allowedQueryItemsFromItems:?];
        [v5 setQueryItems:v17];

        [OUTLINED_FUNCTION_1() setPath:?];
LABEL_13:
        v7 = [v5 string];
        goto LABEL_14;
      }
    }

    [OUTLINED_FUNCTION_1() setFragment:?];
    [v5 queryItems];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_0() allowedQueryItemsFromItems:?];
    [v5 setQueryItems:v12];

    goto LABEL_13;
  }

  v7 = [v5 host];
LABEL_14:
  *a3 = v7;
}

@end