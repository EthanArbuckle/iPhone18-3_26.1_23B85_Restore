@interface NUEmptyPattern
- (BOOL)isEqualToPattern:(id)a3;
- (BOOL)match:(id)a3 location:(unint64_t *)a4 count:(unint64_t *)a5;
@end

@implementation NUEmptyPattern

- (BOOL)match:(id)a3 location:(unint64_t *)a4 count:(unint64_t *)a5
{
  v6 = *a4;
  v7 = [a3 count];
  if (v6 <= v7)
  {
    *a5 = 0;
  }

  return v6 <= v7;
}

- (BOOL)isEqualToPattern:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end