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
        keyPath = [v4 keyPath];
        v8 = [v6 semanticDateWithKeyPath:keyPath date:v5];
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
  keyPath = [self keyPath];
  [(HDCodableSemanticDate *)v2 setKeyPath:keyPath];

  date = [self date];
  [date timeIntervalSinceReferenceDate];
  [(HDCodableSemanticDate *)v2 setDate:?];

  return v2;
}

@end