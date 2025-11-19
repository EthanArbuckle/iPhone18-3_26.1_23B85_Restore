@interface HKReferenceRange(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableReferenceRange)codableRepresentationForSync;
@end

@implementation HKReferenceRange(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 identifier];
    v6 = MEMORY[0x277CCD558];
    v7 = [v4 valueRange];
    v8 = [v6 createWithCodable:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCD890] referenceRangeWithIdentifier:v5 inspectableValueRange:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HDCodableReferenceRange)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableReferenceRange);
  v3 = [a1 referenceRangeIdentifier];
  [(HDCodableReferenceRange *)v2 setIdentifier:v3];

  v4 = [a1 valueRange];
  v5 = [v4 codableRepresentationForSync];
  [(HDCodableReferenceRange *)v2 setValueRange:v5];

  return v2;
}

@end