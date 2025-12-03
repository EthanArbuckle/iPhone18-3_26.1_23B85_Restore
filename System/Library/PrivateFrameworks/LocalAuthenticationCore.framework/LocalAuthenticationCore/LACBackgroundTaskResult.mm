@interface LACBackgroundTaskResult
- (BOOL)isEqual:(id)equal;
- (LACBackgroundTaskResult)initWithValue:(id)value error:(id)error;
- (id)description;
@end

@implementation LACBackgroundTaskResult

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  value = [(LACBackgroundTaskResult *)self value];
  v7 = [v5 stringWithFormat:@"value: %@", value];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  error = [(LACBackgroundTaskResult *)self error];
  v10 = [v8 stringWithFormat:@"error: %@", error];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (LACBackgroundTaskResult)initWithValue:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = LACBackgroundTaskResult;
  v9 = [(LACBackgroundTaskResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    value = [v5 value];
    value2 = [(LACBackgroundTaskResult *)self value];
    v8 = value2;
    if (value == value2)
    {
    }

    else
    {
      value3 = [v5 value];
      value4 = [(LACBackgroundTaskResult *)self value];
      v11 = [value3 isEqual:value4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    error = [v5 error];
    error2 = [(LACBackgroundTaskResult *)self error];
    if (error == error2)
    {
      v12 = 1;
    }

    else
    {
      error3 = [v5 error];
      error4 = [(LACBackgroundTaskResult *)self error];
      v12 = [error3 isEqual:error4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12 & 1;
}

@end