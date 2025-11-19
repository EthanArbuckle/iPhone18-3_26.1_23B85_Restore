@interface DMShader
+ (id)createShaderWithName:(id)a3;
@end

@implementation DMShader

+ (id)createShaderWithName:(id)a3
{
  v3 = a3;
  v4 = [(ForwardDmShader *)[DMShader alloc] initShaderWithName:v3];

  return v4;
}

@end