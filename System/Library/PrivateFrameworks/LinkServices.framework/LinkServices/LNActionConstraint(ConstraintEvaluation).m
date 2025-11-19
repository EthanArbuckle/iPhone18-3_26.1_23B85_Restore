@interface LNActionConstraint(ConstraintEvaluation)
+ (uint64_t)evaluate:()ConstraintEvaluation inContext:error:;
- (uint64_t)evaluateInContext:()ConstraintEvaluation error:;
@end

@implementation LNActionConstraint(ConstraintEvaluation)

- (uint64_t)evaluateInContext:()ConstraintEvaluation error:
{
  v23[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKey:@"action"];
  v8 = [a1 condition];

  if (v8 && ([a1 condition], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "evaluateWithObject:substitutionVariables:", v7, v6), v9, (v10 & 1) == 0))
  {
    if (a4)
    {
      *a4 = 0;
    }

    v11 = -1;
  }

  else
  {
    v11 = [a1 requirement];
    v12 = [v11 evaluateWithObject:v7 substitutionVariables:v6];

    if (v12)
    {
      v11 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }

    else
    {
      v13 = [a1 behavior];
      if (v13 == 9999)
      {
        if (a4)
        {
          *a4 = 0;
        }

        v11 = 9999;
      }

      else if (v13 == 1)
      {
        if (a4)
        {
          v14 = [a1 message];
          v15 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
          v16 = [v15 localeIdentifier];
          v17 = [v14 localizedStringForLocaleIdentifier:v16];

          v18 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E696A578];
          v23[0] = v17;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          *a4 = [v18 errorWithDomain:@"AppIntentConstraints" code:1 userInfo:v19];
        }

        v11 = 1;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (uint64_t)evaluate:()ConstraintEvaluation inContext:error:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) evaluateInContext:v8 error:{a5, v19}];
          if (v15)
          {
            if (v15 == 1 || v15 == 9999)
            {
              v13 = v15;
              goto LABEL_21;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = -1;
    }

LABEL_21:
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

@end