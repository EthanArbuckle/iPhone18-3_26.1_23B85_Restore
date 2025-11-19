@interface TTBulletTextAttributesCacheKey
- (BOOL)isEqual:(id)a3;
- (TTBulletTextAttributesCacheKey)initWithTextFont:(id)a3 paragraphStyle:(id)a4 zoomFactor:(double)a5;
@end

@implementation TTBulletTextAttributesCacheKey

- (TTBulletTextAttributesCacheKey)initWithTextFont:(id)a3 paragraphStyle:(id)a4 zoomFactor:(double)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = TTBulletTextAttributesCacheKey;
  v10 = [(TTBulletTextAttributesCacheKey *)&v15 init];
  if (v10)
  {
    v11 = [v8 hash];
    v12 = [v9 hash];
    v13 = a5 * 100.0;
    [(TTBulletTextAttributesCacheKey *)v10 setHashValue:v11 ^ v12 ^ vcvtps_u32_f32(v13)];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TTBulletTextAttributesCacheKey *)self hash];
    v6 = v5 == [v4 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end