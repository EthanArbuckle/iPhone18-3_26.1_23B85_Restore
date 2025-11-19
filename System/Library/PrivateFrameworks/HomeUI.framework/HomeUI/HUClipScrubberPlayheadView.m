@interface HUClipScrubberPlayheadView
- (HUClipScrubberPlayheadView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setEditing:(BOOL)a3;
@end

@implementation HUClipScrubberPlayheadView

- (HUClipScrubberPlayheadView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUClipScrubberPlayheadView;
  v3 = [(HUClipScrubberPlayheadView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUClipScrubberPlayheadView *)v3 setOpaque:0];
    [(HUClipScrubberPlayheadView *)v4 setUserInteractionEnabled:0];
    [(HUClipScrubberPlayheadView *)v4 setAutoresizingMask:5];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v17 = 0.0;
  v18 = 0.0;
  v16 = 0.0;
  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  [v6 getRed:&v18 green:&v17 blue:&v16 alpha:0];

  v7 = [MEMORY[0x277D75348] colorWithRed:v18 green:v17 blue:v16 alpha:0.4];
  [v7 setFill];
  if ([(HUClipScrubberPlayheadView *)self drawsUpperContent])
  {
    [v7 setStroke];
    v8 = [MEMORY[0x277D75348] colorWithRed:v18 green:v17 blue:v16 alpha:0.08];
    [v7 setFill];
    [v8 setStroke];
    v9 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 8.0, width, 6.0}];
    [v9 fill];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(CurrentContext, 2.0);
    v19.origin.x = 0.0;
    v19.origin.y = 8.0;
    v19.size.height = 6.0;
    v19.size.width = width;
    v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:3 byRoundingCorners:CGRectGetMidX(v19) + -2.0 cornerRadii:{0.0, 4.0, height, 4.0, 4.0}];
    v12 = [MEMORY[0x277D75348] systemOrangeColor];
    [v12 setFill];

    [v11 fill];
  }

  else
  {
    v8 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 14.0, width, 47.0}];
    [v8 fill];
    v20.origin.x = 0.0;
    v20.origin.y = 14.0;
    v20.size.width = width;
    v20.size.height = 47.0;
    v13 = CGRectGetMidX(v20) + -2.0;
    if ([(HUClipScrubberPlayheadView *)self editing])
    {
      v14 = 12.0;
    }

    else
    {
      v14 = 14.0;
    }

    v9 = [MEMORY[0x277D75208] bezierPathWithRect:{v13, v14, 4.0, height}];
    v15 = [MEMORY[0x277D75348] systemOrangeColor];
    [v15 setFill];

    [v9 fill];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(HUClipScrubberPlayheadView *)self setNeedsDisplay];
  }
}

@end