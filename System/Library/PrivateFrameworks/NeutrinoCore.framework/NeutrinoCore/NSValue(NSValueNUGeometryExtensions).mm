@interface NSValue(NSValueNUGeometryExtensions)
+ (id)nu_valueWithCGPoint:()NSValueNUGeometryExtensions;
+ (id)nu_valueWithCGRect:()NSValueNUGeometryExtensions;
+ (id)nu_valueWithPixelPoint:()NSValueNUGeometryExtensions;
- (double)nu_CGPoint;
- (double)nu_CGRect;
- (uint64_t)nu_pixelPoint;
- (uint64_t)nu_pixelRect;
@end

@implementation NSValue(NSValueNUGeometryExtensions)

- (double)nu_CGPoint
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return *v2;
}

- (double)nu_CGRect
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2 size:32];
  return *v2;
}

- (uint64_t)nu_pixelPoint
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return v2[0];
}

- (uint64_t)nu_pixelRect
{
  *x8_0 = 0u;
  x8_0[1] = 0u;
  return [self getValue:x8_0 size:32];
}

+ (id)nu_valueWithCGPoint:()NSValueNUGeometryExtensions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

+ (id)nu_valueWithPixelPoint:()NSValueNUGeometryExtensions
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{?=qq}"];

  return v4;
}

+ (id)nu_valueWithCGRect:()NSValueNUGeometryExtensions
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

@end