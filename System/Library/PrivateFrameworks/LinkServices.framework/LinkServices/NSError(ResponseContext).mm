@interface NSError(ResponseContext)
- (id)errorWithResponseContext:()ResponseContext;
- (id)responseContext;
@end

@implementation NSError(ResponseContext)

- (id)errorWithResponseContext:()ResponseContext
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 userInfo];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = v8;

    [v10 setObject:v4 forKeyedSubscript:@"responseContext"];
    v11 = MEMORY[0x1E696ABC0];
    v12 = [a1 domain];
    v9 = [v11 errorWithDomain:v12 code:objc_msgSend(a1 userInfo:{"code"), v10}];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (id)responseContext
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"responseContext"];

  return v2;
}

@end