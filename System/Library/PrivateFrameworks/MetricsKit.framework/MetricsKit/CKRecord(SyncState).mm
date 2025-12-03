@interface CKRecord(SyncState)
- (id)mt_secretValue;
- (uint64_t)mt_isSynchronized;
- (void)mt_setSecretValue:()SyncState;
- (void)mt_setSynchronized:()SyncState;
@end

@implementation CKRecord(SyncState)

- (uint64_t)mt_isSynchronized
{
  v1 = objc_getAssociatedObject(self, sel_mt_isSynchronized);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)mt_setSynchronized:()SyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, sel_mt_isSynchronized, v2, 3);
}

- (id)mt_secretValue
{
  v2 = objc_getAssociatedObject(self, sel_mt_secretValue);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    encryptedValuesByKey = [self encryptedValuesByKey];
    v4 = [encryptedValuesByKey objectForKeyedSubscript:@"secretValue"];
  }

  return v4;
}

- (void)mt_setSecretValue:()SyncState
{
  value = a3;
  encryptedValuesByKey = [self encryptedValuesByKey];
  [encryptedValuesByKey setObject:value forKeyedSubscript:@"secretValue"];

  objc_setAssociatedObject(self, sel_mt_secretValue, value, 3);
}

@end