@interface NSJSONSerialization(BRAdditions)
+ (id)_jsonifyObject:()BRAdditions;
+ (id)jsonStringFromDictionary:()BRAdditions options:error:;
@end

@implementation NSJSONSerialization(BRAdditions)

+ (id)_jsonifyObject:()BRAdditions
{
  v4 = a3;
  if (_jsonifyObject__onceToken != -1)
  {
    +[NSJSONSerialization(BRAdditions) _jsonifyObject:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [_jsonifyObject__dateFormatter stringFromDate:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_new();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__NSJSONSerialization_BRAdditions___jsonifyObject___block_invoke_2;
    v14[3] = &unk_1E7A16AC8;
    v6 = v7;
    v15 = v6;
    v16 = a1;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];
    v8 = v15;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = v4;
      goto LABEL_5;
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__NSJSONSerialization_BRAdditions___jsonifyObject___block_invoke_3;
    v11[3] = &unk_1E7A16AF0;
    v6 = v9;
    v12 = v6;
    v13 = a1;
    [v4 enumerateObjectsUsingBlock:v11];
    v8 = v12;
  }

LABEL_11:

  return v6;
}

+ (id)jsonStringFromDictionary:()BRAdditions options:error:
{
  v7 = [a1 _jsonifyObject:?];
  v14 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:a4 error:&v14];
  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  }

  else if (a5)
  {
    v12 = v9;
    v11 = 0;
    *a5 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end