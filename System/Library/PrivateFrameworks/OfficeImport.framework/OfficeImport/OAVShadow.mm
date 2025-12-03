@interface OAVShadow
+ (id)readFromManager:(id)manager;
@end

@implementation OAVShadow

+ (id)readFromManager:(id)manager
{
  managerCopy = manager;
  if ([managerCopy isShadowed])
  {
    v4 = objc_alloc_init(OADOuterShadowEffect);
    shadowColor = [managerCopy shadowColor];
    [managerCopy shadowAlpha];
    v6 = [OAVColor readColorFromAttribute:shadowColor alpha:managerCopy manager:?];
    [(OADShadowEffect *)v4 setColor:v6];
    LODWORD(v7) = 1.0;
    [(OADShadowEffect *)v4 setBlurRadius:v7];
    [managerCopy shadowOffsets];
    v9 = v8;
    v11 = v10;
    v12 = hypot(v8, v10);
    *&v12 = v12;
    [(OADShadowEffect *)v4 setDistance:v12];
    v13 = atan2(v11, v9) * 57.2957795;
    *&v13 = v13;
    [(OADShadowEffect *)v4 setAngle:v13];
    array = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

@end