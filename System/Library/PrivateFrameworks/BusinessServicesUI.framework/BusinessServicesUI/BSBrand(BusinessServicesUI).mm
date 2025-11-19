@interface BSBrand(BusinessServicesUI)
+ (id)makeBrandPlacecardForBrand:()BusinessServicesUI;
- (id)hoursConfig;
- (id)primaryBrandColor;
- (id)secondaryBrandColor;
@end

@implementation BSBrand(BusinessServicesUI)

+ (id)makeBrandPlacecardForBrand:()BusinessServicesUI
{
  v3 = MEMORY[0x277CF3690];
  v4 = [a3 shim];
  v5 = [v3 wrapperFor:v4];
  v6 = [_BSUIBrandPlacecardViewControllerObjcShim makeBrandPlacecardViewControllerWithBrandObjcShimOpaqueWrapper:v5];

  return v6;
}

- (id)hoursConfig
{
  v1 = MEMORY[0x277CF3690];
  v2 = [a1 shim];
  v3 = [v1 wrapperFor:v2];
  v4 = [_BSUIBrandPlacecardViewControllerObjcShim hoursConfigurationFor:v3];

  return v4;
}

- (id)primaryBrandColor
{
  v2 = objc_alloc(MEMORY[0x277D75348]);
  v3 = [a1 _primaryBrandColorHexString];
  v4 = [v2 initWithHexString:v3];

  return v4;
}

- (id)secondaryBrandColor
{
  v2 = objc_alloc(MEMORY[0x277D75348]);
  v3 = [a1 _secondaryBrandColorHexString];
  v4 = [v2 initWithHexString:v3];

  return v4;
}

@end