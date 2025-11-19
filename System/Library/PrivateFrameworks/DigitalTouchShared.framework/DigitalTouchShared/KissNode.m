@interface KissNode
+ (id)kissNodeWithColor:(id)a3 size:(CGSize)a4;
- (CGPoint)position;
- (void)setColor:(id)a3;
- (void)setShader:(id)a3;
@end

@implementation KissNode

+ (id)kissNodeWithColor:(id)a3 size:(CGSize)a4
{
  v4 = a3;
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
  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [v8 colorSpaceConvertedColor];
  v10 = [v6 spriteNodeWithColor:v9 size:{256.0, 256.0}];
  [(KissNode *)v5 setNode:v10];

  return v5;
}

- (void)setShader:(id)a3
{
  objc_storeStrong(&self->_shader, a3);
  v5 = a3;
  [(SKSpriteNode *)self->_node setShader:v5];
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  [(SKSpriteNode *)self->_node setColor:v5];
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