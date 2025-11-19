@interface LNAction(ConstraintEvaluation)
- (uint64_t)evaluateConstraintsInContext:()ConstraintEvaluation error:;
@end

@implementation LNAction(ConstraintEvaluation)

- (uint64_t)evaluateConstraintsInContext:()ConstraintEvaluation error:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 metadata];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E69AC658];
    v10 = [v7 constraints];
    v11 = [v9 evaluate:v10 inContext:v6 error:a4];
  }

  else if (a4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"No metadata";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = -1;
    *a4 = [v12 errorWithDomain:@"AppIntentConstraints" code:-1 userInfo:v13];
  }

  else
  {
    v11 = -1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

@end