@interface GTMTLTextureRenderEncoder
- (GTMTLTextureRenderEncoder)initWithDevice:(id)device;
- (void)reset;
- (void)resetCommand;
- (void)setBounds:(CGRect)bounds contentsScale:(double)scale;
- (void)setTransform:(CATransform3D *)transform;
- (void)setWaitForEvent:(id)event value:(unint64_t)value;
- (void)submitCommand;
@end

@implementation GTMTLTextureRenderEncoder

- (void)reset
{
  [(NSMutableArray *)self->_commands removeAllObjects];

  [(GTMTLTextureRenderEncoder *)self resetCommand];
}

- (void)setWaitForEvent:(id)event value:(unint64_t)value
{
  [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand setWaitEvent:event];
  currentCommand = self->_currentCommand;

  [(GTMTLTextureRenderEncoderCommand *)currentCommand setWaitEventValue:value];
}

- (void)setTransform:(CATransform3D *)transform
{
  v3 = *&transform->m33;
  v7[4] = *&transform->m31;
  v7[5] = v3;
  v4 = *&transform->m43;
  v7[6] = *&transform->m41;
  v7[7] = v4;
  v5 = *&transform->m13;
  v7[0] = *&transform->m11;
  v7[1] = v5;
  v6 = *&transform->m23;
  v7[2] = *&transform->m21;
  v7[3] = v6;
  [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand setTransform:v7];
}

- (void)setBounds:(CGRect)bounds contentsScale:(double)scale
{
  [(GTMTLTextureRenderEncoderCommand *)self->_currentCommand setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  currentCommand = self->_currentCommand;

  [(GTMTLTextureRenderEncoderCommand *)currentCommand setContentsScale:scale];
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

- (GTMTLTextureRenderEncoder)initWithDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = GTMTLTextureRenderEncoder;
  v6 = [(GTMTLTextureRenderEncoder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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