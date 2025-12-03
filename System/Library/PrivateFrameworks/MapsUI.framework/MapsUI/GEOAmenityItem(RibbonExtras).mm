@interface GEOAmenityItem(RibbonExtras)
- (__CFString)resolvedRibbonSymbolName;
@end

@implementation GEOAmenityItem(RibbonExtras)

- (__CFString)resolvedRibbonSymbolName
{
  if ([self isApplePayAmenity])
  {
    symbolImageName = @"applePay";
    v3 = @"applePay";
  }

  else
  {
    symbolImageName = [self symbolImageName];
  }

  return symbolImageName;
}

@end