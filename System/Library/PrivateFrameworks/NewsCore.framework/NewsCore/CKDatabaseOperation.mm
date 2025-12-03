@interface CKDatabaseOperation
- (void)fc_canBypassEncryptionRequirement;
- (void)setFc_canBypassEncryptionRequirement:(void *)requirement;
@end

@implementation CKDatabaseOperation

- (void)fc_canBypassEncryptionRequirement
{
  if (result)
  {
    v1 = objc_getAssociatedObject(result, FCShouldBypassEncryptionKey);
    bOOLValue = [v1 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (void)setFc_canBypassEncryptionRequirement:(void *)requirement
{
  if (requirement)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    objc_setAssociatedObject(requirement, FCShouldBypassEncryptionKey, v3, 0x301);
  }
}

@end