@interface DMShader
+ (id)createShaderWithName:(id)name;
@end

@implementation DMShader

+ (id)createShaderWithName:(id)name
{
  nameCopy = name;
  v4 = [(ForwardDmShader *)[DMShader alloc] initShaderWithName:nameCopy];

  return v4;
}

@end