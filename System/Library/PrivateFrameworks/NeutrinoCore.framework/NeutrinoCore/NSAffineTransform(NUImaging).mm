@interface NSAffineTransform(NUImaging)
+ (id)nu_transformWithCGAffineTransform:()NUImaging;
- (double)nu_CGAffineTransform;
- (id)description;
@end

@implementation NSAffineTransform(NUImaging)

- (id)description
{
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  [a1 nu_CGAffineTransform];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g %g %g %g %g %g]", v3, v4, v5];

  return v1;
}

- (double)nu_CGAffineTransform
{
  [a1 transformStruct];
  *a2 = 0u;
  a2[1] = 0u;
  result = 0.0;
  a2[2] = 0u;
  return result;
}

+ (id)nu_transformWithCGAffineTransform:()NUImaging
{
  v4 = [MEMORY[0x1E696AA98] transform];
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v7[2] = a3[2];
  [v4 setTransformStruct:v7];

  return v4;
}

@end