@interface NSValue(NSValueUIGeometryExtensions)
+ (id)valueWithCGSize:()NSValueUIGeometryExtensions;
@end

@implementation NSValue(NSValueUIGeometryExtensions)

+ (id)valueWithCGSize:()NSValueUIGeometryExtensions
{
  *v4 = a1;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGSize=dd}"];

  return v2;
}

@end