@interface HKQuantityDatum(ClientDataCollection)
+ (id)quantityDatumWithHDQuantityDatum:()ClientDataCollection;
@end

@implementation HKQuantityDatum(ClientDataCollection)

+ (id)quantityDatumWithHDQuantityDatum:()ClientDataCollection
{
  v3 = MEMORY[0x277CCD7F0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 datumIdentifier];
  v7 = [v4 dateInterval];
  v8 = [v4 quantity];
  v9 = [v4 resumeContext];

  v10 = [v5 initWithIdentifier:v6 dateInterval:v7 quantity:v8 resumeContext:v9];

  return v10;
}

@end