@interface NSManagedObjectModel(HomeKitDaemon)
- (uint64_t)hmd_isImmutable;
- (uint64_t)hmd_makeImmutable;
@end

@implementation NSManagedObjectModel(HomeKitDaemon)

- (uint64_t)hmd_makeImmutable
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [self _setIsEditable:0];
  }

  return result;
}

- (uint64_t)hmd_isImmutable
{
  if (objc_opt_respondsToSelector())
  {
    return [self isEditable] ^ 1;
  }

  else
  {
    return 0;
  }
}

@end