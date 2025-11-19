@interface HKSemanticDate(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableSemanticDate)codableRepresentationForSync;
@end

@implementation HKSemanticDate(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 hasKeyPath] && objc_msgSend(v4, "hasDate"))
    {
      [v4 date];
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      if (v5)
      {
        v6 = MEMORY[0x277CCD900];
        v7 = [v4 keyPath];
        v8 = [v6 semanticDateWithKeyPath:v7 date:v5];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HDCodableSemanticDate)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableSemanticDate);
  v3 = [a1 keyPath];
  [(HDCodableSemanticDate *)v2 setKeyPath:v3];

  v4 = [a1 date];
  [v4 timeIntervalSinceReferenceDate];
  [(HDCodableSemanticDate *)v2 setDate:?];

  return v2;
}

@end