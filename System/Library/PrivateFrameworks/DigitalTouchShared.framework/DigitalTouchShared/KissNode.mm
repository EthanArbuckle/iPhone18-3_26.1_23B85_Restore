@interface KissNode
+ (id)kissNodeWithColor:(id)color size:(CGSize)size;
- (CGPoint)position;
- (void)setColor:(id)color;
- (void)setShader:(id)shader;
@end

@implementation KissNode

+ (id)kissNodeWithColor:(id)color size:(CGSize)size
{
  colorCopy = color;
  v5 = objc_alloc_init(KissNode);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v6 = getSKSpriteNodeClass_softClass_2;
  v16 = getSKSpriteNodeClass_softClass_2;
  if (!getSKSpriteNodeClass_softClass_2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getSKSpriteNodeClass_block_invoke_2;
    v12[3] = &unk_278F7A048;
    v12[4] = &v13;
    __getSKSpriteNodeClass_block_invoke_2(v12);
    v6 = v14[3];
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);
  clearColor = [MEMORY[0x277D75348] clearColor];
  colorSpaceConvertedColor = [clearColor colorSpaceConvertedColor];
  v10 = [v6 spriteNodeWithColor:colorSpaceConvertedColor size:{256.0, 256.0}];
  [(KissNode *)v5 setNode:v10];

  return v5;
}

- (void)setShader:(id)shader
{
  objc_storeStrong(&self->_shader, shader);
  shaderCopy = shader;
  [(SKSpriteNode *)self->_node setShader:shaderCopy];
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  [(SKSpriteNode *)self->_node setColor:colorCopy];
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end