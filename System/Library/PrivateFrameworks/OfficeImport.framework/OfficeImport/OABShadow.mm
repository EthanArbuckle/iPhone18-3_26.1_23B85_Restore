@interface OABShadow
+ (id)readShadowFromShapeBaseManager:(id)manager state:(id)state;
@end

@implementation OABShadow

+ (id)readShadowFromShapeBaseManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  if ([managerCopy isShadowed])
  {
    v7 = objc_alloc_init(OADOuterShadowEffect);
    if (managerCopy)
    {
      [managerCopy shadowColor];
    }

    else
    {
      v21 = 0;
    }

    v9 = EshFixedPointUtil::toFloat([managerCopy shadowAlpha]);
    EshColor::EshColor(&v20, &v21);
    *&v10 = v9;
    v11 = [OABShapeProperties targetColorWithSourceColor:&v20 alpha:managerCopy colorPropertiesManager:stateCopy state:v10];
    [(OADShadowEffect *)v7 setColor:v11];
    *&v12 = [managerCopy shadowSoftness] / 12700.0;
    [(OADShadowEffect *)v7 setBlurRadius:v12];
    shadowOffsetX = [managerCopy shadowOffsetX];
    v14 = [managerCopy shadowOffsetY] / 12700.0;
    *&v15 = hypotf(shadowOffsetX / 12700.0, v14);
    [(OADShadowEffect *)v7 setDistance:v15];
    v16 = atan2f(v14, shadowOffsetX / 12700.0) * 57.2957795;
    *&v16 = v16;
    [(OADShadowEffect *)v7 setAngle:v16];
    if ([managerCopy shadowType] - 2 <= 2)
    {
      LODWORD(v17) = 1109393408;
      [(OADOuterShadowEffect *)v7 setYSkew:v17];
      LODWORD(v18) = 0.5;
      [(OADOuterShadowEffect *)v7 setXScale:v18];
    }

    array = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

@end