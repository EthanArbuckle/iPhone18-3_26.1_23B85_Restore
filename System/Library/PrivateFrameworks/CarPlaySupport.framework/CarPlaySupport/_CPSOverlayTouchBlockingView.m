@interface _CPSOverlayTouchBlockingView
- (_CPSOverlayTouchBlockingView)initWithFrame:(CGRect)a3;
@end

@implementation _CPSOverlayTouchBlockingView

- (_CPSOverlayTouchBlockingView)initWithFrame:(CGRect)a3
{
  v9 = a3;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = _CPSOverlayTouchBlockingView;
  v8 = [(_CPSOverlayTouchBlockingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v5 = [(_CPSOverlayTouchBlockingView *)v8 layer];
    [v5 setHitTestsAsOpaque:1];
    MEMORY[0x277D82BD8](v5);
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

@end