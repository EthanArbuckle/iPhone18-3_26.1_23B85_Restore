@interface CKRecord(SyncState)
- (id)mt_secretValue;
- (uint64_t)mt_isSynchronized;
- (void)mt_setSecretValue:()SyncState;
- (void)mt_setSynchronized:()SyncState;
@end

@implementation CKRecord(SyncState)

- (uint64_t)mt_isSynchronized
{
  v1 = objc_getAssociatedObject(a1, sel_mt_isSynchronized);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)mt_setSynchronized:()SyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, sel_mt_isSynchronized, v2, 3);
}

- (id)mt_secretValue
{
  v2 = objc_getAssociatedObject(a1, sel_mt_secretValue);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 encryptedValuesByKey];
    v4 = [v5 objectForKeyedSubscript:@"secretValue"];
  }

  return v4;
}

- (void)mt_setSecretValue:()SyncState
{
  value = a3;
  v4 = [a1 encryptedValuesByKey];
  [v4 setObject:value forKeyedSubscript:@"secretValue"];

  objc_setAssociatedObject(a1, sel_mt_secretValue, value, 3);
}

@end