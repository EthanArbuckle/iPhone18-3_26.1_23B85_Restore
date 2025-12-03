@interface _BSUIBrandPlacecardViewControllerObjcShim
+ (id)hoursConfigurationFor:(id)for;
+ (id)makeBrandPlacecardViewControllerWithBrandObjcShimOpaqueWrapper:(id)wrapper;
- (_BSUIBrandPlacecardViewControllerObjcShim)init;
@end

@implementation _BSUIBrandPlacecardViewControllerObjcShim

+ (id)makeBrandPlacecardViewControllerWithBrandObjcShimOpaqueWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v4 = _s18BusinessServicesUI36BrandPlacecardViewControllerObjcShimC04makedefG005brandhI13OpaqueWrapperSo06UIViewG0CSo08BSOpaqueM0C_tFZ_0(wrapperCopy);

  return v4;
}

+ (id)hoursConfigurationFor:(id)for
{
  forCopy = for;
  v4 = _s18BusinessServicesUI36BrandPlacecardViewControllerObjcShimC18hoursConfiguration3foryXlSgSo15BSOpaqueWrapperC_tFZ_0(forCopy);

  return v4;
}

- (_BSUIBrandPlacecardViewControllerObjcShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BrandPlacecardViewControllerObjcShim();
  return [(_BSUIBrandPlacecardViewControllerObjcShim *)&v3 init];
}

@end