@interface NUEmptyPattern
- (BOOL)isEqualToPattern:(id)pattern;
- (BOOL)match:(id)match location:(unint64_t *)location count:(unint64_t *)count;
@end

@implementation NUEmptyPattern

- (BOOL)match:(id)match location:(unint64_t *)location count:(unint64_t *)count
{
  v6 = *location;
  v7 = [match count];
  if (v6 <= v7)
  {
    *count = 0;
  }

  return v6 <= v7;
}

- (BOOL)isEqualToPattern:(id)pattern
{
  patternCopy = pattern;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end