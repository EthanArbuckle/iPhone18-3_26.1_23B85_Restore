@interface _HKGraphViewOverlayView
- (_HKGraphViewOverlayView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateRendererSize:(CGSize)size;
- (void)drawContentUsingBlock:(id)block;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _HKGraphViewOverlayView

- (_HKGraphViewOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _HKGraphViewOverlayView;
  v3 = [(_HKGraphViewOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_updateRendererSize:(CGSize)size
{
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{size.width, size.height}];
  [(_HKGraphViewOverlayView *)self setImageRenderer:v4];
}

- (void)drawContentUsingBlock:(id)block
{
  blockCopy = block;
  imageRenderer = [(_HKGraphViewOverlayView *)self imageRenderer];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __49___HKGraphViewOverlayView_drawContentUsingBlock___block_invoke;
  v11 = &unk_1E81B6638;
  selfCopy = self;
  v13 = blockCopy;
  v6 = blockCopy;
  v7 = [imageRenderer imageWithActions:&v8];

  [(_HKGraphViewOverlayView *)self setImage:v7, v8, v9, v10, v11, selfCopy];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_HKGraphViewOverlayView *)self _updateRendererSize:frame.size.width, frame.size.height];
  v8.receiver = self;
  v8.super_class = _HKGraphViewOverlayView;
  [(_HKGraphViewOverlayView *)&v8 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_HKGraphViewOverlayView *)self _updateRendererSize:bounds.size.width, bounds.size.height];
  v8.receiver = self;
  v8.super_class = _HKGraphViewOverlayView;
  [(_HKGraphViewOverlayView *)&v8 setBounds:x, y, width, height];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _HKGraphViewOverlayView;
  v5 = [(_HKGraphViewOverlayView *)&v10 hitTest:event withEvent:test.x, test.y];
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