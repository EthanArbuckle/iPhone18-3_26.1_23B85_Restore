@interface NSNumber(TSUAdditions)
- (BOOL)tsu_isAlmostEqual:()TSUAdditions;
@end

@implementation NSNumber(TSUAdditions)

- (BOOL)tsu_isAlmostEqual:()TSUAdditions
{
  [a1 doubleValue];
  v5 = v4;
  [a3 doubleValue];
  return vabdd_f64(v5, v6) < 0.01;
}

@end