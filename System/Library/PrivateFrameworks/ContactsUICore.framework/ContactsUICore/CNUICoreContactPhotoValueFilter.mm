@interface CNUICoreContactPhotoValueFilter
- (NSString)description;
- (id)contactByFilteringOutPropertyValueOfContact:(id)contact;
- (void)filterPropertyValuesFromContact:(id)contact;
@end

@implementation CNUICoreContactPhotoValueFilter

- (id)contactByFilteringOutPropertyValueOfContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_20 != -1)
    {
      [CNUICoreContactPhotoValueFilter contactByFilteringOutPropertyValueOfContact:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_20;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_20, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactAggregateValueFilter contactByFilteringOutPropertyValueOfContact:v5];
    }
  }

  v6 = [contactCopy mutableCopy];
  [(CNUICoreContactPhotoValueFilter *)self filterPropertyValuesFromContact:v6];

  return v6;
}

- (void)filterPropertyValuesFromContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setImageData:0];
  [contactCopy setThumbnailImageData:0];
  [contactCopy setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [contactCopy setImageType:0];
  [contactCopy setImageHash:0];
  [contactCopy setExternalImageURI:0];
  [contactCopy setFullscreenImageData:0];
}

- (NSString)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end