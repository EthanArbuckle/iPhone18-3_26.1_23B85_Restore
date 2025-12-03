@interface ECEmailAddressLists
+ (id)addressListFromHeaderValue:(id)value;
@end

@implementation ECEmailAddressLists

+ (id)addressListFromHeaderValue:(id)value
{
  v8 = 0;
  v3 = [ECEmailAddressParser parseString:value emailAddressList:&v8];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

@end