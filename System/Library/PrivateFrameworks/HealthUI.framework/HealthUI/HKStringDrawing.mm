@interface HKStringDrawing
+ (id)stringDrawingWithText:(id)a3 inRect:(CGRect)a4 withAttributes:(id)a5;
+ (void)drawStrings:(id)a3 outlineWidth:(double)a4 outlineColor:(id)a5 context:(CGContext *)a6;
- (CGRect)rect;
- (HKStringDrawing)initWithText:(id)a3 inRect:(CGRect)a4 withAttributes:(id)a5;
- (void)draw;
@end

@implementation HKStringDrawing

+ (id)stringDrawingWithText:(id)a3 inRect:(CGRect)a4 withAttributes:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  v11 = a3;
  v12 = [[HKStringDrawing alloc] initWithText:v11 inRect:v10 withAttributes:x, y, width, height];

  return v12;
}

- (HKStringDrawing)initWithText:(id)a3 inRect:(CGRect)a4 withAttributes:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = HKStringDrawing;
  v13 = [(HKStringDrawing *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(HKStringDrawing *)v13 setText:v11];
    [(HKStringDrawing *)v14 setAttributes:v12];
    v14->_rect.origin.x = x;
    v14->_rect.origin.y = y;
    v14->_rect.size.width = width;
    v14->_rect.size.height = height;
    v15 = HKUIFloorToScreenScale(y);
    v14->_rect.origin.y = v15 + HKUIHalfPixel();
  }

  return v14;
}

- (void)draw
{
  v12 = [(HKStringDrawing *)self text];
  [(HKStringDrawing *)self rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HKStringDrawing *)self attributes];
  [v12 drawInRect:v11 withAttributes:{v4, v6, v8, v10}];
}

+ (void)drawStrings:(id)a3 outlineWidth:(double)a4 outlineColor:(id)a5 context:(CGContext *)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (a4 <= 0.0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v45;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v45 != v32)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v44 + 1) + 8 * i) draw];
        }

        v31 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v31);
    }
  }

  else
  {
    CGContextSaveGState(a6);
    v11 = v10;
    v12 = [MEMORY[0x1E69DC888] clearColor];
    v13 = [v11 isEqual:v12];

    v35 = v10;
    if (v13)
    {
      v14 = [MEMORY[0x1E69DC888] blackColor];

      CGContextSetBlendMode(a6, kCGBlendModeClear);
      v11 = v14;
    }

    CGContextSetFillColorWithColor(a6, [v11 CGColor]);
    CGContextSetStrokeColorWithColor(a6, [v11 CGColor]);
    CGContextSetLineWidth(a6, fabs(a4));
    CGContextSetLineCap(a6, kCGLineCapRound);
    CGContextSetLineJoin(a6, kCGLineJoinRound);
    c = a6;
    CGContextSetTextDrawingMode(a6, kCGTextFillStroke);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      v19 = *MEMORY[0x1E69DB650];
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v40 + 1) + 8 * j);
          v22 = [v21 attributes];
          v23 = [v22 mutableCopy];

          [v23 setValue:v11 forKey:v19];
          v24 = [v21 text];
          [v21 rect];
          [v24 drawInRect:v23 withAttributes:?];
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v17);
    }

    CGContextRestoreGState(c);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v15;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
    v10 = v35;
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v36 + 1) + 8 * k) draw];
        }

        v27 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v27);
    }
  }
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end