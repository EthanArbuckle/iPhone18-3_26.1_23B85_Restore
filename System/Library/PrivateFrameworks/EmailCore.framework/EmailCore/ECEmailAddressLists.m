@interface ECEmailAddressLists
+ (id)addressListFromHeaderValue:(id)a3;
@end

@implementation ECEmailAddressLists

+ (id)addressListFromHeaderValue:(id)a3
{
  v8 = 0;
  v3 = [ECEmailAddressParser parseString:a3 emailAddressList:&v8];
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