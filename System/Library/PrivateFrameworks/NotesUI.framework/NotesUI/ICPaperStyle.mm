@interface ICPaperStyle
+ (id)linedPaperWithPaperStyleType:(unint64_t)type;
+ (void)drawPaperStyleType:(unint64_t)type inRect:(CGRect)rect;
@end

@implementation ICPaperStyle

+ (id)linedPaperWithPaperStyleType:(unint64_t)type
{
  v3 = *MEMORY[0x1E69785A0] * 24.0 / 375.0;
  v4 = *MEMORY[0x1E69785A0] + v3 * -2.0;
  if (type <= 4)
  {
    v5 = v4 / 6.0;
    v6 = v5 * 0.5;
    if (type == 2)
    {
      v6 = v6 * 0.5;
      v7 = v6;
    }

    else
    {
      v7 = v5 * 0.5;
      if (type != 3)
      {
        v6 = *(MEMORY[0x1E695EFF8] + 8);
        v7 = *MEMORY[0x1E695EFF8];
        if (type == 4)
        {
          v6 = v5;
          v7 = v5;
        }
      }
    }

    goto LABEL_14;
  }

  if (type == 5)
  {
    v8 = 24.0;
    goto LABEL_12;
  }

  if (type == 6)
  {
    v6 = v4 * 0.0625;
    v7 = 0.0;
    goto LABEL_14;
  }

  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = *MEMORY[0x1E695EFF8];
  if (type == 7)
  {
    v8 = 12.0;
LABEL_12:
    v7 = 0.0;
    v6 = v4 / v8;
  }

LABEL_14:
  if (v7 == *MEMORY[0x1E695EFF8] && v6 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E6978478]) initWithLineSpacing:v7 horizontalInset:{v6, v3}];
  }

  return v9;
}

+ (void)drawPaperStyleType:(unint64_t)type inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [self linedPaperWithPaperStyleType:type];
  if (v8)
  {
    v28 = v8;
    CurrentContext = UIGraphicsGetCurrentContext();
    v10 = *MEMORY[0x1E69785A0];
    [v28 horizontalInset];
    v12 = width * v11 / v10;
    v27 = v12;
    [v28 lineSpacing];
    v14 = width * v13 / v10;
    [v28 lineSpacing];
    v16 = x + v12;
    v17 = x;
    v18 = width * v15 / v10;
    v30.origin.x = v17;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v19 = CGRectGetMaxX(v30) - v27;
    v31.origin.x = v17;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    MaxY = CGRectGetMaxY(v31);
    v21 = v19 + 1.0;
    if (v14 > 0.0 && v16 <= v21)
    {
      v23 = v16;
      do
      {
        CGContextMoveToPoint(CurrentContext, v23, y);
        CGContextAddLineToPoint(CurrentContext, v23, MaxY);
        v23 = v14 + v23;
      }

      while (v23 <= v21);
    }

    v24 = MaxY + 1.0;
    if (v18 > 0.0 && y <= v24)
    {
      do
      {
        CGContextMoveToPoint(CurrentContext, v16, y);
        CGContextAddLineToPoint(CurrentContext, v19, y);
        y = v18 + y;
      }

      while (y <= v24);
    }

    v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:0.33];
    CGContextSetStrokeColorWithColor(CurrentContext, [v26 CGColor]);

    CGContextSetLineWidth(CurrentContext, 1.0);
    CGContextStrokePath(CurrentContext);
    v8 = v28;
  }
}

@end