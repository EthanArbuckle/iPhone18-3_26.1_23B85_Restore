@interface ResamplerShader
+ (id)createShaderWithName:(id)a3;
@end

@implementation ResamplerShader

+ (id)createShaderWithName:(id)a3
{
  v3 = a3;
  v4 = [(ForwardDmShader *)[ResamplerShader alloc] initShaderWithName:v3];

  return v4;
}

@end