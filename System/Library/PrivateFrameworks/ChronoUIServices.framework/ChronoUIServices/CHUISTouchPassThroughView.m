@interface CHUISTouchPassThroughView
- (CHUISTouchPassThroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CHUISTouchPassThroughView

- (CHUISTouchPassThroughView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHUISTouchPassThroughView;
  v3 = [(CHUISTouchPassThroughView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(CHUISTouchPassThroughView *)v3 setBackgroundColor:v4];

    [(CHUISTouchPassThroughView *)v3 setOpaque:0];
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CHUISTouchPassThroughView;
  v5 = [(CHUISTouchPassThroughView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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