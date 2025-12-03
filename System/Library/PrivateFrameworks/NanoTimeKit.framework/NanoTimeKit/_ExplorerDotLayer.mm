@interface _ExplorerDotLayer
- (_ExplorerDotLayer)init;
- (void)layoutSublayers;
@end

@implementation _ExplorerDotLayer

- (_ExplorerDotLayer)init
{
  v12.receiver = self;
  v12.super_class = _ExplorerDotLayer;
  v2 = [(_ExplorerDotLayer *)&v12 init];
  if (v2)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    noServicePillLayer = v2->_noServicePillLayer;
    v2->_noServicePillLayer = layer;

    v5 = v2->_noServicePillLayer;
    CATransform3DMakeRotation(&v11, 1.57079633, 1.0, 0.0, 0.0);
    [(CALayer *)v5 setTransform:&v11];
    [(_ExplorerDotLayer *)v2 addSublayer:v2->_noServicePillLayer];
    layer2 = [MEMORY[0x277CD9ED0] layer];
    connectivityDotBackingLayer = v2->_connectivityDotBackingLayer;
    v2->_connectivityDotBackingLayer = layer2;

    [(_ExplorerDotLayer *)v2 addSublayer:v2->_connectivityDotBackingLayer];
    layer3 = [MEMORY[0x277CD9ED0] layer];
    connectivityDotLayer = v2->_connectivityDotLayer;
    v2->_connectivityDotLayer = layer3;

    [(_ExplorerDotLayer *)v2 addSublayer:v2->_connectivityDotLayer];
  }

  return v2;
}

- (void)layoutSublayers
{
  [(_ExplorerDotLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_connectivityDotBackingLayer setBounds:?];
  [(CALayer *)self->_connectivityDotLayer setBounds:v4, v6, v8, v10];
  [(CALayer *)self->_noServicePillLayer setPosition:v8 * 0.5, v10 * 0.5];
  [(CALayer *)self->_connectivityDotBackingLayer setPosition:v8 * 0.5, v10 * 0.5];
  connectivityDotLayer = self->_connectivityDotLayer;

  [(CALayer *)connectivityDotLayer setPosition:v8 * 0.5, v10 * 0.5];
}

@end