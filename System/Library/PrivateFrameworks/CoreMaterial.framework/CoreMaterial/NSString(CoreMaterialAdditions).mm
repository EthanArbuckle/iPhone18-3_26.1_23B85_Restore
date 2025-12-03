@interface NSString(CoreMaterialAdditions)
+ (__CFString)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
- (uint64_t)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
@end

@implementation NSString(CoreMaterialAdditions)

+ (__CFString)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  if ([a3 isEqualToString:@"blurInputQuality"])
  {
    return @"default";
  }

  else
  {
    return 0;
  }
}

- (uint64_t)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = [objc_opt_class() mt_identityValueForMaterialSettingsProperty:v4];

  v6 = [self isEqual:v5];
  return v6;
}

@end