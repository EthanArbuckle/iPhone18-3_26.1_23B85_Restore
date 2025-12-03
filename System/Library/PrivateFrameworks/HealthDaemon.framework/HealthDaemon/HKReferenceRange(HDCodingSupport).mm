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
    identifier = [v4 identifier];
    v6 = MEMORY[0x277CCD558];
    valueRange = [v4 valueRange];
    v8 = [v6 createWithCodable:valueRange];

    if (v8)
    {
      v9 = [MEMORY[0x277CCD890] referenceRangeWithIdentifier:identifier inspectableValueRange:v8];
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
  referenceRangeIdentifier = [self referenceRangeIdentifier];
  [(HDCodableReferenceRange *)v2 setIdentifier:referenceRangeIdentifier];

  valueRange = [self valueRange];
  codableRepresentationForSync = [valueRange codableRepresentationForSync];
  [(HDCodableReferenceRange *)v2 setValueRange:codableRepresentationForSync];

  return v2;
}

@end