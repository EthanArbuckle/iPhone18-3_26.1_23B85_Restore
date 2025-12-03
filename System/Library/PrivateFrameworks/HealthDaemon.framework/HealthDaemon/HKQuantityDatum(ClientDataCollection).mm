@interface HKQuantityDatum(ClientDataCollection)
+ (id)quantityDatumWithHDQuantityDatum:()ClientDataCollection;
@end

@implementation HKQuantityDatum(ClientDataCollection)

+ (id)quantityDatumWithHDQuantityDatum:()ClientDataCollection
{
  v3 = MEMORY[0x277CCD7F0];
  v4 = a3;
  v5 = [v3 alloc];
  datumIdentifier = [v4 datumIdentifier];
  dateInterval = [v4 dateInterval];
  quantity = [v4 quantity];
  resumeContext = [v4 resumeContext];

  v10 = [v5 initWithIdentifier:datumIdentifier dateInterval:dateInterval quantity:quantity resumeContext:resumeContext];

  return v10;
}

@end