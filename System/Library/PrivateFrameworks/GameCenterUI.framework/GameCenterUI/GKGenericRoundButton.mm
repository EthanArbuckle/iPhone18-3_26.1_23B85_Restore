@interface GKGenericRoundButton
- (void)drawRect:(CGRect)rect;
@end

@implementation GKGenericRoundButton

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (([(GKGenericRoundButton *)self isHighlighted]& 1) != 0)
  {
    [(GKGenericRoundButton *)self highlightedFillColor];
  }

  else
  {
    [(GKGenericRoundButton *)self fillColor];
  }
  v8 = ;
  if (v8)
  {
    v9 = (width - height) * 0.5;
    if (width <= height)
    {
      v9 = 0.0;
    }

    v10 = (height - width) * 0.5;
    if (width < height)
    {
      v11 = width;
    }

    else
    {
      v10 = 0.0;
      v11 = height;
    }

    v12 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v9, v10, v11, v11}];
    [v8 setFill];
    [v12 fill];
  }

  v13.receiver = self;
  v13.super_class = GKGenericRoundButton;
  [(GKGenericRoundButton *)&v13 drawRect:x, y, width, height];
}

@end