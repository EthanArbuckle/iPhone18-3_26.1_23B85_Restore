@interface LACDTOMutablePolicyEvaluationRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isInteractiveRatchetEvaluation;
- (LACDTOMutablePolicyEvaluationRequest)initWithIdentifier:(id)identifier;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation LACDTOMutablePolicyEvaluationRequest

- (LACDTOMutablePolicyEvaluationRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = LACDTOMutablePolicyEvaluationRequest;
  v5 = [(LACDTOMutablePolicyEvaluationRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LACDTOMutablePolicyEvaluationRequest *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (BOOL)isInteractiveRatchetEvaluation
{
  options = self->_options;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
  v5 = [(NSDictionary *)options objectForKeyedSubscript:v4];
  v6 = ([v5 BOOLValue] & 1) == 0 && self->_policy == 1026;

  return v6;
}

- (NSString)description
{
  v22[4] = *MEMORY[0x1E69E9840];
  v20 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
  v4 = [v3 stringWithFormat:@"identifier: %@", identifier];
  v22[0] = v4;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromLACPolicy([(LACDTOMutablePolicyEvaluationRequest *)self policy]);
  v7 = [v5 stringWithFormat:@"policy: %@", v6];
  v22[1] = v7;
  v8 = MEMORY[0x1E696AEC0];
  options = [(LACDTOMutablePolicyEvaluationRequest *)self options];
  v10 = [v8 stringWithFormat:@"options: %@", options];
  v22[2] = v10;
  v11 = MEMORY[0x1E696AEC0];
  environment = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
  v13 = [v11 stringWithFormat:@"environment: %@", environment];
  v22[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v15 = [v14 componentsJoinedByString:@" "];;
  v16 = [v20 stringWithFormat:@"<%@ %p %@>", v19, self, v15];;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F269DBB8])
  {
    v5 = equalCopy;
    identifier = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqualToString:identifier4];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    policy = [(LACDTOMutablePolicyEvaluationRequest *)self policy];
    if (policy == [v5 policy])
    {
      options = [(LACDTOMutablePolicyEvaluationRequest *)self options];
      options2 = [v5 options];
      v16 = options2;
      if (options == options2)
      {
      }

      else
      {
        options3 = [(LACDTOMutablePolicyEvaluationRequest *)self options];
        options4 = [v5 options];
        v19 = [options3 isEqualToDictionary:options4];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      environment = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
      environment2 = [v5 environment];
      if (environment == environment2)
      {
        v12 = 1;
      }

      else
      {
        environment3 = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
        environment4 = [v5 environment];
        v12 = [environment3 isEqual:environment4];
      }

      goto LABEL_16;
    }

LABEL_10:
    v12 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

  return v12 & 1;
}

- (unint64_t)hash
{
  policy = [(LACDTOMutablePolicyEvaluationRequest *)self policy];
  options = [(LACDTOMutablePolicyEvaluationRequest *)self options];
  v5 = [options hash] ^ policy;
  identifier = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
  v7 = [identifier hash];
  environment = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
  v9 = v7 ^ [environment hash];

  return v5 ^ v9;
}

@end