@interface NSError
+ (id)gc_ConfigurationError:(void *)a3 userInfo:;
+ (id)gc_deviceDBError:(void *)a3 userInfo:;
+ (uint64_t)gc_modelError:(uint64_t)a3 userInfo:;
- (id)gc_dbFailingPath;
@end

@implementation NSError

+ (id)gc_deviceDBError:(void *)a3 userInfo:
{
  v4 = a3;
  objc_opt_self();
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GCDeviceDBError" code:a2 userInfo:v4];

  return v5;
}

+ (id)gc_ConfigurationError:(void *)a3 userInfo:
{
  v4 = a3;
  objc_opt_self();
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GCConfigurationError" code:a2 userInfo:v4];

  return v5;
}

+ (uint64_t)gc_modelError:(uint64_t)a3 userInfo:
{
  objc_opt_self();
  v5 = MEMORY[0x1E696ABC0];

  return [v5 errorWithDomain:@"GCModelErrorDomain" code:a2 userInfo:a3];
}

- (id)gc_dbFailingPath
{
  if (a1)
  {
    v1 = [a1 userInfo];
    v2 = [v1 gc_objectForKey:@"GCDeviceDBErrorFailingPath" ofClass:objc_opt_class() error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end