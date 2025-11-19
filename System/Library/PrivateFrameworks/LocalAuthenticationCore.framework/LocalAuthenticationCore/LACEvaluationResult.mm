@interface LACEvaluationResult
+ (id)resultWithFailure:(id)a3;
+ (id)resultWithNext:(id)a3;
+ (id)resultWithRetry:(id)a3 error:(id)a4;
+ (id)resultWithSuccess:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LACEvaluationResult)initWithValue:(id)a3 error:(id)a4 request:(id)a5;
- (id)description;
@end

@implementation LACEvaluationResult

- (LACEvaluationResult)initWithValue:(id)a3 error:(id)a4 request:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LACEvaluationResult;
  v12 = [(LACEvaluationResult *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a3);
    objc_storeStrong(&v13->_error, a4);
    objc_storeStrong(&v13->_request, a5);
    if (v9)
    {
      v14 = 3;
LABEL_13:
      v13->_rawValue = v14;
      goto LABEL_14;
    }

    if (v11)
    {
      v15 = v10 == 0;
    }

    else
    {
      v15 = 1;
    }

    v14 = 2;
    if (v15)
    {
      v14 = 0;
    }

    if (!v10)
    {
      v14 = 1;
    }

    if (v10 | v11)
    {
      goto LABEL_13;
    }
  }

LABEL_14:

  return v13;
}

+ (id)resultWithNext:(id)a3
{
  v3 = a3;
  v4 = [[LACEvaluationResult alloc] initWithValue:0 error:0 request:v3];

  return v4;
}

+ (id)resultWithRetry:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[LACEvaluationResult alloc] initWithValue:0 error:v5 request:v6];

  return v7;
}

+ (id)resultWithSuccess:(id)a3
{
  v3 = a3;
  v4 = [[LACEvaluationResult alloc] initWithValue:v3 error:0 request:0];

  return v4;
}

+ (id)resultWithFailure:(id)a3
{
  v3 = a3;
  v4 = [[LACEvaluationResult alloc] initWithValue:0 error:v3 request:0];

  return v4;
}

- (id)description
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rawValue];
  v7 = [v5 stringWithFormat:@"rawValue: %@", v6];
  v16[0] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"value: %@", self->_value];
  v16[1] = v8;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error: %@", self->_error];
  v16[2] = v9;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"request: %@", self->_request];
  v16[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v4;
    v8 = [(LACEvaluationResult *)self rawValue];
    if (v8 != [v7 rawValue])
    {
LABEL_20:
      v14 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v9 = [(LACEvaluationResult *)self rawValue];
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          goto LABEL_22;
        }

        v10 = [(LACEvaluationResult *)self value];
        v11 = [v7 value];
        if (v10 == v11)
        {
          goto LABEL_21;
        }

        v12 = [(LACEvaluationResult *)self value];
        v13 = [v7 value];
LABEL_19:
        v21 = v13;
        v22 = [v12 isEqual:v13];

        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v14 = 1;
        goto LABEL_23;
      }

      v15 = [(LACEvaluationResult *)self request];
      v16 = [v7 request];
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        v18 = [(LACEvaluationResult *)self request];
        v19 = [v7 request];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_22;
      }

      v10 = [(LACEvaluationResult *)self request];
      v11 = [v7 request];
      if (v10 != v11)
      {
        v12 = [(LACEvaluationResult *)self request];
        v13 = [v7 request];
        goto LABEL_19;
      }

LABEL_21:

      goto LABEL_22;
    }

    v10 = [(LACEvaluationResult *)self error];
    v11 = [v7 error];
    if (v10 == v11)
    {
      goto LABEL_21;
    }

    v12 = [(LACEvaluationResult *)self error];
    v13 = [v7 error];
    goto LABEL_19;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

@end