@interface _HDStaticSyncSession
- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)class;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class;
@end

@implementation _HDStaticSyncSession

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 0x20000;
  }

  return [(_HDStaticSyncSession *)self maxEncodedBytesPerChangeSetForSyncEntityClass:class];
}

- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 3145728;
  }

  else
  {
    return 0x80000;
  }
}

@end