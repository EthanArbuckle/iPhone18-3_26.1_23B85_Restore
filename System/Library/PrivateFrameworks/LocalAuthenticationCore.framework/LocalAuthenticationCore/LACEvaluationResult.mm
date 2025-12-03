@interface LACEvaluationResult
+ (id)resultWithFailure:(id)failure;
+ (id)resultWithNext:(id)next;
+ (id)resultWithRetry:(id)retry error:(id)error;
+ (id)resultWithSuccess:(id)success;
- (BOOL)isEqual:(id)equal;
- (LACEvaluationResult)initWithValue:(id)value error:(id)error request:(id)request;
- (id)description;
@end

@implementation LACEvaluationResult

- (LACEvaluationResult)initWithValue:(id)value error:(id)error request:(id)request
{
  valueCopy = value;
  errorCopy = error;
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = LACEvaluationResult;
  v12 = [(LACEvaluationResult *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    objc_storeStrong(&v13->_error, error);
    objc_storeStrong(&v13->_request, request);
    if (valueCopy)
    {
      v14 = 3;
LABEL_13:
      v13->_rawValue = v14;
      goto LABEL_14;
    }

    if (requestCopy)
    {
      v15 = errorCopy == 0;
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

    if (!errorCopy)
    {
      v14 = 1;
    }

    if (errorCopy | requestCopy)
    {
      goto LABEL_13;
    }
  }

LABEL_14:

  return v13;
}

+ (id)resultWithNext:(id)next
{
  nextCopy = next;
  v4 = [[LACEvaluationResult alloc] initWithValue:0 error:0 request:nextCopy];

  return v4;
}

+ (id)resultWithRetry:(id)retry error:(id)error
{
  errorCopy = error;
  retryCopy = retry;
  v7 = [[LACEvaluationResult alloc] initWithValue:0 error:errorCopy request:retryCopy];

  return v7;
}

+ (id)resultWithSuccess:(id)success
{
  successCopy = success;
  v4 = [[LACEvaluationResult alloc] initWithValue:successCopy error:0 request:0];

  return v4;
}

+ (id)resultWithFailure:(id)failure
{
  failureCopy = failure;
  v4 = [[LACEvaluationResult alloc] initWithValue:0 error:failureCopy request:0];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = equalCopy;
    rawValue = [(LACEvaluationResult *)self rawValue];
    if (rawValue != [v7 rawValue])
    {
LABEL_20:
      v14 = 0;
LABEL_23:

      goto LABEL_24;
    }

    rawValue2 = [(LACEvaluationResult *)self rawValue];
    if (rawValue2 > 1)
    {
      if (rawValue2 != 2)
      {
        if (rawValue2 != 3)
        {
          goto LABEL_22;
        }

        value = [(LACEvaluationResult *)self value];
        value2 = [v7 value];
        if (value == value2)
        {
          goto LABEL_21;
        }

        value3 = [(LACEvaluationResult *)self value];
        value4 = [v7 value];
LABEL_19:
        v21 = value4;
        v22 = [value3 isEqual:value4];

        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v14 = 1;
        goto LABEL_23;
      }

      request = [(LACEvaluationResult *)self request];
      request2 = [v7 request];
      v17 = request2;
      if (request == request2)
      {
      }

      else
      {
        request3 = [(LACEvaluationResult *)self request];
        request4 = [v7 request];
        v20 = [request3 isEqual:request4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }
    }

    else if (rawValue2)
    {
      if (rawValue2 != 1)
      {
        goto LABEL_22;
      }

      value = [(LACEvaluationResult *)self request];
      value2 = [v7 request];
      if (value != value2)
      {
        value3 = [(LACEvaluationResult *)self request];
        value4 = [v7 request];
        goto LABEL_19;
      }

LABEL_21:

      goto LABEL_22;
    }

    value = [(LACEvaluationResult *)self error];
    value2 = [v7 error];
    if (value == value2)
    {
      goto LABEL_21;
    }

    value3 = [(LACEvaluationResult *)self error];
    value4 = [v7 error];
    goto LABEL_19;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

@end