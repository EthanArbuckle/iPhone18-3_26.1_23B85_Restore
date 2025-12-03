@interface EQKitStringBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_appendEntryToSpec:(void *)spec run:(__CTRun *)run glyphRange:(id)range offset:(CGPoint)offset;
- (CGRect)erasableBounds;
- (EQKitStringBox)initWithAttributedString:(id)string cgColor:(CGColor *)color;
- (__CTLine)line;
- (double)positionOfCharacterAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)p_ensureDimensionsAreValid;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitStringBox

- (EQKitStringBox)initWithAttributedString:(id)string cgColor:(CGColor *)color
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = EQKitStringBox;
  v7 = [(EQKitStringBox *)&v12 init];
  if (v7)
  {
    v8 = [stringCopy copy];
    attributedString = v7->_attributedString;
    v7->_attributedString = v8;

    if (color)
    {
      v10 = CFRetain(color);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributedString = [(EQKitStringBox *)self attributedString];
  v6 = [v4 initWithAttributedString:attributedString cgColor:self->_cgColor];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if ([(EQKitStringBox *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      attributedString = [(EQKitStringBox *)self attributedString];
      attributedString2 = [(EQKitStringBox *)v5 attributedString];
      v8 = attributedString2;
      if (attributedString == attributedString2)
      {
        goto LABEL_7;
      }

      v9 = 0;
      if (!attributedString || !attributedString2)
      {
        goto LABEL_11;
      }

      if ([attributedString isEqualToAttributedString:attributedString2])
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
    attributedString = [(EQKitStringBox *)self attributedString];
    self->_line = CTLineCreateWithAttributedString(attributedString);

    return self->_line;
  }

  return result;
}

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = EQKitStringBox;
  [(EQKitBox *)&v12 renderIntoContext:contextCopy offset:x, y];
  cgContext = [contextCopy cgContext];
  if (cgContext)
  {
    line = [(EQKitStringBox *)self line];
    if (line)
    {
      if (self->_cgColor)
      {
        CGContextSaveGState(cgContext);
        CGContextSetFillColorWithColor(cgContext, self->_cgColor);
      }

      memset(&v11, 0, sizeof(v11));
      CGContextGetTextMatrix(&v11, cgContext);
      CGAffineTransformMakeScale(&v10, 1.0, -1.0);
      CGContextSetTextMatrix(cgContext, &v10);
      CGContextSetTextPosition(cgContext, x, y);
      CTLineDraw(line, cgContext);
      v10 = v11;
      CGContextSetTextMatrix(cgContext, &v10);
      if (self->_cgColor)
      {
        CGContextRestoreGState(cgContext);
      }
    }
  }
}

- (double)positionOfCharacterAtIndex:(unint64_t)index
{
  line = [(EQKitStringBox *)self line];
  if (!line)
  {
    return 0.0;
  }

  v6 = line;
  attributedString = [(EQKitStringBox *)self attributedString];
  v8 = [attributedString length];

  if (v8 < index)
  {
    return 0.0;
  }

  return CTLineGetOffsetForStringIndex(v6, index, 0);
}

- (BOOL)p_appendEntryToSpec:(void *)spec run:(__CTRun *)run glyphRange:(id)range offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  var1 = range.var1;
  var0 = range.var0;
  buffer = 0;
  CTRunGetGlyphs(run, range, &buffer);
  Attributes = CTRunGetAttributes(run);
  v13 = Attributes;
  if (Attributes)
  {
    Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
    v18.location = var0;
    v18.length = var1;
    CTRunGetPositions(run, v18, &v16);
    v19.x = x + v16.x;
    v19.y = y + v16.y;
    EQKit::OpticalKern::Spec::appendEntry(spec, v19, Value, buffer);
  }

  return v13 != 0;
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  GlyphRuns = CTLineGetGlyphRuns([(EQKitStringBox *)self line]);
  Count = CFArrayGetCount(GlyphRuns);
  if (!Count)
  {
    return 0;
  }

  v10 = *(spec + 6);
  if (v10 == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, Count - 1);
    GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
    v15 = GlyphCount - 1;
    if (GlyphCount >= 1)
    {
      selfCopy2 = self;
      specCopy2 = spec;
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

  selfCopy2 = self;
  specCopy2 = spec;
  v14 = v11;
  v15 = 0;
LABEL_8:

  return [(EQKitStringBox *)selfCopy2 p_appendEntryToSpec:specCopy2 run:v14 glyphRange:v15 offset:1, x, y];
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
  attributedString = [(EQKitStringBox *)self attributedString];
  v12 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f attributedString=%@", v4, self, v6, v8, v10, attributedString];

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
  line = [(EQKitStringBox *)self line];
  if (line)
  {
    v6 = line;
    ImageBounds = CTLineGetImageBounds(line, 0);
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