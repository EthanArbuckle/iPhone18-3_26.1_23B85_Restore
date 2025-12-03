@interface _CDPredicateValidator
+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error;
- (BOOL)validateWithError:(id *)error;
- (_CDPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys;
- (void)_cd_validateKeypath:(id)keypath;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation _CDPredicateValidator

+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
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
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:v11];

    LOBYTE(error) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return error;
}

- (_CDPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys
{
  predicateCopy = predicate;
  keysCopy = keys;
  if (predicateCopy)
  {
    v15.receiver = self;
    v15.super_class = _CDPredicateValidator;
    v8 = [(_CDPredicateValidator *)&v15 init];
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
  [(_CDPredicateValidator *)self setValidated:1];
  predicate = [(_CDPredicateValidator *)self predicate];

  if (predicate)
  {
    predicate2 = [(_CDPredicateValidator *)self predicate];
    [predicate2 acceptVisitor:self flags:3];

    if (error)
    {
      error = [(_CDPredicateValidator *)self error];

      if (error)
      {
        *error = [(_CDPredicateValidator *)self error];
      }
    }
  }

  if (![(_CDPredicateValidator *)self validated])
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      [(_CDPredicateValidator *)self validateWithError:contextChannel];
    }
  }

  return [(_CDPredicateValidator *)self validated];
}

- (void)_cd_validateKeypath:(id)keypath
{
  v43[1] = *MEMORY[0x1E69E9840];
  keypathCopy = keypath;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(_CDPredicateValidator *)self setValidated:0];
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E6997A18];
      v30 = *MEMORY[0x1E6997A28];
      v42 = *MEMORY[0x1E696A578];
      v43[0] = @"Invalid keypath type";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v6 = [v28 errorWithDomain:v29 code:v30 userInfo:?];
      [(_CDPredicateValidator *)self setError:v6];
      goto LABEL_29;
    }
  }

  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v34 = [v5 initWithObjects:{*MEMORY[0x1E696A240], *MEMORY[0x1E696A258], *MEMORY[0x1E696A288], *MEMORY[0x1E696A290], *MEMORY[0x1E696A298], *MEMORY[0x1E696A5B0], *MEMORY[0x1E696A748], *MEMORY[0x1E696A900], *MEMORY[0x1E696AA50], *MEMORY[0x1E696AA58], *MEMORY[0x1E696AA60], 0}];
  v32 = keypathCopy;
  v6 = [keypathCopy componentsSeparatedByString:@"."];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v36;
  v11 = @"@";
  do
  {
    v12 = 0;
    v33 = v8;
    do
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v35 + 1) + 8 * v12);
      if ([v13 hasPrefix:v11])
      {
        if ([v13 length] < 2)
        {
          goto LABEL_20;
        }

        v14 = [v13 substringFromIndex:1];
        if (([v34 containsObject:v14] & 1) == 0)
        {
          [(_CDPredicateValidator *)self setValidated:0];
        }
      }

      else
      {
        if ([v13 isEqual:@"class"])
        {
          goto LABEL_20;
        }

        allowedKeys = [(_CDPredicateValidator *)self allowedKeys];
        if (allowedKeys)
        {
          v16 = allowedKeys;
          [(_CDPredicateValidator *)self allowedKeys];
          v17 = v10;
          selfCopy = self;
          v19 = v11;
          v20 = v6;
          v22 = v21 = v9;
          v23 = [v22 containsObject:v13];

          v9 = v21;
          v6 = v20;
          v11 = v19;
          self = selfCopy;
          v10 = v17;
          v8 = v33;

          if ((v23 & 1) == 0)
          {
LABEL_20:
            [(_CDPredicateValidator *)self setValidated:0];
            goto LABEL_21;
          }
        }

        if (!v9)
        {
          v9 = objc_opt_new();
        }

        [v9 addObject:v13];
      }

LABEL_21:
      ++v12;
    }

    while (v8 != v12);
    v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v8);
LABEL_25:
  if (![(_CDPredicateValidator *)self validated])
  {
    v39 = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Used keys: %@", v9];
    v25 = v24 = v9;
    v40 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:v26];
    [(_CDPredicateValidator *)self setError:v27];

    v9 = v24;
  }

  keypathCopy = v32;
