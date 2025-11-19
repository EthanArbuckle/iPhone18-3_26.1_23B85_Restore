@interface CKDatabaseOperation
- (void)fc_canBypassEncryptionRequirement;
- (void)setFc_canBypassEncryptionRequirement:(void *)a1;
@end

@implementation CKDatabaseOperation

- (void)fc_canBypassEncryptionRequirement
{
  if (result)
  {
    v1 = objc_getAssociatedObject(result, FCShouldBypassEncryptionKey);
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

- (void)setFc_canBypassEncryptionRequirement:(void *)a1
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    objc_setAssociatedObject(a1, FCShouldBypassEncryptionKey, v3, 0x301);
  }
}

@end