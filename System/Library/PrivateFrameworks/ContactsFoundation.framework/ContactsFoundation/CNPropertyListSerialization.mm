@interface CNPropertyListSerialization
+ (id)dataWithObject:(id)object;
+ (id)dataWithObject:(id)object error:(id *)error;
+ (id)mutableObjectWithData:(id)data;
+ (id)objectWithData:(id)data;
+ (id)objectWithData:(id)data options:(unint64_t)options error:(id *)error;
@end

@implementation CNPropertyListSerialization

+ (id)dataWithObject:(id)object
{
  v7 = 0;
  v3 = [self dataWithObject:object error:&v7];
  v4 = v7;
  v5 = [CNResult resultWithValue:v3 orError:v4];

  return v5;
}

+ (id)dataWithObject:(id)object error:(id *)error
{
  if (object)
  {
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:object format:200 options:0 error:error];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)objectWithData:(id)data
{
  v7 = 0;
  v3 = [self objectWithData:data error:&v7];
  v4 = v7;
  v5 = [CNResult resultWithValue:v3 orError:v4];

  return v5;
}

+ (id)mutableObjectWithData:(id)data
{
  v7 = 0;
  v3 = [self mutableObjectWithData:data error:&v7];
  v4 = v7;
  v5 = [CNResult resultWithValue:v3 orError:v4];

  return v5;
}

+ (id)objectWithData:(id)data options:(unint64_t)options error:(id *)error
{
  dataCopy = data;
  v8 = dataCopy;
  if (!dataCopy || ![dataCopy length])
  {
    v9 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:options format:0 error:&v14];
  v10 = v14;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CNPropertyListSerialization objectWithData:v10 options:? error:?];
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else if (!error)
    {
      goto LABEL_9;
    }

    v12 = v10;
    *error = v10;
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