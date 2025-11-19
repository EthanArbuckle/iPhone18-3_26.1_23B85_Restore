@interface CNPostalAddress(CalLocalizedAddress)
- (CalLocation)CalLocation;
- (id)formattedAddressStrings;
@end

@implementation CNPostalAddress(CalLocalizedAddress)

- (id)formattedAddressStrings
{
  v1 = [MEMORY[0x1E695CF68] stringFromPostalAddress:a1 style:0];
  v2 = [v1 componentsSeparatedByString:@"\n"];

  return v2;
}

- (CalLocation)CalLocation
{
  v2 = objc_alloc_init(CalLocation);
  v3 = [MEMORY[0x1E695CF68] stringFromPostalAddress:a1 style:0];
  [(CalLocation *)v2 setAddress:v3];

  [(CalLocation *)v2 setType:5];

  return v2;
}

@end