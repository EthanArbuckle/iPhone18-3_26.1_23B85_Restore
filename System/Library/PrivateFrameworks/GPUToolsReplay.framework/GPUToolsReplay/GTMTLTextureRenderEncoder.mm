@interface GTMTLTextureRenderEncoder
- (GTMTLTextureRenderEncoder)initWithDevice:(id)a3;
- (void)reset;
- (void)resetCommand;
- (void)setBounds:(CGRect)a3 contentsScale:(double)a4;
- (void)setTransform:(CATransform3D *)a3;
- (void)setWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)submitCommand;
@end

@implementation GTMTLTextureRenderEncoder

- (void)reset
{
  [(NSMutableArray *)self->_commands removeAllObjects];

  [(GTMTLTextureRenderEncoder *)self resetCommand];
}

- (void)setWaitForEvent:(id)a3 value:(unint64_t)a4
{
  [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand setWaitEvent:a3];
  currentCommand = self->_currentCommand;

  [(GTMTLTextureRenderEncoderCommand *)currentCommand setWaitEventValue:a4];
}

- (void)setTransform:(CATransform3D *)a3
{
  v3 = *&a3->m33;
  v7[4] = *&a3->m31;
  v7[5] = v3;
  v4 = *&a3->m43;
  v7[6] = *&a3->m41;
  v7[7] = v4;
  v5 = *&a3->m13;
  v7[0] = *&a3->m11;
  v7[1] = v5;
  v6 = *&a3->m23;
  v7[2] = *&a3->m21;
  v7[3] = v6;
  [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand setTransform:v7];
}

- (void)setBounds:(CGRect)a3 contentsScale:(double)a4
{
  [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  currentCommand = self->_currentCommand;

  [(GTMTLTextureRenderEncoderCommand *)currentCommand setContentsScale:a4];
}

- (void)resetCommand
{
  v3 = [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand copy];
  currentCommand = self->_currentCommand;
  self->_currentCommand = v3;

  v5 = self->_currentCommand;

  [(GTMTLTextureRenderEncoderCommand *)v5 setTexture:0];
}

- (void)submitCommand
{
  [(NSMutableArray *)self->_commands addObject:self->_currentCommand];

  [(GTMTLTextureRenderEncoder *)self resetCommand];
}

- (GTMTLTextureRenderEncoder)initWithDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = GTMTLTextureRenderEncoder;
  v6 = [(GTMTLTextureRenderEncoder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    commands = v7->_commands;
    v7->_commands = v8;

    v10 = objc_alloc_init(GTMTLTextureRenderEncoderCommand);
    currentCommand = v7->_currentCommand;
    v7->_currentCommand = v10;
  }

  return v7;
}

@end