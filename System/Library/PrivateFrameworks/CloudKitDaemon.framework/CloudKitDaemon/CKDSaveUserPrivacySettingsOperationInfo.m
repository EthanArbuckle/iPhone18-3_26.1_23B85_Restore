@interface CKDSaveUserPrivacySettingsOperationInfo
- (CKDSaveUserPrivacySettingsOperationInfo)init;
@end

@implementation CKDSaveUserPrivacySettingsOperationInfo

- (CKDSaveUserPrivacySettingsOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKDSaveUserPrivacySettingsOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_discoverable = 0;
  }

  return result;
}

@end