@interface NSString(LineEndingConversion)
- (id)stringByConvertingLineEndingsTo:()LineEndingConversion;
@end

@implementation NSString(LineEndingConversion)

- (id)stringByConvertingLineEndingsTo:()LineEndingConversion
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 convertLineEndingsTo:v4];

  return v5;
}

@end