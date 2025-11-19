@interface _HDStaticSyncSession
- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)a3;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)a3;
@end

@implementation _HDStaticSyncSession

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 0x20000;
  }

  return [(_HDStaticSyncSession *)self maxEncodedBytesPerChangeSetForSyncEntityClass:a3];
}

- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 3145728;
  }

  else
  {
    return 0x80000;
  }
}

@end