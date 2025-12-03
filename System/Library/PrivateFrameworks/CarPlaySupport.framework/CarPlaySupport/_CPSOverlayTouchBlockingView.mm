@interface _CPSOverlayTouchBlockingView
- (_CPSOverlayTouchBlockingView)initWithFrame:(CGRect)frame;
@end

@implementation _CPSOverlayTouchBlockingView

- (_CPSOverlayTouchBlockingView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = _CPSOverlayTouchBlockingView;
  v8 = [(_CPSOverlayTouchBlockingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    layer = [(_CPSOverlayTouchBlockingView *)v8 layer];
    [layer setHitTestsAsOpaque:1];
    MEMORY[0x277D82BD8](layer);
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

@end