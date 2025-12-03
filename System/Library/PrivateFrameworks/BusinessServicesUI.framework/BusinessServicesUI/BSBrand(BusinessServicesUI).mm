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
  shim = [a3 shim];
  v5 = [v3 wrapperFor:shim];
  v6 = [_BSUIBrandPlacecardViewControllerObjcShim makeBrandPlacecardViewControllerWithBrandObjcShimOpaqueWrapper:v5];

  return v6;
}

- (id)hoursConfig
{
  v1 = MEMORY[0x277CF3690];
  shim = [self shim];
  v3 = [v1 wrapperFor:shim];
  v4 = [_BSUIBrandPlacecardViewControllerObjcShim hoursConfigurationFor:v3];

  return v4;
}

- (id)primaryBrandColor
{
  v2 = objc_alloc(MEMORY[0x277D75348]);
  _primaryBrandColorHexString = [self _primaryBrandColorHexString];
  v4 = [v2 initWithHexString:_primaryBrandColorHexString];

  return v4;
}

- (id)secondaryBrandColor
{
  v2 = objc_alloc(MEMORY[0x277D75348]);
  _secondaryBrandColorHexString = [self _secondaryBrandColorHexString];
  v4 = [v2 initWithHexString:_secondaryBrandColorHexString];

  return v4;
}

@end