@interface _DKPredicateValidator
+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error;
+ (BOOL)validateSortDescriptors:(id)descriptors;
- (BOOL)validateWithError:(id *)error;
- (_DKPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _DKPredicateValidator

+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (predicate)
  {
    keysCopy = keys;
    predicateCopy = predicate;
    v10 = [[self alloc] initWithPredicate:predicateCopy allowedKeys:keysCopy];

    if (v10)
    {
      LOBYTE(error) = [v10 validateWithError:error];
    }

    else if (error)
    {
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"Predicate was invalid because it was nil.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:v11];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return error;
}

- (_DKPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys
{
  predicateCopy = predicate;
  keysCopy = keys;
  if (predicateCopy)
  {
    v15.receiver = self;
    v15.super_class = _DKPredicateValidator;
    v8 = [(_DKPredicateValidator *)&v15 init];
    if (v8)
    {
      v9 = [predicateCopy copy];
      predicate = v8->_predicate;
      v8->_predicate = v9;

      if (keysCopy)
      {
        v11 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];
        allowedKeys = v8->_allowedKeys;
        v8->_allowedKeys = v11;
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validateWithError:(id *)error
{
  [(_DKPredicateValidator *)self setValidated:1];
  predicate = [(_DKPredicateValidator *)self predicate];

  if (predicate)
  {
    predicate2 = [(_DKPredicateValidator *)self predicate];
    [predicate2 acceptVisitor:self flags:3];

    if (error)
    {
      error = [(_DKPredicateValidator *)self error];

      if (error)
      {
        *error = [(_DKPredicateValidator *)self error];
      }
    }
  }

  return [(_DKPredicateValidator *)self validated];
}

- (void)visitPredicateExpression:(id)expression
{
  v57[1] = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  if ([(_DKPredicateValidator *)self validated])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v43 = [v5 initWithObjects:{*MEMORY[0x1E696A240], *MEMORY[0x1E696A258], *MEMORY[0x1E696A288], *MEMORY[0x1E696A290], *MEMORY[0x1E696A298], *MEMORY[0x1E696A5B0], *MEMORY[0x1E696A748], *MEMORY[0x1E696A900], *MEMORY[0x1E696AA50], *MEMORY[0x1E696AA58], *MEMORY[0x1E696AA60], 0}];
    expressionType = [expressionCopy expressionType];
    v42 = expressionCopy;
    if (expressionType == 10)
    {
LABEL_5:
      keyPath = [expressionCopy keyPath];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v56 = *MEMORY[0x1E696A578];
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath class: %@", objc_opt_class()];
        v57[0] = v27;
        obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];

        v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:obj];
        [(_DKPredicateValidator *)self setError:v28];

        [(_DKPredicateValidator *)self setValidated:0];
        goto LABEL_38;
      }

      keyPath2 = [expressionCopy keyPath];
      v8 = [keyPath2 componentsSeparatedByString:@"."];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v8;
      v9 = 0;
      v10 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = *v46;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          if ([v13 hasPrefix:@"@"])
          {
            if ([v13 length] < 2)
            {
              goto LABEL_21;
            }

            v14 = [v13 substringFromIndex:1];
            if (([v43 containsObject:v14] & 1) == 0)
            {
              [(_DKPredicateValidator *)self setValidated:0];
            }
          }

          else
          {
            allowedKeys = [(_DKPredicateValidator *)self allowedKeys];
            if (allowedKeys)
            {
              allowedKeys2 = [(_DKPredicateValidator *)self allowedKeys];
              v17 = [allowedKeys2 containsObject:v13];

              if ((v17 & 1) == 0)
              {
LABEL_21:
                [(_DKPredicateValidator *)self setValidated:0];
                continue;
              }
            }

            if (!v9)
            {
              v9 = objc_opt_new();
            }

            [v9 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (!v10)
        {
LABEL_24:

          if (![(_DKPredicateValidator *)self validated])
          {
            v53 = *MEMORY[0x1E696A578];
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Used keys: %@", v9];
            v54 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

            v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:v19];
            [(_DKPredicateValidator *)self setError:v20];
          }

          goto LABEL_38;
        }
      }
    }

    if (expressionType != 4)
    {
      if (expressionType == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_39;
    }

    keyPath = [expressionCopy function];
    obj = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"valueForKey:", @"valueForKeyPath:", @"value", 0}];
    if ([obj containsObject:keyPath])
    {
      goto LABEL_38;
    }

    if (![keyPath isEqual:@"castObject:toType:"])
    {
      v29 = MEMORY[0x1E696ABC8];
      function = [expressionCopy function];
      arguments = [expressionCopy arguments];
      v32 = [v29 expressionForFunction:function arguments:arguments];

      if (!v32)
      {
        [(_DKPredicateValidator *)self setValidated:0];
        v49 = *MEMORY[0x1E696A578];
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid function: %@", keyPath];
        v50 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:v34];
        [(_DKPredicateValidator *)self setError:v35];

        v32 = 0;
      }

LABEL_38:
LABEL_39:

      expressionCopy = v42;
      goto LABEL_40;
    }

    arguments2 = [expressionCopy arguments];
    if ([arguments2 count] == 2)
    {
      arguments3 = [expressionCopy arguments];
      v23 = [arguments3 objectAtIndexedSubscript:1];
      if (![v23 expressionType])
      {
        arguments4 = [expressionCopy arguments];
        v38 = [arguments4 objectAtIndexedSubscript:1];
        constantValue = [v38 constantValue];
        v40 = [constantValue isEqual:@"NSDate"];

        if (v40)
        {
          goto LABEL_38;
        }

LABEL_33:
        [(_DKPredicateValidator *)self setValidated:0];
        v24 = MEMORY[0x1E696ABC0];
        v51 = *MEMORY[0x1E696A578];
        v52 = @"Unsupported cast";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v26 = [v24 errorWithDomain:@"BMQueryErrorDomain" code:3 userInfo:v25];
        [(_DKPredicateValidator *)self setError:v26];

        goto LABEL_38;
      }
    }

    goto LABEL_33;
  }

LABEL_40:

  v36 = *MEMORY[0x1E69E9840];
}

+ (BOOL)validateSortDescriptors:(id)descriptors
{
  v30 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"alloc", @"new", @"init", @"mutableCopy", @"release", @"retain", @"autorelease", @"dealloc", @"finalize", 0}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = descriptorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) key];
        v11 = [v10 componentsSeparatedByString:@"."];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v4 containsObject:*(*(&v20 + 1) + 8 * j)])
              {

                v17 = 0;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 1;
    }

    while (v7);
  }

  else
  {
    v17 = 1;
  }

LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end