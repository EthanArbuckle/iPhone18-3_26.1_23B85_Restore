@interface MUAmenityApplePayConfiguration
+ (id)configurationFromAmenityItem:(id)item;
@end

@implementation MUAmenityApplePayConfiguration

+ (id)configurationFromAmenityItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isApplePayAmenity])
  {
    v4 = objc_alloc_init(MUAmenityApplePayConfiguration);
    -[MUAmenityApplePayConfiguration setShowApplePayIcons:](v4, "setShowApplePayIcons:", [itemCopy isAmenityPresent]);
    amenityTitle = [itemCopy amenityTitle];
    v6 = [amenityTitle length];

    if (v6)
    {
      [(MUAmenityApplePayConfiguration *)v4 setApplePayRowAmenity:itemCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end