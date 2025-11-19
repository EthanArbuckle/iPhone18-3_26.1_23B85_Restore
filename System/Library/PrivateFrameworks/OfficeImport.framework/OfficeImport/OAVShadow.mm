@interface OAVShadow
+ (id)readFromManager:(id)a3;
@end

@implementation OAVShadow

+ (id)readFromManager:(id)a3
{
  v3 = a3;
  if ([v3 isShadowed])
  {
    v4 = objc_alloc_init(OADOuterShadowEffect);
    v5 = [v3 shadowColor];
    [v3 shadowAlpha];
    v6 = [OAVColor readColorFromAttribute:v5 alpha:v3 manager:?];
    [(OADShadowEffect *)v4 setColor:v6];
    LODWORD(v7) = 1.0;
    [(OADShadowEffect *)v4 setBlurRadius:v7];
    [v3 shadowOffsets];
    v9 = v8;
    v11 = v10;
    v12 = hypot(v8, v10);
    *&v12 = v12;
    [(OADShadowEffect *)v4 setDistance:v12];
    v13 = atan2(v11, v9) * 57.2957795;
    *&v13 = v13;
    [(OADShadowEffect *)v4 setAngle:v13];
    v14 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  }

  else
  {
    v14 = [MEMORY[0x277CBEA60] array];
  }

  return v14;
}

@end