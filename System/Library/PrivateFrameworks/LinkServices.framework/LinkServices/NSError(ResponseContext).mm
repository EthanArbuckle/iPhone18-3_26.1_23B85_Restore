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
    userInfo = [self userInfo];
    v6 = [userInfo mutableCopy];
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
    domain = [self domain];
    selfCopy = [v11 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v10}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)responseContext
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"responseContext"];

  return v2;
}

@end