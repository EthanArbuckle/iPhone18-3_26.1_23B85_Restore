@interface CKRecord
- (BOOL)mt_isSynchronized;
- (NSString)mt_secretValue;
- (void)mt_setSecretValue:(id)a3;
@end

@implementation CKRecord

- (BOOL)mt_isSynchronized
{
  v2 = objc_getAssociatedObject(self, "mt_isSynchronized");
  v3 = [v2 BOOLValue];

  return v3;
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
    v6 = [(CKRecord *)self encryptedValuesByKey];
    v5 = [v6 objectForKeyedSubscript:@"secretValue"];
  }

  return v5;
}

- (void)mt_setSecretValue:(id)a3
{
  value = a3;
  v4 = [(CKRecord *)self encryptedValuesByKey];
  [v4 setObject:value forKeyedSubscript:@"secretValue"];

  objc_setAssociatedObject(self, "mt_secretValue", value, 3);
}

@end