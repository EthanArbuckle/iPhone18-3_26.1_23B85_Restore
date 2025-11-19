@interface LACBackgroundTaskResult
- (BOOL)isEqual:(id)a3;
- (LACBackgroundTaskResult)initWithValue:(id)a3 error:(id)a4;
- (id)description;
@end

@implementation LACBackgroundTaskResult

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LACBackgroundTaskResult *)self value];
  v7 = [v5 stringWithFormat:@"value: %@", v6];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACBackgroundTaskResult *)self error];
  v10 = [v8 stringWithFormat:@"error: %@", v9];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (LACBackgroundTaskResult)initWithValue:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACBackgroundTaskResult;
  v9 = [(LACBackgroundTaskResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 value];
    v7 = [(LACBackgroundTaskResult *)self value];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 value];
      v10 = [(LACBackgroundTaskResult *)self value];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [v5 error];
    v14 = [(LACBackgroundTaskResult *)self error];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [v5 error];
      v16 = [(LACBackgroundTaskResult *)self error];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12 & 1;
}

@end