@interface NSNumber(CATCasting)
+ (id)cat_numberWithObject:()CATCasting;
@end

@implementation NSNumber(CATCasting)

+ (id)cat_numberWithObject:()CATCasting
{
  v3 = a3;
  if (cat_numberWithObject__onceToken[0] != -1)
  {
    +[NSNumber(CATCasting) cat_numberWithObject:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v3 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v10 = 0;
    v11 = [v6 length];
    v9 = 0;
    [cat_numberWithObject__formatter getObjectValue:&v9 forString:v6 range:&v10 error:0];
    v4 = v9;
    v7 = v11;
    if (v7 == [v6 length])
    {

      goto LABEL_10;
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

@end