LABEL_29:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)visitPredicateExpression:(id)expression
{
  v41[1] = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  if (![(_CDPredicateValidator *)self validated])
  {
    goto LABEL_34;
  }

  expressionType = [expressionCopy expressionType];
  switch(expressionType)
  {
    case 10:
LABEL_5:
      keyPath = [expressionCopy keyPath];
      [(_CDPredicateValidator *)self _cd_validateKeypath:keyPath];

      break;
    case 4:
      function = [expressionCopy function];
      if ([function isEqual:@"objectFrom:withIndex:"])
      {
LABEL_33:

        break;
      }

      if ([function isEqual:@"castObject:toType:"])
      {
        arguments = [expressionCopy arguments];
        if ([arguments count] == 2)
        {
          arguments2 = [expressionCopy arguments];
          v10 = [arguments2 objectAtIndexedSubscript:1];
          if (![v10 expressionType])
          {
            arguments3 = [expressionCopy arguments];
            v29 = [arguments3 objectAtIndexedSubscript:1];
            constantValue = [v29 constantValue];
            v31 = [constantValue isEqual:@"NSDate"];

            if (v31)
            {
              goto LABEL_33;
            }

            goto LABEL_12;
          }
        }

LABEL_12:
        [(_CDPredicateValidator *)self setValidated:0];
        v11 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A578];
        v41[0] = @"Unsupported cast";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v13 = [v11 errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:v12];
        [(_CDPredicateValidator *)self setError:v13];

LABEL_32:
        goto LABEL_33;
      }

      v12 = [MEMORY[0x1E695DFD8] setWithObjects:{@"valueForKey:", @"valueForKeyPath:", 0}];
      if (![v12 containsObject:function])
      {
        v16 = MEMORY[0x1E696ABC8];
        function2 = [expressionCopy function];
        arguments4 = [expressionCopy arguments];
        v19 = arguments4;
        if (arguments4)
        {
          v20 = arguments4;
        }

        else
        {
          v20 = MEMORY[0x1E695E0F0];
        }

        v21 = [v16 expressionForFunction:function2 arguments:v20];

        if (!v21)
        {
          [(_CDPredicateValidator *)self setValidated:0];
          v22 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A578];
          v37 = @"Unsupported function";
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v24 = [v22 errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:v23];
          [(_CDPredicateValidator *)self setError:v24];

          v21 = 0;
        }

        goto LABEL_32;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        pathExpression = [expressionCopy pathExpression];
        if (![pathExpression expressionType] || objc_msgSend(pathExpression, "expressionType") == 10)
        {
          constantValue2 = [pathExpression constantValue];
          [(_CDPredicateValidator *)self _cd_validateKeypath:constantValue2];
LABEL_27:

          goto LABEL_32;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          arguments5 = [expressionCopy arguments];
          v26 = [arguments5 count];

          if (v26 == 1)
          {
            pathExpression = [expressionCopy arguments];
            constantValue2 = [pathExpression firstObject];
            v15ConstantValue = [constantValue2 constantValue];
            [(_CDPredicateValidator *)self _cd_validateKeypath:v15ConstantValue];

            goto LABEL_27;
          }
        }
      }

      [(_CDPredicateValidator *)self setValidated:0];
      v32 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v39 = @"Unsupported format";
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v34 = [v32 errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:v33];
      [(_CDPredicateValidator *)self setError:v34];

      goto LABEL_32;
    case 3:
      goto LABEL_5;
  }

LABEL_34:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)visitPredicateOperator:(id)operator
{
  v17[1] = *MEMORY[0x1E69E9840];
  operatorType = [operator operatorType];
  if (operatorType >= 0xB && operatorType - 99 >= 2)
  {
    if (operatorType == 11)
    {
      [(_CDPredicateValidator *)self setValidated:0];
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6997A18];
      v8 = *MEMORY[0x1E6997A28];
      v16 = *MEMORY[0x1E696A578];
      v17[0] = @"Unsupported operator type";
      v9 = MEMORY[0x1E695DF20];
      v10 = v17;
      v11 = &v16;
    }

    else
    {
      [(_CDPredicateValidator *)self setValidated:0];
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6997A18];
      v8 = *MEMORY[0x1E6997A28];
      v14 = *MEMORY[0x1E696A578];
      v15 = @"Unhandled operator type";
      v9 = MEMORY[0x1E695DF20];
      v10 = &v15;
      v11 = &v14;
    }

    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
    v13 = [v6 errorWithDomain:v7 code:v8 userInfo:v12];
    [(_CDPredicateValidator *)self setError:v13];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 predicate];
  v5 = [a1 error];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Rejecting predicate: %@, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end