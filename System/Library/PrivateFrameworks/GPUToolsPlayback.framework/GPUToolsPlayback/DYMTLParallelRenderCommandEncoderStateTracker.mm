@interface DYMTLParallelRenderCommandEncoderStateTracker
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (DYMTLParallelRenderCommandEncoderStateTracker)initWithDevice:(id)device descriptor:(id)descriptor;
- (DYMTLParallelRenderCommandEncoderStateTracker)initWithEncoder:(id)encoder descriptor:(id)descriptor;
@end

@implementation DYMTLParallelRenderCommandEncoderStateTracker

- (DYMTLParallelRenderCommandEncoderStateTracker)initWithEncoder:(id)encoder descriptor:(id)descriptor
{
  encoderCopy = encoder;
  descriptorCopy = descriptor;
  if (encoderCopy)
  {
    v14.receiver = self;
    v14.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
    v9 = [(DYMTLParallelRenderCommandEncoderStateTracker *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_renderEncoder, encoder);
      device = [encoderCopy device];
      [(DYMTLParallelRenderCommandEncoderStateTracker *)v10 _setDefaultsWithDescriptor:descriptorCopy device:device];

      DYMTLSetAssociatedObject(v10, 0, descriptorCopy);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DYMTLParallelRenderCommandEncoderStateTracker)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  if (deviceCopy)
  {
    v12.receiver = self;
    v12.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
    v8 = [(DYMTLParallelRenderCommandEncoderStateTracker *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(DYMTLParallelRenderCommandEncoderStateTracker *)v8 _setDefaultsWithDescriptor:descriptorCopy device:deviceCopy];
      DYMTLSetAssociatedObject(v9, 0, descriptorCopy);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([(MTLParallelRenderCommandEncoder *)self->_renderEncoder conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
    v5 = [(DYMTLParallelRenderCommandEncoderStateTracker *)&v7 conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
  if ([(DYMTLParallelRenderCommandEncoderStateTracker *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    renderEncoder = self->_renderEncoder;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

@end