@interface CKRecord
- (BOOL)mt_isSynchronized;
- (NSString)mt_secretValue;
- (void)mt_setSecretValue:(id)value;
@end

@implementation CKRecord

- (BOOL)mt_isSynchronized
{
  v2 = objc_getAssociatedObject(self, "mt_isSynchronized");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)mt_secretValue
{
  v3 = objc_getAssociatedObject(self, "mt_secretValue");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
    v5 = [encryptedValuesByKey objectForKeyedSubscript:@"secretValue"];
  }

  return v5;
}

- (void)mt_setSecretValue:(id)value
{
  value = value;
  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  [encryptedValuesByKey setObject:value forKeyedSubscript:@"secretValue"];

  objc_setAssociatedObject(self, "mt_secretValue", value, 3);
}

@end