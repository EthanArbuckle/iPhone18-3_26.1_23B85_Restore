@interface ResamplerShader
+ (id)createShaderWithName:(id)name;
@end

@implementation ResamplerShader

+ (id)createShaderWithName:(id)name
{
  nameCopy = name;
  v4 = [(ForwardDmShader *)[ResamplerShader alloc] initShaderWithName:nameCopy];

  return v4;
}

@end