@interface NSDate(CATCasting)
+ (id)cat_dateWithObject:()CATCasting;
@end

@implementation NSDate(CATCasting)

+ (id)cat_dateWithObject:()CATCasting
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "integerValue")}];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = [MEMORY[0x277CBEAA8] cat_dateWithInternetTimeString:v3];
  if (v5)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x277CCABB0] cat_numberWithObject:v3];
  if (v7)
  {
    v8 = v7;
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v7, "integerValue")}];
  }

  else
  {
LABEL_13:
    v5 = 0;
  }

LABEL_6:

  return v5;
}

@end