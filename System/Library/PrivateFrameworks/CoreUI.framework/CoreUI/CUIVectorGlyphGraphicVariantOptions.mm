@interface CUIVectorGlyphGraphicVariantOptions
+ (CGSize)automaticOffset;
- (BOOL)_areValid;
- (BOOL)isEqual:(id)equal;
- (BOOL)prefersAutomaticCentering;
- (CGSize)imageOffset;
- (CUIVectorGlyphGraphicVariantOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CUIVectorGlyphGraphicVariantOptions

+ (CGSize)automaticOffset
{
  v2 = 1.79769313e308;
  v3 = 1.79769313e308;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CUIVectorGlyphGraphicVariantOptions)init
{
  v7.receiver = self;
  v7.super_class = CUIVectorGlyphGraphicVariantOptions;
  v2 = [(CUIVectorGlyphGraphicVariantOptions *)&v7 init];
  if (v2)
  {
    +[CUIEncapsulationShape defaultRoundedRectCornerRadius];
    v2->roundedRectCornerRadius = v3;
    v2->imageScaling = 3;
    v2->borderColor = CGColorGetConstantColor(kCGColorBlack);
    +[CUIVectorGlyphGraphicVariantOptions automaticOffset];
    v2->imageOffset.width = v4;
    v2->imageOffset.height = v5;
    CFRetain(v2->borderColor);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CUIVectorGlyphGraphicVariantOptions allocWithZone:?]];
  v4->shape = self->shape;
  v4->fill = self->fill;
  v4->contentEffect = self->contentEffect;
  v4->fillColors = [(NSArray *)self->fillColors copy];
  monochromeForegroundColor = self->monochromeForegroundColor;
  if (monochromeForegroundColor)
  {
    monochromeForegroundColor = CGColorCreateCopy(monochromeForegroundColor);
  }

  v4->monochromeForegroundColor = monochromeForegroundColor;
  v4->roundedRectCornerRadius = self->roundedRectCornerRadius;
  v4->imageScaling = self->imageScaling;
  v4->imageAlignment = self->imageAlignment;
  v4->imageOffset = self->imageOffset;
  v4->shapeEffect = self->shapeEffect;
  v4->borderWidth = self->borderWidth;
  borderColor = self->borderColor;
  if (borderColor)
  {
    borderColor = CGColorCreateCopy(borderColor);
  }

  v4->borderColor = borderColor;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIVectorGlyphGraphicVariantOptions;
  [(CUIVectorGlyphGraphicVariantOptions *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  v28 = v10;
  v29 = v9;
  v30 = v6;
  v31 = v5;
  v32 = v4;
  v33 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  shape = self->shape;
  if (shape != [equal shape])
  {
    goto LABEL_19;
  }

  fill = self->fill;
  if (fill != [equal fill])
  {
    goto LABEL_19;
  }

  contentEffect = self->contentEffect;
  if (contentEffect != [equal contentEffect])
  {
    goto LABEL_19;
  }

  v16 = -[NSArray isEqual:](self->fillColors, "isEqual:", [equal fillColors]);
  if (!v16)
  {
    return v16;
  }

  monochromeForegroundColor = self->monochromeForegroundColor;
  if (monochromeForegroundColor)
  {
    goto LABEL_10;
  }

  if ([equal monochromeForegroundColor])
  {
    monochromeForegroundColor = self->monochromeForegroundColor;
LABEL_10:
    v16 = CGColorEqualToColor(monochromeForegroundColor, [equal monochromeForegroundColor]);
    if (!v16)
    {
      return v16;
    }
  }

  roundedRectCornerRadius = self->roundedRectCornerRadius;
  [equal roundedRectCornerRadius];
  if (roundedRectCornerRadius != v19)
  {
    goto LABEL_19;
  }

  imageScaling = self->imageScaling;
  if (imageScaling != [equal imageScaling])
  {
    goto LABEL_19;
  }

  imageAlignment = self->imageAlignment;
  if (imageAlignment != [equal imageAlignment])
  {
    goto LABEL_19;
  }

  [equal imageOffset];
  LOBYTE(v16) = 0;
  if (self->imageOffset.width != v23 || self->imageOffset.height != v22)
  {
    return v16;
  }

  shapeEffect = self->shapeEffect;
  if (shapeEffect != [equal shapeEffect])
  {
LABEL_19:
    LOBYTE(v16) = 0;
    return v16;
  }

  v16 = CGColorEqualToColor(self->borderColor, [equal borderColor]);
  if (v16)
  {
    borderWidth = self->borderWidth;
    [equal borderWidth];
    LOBYTE(v16) = vabdd_f64(borderWidth, v26) < 0.0004;
  }

  return v16;
}

- (BOOL)prefersAutomaticCentering
{
  +[CUIVectorGlyphGraphicVariantOptions automaticOffset];
  v5 = self->imageOffset.width == v4 && self->imageOffset.height == v3;
  return v5 && !self->imageAlignment && self->imageScaling != 2;
}

- (BOOL)_areValid
{
  +[CUIVectorGlyphGraphicVariantOptions automaticOffset];
  width = self->imageOffset.width;
  height = self->imageOffset.height;
  v6 = fmax(fabs(width), fabs(height)) <= 0.5;
  v9 = width == v7 && height == v3 || v6;
  roundedRectCornerRadius = self->roundedRectCornerRadius;
  v11 = roundedRectCornerRadius >= 0.0;
  if (roundedRectCornerRadius > 0.5)
  {
    v11 = 0;
  }

  return v9 & v11;
}

- (unint64_t)hash
{
  v3 = (self->fill << (self->fill & 7)) + 83 * (self->shape << (self->shape & 7)) + 6889;
  if ([(NSArray *)self->fillColors count])
  {
    v4 = CFHash([(NSArray *)self->fillColors firstObject]);
    v3 = (v4 << (CFHash([(NSArray *)self->fillColors firstObject]) & 7)) + 83 * v3;
  }

  if ([(NSArray *)self->fillColors count]>= 2)
  {
    v5 = CFHash([(NSArray *)self->fillColors lastObject]);
    v3 = (v5 << (CFHash([(NSArray *)self->fillColors lastObject]) & 7)) + 83 * v3;
  }

  monochromeForegroundColor = self->monochromeForegroundColor;
  v7 = (self->contentEffect << (self->contentEffect & 7)) + 83 * v3;
  if (monochromeForegroundColor)
  {
    v8 = CFHash(monochromeForegroundColor);
    v7 = (v8 << (CFHash(self->monochromeForegroundColor) & 7)) + 83 * v7;
  }

  v9 = (self->imageOffset.width * 1000.0);
  borderColor = self->borderColor;
  v11 = ((self->borderWidth * 1000.0) << ((self->borderWidth * 1000.0) & 7)) + 83 * ((self->shapeEffect << (self->shapeEffect & 7)) + 83 * (((self->imageOffset.height * 1000.0) << ((self->imageOffset.height * 1000.0) & 7)) + 83 * ((v9 << (v9 & 7)) + 83 * ((self->imageAlignment << (self->imageAlignment & 7)) + 83 * ((self->imageScaling << (self->imageScaling & 7)) + 83 * (((self->roundedRectCornerRadius * 1000.0) << ((self->roundedRectCornerRadius * 1000.0) & 7)) + 83 * v7))))));
  if (borderColor)
  {
    v12 = CFHash(borderColor);
    return (v12 << (CFHash(self->borderColor) & 7)) + 83 * v11;
  }

  return v11;
}

- (CGSize)imageOffset
{
  width = self->imageOffset.width;
  height = self->imageOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end