@interface LACDTOMutablePolicyEvaluationResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isSuccess;
- (LACDTOMutablePolicyEvaluationResult)initWithIdentifier:(id)a3;
- (NSString)description;
@end

@implementation LACDTOMutablePolicyEvaluationResult

- (LACDTOMutablePolicyEvaluationResult)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LACDTOMutablePolicyEvaluationResult;
  v5 = [(LACDTOMutablePolicyEvaluationResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LACDTOMutablePolicyEvaluationResult *)v5 setIdentifier:v4];
  }

  return v6;
}

- (BOOL)isSuccess
{
  v2 = [(LACDTOMutablePolicyEvaluationResult *)self result];
  v3 = v2 != 0;

  return v3;
}

- (NSString)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LACDTOMutablePolicyEvaluationResult *)self identifier];
  v6 = [v4 stringWithFormat:@"identifier: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LACDTOMutablePolicyEvaluationResult *)self result];
  v9 = [v7 stringWithFormat:@"result: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(LACDTOMutablePolicyEvaluationResult *)self error];
  v12 = [v10 stringWithFormat:@"error: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F26977C8])
  {
    v5 = v4;
    v6 = [(LACDTOMutablePolicyEvaluationResult *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(LACDTOMutablePolicyEvaluationResult *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(LACDTOMutablePolicyEvaluationResult *)self result];
    v14 = [v5 result];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(LACDTOMutablePolicyEvaluationResult *)self result];
      v17 = [v5 result];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(LACDTOMutablePolicyEvaluationResult *)self error];
    v20 = [v5 error];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(LACDTOMutablePolicyEvaluationResult *)self error];
      v22 = [v5 error];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12 & 1;
}

@end