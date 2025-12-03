@interface CKTypingView
- (CKTypingView)initWithFrame:(CGRect)frame;
- (void)setIndicatorLayer:(id)layer;
@end

@implementation CKTypingView

- (CKTypingView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CKTypingView;
  v3 = [(CKTypingView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CKBaseLayer);
    baseLayer = v3->_baseLayer;
    v3->_baseLayer = v4;

    v6 = v3->_baseLayer;
    layer = [(CKTypingView *)v3 layer];
    [layer bounds];
    [(CKBaseLayer *)v6 setFrame:?];

    layer2 = [(CKTypingView *)v3 layer];
    [layer2 addSublayer:v3->_baseLayer];
  }

  return v3;
}

- (void)setIndicatorLayer:(id)layer
{
  layerCopy = layer;
  indicatorLayer = self->_indicatorLayer;
  if (indicatorLayer != layerCopy)
  {
    v10 = layerCopy;
    [(CKTypingIndicatorLayerProtocol *)indicatorLayer removeFromSuperlayer];
    objc_storeStrong(&self->_indicatorLayer, layer);
    v7 = self->_indicatorLayer;
    layer = [(CKTypingView *)self layer];
    [layer bounds];
    [(CKTypingIndicatorLayerProtocol *)v7 setFrame:?];

    baseLayer = [(CKTypingView *)self baseLayer];
    [baseLayer addSublayer:v10];

    layerCopy = v10;
  }
}

@end