@interface NSError
+ (id)gc_ConfigurationError:(void *)error userInfo:;
+ (id)gc_deviceDBError:(void *)error userInfo:;
+ (uint64_t)gc_modelError:(uint64_t)error userInfo:;
- (id)gc_dbFailingPath;
@end

@implementation NSError

+ (id)gc_deviceDBError:(void *)error userInfo:
{
  errorCopy = error;
  objc_opt_self();
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GCDeviceDBError" code:a2 userInfo:errorCopy];

  return v5;
}

+ (id)gc_ConfigurationError:(void *)error userInfo:
{
  errorCopy = error;
  objc_opt_self();
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GCConfigurationError" code:a2 userInfo:errorCopy];

  return v5;
}

+ (uint64_t)gc_modelError:(uint64_t)error userInfo:
{
  objc_opt_self();
  v5 = MEMORY[0x1E696ABC0];

  return [v5 errorWithDomain:@"GCModelErrorDomain" code:a2 userInfo:error];
}

- (id)gc_dbFailingPath
{
  if (self)
  {
    userInfo = [self userInfo];
    v2 = [userInfo gc_objectForKey:@"GCDeviceDBErrorFailingPath" ofClass:objc_opt_class() error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end