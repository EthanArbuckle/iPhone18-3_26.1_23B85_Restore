@interface CHUISTouchPassThroughView
- (CHUISTouchPassThroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CHUISTouchPassThroughView

- (CHUISTouchPassThroughView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHUISTouchPassThroughView;
  v3 = [(CHUISTouchPassThroughView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CHUISTouchPassThroughView *)v3 setBackgroundColor:clearColor];

    [(CHUISTouchPassThroughView *)v3 setOpaque:0];
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CHUISTouchPassThroughView;
  v5 = [(CHUISTouchPassThroughView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end