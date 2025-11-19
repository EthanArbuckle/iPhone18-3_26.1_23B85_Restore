@interface OABShadow
+ (id)readShadowFromShapeBaseManager:(id)a3 state:(id)a4;
@end

@implementation OABShadow

+ (id)readShadowFromShapeBaseManager:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isShadowed])
  {
    v7 = objc_alloc_init(OADOuterShadowEffect);
    if (v5)
    {
      [v5 shadowColor];
    }

    else
    {
      v21 = 0;
    }

    v9 = EshFixedPointUtil::toFloat([v5 shadowAlpha]);
    EshColor::EshColor(&v20, &v21);
    *&v10 = v9;
    v11 = [OABShapeProperties targetColorWithSourceColor:&v20 alpha:v5 colorPropertiesManager:v6 state:v10];
    [(OADShadowEffect *)v7 setColor:v11];
    *&v12 = [v5 shadowSoftness] / 12700.0;
    [(OADShadowEffect *)v7 setBlurRadius:v12];
    v13 = [v5 shadowOffsetX];
    v14 = [v5 shadowOffsetY] / 12700.0;
    *&v15 = hypotf(v13 / 12700.0, v14);
    [(OADShadowEffect *)v7 setDistance:v15];
    v16 = atan2f(v14, v13 / 12700.0) * 57.2957795;
    *&v16 = v16;
    [(OADShadowEffect *)v7 setAngle:v16];
    if ([v5 shadowType] - 2 <= 2)
    {
      LODWORD(v17) = 1109393408;
      [(OADOuterShadowEffect *)v7 setYSkew:v17];
      LODWORD(v18) = 0.5;
      [(OADOuterShadowEffect *)v7 setXScale:v18];
    }

    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] array];
  }

  return v8;
}

@end