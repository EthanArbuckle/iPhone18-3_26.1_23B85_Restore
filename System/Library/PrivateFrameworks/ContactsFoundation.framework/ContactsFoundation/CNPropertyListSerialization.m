@interface CNPropertyListSerialization
+ (id)dataWithObject:(id)a3;
+ (id)dataWithObject:(id)a3 error:(id *)a4;
+ (id)mutableObjectWithData:(id)a3;
+ (id)objectWithData:(id)a3;
+ (id)objectWithData:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation CNPropertyListSerialization

+ (id)dataWithObject:(id)a3
{
  v7 = 0;
  v3 = [a1 dataWithObject:a3 error:&v7];
  v4 = v7;
  v5 = [CNResult resultWithValue:v3 orError:v4];

  return v5;
}

+ (id)dataWithObject:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)objectWithData:(id)a3
{
  v7 = 0;
  v3 = [a1 objectWithData:a3 error:&v7];
  v4 = v7;
  v5 = [CNResult resultWithValue:v3 orError:v4];

  return v5;
}

+ (id)mutableObjectWithData:(id)a3
{
  v7 = 0;
  v3 = [a1 mutableObjectWithData:a3 error:&v7];
  v4 = v7;
  v5 = [CNResult resultWithValue:v3 orError:v4];

  return v5;
}

+ (id)objectWithData:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (!v7 || ![v7 length])
  {
    v9 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:a4 format:0 error:&v14];
  v10 = v14;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CNPropertyListSerialization objectWithData:v10 options:? error:?];
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else if (!a5)
    {
      goto LABEL_9;
    }

    v12 = v10;
    *a5 = v10;
    goto LABEL_9;
  }

  v11 = v9;
LABEL_9:

LABEL_10:

  return v9;
}

+ (void)objectWithData:(uint64_t)a1 options:error:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error deserializing object: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end