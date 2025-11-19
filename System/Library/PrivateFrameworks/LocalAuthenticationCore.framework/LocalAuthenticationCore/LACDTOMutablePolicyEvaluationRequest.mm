@interface LACDTOMutablePolicyEvaluationRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isInteractiveRatchetEvaluation;
- (LACDTOMutablePolicyEvaluationRequest)initWithIdentifier:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation LACDTOMutablePolicyEvaluationRequest

- (LACDTOMutablePolicyEvaluationRequest)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LACDTOMutablePolicyEvaluationRequest;
  v5 = [(LACDTOMutablePolicyEvaluationRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LACDTOMutablePolicyEvaluationRequest *)v5 setIdentifier:v4];
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
  v21 = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
  v4 = [v3 stringWithFormat:@"identifier: %@", v21];
  v22[0] = v4;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromLACPolicy([(LACDTOMutablePolicyEvaluationRequest *)self policy]);
  v7 = [v5 stringWithFormat:@"policy: %@", v6];
  v22[1] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACDTOMutablePolicyEvaluationRequest *)self options];
  v10 = [v8 stringWithFormat:@"options: %@", v9];
  v22[2] = v10;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
  v13 = [v11 stringWithFormat:@"environment: %@", v12];
  v22[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v15 = [v14 componentsJoinedByString:@" "];;
  v16 = [v20 stringWithFormat:@"<%@ %p %@>", v19, self, v15];;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F269DBB8])
  {
    v5 = v4;
    v6 = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v13 = [(LACDTOMutablePolicyEvaluationRequest *)self policy];
    if (v13 == [v5 policy])
    {
      v14 = [(LACDTOMutablePolicyEvaluationRequest *)self options];
      v15 = [v5 options];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(LACDTOMutablePolicyEvaluationRequest *)self options];
        v18 = [v5 options];
        v19 = [v17 isEqualToDictionary:v18];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      v20 = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
      v21 = [v5 environment];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
        v23 = [v5 environment];
        v12 = [v22 isEqual:v23];
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
  v3 = [(LACDTOMutablePolicyEvaluationRequest *)self policy];
  v4 = [(LACDTOMutablePolicyEvaluationRequest *)self options];
  v5 = [v4 hash] ^ v3;
  v6 = [(LACDTOMutablePolicyEvaluationRequest *)self identifier];
  v7 = [v6 hash];
  v8 = [(LACDTOMutablePolicyEvaluationRequest *)self environment];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

@end