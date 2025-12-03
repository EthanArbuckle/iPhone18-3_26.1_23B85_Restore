@interface HKStringDrawing
+ (id)stringDrawingWithText:(id)text inRect:(CGRect)rect withAttributes:(id)attributes;
+ (void)drawStrings:(id)strings outlineWidth:(double)width outlineColor:(id)color context:(CGContext *)context;
- (CGRect)rect;
- (HKStringDrawing)initWithText:(id)text inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)draw;
@end

@implementation HKStringDrawing

+ (id)stringDrawingWithText:(id)text inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  textCopy = text;
  height = [[HKStringDrawing alloc] initWithText:textCopy inRect:attributesCopy withAttributes:x, y, width, height];

  return height;
}

- (HKStringDrawing)initWithText:(id)text inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = HKStringDrawing;
  v13 = [(HKStringDrawing *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(HKStringDrawing *)v13 setText:textCopy];
    [(HKStringDrawing *)v14 setAttributes:attributesCopy];
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
  text = [(HKStringDrawing *)self text];
  [(HKStringDrawing *)self rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  attributes = [(HKStringDrawing *)self attributes];
  [text drawInRect:attributes withAttributes:{v4, v6, v8, v10}];
}

+ (void)drawStrings:(id)strings outlineWidth:(double)width outlineColor:(id)color context:(CGContext *)context
{
  v51 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  colorCopy = color;
  if (width <= 0.0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = [stringsCopy countByEnumeratingWithState:&v44 objects:v50 count:16];
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
            objc_enumerationMutation(stringsCopy);
          }

          [*(*(&v44 + 1) + 8 * i) draw];
        }

        v31 = [stringsCopy countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v31);
    }
  }

  else
  {
    CGContextSaveGState(context);
    v11 = colorCopy;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v13 = [v11 isEqual:clearColor];

    v35 = colorCopy;
    if (v13)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];

      CGContextSetBlendMode(context, kCGBlendModeClear);
      v11 = blackColor;
    }

    CGContextSetFillColorWithColor(context, [v11 CGColor]);
    CGContextSetStrokeColorWithColor(context, [v11 CGColor]);
    CGContextSetLineWidth(context, fabs(width));
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    c = context;
    CGContextSetTextDrawingMode(context, kCGTextFillStroke);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = stringsCopy;
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
          attributes = [v21 attributes];
          v23 = [attributes mutableCopy];

          [v23 setValue:v11 forKey:v19];
          text = [v21 text];
          [v21 rect];
          [text drawInRect:v23 withAttributes:?];
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
    colorCopy = v35;
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