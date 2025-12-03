@interface NSDate(CRKAdditions)
+ (id)crk_sharedDateFormatter;
- (BOOL)crk_isInPast;
- (id)crk_JSONStringValue;
@end

@implementation NSDate(CRKAdditions)

- (BOOL)crk_isInPast
{
  v2 = objc_opt_new();
  v3 = [self earlierDate:v2];
  v4 = v3 == self;

  return v4;
}

- (id)crk_JSONStringValue
{
  crk_sharedDateFormatter = [objc_opt_class() crk_sharedDateFormatter];
  v3 = [crk_sharedDateFormatter stringFromDate:self];

  return v3;
}

+ (id)crk_sharedDateFormatter
{
  if (crk_sharedDateFormatter_onceToken != -1)
  {
    +[NSDate(CRKAdditions) crk_sharedDateFormatter];
  }

  v1 = crk_sharedDateFormatter_formatter;

  return v1;
}

@end