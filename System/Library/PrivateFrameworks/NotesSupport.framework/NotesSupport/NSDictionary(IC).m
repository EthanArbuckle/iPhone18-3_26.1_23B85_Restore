@interface NSDictionary(IC)
- (id)ic_md5;
- (id)ic_objectForNonNilKey:()IC;
- (id)ic_prettyDescriptionWithTabLevel:()IC;
@end

@implementation NSDictionary(IC)

- (id)ic_prettyDescriptionWithTabLevel:()IC
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:@"{\n"];
  if (a3)
  {
    v6 = &stru_1F4FCDA88;
    v7 = a3;
    do
    {
      v8 = [(__CFString *)v6 stringByAppendingString:@"\t"];

      v6 = v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = &stru_1F4FCDA88;
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"\t"];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __53__NSDictionary_IC__ic_prettyDescriptionWithTabLevel___block_invoke;
  v18 = &unk_1E8485648;
  v10 = v5;
  v19 = v10;
  v20 = v9;
  v21 = a3;
  v11 = v9;
  [a1 enumerateKeysAndObjectsUsingBlock:&v15];
  [v10 appendFormat:@"%@}", v8, v15, v16, v17, v18];
  v12 = v20;
  v13 = v10;

  return v10;
}

- (id)ic_objectForNonNilKey:()IC
{
  if (a3)
  {
    v4 = [a1 objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ic_md5
{
  v1 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:0 error:0];
  v2 = [v1 ic_md5];

  return v2;
}

@end