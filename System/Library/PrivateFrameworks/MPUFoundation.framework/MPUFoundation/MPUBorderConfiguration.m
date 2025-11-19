@interface MPUBorderConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isFullyTransparent;
- (MPUBorderConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MPUBorderConfiguration

- (MPUBorderConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MPUBorderConfiguration;
  result = [(MPUBorderConfiguration *)&v3 init];
  if (result)
  {
    result->_borderAlpha = 1.0;
    result->_dropShadowAlpha = 1.0;
    result->_fillAlpha = 1.0;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = llround(self->_borderAlpha * 10.0);
  v4 = v3 + 10 * [(UIColor *)self->_borderColor hash]+ 100 * llround(self->_borderWidth * 6.0) + 1000 * llround(self->_fillAlpha * 10.0);
  v5 = v4 + 10000 * [(UIColor *)self->_fillColor hash]+ 100000 * llround(self->_dropShadowAlpha * 10.0);
  return v5 + 1000000 * [(UIColor *)self->_dropShadowColor hash]+ 10000000 * self->_dropShadowEdges + 100000000 * llround(self->_dropShadowWidth * 6.0);
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v9 = MPUFloatEqualToFloat(self->_borderAlpha, v5->_borderAlpha) && ((borderColor = self->_borderColor, borderColor == v5->_borderColor) || [(UIColor *)borderColor isEqual:?]) && MPUFloatEqualToFloat(self->_borderWidth * 6.0, v5->_borderWidth * 6.0) && MPUFloatEqualToFloat(self->_fillAlpha, v5->_fillAlpha) && ((fillColor = self->_fillColor, fillColor == v5->_fillColor) || [(UIColor *)fillColor isEqual:?]) && MPUFloatEqualToFloat(self->_dropShadowAlpha, v5->_dropShadowAlpha) && ((dropShadowColor = self->_dropShadowColor, dropShadowColor == v5->_dropShadowColor) || [(UIColor *)dropShadowColor isEqual:?]) && self->_dropShadowEdges == v5->_dropShadowEdges && MPUFloatEqualToFloat(self->_dropShadowWidth * 6.0, v5->_dropShadowWidth * 6.0);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[1] = *&self->_borderAlpha;
  v6 = [(UIColor *)self->_borderColor copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[3] = *&self->_borderWidth;
  v5[4] = *&self->_fillAlpha;
  v8 = [(UIColor *)self->_fillColor copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v5[6] = *&self->_dropShadowAlpha;
  v10 = [(UIColor *)self->_dropShadowColor copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v5[8] = self->_dropShadowEdges;
  v5[9] = *&self->_dropShadowWidth;
  return v5;
}

- (BOOL)isFullyTransparent
{
  if (self->_dropShadowAlpha >= 0.00000011920929 && self->_dropShadowColor && self->_dropShadowEdges && self->_dropShadowWidth >= 0.00000011920929 || self->_borderAlpha >= 0.00000011920929 && self->_borderWidth >= 0.00000011920929 && self->_borderColor)
  {
    return 0;
  }

  if (self->_fillAlpha >= 0.00000011920929)
  {
    return self->_fillColor == 0;
  }

  return 1;
}

@end