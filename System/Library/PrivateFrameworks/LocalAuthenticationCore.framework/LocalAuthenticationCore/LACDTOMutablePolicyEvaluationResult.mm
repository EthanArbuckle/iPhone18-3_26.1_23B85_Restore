@interface LACDTOMutablePolicyEvaluationResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isSuccess;
- (LACDTOMutablePolicyEvaluationResult)initWithIdentifier:(id)identifier;
- (NSString)description;
@end

@implementation LACDTOMutablePolicyEvaluationResult

- (LACDTOMutablePolicyEvaluationResult)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = LACDTOMutablePolicyEvaluationResult;
  v5 = [(LACDTOMutablePolicyEvaluationResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LACDTOMutablePolicyEvaluationResult *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (BOOL)isSuccess
{
  result = [(LACDTOMutablePolicyEvaluationResult *)self result];
  v3 = result != 0;

  return v3;
}

- (NSString)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  identifier = [(LACDTOMutablePolicyEvaluationResult *)self identifier];
  v6 = [v4 stringWithFormat:@"identifier: %@", identifier];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  result = [(LACDTOMutablePolicyEvaluationResult *)self result];
  v9 = [v7 stringWithFormat:@"result: %@", result];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  error = [(LACDTOMutablePolicyEvaluationResult *)self error];
  v12 = [v10 stringWithFormat:@"error: %@", error];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F26977C8])
  {
    v5 = equalCopy;
    identifier = [(LACDTOMutablePolicyEvaluationResult *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(LACDTOMutablePolicyEvaluationResult *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqualToString:identifier4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    result = [(LACDTOMutablePolicyEvaluationResult *)self result];
    result2 = [v5 result];
    v15 = result2;
    if (result == result2)
    {
    }

    else
    {
      result3 = [(LACDTOMutablePolicyEvaluationResult *)self result];
      result4 = [v5 result];
      v18 = [result3 isEqual:result4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    error = [(LACDTOMutablePolicyEvaluationResult *)self error];
    error2 = [v5 error];
    if (error == error2)
    {
      v12 = 1;
    }

    else
    {
      error3 = [(LACDTOMutablePolicyEvaluationResult *)self error];
      error4 = [v5 error];
      v12 = [error3 isEqual:error4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12 & 1;
}

@end