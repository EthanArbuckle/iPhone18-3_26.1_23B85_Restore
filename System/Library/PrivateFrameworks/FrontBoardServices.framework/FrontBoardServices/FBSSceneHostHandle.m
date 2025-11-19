@interface FBSSceneHostHandle
+ (FBSSceneHostHandle)handleWithAuditToken:(id)a3;
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

+ (FBSSceneHostHandle)handleWithAuditToken:(id)a3
{
  v5 = a3;
  v6 = [v5 pid];
  if (v6 == getpid())
  {
    v7 = [a1 localHandle];
  }

  else
  {
    v7 = objc_alloc_init(FBSSceneHostHandle);
    objc_storeStrong(&v7->_auditToken, a3);
  }

  return v7;
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