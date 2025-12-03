@interface JEDeresNumberTreatmentAction
- (JEDeresNumberTreatmentAction)initWithField:(id)field configuration:(id)configuration;
- (id)performAction:(id)action context:(id)context;
@end

@implementation JEDeresNumberTreatmentAction

- (JEDeresNumberTreatmentAction)initWithField:(id)field configuration:(id)configuration
{
  v30 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v28.receiver = self;
  v28.super_class = JEDeresNumberTreatmentAction;
  v7 = [(JETreatmentAction *)&v28 initWithField:field configuration:configurationCopy];
  if (v7)
  {
    v8 = [configurationCopy objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [v9 doubleValue];
    v7->_precision = v10;
    v11 = [configurationCopy objectForKeyedSubscript:@"buckets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    v15 = v13;
    if (v14)
    {
      v16 = v14;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v19 objectForKeyedSubscript:{@"start", v24}];

            if (v20)
            {
              continue;
            }
          }

          v15 = 0;
          goto LABEL_19;
        }

        v16 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v15 = v13;
    }

LABEL_19:

    v21 = [v15 sortedArrayUsingComparator:&__block_literal_global_1];
    buckets = v7->_buckets;
    v7->_buckets = v21;
  }

  return v7;
}

- (id)performAction:(id)action context:(id)context
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = JEDeresNumberTreatmentAction;
  v5 = [(JETreatmentAction *)&v22 performAction:action context:context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
LABEL_21:
    v14 = 0;
    goto LABEL_24;
  }

  if (self)
  {
    buckets = self->_buckets;
  }

  else
  {
    buckets = 0;
  }

  if (![(NSArray *)buckets count])
  {
    if (self && self->_precision > 0.0)
    {
      [v6 doubleValue];
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_precision * floor(v20 / self->_precision)];
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (self)
  {
    v8 = self->_buckets;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v23 = @"start";
  v24[0] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  if (self)
  {
    v11 = self->_buckets;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [(NSArray *)v9 indexOfObject:v10 inSortedRange:0 options:[(NSArray *)v12 count] usingComparator:1536, &__block_literal_global_1];

  v14 = 0;
  if (v13 && v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self)
    {
      v15 = self->_buckets;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(NSArray *)v15 objectAtIndexedSubscript:v13 - 1];
    v17 = [v16 objectForKeyedSubscript:@"value"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v16 objectForKeyedSubscript:@"start"];
    }

    v14 = v19;
  }

LABEL_24:

  return v14;
}

@end