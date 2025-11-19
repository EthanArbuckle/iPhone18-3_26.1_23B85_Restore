@interface MUAmenityApplePayConfiguration
+ (id)configurationFromAmenityItem:(id)a3;
@end

@implementation MUAmenityApplePayConfiguration

+ (id)configurationFromAmenityItem:(id)a3
{
  v3 = a3;
  if ([v3 isApplePayAmenity])
  {
    v4 = objc_alloc_init(MUAmenityApplePayConfiguration);
    -[MUAmenityApplePayConfiguration setShowApplePayIcons:](v4, "setShowApplePayIcons:", [v3 isAmenityPresent]);
    v5 = [v3 amenityTitle];
    v6 = [v5 length];

    if (v6)
    {
      [(MUAmenityApplePayConfiguration *)v4 setApplePayRowAmenity:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end