@interface FBSSceneHostHandle
+ (FBSSceneHostHandle)handleWithAuditToken:(id)token;
+ (id)localHandle;
- (id)description;
@end

@implementation FBSSceneHostHandle

+ (id)localHandle
{
  if (localHandle_onceToken != -1)
  {
    +[FBSSceneHostHandle localHandle];
  }

  v3 = localHandle_local;

  return v3;
}

uint64_t __33__FBSSceneHostHandle_localHandle__block_invoke()
{
  v0 = objc_alloc_init(FBSSceneHostHandle);
  v1 = localHandle_local;
  localHandle_local = v0;

  *(localHandle_local + 8) = 1;
  v2 = [off_1E76BC998 tokenForCurrentProcess];
  v3 = *(localHandle_local + 16);
  *(localHandle_local + 16) = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (FBSSceneHostHandle)handleWithAuditToken:(id)token
{
  tokenCopy = token;
  v6 = [tokenCopy pid];
  if (v6 == getpid())
  {
    localHandle = [self localHandle];
  }

  else
  {
    localHandle = objc_alloc_init(FBSSceneHostHandle);
    objc_storeStrong(&localHandle->_auditToken, token);
  }

  return localHandle;
}

- (id)description
{
  local = self->_local;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (local)
  {
    [v4 stringWithFormat:@"<%@: %p; local>", v6, self, v10];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: %p; pid %u>", v6, self, -[BSAuditToken pid](self->_auditToken, "pid")];
  }
  v8 = ;

  return v8;
}

@end