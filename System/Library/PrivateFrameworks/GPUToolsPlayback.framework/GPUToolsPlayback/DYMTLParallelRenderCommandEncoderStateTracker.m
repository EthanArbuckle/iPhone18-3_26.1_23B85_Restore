@interface DYMTLParallelRenderCommandEncoderStateTracker
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (DYMTLParallelRenderCommandEncoderStateTracker)initWithDevice:(id)a3 descriptor:(id)a4;
- (DYMTLParallelRenderCommandEncoderStateTracker)initWithEncoder:(id)a3 descriptor:(id)a4;
@end

@implementation DYMTLParallelRenderCommandEncoderStateTracker

- (DYMTLParallelRenderCommandEncoderStateTracker)initWithEncoder:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
    v9 = [(DYMTLParallelRenderCommandEncoderStateTracker *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_renderEncoder, a3);
      v11 = [v7 device];
      [(DYMTLParallelRenderCommandEncoderStateTracker *)v10 _setDefaultsWithDescriptor:v8 device:v11];

      DYMTLSetAssociatedObject(v10, 0, v8);
    }

    self = v10;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (DYMTLParallelRenderCommandEncoderStateTracker)initWithDevice:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
    v8 = [(DYMTLParallelRenderCommandEncoderStateTracker *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(DYMTLParallelRenderCommandEncoderStateTracker *)v8 _setDefaultsWithDescriptor:v7 device:v6];
      DYMTLSetAssociatedObject(v9, 0, v7);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (([(MTLParallelRenderCommandEncoder *)self->_renderEncoder conformsToProtocol:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DYMTLParallelRenderCommandEncoderStateTracker;
    v5 = [(DYMTLParallelRenderCommandEncoderStateTracker *)&v7 conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
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