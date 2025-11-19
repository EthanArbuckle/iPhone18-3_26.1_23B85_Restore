@interface _HKGraphViewOverlayView
- (_HKGraphViewOverlayView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateRendererSize:(CGSize)a3;
- (void)drawContentUsingBlock:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _HKGraphViewOverlayView

- (_HKGraphViewOverlayView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _HKGraphViewOverlayView;
  v3 = [(_HKGraphViewOverlayView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_HKGraphViewOverlayView *)v3 setOpaque:0];
    [(_HKGraphViewOverlayView *)v4 setContentMode:1];
    [(_HKGraphViewOverlayView *)v4 _updateRendererSize:1.0, 1.0];
    [(_HKGraphViewOverlayView *)v4 setUserInteractionEnabled:1];
  }

  return v4;
}

- (void)_updateRendererSize:(CGSize)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a3.width, a3.height}];
  [(_HKGraphViewOverlayView *)self setImageRenderer:v4];
}

- (void)drawContentUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(_HKGraphViewOverlayView *)self imageRenderer];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __49___HKGraphViewOverlayView_drawContentUsingBlock___block_invoke;
  v11 = &unk_1E81B6638;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 imageWithActions:&v8];

  [(_HKGraphViewOverlayView *)self setImage:v7, v8, v9, v10, v11, v12];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_HKGraphViewOverlayView *)self _updateRendererSize:a3.size.width, a3.size.height];
  v8.receiver = self;
  v8.super_class = _HKGraphViewOverlayView;
  [(_HKGraphViewOverlayView *)&v8 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_HKGraphViewOverlayView *)self _updateRendererSize:a3.size.width, a3.size.height];
  v8.receiver = self;
  v8.super_class = _HKGraphViewOverlayView;
  [(_HKGraphViewOverlayView *)&v8 setBounds:x, y, width, height];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _HKGraphViewOverlayView;
  v5 = [(_HKGraphViewOverlayView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end