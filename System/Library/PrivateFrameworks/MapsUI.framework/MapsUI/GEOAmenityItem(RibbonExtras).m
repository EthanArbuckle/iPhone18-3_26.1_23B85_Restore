@interface GEOAmenityItem(RibbonExtras)
- (__CFString)resolvedRibbonSymbolName;
@end

@implementation GEOAmenityItem(RibbonExtras)

- (__CFString)resolvedRibbonSymbolName
{
  if ([a1 isApplePayAmenity])
  {
    v2 = @"applePay";
    v3 = @"applePay";
  }

  else
  {
    v2 = [a1 symbolImageName];
  }

  return v2;
}

@end