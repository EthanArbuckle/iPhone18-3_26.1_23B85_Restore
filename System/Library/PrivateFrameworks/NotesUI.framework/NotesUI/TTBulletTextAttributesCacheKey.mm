@interface TTBulletTextAttributesCacheKey
- (BOOL)isEqual:(id)equal;
- (TTBulletTextAttributesCacheKey)initWithTextFont:(id)font paragraphStyle:(id)style zoomFactor:(double)factor;
@end

@implementation TTBulletTextAttributesCacheKey

- (TTBulletTextAttributesCacheKey)initWithTextFont:(id)font paragraphStyle:(id)style zoomFactor:(double)factor
{
  fontCopy = font;
  styleCopy = style;
  v15.receiver = self;
  v15.super_class = TTBulletTextAttributesCacheKey;
  v10 = [(TTBulletTextAttributesCacheKey *)&v15 init];
  if (v10)
  {
    v11 = [fontCopy hash];
    v12 = [styleCopy hash];
    v13 = factor * 100.0;
    [(TTBulletTextAttributesCacheKey *)v10 setHashValue:v11 ^ v12 ^ vcvtps_u32_f32(v13)];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TTBulletTextAttributesCacheKey *)self hash];
    v6 = v5 == [equalCopy hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end