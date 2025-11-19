@interface _DKKnowledgeSyncStorageAssertion
+ (uint64_t)assertionCount;
- (_DKKnowledgeSyncStorageAssertion)init;
- (void)dealloc;
@end

@implementation _DKKnowledgeSyncStorageAssertion

+ (uint64_t)assertionCount
{
  v0 = objc_opt_self();
  objc_sync_enter(v0);
  v1 = _DKKnowledgeSyncStorageAssertionCount;
  objc_sync_exit(v0);

  return v1;
}

- (_DKKnowledgeSyncStorageAssertion)init
{
  v5.receiver = self;
  v5.super_class = _DKKnowledgeSyncStorageAssertion;
  v2 = [(_DKKnowledgeSyncStorageAssertion *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    ++_DKKnowledgeSyncStorageAssertionCount;
    objc_sync_exit(v3);
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (_DKKnowledgeSyncStorageAssertionCount)
  {
    --_DKKnowledgeSyncStorageAssertionCount;
  }

  objc_sync_exit(v3);

  v4.receiver = self;
  v4.super_class = _DKKnowledgeSyncStorageAssertion;
  [(_DKKnowledgeSyncStorageAssertion *)&v4 dealloc];
}

@end