@interface NSNumberFormatter(EmailFoundationAdditions)
+ (id)ef_formatInteger:()EmailFoundationAdditions withGrouping:;
+ (id)ef_formatUnsignedInteger:()EmailFoundationAdditions withGrouping:;
- (BOOL)ef_isCurrencySymbolAtStart;
@end

@implementation NSNumberFormatter(EmailFoundationAdditions)

+ (id)ef_formatInteger:()EmailFoundationAdditions withGrouping:
{
  if (a4)
  {
    _sharedIntegerWithGroupingFormatter();
  }

  else
  {
    _sharedIntegerFormatter();
  }
  v5 = ;
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

+ (id)ef_formatUnsignedInteger:()EmailFoundationAdditions withGrouping:
{
  if (a4)
  {
    _sharedIntegerWithGroupingFormatter();
  }

  else
  {
    _sharedIntegerFormatter();
  }
  v5 = ;
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a3];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

- (BOOL)ef_isCurrencySymbolAtStart
{
  positiveFormat = [self positiveFormat];
  v2 = [positiveFormat rangeOfString:@"¤"];

  return v2 == 0;
}

@end