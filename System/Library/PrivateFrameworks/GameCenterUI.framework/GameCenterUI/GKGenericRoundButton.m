@interface GKGenericRoundButton
- (void)drawRect:(CGRect)a3;
@end

@implementation GKGenericRoundButton

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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