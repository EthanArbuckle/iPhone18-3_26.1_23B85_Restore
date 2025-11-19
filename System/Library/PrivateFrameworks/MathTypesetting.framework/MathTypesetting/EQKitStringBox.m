@interface EQKitStringBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_appendEntryToSpec:(void *)a3 run:(__CTRun *)a4 glyphRange:(id)a5 offset:(CGPoint)a6;
- (CGRect)erasableBounds;
- (EQKitStringBox)initWithAttributedString:(id)a3 cgColor:(CGColor *)a4;
- (__CTLine)line;
- (double)positionOfCharacterAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)p_ensureDimensionsAreValid;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitStringBox

- (EQKitStringBox)initWithAttributedString:(id)a3 cgColor:(CGColor *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = EQKitStringBox;
  v7 = [(EQKitStringBox *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    attributedString = v7->_attributedString;
    v7->_attributedString = v8;

    if (a4)
    {
      v10 = CFRetain(a4);
    }

    else
    {
      v10 = 0;
    }

    v7->_cgColor = v10;
  }

  return v7;
}

- (void)dealloc
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  CGColorRelease(self->_cgColor);
  v4.receiver = self;
  v4.super_class = EQKitStringBox;
  [(EQKitStringBox *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitStringBox *)self attributedString];
  v6 = [v4 initWithAttributedString:v5 cgColor:self->_cgColor];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if ([(EQKitStringBox *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(EQKitStringBox *)self attributedString];
      v7 = [(EQKitStringBox *)v5 attributedString];
      v8 = v7;
      if (v6 == v7)
      {
        goto LABEL_7;
      }

      v9 = 0;
      if (!v6 || !v7)
      {
        goto LABEL_11;
      }

      if ([v6 isEqualToAttributedString:v7])
      {
LABEL_7:
        v9 = CGColorEqualToColor([(EQKitStringBox *)self color], [(EQKitStringBox *)v5 color]);
      }

      else
      {
        v9 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (void)p_ensureDimensionsAreValid
{
  if (!self->_dimensionsValid)
  {
    [(EQKitStringBox *)self p_cacheDimensions];
    self->_dimensionsValid = 1;
  }
}

- (CGRect)erasableBounds
{
  [(EQKitStringBox *)self p_ensureDimensionsAreValid];
  x = self->_erasableBounds.origin.x;
  y = self->_erasableBounds.origin.y;
  width = self->_erasableBounds.size.width;
  height = self->_erasableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__CTLine)line
{
  result = self->_line;
  if (!result)
  {
    v4 = [(EQKitStringBox *)self attributedString];
    self->_line = CTLineCreateWithAttributedString(v4);

    return self->_line;
  }

  return result;
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = EQKitStringBox;
  [(EQKitBox *)&v12 renderIntoContext:v7 offset:x, y];
  v8 = [v7 cgContext];
  if (v8)
  {
    v9 = [(EQKitStringBox *)self line];
    if (v9)
    {
      if (self->_cgColor)
      {
        CGContextSaveGState(v8);
        CGContextSetFillColorWithColor(v8, self->_cgColor);
      }

      memset(&v11, 0, sizeof(v11));
      CGContextGetTextMatrix(&v11, v8);
      CGAffineTransformMakeScale(&v10, 1.0, -1.0);
      CGContextSetTextMatrix(v8, &v10);
      CGContextSetTextPosition(v8, x, y);
      CTLineDraw(v9, v8);
      v10 = v11;
      CGContextSetTextMatrix(v8, &v10);
      if (self->_cgColor)
      {
        CGContextRestoreGState(v8);
      }
    }
  }
}

- (double)positionOfCharacterAtIndex:(unint64_t)a3
{
  v5 = [(EQKitStringBox *)self line];
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5;
  v7 = [(EQKitStringBox *)self attributedString];
  v8 = [v7 length];

  if (v8 < a3)
  {
    return 0.0;
  }

  return CTLineGetOffsetForStringIndex(v6, a3, 0);
}

- (BOOL)p_appendEntryToSpec:(void *)a3 run:(__CTRun *)a4 glyphRange:(id)a5 offset:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  var1 = a5.var1;
  var0 = a5.var0;
  buffer = 0;
  CTRunGetGlyphs(a4, a5, &buffer);
  Attributes = CTRunGetAttributes(a4);
  v13 = Attributes;
  if (Attributes)
  {
    Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
    v18.location = var0;
    v18.length = var1;
    CTRunGetPositions(a4, v18, &v16);
    v19.x = x + v16.x;
    v19.y = y + v16.y;
    EQKit::OpticalKern::Spec::appendEntry(a3, v19, Value, buffer);
  }

  return v13 != 0;
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  GlyphRuns = CTLineGetGlyphRuns([(EQKitStringBox *)self line]);
  Count = CFArrayGetCount(GlyphRuns);
  if (!Count)
  {
    return 0;
  }

  v10 = *(a3 + 6);
  if (v10 == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, Count - 1);
    GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
    v15 = GlyphCount - 1;
    if (GlyphCount >= 1)
    {
      v12 = self;
      v13 = a3;
      v14 = ValueAtIndex;
      goto LABEL_8;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

  v11 = CFArrayGetValueAtIndex(GlyphRuns, 0);
  if (CTRunGetGlyphCount(v11) < 1)
  {
    return 0;
  }

  v12 = self;
  v13 = a3;
  v14 = v11;
  v15 = 0;
LABEL_8:

  return [(EQKitStringBox *)v12 p_appendEntryToSpec:v13 run:v14 glyphRange:v15 offset:1, x, y];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitStringBox *)self height];
  v6 = v5;
  [(EQKitStringBox *)self depth];
  v8 = v7;
  [(EQKitStringBox *)self width];
  v10 = v9;
  v11 = [(EQKitStringBox *)self attributedString];
  v12 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f attributedString=%@", v4, self, v6, v8, v10, v11];

  return v12;
}

- (void)p_cacheDimensions
{
  self->_height = 0.0;
  self->_depth = 0.0;
  self->_width = 0.0;
  p_erasableBounds = &self->_erasableBounds;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_erasableBounds.origin = *MEMORY[0x277CBF3A0];
  self->_erasableBounds.size = v4;
  v5 = [(EQKitStringBox *)self line];
  if (v5)
  {
    v6 = v5;
    ImageBounds = CTLineGetImageBounds(v5, 0);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;
    MaxY = CGRectGetMaxY(ImageBounds);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MinY = CGRectGetMinY(v19);
    TypographicBounds = CTLineGetTypographicBounds(v6, 0, 0, 0);
    if (TypographicBounds > 0.0)
    {
      self->_height = MaxY;
      self->_depth = -MinY;
      self->_width = TypographicBounds;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MinX = CGRectGetMinX(v20);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v15 = -CGRectGetMaxY(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v16 = CGRectGetWidth(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v17 = CGRectGetHeight(v23);
      p_erasableBounds->origin.x = MinX;
      p_erasableBounds->origin.y = v15;
      p_erasableBounds->size.width = v16;
      p_erasableBounds->size.height = v17;
    }
  }
}

@end