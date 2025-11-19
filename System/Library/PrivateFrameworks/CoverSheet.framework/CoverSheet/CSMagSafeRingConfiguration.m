@interface CSMagSafeRingConfiguration
+ (double)staticScaleFactor;
+ (id)auxiliaryConfiguration;
+ (id)defaultConfiguration;
+ (id)staticConfiguration;
- (CGPoint)ringCenter;
- (CSMagSafeRingConfiguration)initWithRingDiameter:(SBFScreenSpecificCGFloatValue *)a3 lineWidth:(SBFScreenSpecificCGFloatValue *)a4 splashRingDiamter:(SBFScreenSpecificCGFloatValue *)a5;
@end

@implementation CSMagSafeRingConfiguration

+ (id)defaultConfiguration
{
  if (defaultConfiguration_onceToken_0 != -1)
  {
    +[CSMagSafeRingConfiguration defaultConfiguration];
  }

  v3 = defaultConfiguration___defaultConfiguration_0;

  return v3;
}

void __50__CSMagSafeRingConfiguration_defaultConfiguration__block_invoke()
{
  v0 = [CSMagSafeRingConfiguration alloc];
  memcpy(__dst, &CSMagSafeRingDiameter, sizeof(__dst));
  memcpy(v4, &CSMagSafeLineWidth, sizeof(v4));
  memcpy(v3, &CSMagSafeSplashRingDiameter, sizeof(v3));
  v1 = [(CSMagSafeRingConfiguration *)v0 initWithRingDiameter:__dst lineWidth:v4 splashRingDiamter:v3];
  v2 = defaultConfiguration___defaultConfiguration_0;
  defaultConfiguration___defaultConfiguration_0 = v1;
}

+ (id)staticConfiguration
{
  if (staticConfiguration_onceToken != -1)
  {
    +[CSMagSafeRingConfiguration staticConfiguration];
  }

  v3 = staticConfiguration___staticConfiguration;

  return v3;
}

void __49__CSMagSafeRingConfiguration_staticConfiguration__block_invoke()
{
  v0 = [CSMagSafeRingConfiguration alloc];
  memcpy(__dst, &CSMagSafeStaticViewRingDiameter, sizeof(__dst));
  memcpy(v4, &CSMagSafeStaticViewRingLineWidth, sizeof(v4));
  memcpy(v3, &CSMagSafeSplashRingDiameter, sizeof(v3));
  v1 = [(CSMagSafeRingConfiguration *)v0 initWithRingDiameter:__dst lineWidth:v4 splashRingDiamter:v3];
  v2 = staticConfiguration___staticConfiguration;
  staticConfiguration___staticConfiguration = v1;
}

+ (id)auxiliaryConfiguration
{
  if (auxiliaryConfiguration_onceToken != -1)
  {
    +[CSMagSafeRingConfiguration auxiliaryConfiguration];
  }

  v3 = auxiliaryConfiguration___auxiliaryConfiguration;

  return v3;
}

void __52__CSMagSafeRingConfiguration_auxiliaryConfiguration__block_invoke()
{
  v0 = [CSMagSafeRingConfiguration alloc];
  memcpy(__dst, &CSMagSafeAuxiliaryRingDiameter, sizeof(__dst));
  memcpy(v4, &CSMagSafeAuxiliaryLineWidth, sizeof(v4));
  memcpy(v3, &CSMagSafeSplashRingDiameter, sizeof(v3));
  v1 = [(CSMagSafeRingConfiguration *)v0 initWithRingDiameter:__dst lineWidth:v4 splashRingDiamter:v3];
  v2 = auxiliaryConfiguration___auxiliaryConfiguration;
  auxiliaryConfiguration___auxiliaryConfiguration = v1;
}

+ (double)staticScaleFactor
{
  v3 = __sb__runningInSpringBoard();
  v4 = 0x277D75000;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v319 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v259 = [MEMORY[0x277D75418] currentDevice];
    if ([v259 userInterfaceIdiom] != 1)
    {
      v319 = 0x100000000;
      goto LABEL_10;
    }
  }

  HIDWORD(v319) = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v269 = [MEMORY[0x277D759A0] mainScreen];
      [v269 _referenceBounds];
    }

    LODWORD(v319) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v20 == *(MEMORY[0x277D66E30] + 288) && v19 == *(MEMORY[0x277D66E30] + 296))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v311 = 0;
      v312 = 0;
      v313 = 0;
      v314 = 0;
      v315 = 0;
      v316 = 0;
      v317 = 0;
      memset(v318, 0, sizeof(v318));
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v319) = 0;
  }

LABEL_10:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v318[36] = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v257 = [MEMORY[0x277D75418] currentDevice];
    if ([v257 userInterfaceIdiom] != 1)
    {
      *&v318[36] = 0x100000000;
      goto LABEL_19;
    }
  }

  *&v318[40] = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v240 = [MEMORY[0x277D759A0] mainScreen];
      [v240 _referenceBounds];
    }

    *&v318[36] = v7 ^ 1;
    BSSizeRoundForScale();
    if (v22 >= *(MEMORY[0x277D66E30] + 440))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v311 = 0;
      v312 = 0;
      v313 = 0;
      v314 = 0;
      v315 = 0;
      v316 = 0;
      v317 = 0;
      memset(v318, 0, 36);
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    *&v318[36] = 0;
  }

LABEL_19:
  v8 = __sb__runningInSpringBoard();
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v318[28] = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v255 = [MEMORY[0x277D75418] currentDevice];
    if ([v255 userInterfaceIdiom] != 1)
    {
      *&v318[28] = 0;
      *&v318[32] = 1;
      goto LABEL_28;
    }
  }

  *&v318[32] = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v9 = __sb__runningInSpringBoard();
    if (v9)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v238 = [MEMORY[0x277D759A0] mainScreen];
      [v238 _referenceBounds];
    }

    *&v318[28] = v9 ^ 1;
    BSSizeRoundForScale();
    if (v23 >= *(MEMORY[0x277D66E30] + 376))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v311 = 0;
      v312 = 0;
      v313 = 0;
      v314 = 0;
      v315 = 0;
      v316 = 0;
      v317 = 0;
      memset(v318, 0, 28);
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    *&v318[28] = 0;
  }

LABEL_28:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v318[20] = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v253 = [MEMORY[0x277D75418] currentDevice];
    if ([v253 userInterfaceIdiom] != 1)
    {
      *&v318[20] = 0;
      *&v318[24] = 1;
      goto LABEL_37;
    }
  }

  *&v318[24] = v10 ^ 1;
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v247 = [MEMORY[0x277D759A0] mainScreen];
    [v247 _referenceBounds];
  }

  *&v318[20] = v11 ^ 1;
  BSSizeRoundForScale();
  if (v12 >= *(MEMORY[0x277D66E30] + 280))
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v314 = 0;
    v315 = 0;
    v316 = 0;
    v317 = 0;
    memset(v318, 0, 20);
    v15 = 0.0;
    goto LABEL_67;
  }

LABEL_37:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v318[12] = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v251 = [MEMORY[0x277D75418] currentDevice];
    if ([v251 userInterfaceIdiom] != 1)
    {
      *&v318[12] = 0;
      *&v318[16] = 1;
      goto LABEL_47;
    }
  }

  *&v318[16] = v13 ^ 1;
  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v243 = [MEMORY[0x277D759A0] mainScreen];
    [v243 _referenceBounds];
  }

  *&v318[12] = v14 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 264))
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v314 = 0;
    v315 = 0;
    v316 = 0;
    v317 = 0;
    *v318 = 0;
    *&v318[8] = 0;
    v15 = 0.0;
    goto LABEL_67;
  }

LABEL_47:
  v17 = __sb__runningInSpringBoard();
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v318[4] = 0;
      goto LABEL_373;
    }
  }

  else
  {
    v249 = [MEMORY[0x277D75418] currentDevice];
    if ([v249 userInterfaceIdiom] != 1)
    {
      *&v318[4] = 0;
      *&v318[8] = 1;
      goto LABEL_373;
    }
  }

  *&v318[8] = v17 ^ 1;
  v18 = __sb__runningInSpringBoard();
  if (v18)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v236 = [MEMORY[0x277D759A0] mainScreen];
    [v236 _referenceBounds];
  }

  *&v318[4] = v18 ^ 1;
  BSSizeRoundForScale();
  if (v53 >= *(MEMORY[0x277D66E30] + 248))
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v314 = 0;
    v315 = 0;
    v316 = 0;
    v317 = 0;
    *v318 = 0;
    v15 = 0.0;
    goto LABEL_67;
  }

LABEL_373:
  v54 = __sb__runningInSpringBoard();
  if (v54)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_375;
    }

LABEL_381:
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v314 = 0;
    v315 = 0;
    v316 = 0;
    v317 = 0;
    v15 = 0.0;
    *v318 = v54 ^ 1;
    goto LABEL_67;
  }

  v245 = [MEMORY[0x277D75418] currentDevice];
  if ([v245 userInterfaceIdiom] == 1)
  {
    goto LABEL_381;
  }

LABEL_375:
  *v318 = v54 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_379:
    v317 = 0;
    goto LABEL_416;
  }

  v55 = __sb__runningInSpringBoard();
  if (v55)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_379;
    }
  }

  else
  {
    v232 = [MEMORY[0x277D75418] currentDevice];
    if ([v232 userInterfaceIdiom])
    {
      v317 = 0x100000000;
      goto LABEL_416;
    }
  }

  HIDWORD(v317) = v55 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v59 = __sb__runningInSpringBoard();
    if (v59)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v217 = [MEMORY[0x277D759A0] mainScreen];
      [v217 _referenceBounds];
    }

    LODWORD(v317) = v59 ^ 1;
    BSSizeRoundForScale();
    if (v65 >= *(MEMORY[0x277D66E30] + 200))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v311 = 0;
      v312 = 0;
      v313 = 0;
      v314 = 0;
      v315 = 0;
      v316 = 0;
      v15 = 52.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v317) = 0;
  }

LABEL_416:
  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v316 = 0;
      goto LABEL_426;
    }
  }

  else
  {
    v234 = [MEMORY[0x277D75418] currentDevice];
    if ([v234 userInterfaceIdiom])
    {
      v316 = 0x100000000;
      goto LABEL_426;
    }
  }

  HIDWORD(v316) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v61 = __sb__runningInSpringBoard();
    if (v61)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v223 = [MEMORY[0x277D759A0] mainScreen];
      [v223 _referenceBounds];
    }

    LODWORD(v316) = v61 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_430;
    }
  }

  else
  {
    LODWORD(v316) = 0;
  }

LABEL_426:
  if (_SBF_Private_IsD94Like())
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v314 = 0;
    v315 = 0;
    v15 = 45.66666;
    goto LABEL_67;
  }

LABEL_430:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_434:
    v315 = 0;
    goto LABEL_481;
  }

  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_434;
    }
  }

  else
  {
    v225 = [MEMORY[0x277D75418] currentDevice];
    if ([v225 userInterfaceIdiom])
    {
      v315 = 0x100000000;
      goto LABEL_481;
    }
  }

  HIDWORD(v315) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v69 = __sb__runningInSpringBoard();
    if (v69)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v208 = [MEMORY[0x277D759A0] mainScreen];
      [v208 _referenceBounds];
    }

    LODWORD(v315) = v69 ^ 1;
    BSSizeRoundForScale();
    if (v80 >= *(MEMORY[0x277D66E30] + 136))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v311 = 0;
      v312 = 0;
      v313 = 0;
      v314 = 0;
      v15 = 24.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v315) = 0;
  }

LABEL_481:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v314 = 0;
      goto LABEL_491;
    }
  }

  else
  {
    v230 = [MEMORY[0x277D75418] currentDevice];
    if ([v230 userInterfaceIdiom])
    {
      v314 = 0x100000000;
      goto LABEL_491;
    }
  }

  HIDWORD(v314) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v71 = __sb__runningInSpringBoard();
    if (v71)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v216 = [MEMORY[0x277D759A0] mainScreen];
      [v216 _referenceBounds];
    }

    LODWORD(v314) = v71 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_495;
    }
  }

  else
  {
    LODWORD(v314) = 0;
  }

LABEL_491:
  if (_SBF_Private_IsD64Like())
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v15 = 45.66666;
    goto LABEL_67;
  }

LABEL_495:
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v313 = 0;
      goto LABEL_505;
    }
  }

  else
  {
    v228 = [MEMORY[0x277D75418] currentDevice];
    if ([v228 userInterfaceIdiom])
    {
      v313 = 0x100000000;
      goto LABEL_505;
    }
  }

  HIDWORD(v313) = v73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v74 = __sb__runningInSpringBoard();
    if (v74)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v210 = [MEMORY[0x277D759A0] mainScreen];
      [v210 _referenceBounds];
    }

    BSSizeRoundForScale();
    LODWORD(v313) = v74 ^ 1;
    if (v78 >= *(MEMORY[0x277D66E30] + 136))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v311 = 0;
      v312 = 0;
      v15 = 52.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v313) = 0;
  }

LABEL_505:
  v75 = __sb__runningInSpringBoard();
  if (v75)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v312 = 0;
      goto LABEL_521;
    }
  }

  else
  {
    v221 = [MEMORY[0x277D75418] currentDevice];
    if ([v221 userInterfaceIdiom])
    {
      v312 = 0x100000000;
      goto LABEL_521;
    }
  }

  HIDWORD(v312) = v75 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v76 = __sb__runningInSpringBoard();
    if (v76)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v206 = [MEMORY[0x277D759A0] mainScreen];
      [v206 _referenceBounds];
    }

    LODWORD(v312) = v76 ^ 1;
    BSSizeRoundForScale();
    if (v83 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_545;
    }
  }

  else
  {
    LODWORD(v312) = 0;
  }

LABEL_521:
  if (_SBF_Private_IsD54())
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v310 = 0;
    v311 = 0;
    v15 = 45.66666;
    goto LABEL_67;
  }

LABEL_545:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v311 = 0;
      goto LABEL_565;
    }
  }

  else
  {
    v219 = [MEMORY[0x277D75418] currentDevice];
    if ([v219 userInterfaceIdiom])
    {
      v311 = 0x100000000;
      goto LABEL_565;
    }
  }

  HIDWORD(v311) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v86 = __sb__runningInSpringBoard();
    if (v86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v200 = [MEMORY[0x277D759A0] mainScreen];
      [v200 _referenceBounds];
    }

    BSSizeRoundForScale();
    LODWORD(v311) = v86 ^ 1;
    if (v90 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      v309 = 0;
      memset(v320, 0, sizeof(v320));
      v310 = 0;
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v311) = 0;
  }

LABEL_565:
  v87 = __sb__runningInSpringBoard();
  if (v87)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v310 = 0;
      goto LABEL_582;
    }
  }

  else
  {
    v214 = [MEMORY[0x277D75418] currentDevice];
    if ([v214 userInterfaceIdiom])
    {
      v310 = 0x100000000;
      goto LABEL_582;
    }
  }

  HIDWORD(v310) = v87 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v88 = __sb__runningInSpringBoard();
    if (v88)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v198 = [MEMORY[0x277D759A0] mainScreen];
      [v198 _referenceBounds];
    }

    LODWORD(v310) = v88 ^ 1;
    BSSizeRoundForScale();
    if (v93 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_604;
    }
  }

  else
  {
    LODWORD(v310) = 0;
  }

LABEL_582:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v308 = 0;
    v298 = 0;
    v297 = 0;
    v307 = 0;
    v309 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 0.0;
    goto LABEL_67;
  }

LABEL_604:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_608:
    v309 = 0;
    goto LABEL_640;
  }

  v94 = __sb__runningInSpringBoard();
  if (v94)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_608;
    }
  }

  else
  {
    v204 = [MEMORY[0x277D75418] currentDevice];
    if ([v204 userInterfaceIdiom])
    {
      v309 = 1;
      goto LABEL_640;
    }
  }

  LODWORD(v309) = v94 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v100 = __sb__runningInSpringBoard();
    if (v100)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v185 = [MEMORY[0x277D759A0] mainScreen];
      [v185 _referenceBounds];
    }

    HIDWORD(v309) = v100 ^ 1;
    BSSizeRoundForScale();
    if (v106 >= *(MEMORY[0x277D66E30] + 184))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v301 = 0;
      v300 = 0;
      v306 = 0;
      v299 = 0;
      v308 = 0;
      v298 = 0;
      v297 = 0;
      v307 = 0;
      memset(v320, 0, sizeof(v320));
      v15 = 45.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v309) = 0;
  }

LABEL_640:
  v101 = __sb__runningInSpringBoard();
  if (v101)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v308 = 0;
      v307 = 0;
      goto LABEL_650;
    }
  }

  else
  {
    v212 = [MEMORY[0x277D75418] currentDevice];
    if ([v212 userInterfaceIdiom])
    {
      v308 = 0;
      v307 = 1;
      goto LABEL_650;
    }
  }

  v307 = v101 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v102 = __sb__runningInSpringBoard();
    if (v102)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v191 = [MEMORY[0x277D759A0] mainScreen];
      [v191 _referenceBounds];
    }

    v308 = v102 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_654;
    }
  }

  else
  {
    v308 = 0;
  }

LABEL_650:
  if (_SBF_Private_IsD93Like())
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v301 = 0;
    v300 = 0;
    v306 = 0;
    v299 = 0;
    v298 = 0;
    v297 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 37.0;
    goto LABEL_67;
  }

LABEL_654:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_658:
    v306 = 0;
    HIDWORD(v305) = 0;
    goto LABEL_696;
  }

  v104 = __sb__runningInSpringBoard();
  if (v104)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_658;
    }
  }

  else
  {
    v195 = [MEMORY[0x277D75418] currentDevice];
    if ([v195 userInterfaceIdiom])
    {
      v306 = 0;
      HIDWORD(v305) = 1;
      goto LABEL_696;
    }
  }

  HIDWORD(v305) = v104 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v109 = __sb__runningInSpringBoard();
    if (v109)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v178 = [MEMORY[0x277D759A0] mainScreen];
      [v178 _referenceBounds];
    }

    v306 = v109 ^ 1;
    BSSizeRoundForScale();
    if (v115 >= *(MEMORY[0x277D66E30] + 104))
    {
      v303 = 0;
      v304 = 0;
      v302 = 0;
      LODWORD(v305) = 0;
      v301 = 0;
      v300 = 0;
      v299 = 0;
      v298 = 0;
      v297 = 0;
      memset(v320, 0, sizeof(v320));
      v15 = 45.0;
      goto LABEL_67;
    }
  }

  else
  {
    v306 = 0;
  }

LABEL_696:
  v110 = __sb__runningInSpringBoard();
  if (v110)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v305) = 0;
      HIDWORD(v304) = 0;
      goto LABEL_706;
    }
  }

  else
  {
    v202 = [MEMORY[0x277D75418] currentDevice];
    if ([v202 userInterfaceIdiom])
    {
      LODWORD(v305) = 0;
      HIDWORD(v304) = 1;
      goto LABEL_706;
    }
  }

  HIDWORD(v304) = v110 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v111 = __sb__runningInSpringBoard();
    if (v111)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v184 = [MEMORY[0x277D759A0] mainScreen];
      [v184 _referenceBounds];
    }

    LODWORD(v305) = v111 ^ 1;
    BSSizeRoundForScale();
    if (v112 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_710;
    }
  }

  else
  {
    LODWORD(v305) = 0;
  }

LABEL_706:
  if (_SBF_Private_IsD63Like())
  {
    v303 = 0;
    LODWORD(v304) = 0;
    v302 = 0;
    v301 = 0;
    v300 = 0;
    v299 = 0;
    v298 = 0;
    v297 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 37.0;
    goto LABEL_67;
  }

LABEL_710:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_714:
    HIDWORD(v303) = 0;
    LODWORD(v304) = 0;
    goto LABEL_761;
  }

  v113 = __sb__runningInSpringBoard();
  if (v113)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_714;
    }
  }

  else
  {
    v187 = [MEMORY[0x277D75418] currentDevice];
    if ([v187 userInterfaceIdiom])
    {
      HIDWORD(v303) = 0;
      LODWORD(v304) = 1;
      goto LABEL_761;
    }
  }

  LODWORD(v304) = v113 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v118 = __sb__runningInSpringBoard();
    if (v118)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v170 = [MEMORY[0x277D759A0] mainScreen];
      [v170 _referenceBounds];
    }

    HIDWORD(v303) = v118 ^ 1;
    BSSizeRoundForScale();
    if (v129 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v303) = 0;
      v302 = 0;
      v301 = 0;
      v300 = 0;
      v299 = 0;
      v298 = 0;
      v297 = 0;
      memset(v320, 0, sizeof(v320));
      v15 = 52.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v303) = 0;
  }

LABEL_761:
  v119 = __sb__runningInSpringBoard();
  if (v119)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v303) = 0;
      HIDWORD(v302) = 0;
      goto LABEL_771;
    }
  }

  else
  {
    v193 = [MEMORY[0x277D75418] currentDevice];
    if ([v193 userInterfaceIdiom])
    {
      HIDWORD(v302) = 0;
      LODWORD(v303) = 1;
      goto LABEL_771;
    }
  }

  LODWORD(v303) = v119 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v120 = __sb__runningInSpringBoard();
    if (v120)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v176 = [MEMORY[0x277D759A0] mainScreen];
      [v176 _referenceBounds];
    }

    HIDWORD(v302) = v120 ^ 1;
    BSSizeRoundForScale();
    if (v121 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_775;
    }
  }

  else
  {
    HIDWORD(v302) = 0;
  }

LABEL_771:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v302) = 0;
    v301 = 0;
    v300 = 0;
    v299 = 0;
    v298 = 0;
    v297 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 45.66666;
    goto LABEL_67;
  }

LABEL_775:
  v122 = __sb__runningInSpringBoard();
  if (v122)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v302) = 0;
      HIDWORD(v301) = 0;
      goto LABEL_785;
    }
  }

  else
  {
    v189 = [MEMORY[0x277D75418] currentDevice];
    if ([v189 userInterfaceIdiom])
    {
      HIDWORD(v301) = 0;
      LODWORD(v302) = 1;
      goto LABEL_785;
    }
  }

  LODWORD(v302) = v122 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v123 = __sb__runningInSpringBoard();
    if (v123)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v172 = [MEMORY[0x277D759A0] mainScreen];
      [v172 _referenceBounds];
    }

    HIDWORD(v301) = v123 ^ 1;
    BSSizeRoundForScale();
    if (v127 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v301) = 0;
      v300 = 0;
      v299 = 0;
      v298 = 0;
      v297 = 0;
      memset(v320, 0, sizeof(v320));
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v301) = 0;
  }

LABEL_785:
  v124 = __sb__runningInSpringBoard();
  if (v124)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v301) = 0;
      HIDWORD(v300) = 0;
      goto LABEL_801;
    }
  }

  else
  {
    v182 = [MEMORY[0x277D75418] currentDevice];
    if ([v182 userInterfaceIdiom])
    {
      HIDWORD(v300) = 0;
      LODWORD(v301) = 1;
      goto LABEL_801;
    }
  }

  LODWORD(v301) = v124 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v125 = __sb__runningInSpringBoard();
    if (v125)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v168 = [MEMORY[0x277D759A0] mainScreen];
      [v168 _referenceBounds];
    }

    HIDWORD(v300) = v125 ^ 1;
    BSSizeRoundForScale();
    if (v132 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_825;
    }
  }

  else
  {
    HIDWORD(v300) = 0;
  }

LABEL_801:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v300) = 0;
    v299 = 0;
    v298 = 0;
    v297 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 0.0;
    goto LABEL_67;
  }

LABEL_825:
  v133 = __sb__runningInSpringBoard();
  if (v133)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v300) = 0;
      HIDWORD(v299) = 0;
      goto LABEL_845;
    }
  }

  else
  {
    v180 = [MEMORY[0x277D75418] currentDevice];
    if ([v180 userInterfaceIdiom])
    {
      HIDWORD(v299) = 0;
      LODWORD(v300) = 1;
      goto LABEL_845;
    }
  }

  LODWORD(v300) = v133 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v134 = __sb__runningInSpringBoard();
    if (v134)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v166 = [MEMORY[0x277D759A0] mainScreen];
      [v166 _referenceBounds];
    }

    HIDWORD(v299) = v134 ^ 1;
    BSSizeRoundForScale();
    if (v138 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v299) = 0;
      v298 = 0;
      v297 = 0;
      memset(v320, 0, sizeof(v320));
      v15 = 45.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v299) = 0;
  }

LABEL_845:
  v135 = __sb__runningInSpringBoard();
  if (v135)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v299) = 0;
      HIDWORD(v298) = 0;
      goto LABEL_861;
    }
  }

  else
  {
    v174 = [MEMORY[0x277D75418] currentDevice];
    if ([v174 userInterfaceIdiom])
    {
      HIDWORD(v298) = 0;
      LODWORD(v299) = 1;
      goto LABEL_861;
    }
  }

  LODWORD(v299) = v135 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    HIDWORD(v298) = 0;
    goto LABEL_861;
  }

  v136 = __sb__runningInSpringBoard();
  if (v136)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v268 = [MEMORY[0x277D759A0] mainScreen];
    [v268 _referenceBounds];
  }

  HIDWORD(v298) = v136 ^ 1;
  BSSizeRoundForScale();
  if (v140 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_861:
    if (_SBF_Private_IsD53())
    {
      LODWORD(v298) = 0;
      v297 = 0;
      memset(v320, 0, sizeof(v320));
      v15 = 37.0;
      goto LABEL_67;
    }
  }

  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_886;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_888;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_886:
    LODWORD(v298) = 0;
    v297 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 45.0;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_888:
    LODWORD(v298) = 0;
    v297 = 0;
    memset(v320, 0, sizeof(v320));
    v15 = 38.33333;
    goto LABEL_67;
  }

  v142 = __sb__runningInSpringBoard();
  if (v142)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v298) = 0;
      v297 = 0;
      goto LABEL_915;
    }
  }

  else
  {
    v267 = [MEMORY[0x277D75418] currentDevice];
    if ([v267 userInterfaceIdiom])
    {
      v297 = 0;
      LODWORD(v298) = 1;
      goto LABEL_915;
    }
  }

  LODWORD(v298) = v142 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v143 = __sb__runningInSpringBoard();
    if (v143)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v261 = [MEMORY[0x277D759A0] mainScreen];
      [v261 _referenceBounds];
    }

    v297 = v143 ^ 1;
    BSSizeRoundForScale();
    if (v155 >= *(MEMORY[0x277D66E30] + 88))
    {
      memset(v320, 0, sizeof(v320));
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    v297 = 0;
  }

LABEL_915:
  v144 = __sb__runningInSpringBoard();
  if (v144)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v320[2] = 0;
      goto LABEL_935;
    }
  }

  else
  {
    v266 = [MEMORY[0x277D75418] currentDevice];
    if ([v266 userInterfaceIdiom])
    {
      v320[2] = 0x100000000;
      goto LABEL_935;
    }
  }

  HIDWORD(v320[2]) = v144 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v146 = __sb__runningInSpringBoard();
    if (v146)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v260 = [MEMORY[0x277D759A0] mainScreen];
      [v260 _referenceBounds];
    }

    LODWORD(v320[2]) = v146 ^ 1;
    BSSizeRoundForScale();
    if (v157 >= *(MEMORY[0x277D66E30] + 72))
    {
      v320[0] = 0;
      v320[1] = 0;
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v320[2]) = 0;
  }

LABEL_935:
  v147 = __sb__runningInSpringBoard();
  if (!v147)
  {
    v265 = [MEMORY[0x277D75418] currentDevice];
    if ([v265 userInterfaceIdiom])
    {
      v320[1] = 0x100000000;
      goto LABEL_955;
    }

LABEL_951:
    HIDWORD(v320[1]) = v147 ^ 1;
    v151 = __sb__runningInSpringBoard();
    if (v151)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v263 = [MEMORY[0x277D759A0] mainScreen];
      [v263 _referenceBounds];
    }

    LODWORD(v320[1]) = v151 ^ 1;
    BSSizeRoundForScale();
    if (v152 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_958;
    }

    goto LABEL_955;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_951;
  }

  v320[1] = 0;
LABEL_955:
  v153 = __sb__runningInSpringBoard();
  if (v153)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_958:
      v320[0] = 0;
      v15 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    v264 = [MEMORY[0x277D75418] currentDevice];
    if ([v264 userInterfaceIdiom])
    {
      v15 = 0.0;
      v320[0] = 0x100000000;
      goto LABEL_67;
    }
  }

  HIDWORD(v320[0]) = v153 ^ 1;
  v159 = __sb__runningInSpringBoard();
  if (v159)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v262 = [MEMORY[0x277D759A0] mainScreen];
    [v262 _referenceBounds];
  }

  LODWORD(v320[0]) = v159 ^ 1;
  BSSizeRoundForScale();
  v15 = 0.0;
LABEL_67:
  v24 = __sb__runningInSpringBoard();
  if (v24)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_76;
    }
  }

  else
  {
    v258 = [MEMORY[0x277D75418] currentDevice];
    if ([v258 userInterfaceIdiom] != 1)
    {
      v26 = 0;
      v25 = 1;
      goto LABEL_76;
    }
  }

  v25 = v24 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v241 = [MEMORY[0x277D759A0] mainScreen];
      [v241 _referenceBounds];
    }

    v26 = v27 ^ 1;
    BSSizeRoundForScale();
    if (v47 == *(MEMORY[0x277D66E30] + 288) && v46 == *(MEMORY[0x277D66E30] + 296))
    {
      v295 = v27 ^ 1;
      v296 = v25;
      v294 = 0;
      v293 = 0;
      v292 = 0;
      v291 = 0;
      v290 = 0;
      v289 = 0;
      v288 = 0;
      v287 = 0;
      v286 = 0;
      v285 = 0;
      v284 = 0;
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_76:
  v28 = __sb__runningInSpringBoard();
  v296 = v25;
  v295 = v26;
  if (v28)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v29 = 0;
      v30 = 0;
      goto LABEL_85;
    }
  }

  else
  {
    v256 = [MEMORY[0x277D75418] currentDevice];
    if ([v256 userInterfaceIdiom] != 1)
    {
      v30 = 0;
      v29 = 1;
      goto LABEL_85;
    }
  }

  v29 = v28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v239 = [MEMORY[0x277D759A0] mainScreen];
      [v239 _referenceBounds];
    }

    v30 = v27 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 440))
    {
      HIDWORD(v293) = v27 ^ 1;
      v294 = v29;
      LODWORD(v293) = 0;
      v292 = 0;
      v291 = 0;
      v290 = 0;
      v289 = 0;
      v288 = 0;
      v287 = 0;
      v286 = 0;
      v285 = 0;
      v284 = 0;
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_85:
  v31 = __sb__runningInSpringBoard();
  v294 = v29;
  HIDWORD(v293) = v30;
  if (v31)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_94;
    }
  }

  else
  {
    v254 = [MEMORY[0x277D75418] currentDevice];
    if ([v254 userInterfaceIdiom] != 1)
    {
      v33 = 0;
      v32 = 1;
      goto LABEL_94;
    }
  }

  v32 = v31 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v237 = [MEMORY[0x277D759A0] mainScreen];
      [v237 _referenceBounds];
    }

    v33 = v27 ^ 1;
    BSSizeRoundForScale();
    if (v49 >= *(MEMORY[0x277D66E30] + 376))
    {
      HIDWORD(v292) = v27 ^ 1;
      LODWORD(v293) = v32;
      LODWORD(v292) = 0;
      v291 = 0;
      v290 = 0;
      v289 = 0;
      v288 = 0;
      v287 = 0;
      v286 = 0;
      v285 = 0;
      v284 = 0;
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_94:
  v34 = __sb__runningInSpringBoard();
  LODWORD(v293) = v32;
  HIDWORD(v292) = v33;
  if (v34)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v2 = 0;
      v35 = 0;
      goto LABEL_103;
    }
  }

  else
  {
    v252 = [MEMORY[0x277D75418] currentDevice];
    if ([v252 userInterfaceIdiom] != 1)
    {
      v35 = 0;
      v2 = 1;
      goto LABEL_103;
    }
  }

  v2 = v34 ^ 1u;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v246 = [MEMORY[0x277D759A0] mainScreen];
    [v246 _referenceBounds];
  }

  v35 = v27 ^ 1;
  BSSizeRoundForScale();
  if (v36 >= *(MEMORY[0x277D66E30] + 280))
  {
    HIDWORD(v291) = v27 ^ 1;
    LODWORD(v292) = v2;
    LODWORD(v291) = 0;
    v290 = 0;
    v289 = 0;
    v288 = 0;
    v287 = 0;
    v286 = 0;
    v285 = 0;
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    goto LABEL_130;
  }

LABEL_103:
  v37 = __sb__runningInSpringBoard();
  LODWORD(v292) = v2;
  HIDWORD(v291) = v35;
  if (v37)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      LODWORD(v291) = 0;
      HIDWORD(v290) = 0;
      goto LABEL_113;
    }
  }

  else
  {
    v250 = [MEMORY[0x277D75418] currentDevice];
    if ([v250 userInterfaceIdiom] != 1)
    {
      HIDWORD(v290) = 0;
      LODWORD(v291) = 1;
      goto LABEL_113;
    }
  }

  LODWORD(v291) = v37 ^ 1;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v242 = [MEMORY[0x277D759A0] mainScreen];
    [v242 _referenceBounds];
  }

  HIDWORD(v290) = v27 ^ 1;
  BSSizeRoundForScale();
  if (v44 >= *(MEMORY[0x277D66E30] + 264))
  {
    LODWORD(v290) = 0;
    v289 = 0;
    v288 = 0;
    v287 = 0;
    v286 = 0;
    v285 = 0;
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    goto LABEL_130;
  }

LABEL_113:
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      LODWORD(v290) = 0;
      HIDWORD(v289) = 0;
      goto LABEL_360;
    }
  }

  else
  {
    v248 = [MEMORY[0x277D75418] currentDevice];
    if ([v248 userInterfaceIdiom] != 1)
    {
      HIDWORD(v289) = 0;
      LODWORD(v290) = 1;
      goto LABEL_360;
    }
  }

  LODWORD(v290) = v45 ^ 1;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v235 = [MEMORY[0x277D759A0] mainScreen];
    [v235 _referenceBounds];
  }

  HIDWORD(v289) = v27 ^ 1;
  BSSizeRoundForScale();
  if (v51 >= *(MEMORY[0x277D66E30] + 248))
  {
    LODWORD(v289) = 0;
    v288 = 0;
    v287 = 0;
    v286 = 0;
    v285 = 0;
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    goto LABEL_130;
  }

LABEL_360:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_362;
    }

LABEL_368:
    v288 = 0;
    v287 = 0;
    v286 = 0;
    v285 = 0;
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    LODWORD(v289) = v27 ^ 1;
    goto LABEL_130;
  }

  v244 = [MEMORY[0x277D75418] currentDevice];
  if ([v244 userInterfaceIdiom] == 1)
  {
    goto LABEL_368;
  }

LABEL_362:
  LODWORD(v289) = v27 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_366:
    v288 = 0;
    goto LABEL_391;
  }

  v52 = __sb__runningInSpringBoard();
  if (v52)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_366;
    }
  }

  else
  {
    v231 = [MEMORY[0x277D75418] currentDevice];
    if ([v231 userInterfaceIdiom])
    {
      v288 = 0x100000000;
      goto LABEL_391;
    }
  }

  HIDWORD(v288) = v52 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v56 = __sb__runningInSpringBoard();
    if (v56)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v35 = [MEMORY[0x277D759A0] mainScreen];
      [v35 _referenceBounds];
    }

    v226 = v35;
    v27 = v56 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v288) = v27;
    if (v64 >= *(MEMORY[0x277D66E30] + 200))
    {
      v287 = 0;
      v286 = 0;
      v285 = 0;
      v284 = 0;
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v288) = 0;
  }

LABEL_391:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v287 = 0;
      goto LABEL_401;
    }
  }

  else
  {
    v233 = [MEMORY[0x277D75418] currentDevice];
    if ([v233 userInterfaceIdiom])
    {
      v287 = 0x100000000;
      goto LABEL_401;
    }
  }

  HIDWORD(v287) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v222 = [MEMORY[0x277D759A0] mainScreen];
      [v222 _referenceBounds];
    }

    LODWORD(v287) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_405;
    }
  }

  else
  {
    LODWORD(v287) = 0;
  }

LABEL_401:
  if (_SBF_Private_IsD94Like())
  {
    v286 = 0;
    v285 = 0;
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 270.66666;
    goto LABEL_130;
  }

LABEL_405:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_409:
    v286 = 0;
    goto LABEL_447;
  }

  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_409;
    }
  }

  else
  {
    v224 = [MEMORY[0x277D75418] currentDevice];
    if ([v224 userInterfaceIdiom])
    {
      v286 = 0x100000000;
      goto LABEL_447;
    }
  }

  HIDWORD(v286) = v58 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v207 = [MEMORY[0x277D759A0] mainScreen];
      [v207 _referenceBounds];
    }

    LODWORD(v286) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v79 >= *(MEMORY[0x277D66E30] + 136))
    {
      v285 = 0;
      v284 = 0;
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v286) = 0;
  }

LABEL_447:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v285 = 0;
      goto LABEL_457;
    }
  }

  else
  {
    v229 = [MEMORY[0x277D75418] currentDevice];
    if ([v229 userInterfaceIdiom])
    {
      v285 = 0x100000000;
      goto LABEL_457;
    }
  }

  HIDWORD(v285) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v215 = [MEMORY[0x277D759A0] mainScreen];
      [v215 _referenceBounds];
    }

    LODWORD(v285) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_461;
    }
  }

  else
  {
    LODWORD(v285) = 0;
  }

LABEL_457:
  if (_SBF_Private_IsD64Like())
  {
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 270.66666;
    goto LABEL_130;
  }

LABEL_461:
  v67 = __sb__runningInSpringBoard();
  if (v67)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v284 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    v227 = [MEMORY[0x277D75418] currentDevice];
    if ([v227 userInterfaceIdiom])
    {
      v284 = 0x100000000;
      goto LABEL_471;
    }
  }

  HIDWORD(v284) = v67 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v68 = __sb__runningInSpringBoard();
    if (v68)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v209 = [MEMORY[0x277D759A0] mainScreen];
      [v209 _referenceBounds];
    }

    v27 = v68 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v284) = v27;
    if (v77 >= *(MEMORY[0x277D66E30] + 136))
    {
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v284) = 0;
  }

LABEL_471:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v283 = 0;
      goto LABEL_515;
    }
  }

  else
  {
    v220 = [MEMORY[0x277D75418] currentDevice];
    if ([v220 userInterfaceIdiom])
    {
      v283 = 0x100000000;
      goto LABEL_515;
    }
  }

  HIDWORD(v283) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v205 = [MEMORY[0x277D759A0] mainScreen];
      [v205 _referenceBounds];
    }

    LODWORD(v283) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v81 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_537;
    }
  }

  else
  {
    LODWORD(v283) = 0;
  }

LABEL_515:
  if (_SBF_Private_IsD54())
  {
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 270.66666;
    goto LABEL_130;
  }

LABEL_537:
  v82 = __sb__runningInSpringBoard();
  if (v82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v282 = 0;
      goto LABEL_555;
    }
  }

  else
  {
    v218 = [MEMORY[0x277D75418] currentDevice];
    if ([v218 userInterfaceIdiom])
    {
      v282 = 0x100000000;
      goto LABEL_555;
    }
  }

  HIDWORD(v282) = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v199 = [MEMORY[0x277D759A0] mainScreen];
      [v199 _referenceBounds];
    }

    LODWORD(v282) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v89 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v282) = 0;
  }

LABEL_555:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v85 = 0;
      LODWORD(v281) = 0;
      goto LABEL_575;
    }
  }

  else
  {
    v213 = [MEMORY[0x277D75418] currentDevice];
    if ([v213 userInterfaceIdiom])
    {
      LODWORD(v281) = 0;
      v85 = 1;
      goto LABEL_575;
    }
  }

  v85 = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v197 = [MEMORY[0x277D759A0] mainScreen];
      [v197 _referenceBounds];
    }

    LODWORD(v281) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v91 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_595;
    }
  }

  else
  {
    LODWORD(v281) = 0;
  }

LABEL_575:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    HIDWORD(v281) = v85;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    goto LABEL_130;
  }

LABEL_595:
  HIDWORD(v281) = v85;
  if (!_SBF_Private_IsD93Like())
  {
LABEL_599:
    v280 = 0;
    goto LABEL_615;
  }

  v92 = __sb__runningInSpringBoard();
  if (v92)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_599;
    }
  }

  else
  {
    v203 = [MEMORY[0x277D75418] currentDevice];
    if ([v203 userInterfaceIdiom])
    {
      v280 = 0x100000000;
      goto LABEL_615;
    }
  }

  HIDWORD(v280) = v92 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v95 = __sb__runningInSpringBoard();
    if (v95)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v85 = [MEMORY[0x277D759A0] mainScreen];
      [v85 _referenceBounds];
    }

    v196 = v85;
    v27 = v95 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v280) = v27;
    if (v105 >= *(MEMORY[0x277D66E30] + 184))
    {
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v280) = 0;
  }

LABEL_615:
  v96 = __sb__runningInSpringBoard();
  if (v96)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v279) = 0;
      v27 = 0;
      goto LABEL_625;
    }
  }

  else
  {
    v211 = [MEMORY[0x277D75418] currentDevice];
    if ([v211 userInterfaceIdiom])
    {
      v27 = 0;
      HIDWORD(v279) = 1;
      goto LABEL_625;
    }
  }

  HIDWORD(v279) = v96 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v97 = __sb__runningInSpringBoard();
    if (v97)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v190 = [MEMORY[0x277D759A0] mainScreen];
      [v190 _referenceBounds];
    }

    v27 = v97 ^ 1u;
    BSSizeRoundForScale();
    if (v98 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_629;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_625:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(v279) = v27;
    v278 = 0;
    v277 = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 253.5;
    goto LABEL_130;
  }

LABEL_629:
  LODWORD(v279) = v27;
  if (!_SBF_Private_IsD63Like())
  {
LABEL_633:
    v278 = 0;
    goto LABEL_671;
  }

  v99 = __sb__runningInSpringBoard();
  if (v99)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_633;
    }
  }

  else
  {
    v194 = [MEMORY[0x277D75418] currentDevice];
    if ([v194 userInterfaceIdiom])
    {
      v278 = 0x100000000;
      goto LABEL_671;
    }
  }

  HIDWORD(v278) = v99 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v177 = [MEMORY[0x277D759A0] mainScreen];
      [v177 _referenceBounds];
    }

    LODWORD(v278) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v114 >= *(MEMORY[0x277D66E30] + 104))
    {
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v278) = 0;
  }

LABEL_671:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v277 = 0;
      goto LABEL_681;
    }
  }

  else
  {
    v201 = [MEMORY[0x277D75418] currentDevice];
    if ([v201 userInterfaceIdiom])
    {
      v277 = 0x100000000;
      goto LABEL_681;
    }
  }

  HIDWORD(v277) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v183 = [MEMORY[0x277D759A0] mainScreen];
      [v183 _referenceBounds];
    }

    LODWORD(v277) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v107 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_685;
    }
  }

  else
  {
    LODWORD(v277) = 0;
  }

LABEL_681:
  if (_SBF_Private_IsD63Like())
  {
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 253.5;
    goto LABEL_130;
  }

LABEL_685:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_689:
    v276 = 0;
    goto LABEL_727;
  }

  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_689;
    }
  }

  else
  {
    v186 = [MEMORY[0x277D75418] currentDevice];
    if ([v186 userInterfaceIdiom])
    {
      v276 = 0x100000000;
      goto LABEL_727;
    }
  }

  HIDWORD(v276) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v169 = [MEMORY[0x277D759A0] mainScreen];
      [v169 _referenceBounds];
    }

    LODWORD(v276) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v128 >= *(MEMORY[0x277D66E30] + 216))
    {
      v275 = 0;
      v274 = 0;
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v276) = 0;
  }

LABEL_727:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v275 = 0;
      goto LABEL_737;
    }
  }

  else
  {
    v192 = [MEMORY[0x277D75418] currentDevice];
    if ([v192 userInterfaceIdiom])
    {
      v275 = 0x100000000;
      goto LABEL_737;
    }
  }

  HIDWORD(v275) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v175 = [MEMORY[0x277D759A0] mainScreen];
      [v175 _referenceBounds];
    }

    LODWORD(v275) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v116 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_741;
    }
  }

  else
  {
    LODWORD(v275) = 0;
  }

LABEL_737:
  if (_SBF_Private_IsD23Like())
  {
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 253.5;
    goto LABEL_130;
  }

LABEL_741:
  v117 = __sb__runningInSpringBoard();
  if (v117)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v274 = 0;
      goto LABEL_751;
    }
  }

  else
  {
    v188 = [MEMORY[0x277D75418] currentDevice];
    if ([v188 userInterfaceIdiom])
    {
      v274 = 0x100000000;
      goto LABEL_751;
    }
  }

  HIDWORD(v274) = v117 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v171 = [MEMORY[0x277D759A0] mainScreen];
      [v171 _referenceBounds];
    }

    LODWORD(v274) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v126 >= *(MEMORY[0x277D66E30] + 120))
    {
      v273 = 0;
      v272 = 0;
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v274) = 0;
  }

LABEL_751:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v273 = 0;
      goto LABEL_795;
    }
  }

  else
  {
    v181 = [MEMORY[0x277D75418] currentDevice];
    if ([v181 userInterfaceIdiom])
    {
      v273 = 0x100000000;
      goto LABEL_795;
    }
  }

  HIDWORD(v273) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v167 = [MEMORY[0x277D759A0] mainScreen];
      [v167 _referenceBounds];
    }

    LODWORD(v273) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v130 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_817;
    }
  }

  else
  {
    LODWORD(v273) = 0;
  }

LABEL_795:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    goto LABEL_130;
  }

LABEL_817:
  v131 = __sb__runningInSpringBoard();
  if (v131)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v272 = 0;
      goto LABEL_835;
    }
  }

  else
  {
    v179 = [MEMORY[0x277D75418] currentDevice];
    if ([v179 userInterfaceIdiom])
    {
      v272 = 0x100000000;
      goto LABEL_835;
    }
  }

  HIDWORD(v272) = v131 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v165 = [MEMORY[0x277D759A0] mainScreen];
      [v165 _referenceBounds];
    }

    LODWORD(v272) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v137 >= *(MEMORY[0x277D66E30] + 104))
    {
      v271 = 0;
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 309.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v272) = 0;
  }

LABEL_835:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v271 = 0;
      goto LABEL_855;
    }
  }

  else
  {
    v173 = [MEMORY[0x277D75418] currentDevice];
    if ([v173 userInterfaceIdiom])
    {
      v271 = 0x100000000;
      goto LABEL_855;
    }
  }

  HIDWORD(v271) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v271) = 0;
    goto LABEL_855;
  }

  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v164 = [MEMORY[0x277D759A0] mainScreen];
    [v164 _referenceBounds];
  }

  LODWORD(v271) = v27 ^ 1;
  BSSizeRoundForScale();
  if (v139 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_855:
    if (_SBF_Private_IsD53())
    {
      v270 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 253.5;
      goto LABEL_130;
    }
  }

  v27 = qword_21EC96000;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_876;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_878;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_876:
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 309.0;
    goto LABEL_130;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_878:
    v270 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 263.66666;
    goto LABEL_130;
  }

  v141 = __sb__runningInSpringBoard();
  if (v141)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v270 = 0;
      goto LABEL_905;
    }
  }

  else
  {
    v163 = [MEMORY[0x277D75418] currentDevice];
    if ([v163 userInterfaceIdiom])
    {
      v270 = 0x100000000;
      goto LABEL_905;
    }
  }

  HIDWORD(v270) = v141 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v161 = [MEMORY[0x277D759A0] mainScreen];
      [v161 _referenceBounds];
    }

    LODWORD(v270) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v154 >= *(MEMORY[0x277D66E30] + 88))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    LODWORD(v270) = 0;
  }

LABEL_905:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v38 = 0;
      v39 = 0;
      goto LABEL_925;
    }
  }

  else
  {
    v162 = [MEMORY[0x277D75418] currentDevice];
    if ([v162 userInterfaceIdiom])
    {
      v39 = 0;
      v38 = 1;
      goto LABEL_925;
    }
  }

  v38 = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v160 = [MEMORY[0x277D759A0] mainScreen];
      [v160 _referenceBounds];
    }

    v39 = v27 ^ 1;
    BSSizeRoundForScale();
    if (v156 >= *(MEMORY[0x277D66E30] + 72))
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_925:
  v145 = __sb__runningInSpringBoard();
  if (!v145)
  {
    v27 = [MEMORY[0x277D75418] currentDevice];
    if ([v27 userInterfaceIdiom])
    {
      v41 = 0;
      v40 = 1;
      goto LABEL_945;
    }

LABEL_941:
    v40 = v145 ^ 1;
    v148 = __sb__runningInSpringBoard();
    if (v148)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
    }

    v41 = v148 ^ 1;
    BSSizeRoundForScale();
    if (v149 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_948;
    }

    goto LABEL_945;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_941;
  }

  v40 = 0;
  v41 = 0;
LABEL_945:
  v150 = __sb__runningInSpringBoard();
  if (v150)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_948:
      v42 = 0;
      v43 = 0.0;
      goto LABEL_130;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom])
    {
      v43 = 0.0;
      v42 = 1;
      goto LABEL_130;
    }
  }

  v42 = v150 ^ 1;
  v158 = __sb__runningInSpringBoard();
  if (v158)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v150 = [MEMORY[0x277D759A0] mainScreen];
    [v150 _referenceBounds];
  }

  BSSizeRoundForScale();
  v43 = 0.0;
  if (v158 != 1)
  {
  }

LABEL_130:
  if (v42)
  {
  }

  if (v41)
  {
  }

  if (v40)
  {
  }

  if (v39)
  {
  }

  if (v38)
  {
  }

  if (v270)
  {
  }

  if (HIDWORD(v270))
  {
  }

  if (v271)
  {
  }

  if (HIDWORD(v271))
  {
  }

  if (v272)
  {
  }

  if (HIDWORD(v272))
  {
  }

  if (v273)
  {
  }

  if (HIDWORD(v273))
  {
  }

  if (v274)
  {
  }

  if (HIDWORD(v274))
  {
  }

  if (v275)
  {
  }

  if (HIDWORD(v275))
  {
  }

  if (v276)
  {
  }

  if (HIDWORD(v276))
  {
  }

  if (v277)
  {
  }

  if (HIDWORD(v277))
  {
  }

  if (v278)
  {
  }

  if (HIDWORD(v278))
  {
  }

  if (v279)
  {
  }

  if (HIDWORD(v279))
  {
  }

  if (v280)
  {
  }

  if (HIDWORD(v280))
  {
  }

  if (v281)
  {
  }

  if (HIDWORD(v281))
  {
  }

  if (v282)
  {
  }

  if (HIDWORD(v282))
  {
  }

  if (v283)
  {
  }

  if (HIDWORD(v283))
  {
  }

  if (v284)
  {
  }

  if (HIDWORD(v284))
  {
  }

  if (v285)
  {
  }

  if (HIDWORD(v285))
  {
  }

  if (v286)
  {
  }

  if (HIDWORD(v286))
  {
  }

  if (v287)
  {
  }

  if (HIDWORD(v287))
  {
  }

  if (v288)
  {
  }

  if (HIDWORD(v288))
  {
  }

  if (v289)
  {
  }

  if (HIDWORD(v289))
  {
  }

  if (v290)
  {
  }

  if (HIDWORD(v290))
  {
  }

  if (v291)
  {
  }

  if (HIDWORD(v291))
  {
  }

  if (v292)
  {
  }

  if (HIDWORD(v292))
  {
  }

  if (v293)
  {
  }

  if (HIDWORD(v293))
  {
  }

  if (v294)
  {
  }

  if (v295)
  {
  }

  if (v296)
  {
  }

  if (LODWORD(v320[0]))
  {
  }

  if (HIDWORD(v320[0]))
  {
  }

  if (LODWORD(v320[1]))
  {
  }

  if (HIDWORD(v320[1]))
  {
  }

  if (LODWORD(v320[2]))
  {
  }

  if (HIDWORD(v320[2]))
  {
  }

  if (v297)
  {
  }

  if (v298)
  {
  }

  if (HIDWORD(v298))
  {
  }

  if (v299)
  {
  }

  if (HIDWORD(v299))
  {
  }

  if (v300)
  {
  }

  if (HIDWORD(v300))
  {
  }

  if (v301)
  {
  }

  if (HIDWORD(v301))
  {
  }

  if (v302)
  {
  }

  if (HIDWORD(v302))
  {
  }

  if (v303)
  {
  }

  if (HIDWORD(v303))
  {
  }

  if (v304)
  {
  }

  if (v305)
  {
  }

  if (HIDWORD(v304))
  {
  }

  if (v306)
  {
  }

  if (HIDWORD(v305))
  {
  }

  if (v308)
  {
  }

  if (v307)
  {
  }

  if (HIDWORD(v309))
  {
  }

  if (v309)
  {
  }

  if (v310)
  {
  }

  if (HIDWORD(v310))
  {
  }

  if (v311)
  {
  }

  if (HIDWORD(v311))
  {
  }

  if (v312)
  {
  }

  if (HIDWORD(v312))
  {
  }

  if (v313)
  {
  }

  if (HIDWORD(v313))
  {
  }

  if (v314)
  {
  }

  if (HIDWORD(v314))
  {
  }

  if (v315)
  {
  }

  if (HIDWORD(v315))
  {
  }

  if (v316)
  {
  }

  if (HIDWORD(v316))
  {
  }

  if (v317)
  {
  }

  if (HIDWORD(v317))
  {
  }

  if (*v318)
  {
  }

  if (*&v318[4])
  {
  }

  if (*&v318[8])
  {
  }

  if (*&v318[12])
  {
  }

  if (*&v318[16])
  {
  }

  if (*&v318[20])
  {
  }

  if (*&v318[24])
  {
  }

  if (*&v318[28])
  {
  }

  if (*&v318[32])
  {
  }

  if (*&v318[36])
  {
  }

  if (*&v318[40])
  {
  }

  if (v319)
  {
  }

  if (HIDWORD(v319))
  {
  }

  return v15 / v43;
}

- (CSMagSafeRingConfiguration)initWithRingDiameter:(SBFScreenSpecificCGFloatValue *)a3 lineWidth:(SBFScreenSpecificCGFloatValue *)a4 splashRingDiamter:(SBFScreenSpecificCGFloatValue *)a5
{
  v307 = a4;
  v308 = a5;
  v310.receiver = self;
  v310.super_class = CSMagSafeRingConfiguration;
  v6 = [(CSMagSafeRingConfiguration *)&v310 init];

  v309 = v6;
  if (!v6)
  {
    goto LABEL_530;
  }

  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v269 = [MEMORY[0x277D75418] currentDevice];
    if ([v269 userInterfaceIdiom] != 1)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_11;
    }
  }

  v9 = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v260 = [MEMORY[0x277D759A0] mainScreen];
      [v260 _referenceBounds];
    }

    v8 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v33 == *(MEMORY[0x277D66E30] + 288) && v32 == *(MEMORY[0x277D66E30] + 296))
    {
      HIDWORD(v305[12]) = v10 ^ 1;
      v306 = v9;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      memset(v305, 0, 100);
      a3 = (a3 + 224);
      goto LABEL_68;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_11:
  v11 = __sb__runningInSpringBoard();
  HIDWORD(v305[12]) = v8;
  v306 = v9;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v268 = [MEMORY[0x277D75418] currentDevice];
    if ([v268 userInterfaceIdiom] != 1)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_20;
    }
  }

  v13 = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v259 = [MEMORY[0x277D759A0] mainScreen];
      [v259 _referenceBounds];
    }

    v12 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 440))
    {
      HIDWORD(v305[11]) = v10 ^ 1;
      LODWORD(v305[12]) = v13;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      memset(v305, 0, 92);
      a3 = (a3 + 264);
      goto LABEL_68;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_20:
  v14 = __sb__runningInSpringBoard();
  HIDWORD(v305[11]) = v12;
  LODWORD(v305[12]) = v13;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v267 = [MEMORY[0x277D75418] currentDevice];
    if ([v267 userInterfaceIdiom] != 1)
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_29;
    }
  }

  v16 = v14 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v258 = [MEMORY[0x277D759A0] mainScreen];
      [v258 _referenceBounds];
    }

    v15 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 376))
    {
      HIDWORD(v305[10]) = v10 ^ 1;
      LODWORD(v305[11]) = v16;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      memset(v305, 0, 84);
      a3 = (a3 + 248);
      goto LABEL_68;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_29:
  v17 = __sb__runningInSpringBoard();
  HIDWORD(v305[10]) = v15;
  LODWORD(v305[11]) = v16;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v305[9]) = 0;
      v18 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v266 = [MEMORY[0x277D75418] currentDevice];
    if ([v266 userInterfaceIdiom] != 1)
    {
      HIDWORD(v305[9]) = 0;
      v18 = 1;
      goto LABEL_38;
    }
  }

  v18 = v17 ^ 1;
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v263 = [MEMORY[0x277D759A0] mainScreen];
    [v263 _referenceBounds];
  }

  HIDWORD(v305[9]) = v10 ^ 1;
  BSSizeRoundForScale();
  if (v20 >= *(MEMORY[0x277D66E30] + 280))
  {
    LODWORD(v305[10]) = v18;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    memset(v305, 0, 76);
    a3 = (a3 + 256);
    goto LABEL_68;
  }

LABEL_38:
  v21 = __sb__runningInSpringBoard();
  LODWORD(v305[10]) = v18;
  if (v21)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v305[8] + 4) = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v265 = [MEMORY[0x277D75418] currentDevice];
    if ([v265 userInterfaceIdiom] != 1)
    {
      *(&v305[8] + 4) = 0x100000000;
      goto LABEL_48;
    }
  }

  LODWORD(v305[9]) = v21 ^ 1;
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v261 = [MEMORY[0x277D759A0] mainScreen];
    [v261 _referenceBounds];
  }

  HIDWORD(v305[8]) = v10 ^ 1;
  BSSizeRoundForScale();
  if (v30 >= *(MEMORY[0x277D66E30] + 264))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    memset(v305, 0, 68);
    a3 = (a3 + 240);
    goto LABEL_68;
  }

LABEL_48:
  v31 = __sb__runningInSpringBoard();
  if (v31)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v305[7] + 4) = 0;
      goto LABEL_569;
    }
  }

  else
  {
    v264 = [MEMORY[0x277D75418] currentDevice];
    if ([v264 userInterfaceIdiom] != 1)
    {
      HIDWORD(v305[7]) = 0;
      LODWORD(v305[8]) = 1;
      goto LABEL_569;
    }
  }

  LODWORD(v305[8]) = v31 ^ 1;
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v257 = [MEMORY[0x277D759A0] mainScreen];
    [v257 _referenceBounds];
  }

  HIDWORD(v305[7]) = v10 ^ 1;
  BSSizeRoundForScale();
  if (v98 >= *(MEMORY[0x277D66E30] + 248))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    memset(v305, 0, 60);
    a3 = (a3 + 232);
    goto LABEL_68;
  }

LABEL_569:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_571;
    }

LABEL_577:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    memset(v305, 0, 56);
    a3 = (a3 + 216);
    LODWORD(v305[7]) = v10 ^ 1;
    goto LABEL_68;
  }

  v262 = [MEMORY[0x277D75418] currentDevice];
  if ([v262 userInterfaceIdiom] == 1)
  {
    goto LABEL_577;
  }

LABEL_571:
  LODWORD(v305[7]) = v10 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_575:
    v305[6] = 0;
    goto LABEL_639;
  }

  v99 = __sb__runningInSpringBoard();
  if (v99)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_575;
    }
  }

  else
  {
    v255 = [MEMORY[0x277D75418] currentDevice];
    if ([v255 userInterfaceIdiom])
    {
      v305[6] = 0x100000000;
      goto LABEL_639;
    }
  }

  HIDWORD(v305[6]) = v99 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v248 = [MEMORY[0x277D759A0] mainScreen];
      [v248 _referenceBounds];
    }

    LODWORD(v305[6]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v108 >= *(MEMORY[0x277D66E30] + 200))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      memset(v305, 0, 48);
      a3 = (a3 + 184);
      goto LABEL_68;
    }
  }

  else
  {
    LODWORD(v305[6]) = 0;
  }

LABEL_639:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[5] = 0;
      goto LABEL_649;
    }
  }

  else
  {
    v256 = [MEMORY[0x277D75418] currentDevice];
    if ([v256 userInterfaceIdiom])
    {
      v305[5] = 0x100000000;
      goto LABEL_649;
    }
  }

  HIDWORD(v305[5]) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v251 = [MEMORY[0x277D759A0] mainScreen];
      [v251 _referenceBounds];
    }

    LODWORD(v305[5]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v104 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_653;
    }
  }

  else
  {
    LODWORD(v305[5]) = 0;
  }

LABEL_649:
  if (_SBF_Private_IsD94Like())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    memset(v305, 0, 40);
    a3 = (a3 + 192);
    goto LABEL_68;
  }

LABEL_653:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_657:
    v305[4] = 0;
    goto LABEL_741;
  }

  v105 = __sb__runningInSpringBoard();
  if (v105)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_657;
    }
  }

  else
  {
    v252 = [MEMORY[0x277D75418] currentDevice];
    if ([v252 userInterfaceIdiom])
    {
      v305[4] = 0x100000000;
      goto LABEL_741;
    }
  }

  HIDWORD(v305[4]) = v105 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v243 = [MEMORY[0x277D759A0] mainScreen];
      [v243 _referenceBounds];
    }

    LODWORD(v305[4]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v120 >= *(MEMORY[0x277D66E30] + 136))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      memset(v305, 0, 32);
      a3 = (a3 + 200);
      goto LABEL_68;
    }
  }

  else
  {
    LODWORD(v305[4]) = 0;
  }

LABEL_741:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[3] = 0;
      goto LABEL_751;
    }
  }

  else
  {
    v254 = [MEMORY[0x277D75418] currentDevice];
    if ([v254 userInterfaceIdiom])
    {
      v305[3] = 0x100000000;
      goto LABEL_751;
    }
  }

  HIDWORD(v305[3]) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v247 = [MEMORY[0x277D759A0] mainScreen];
      [v247 _referenceBounds];
    }

    LODWORD(v305[3]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v113 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_755;
    }
  }

  else
  {
    LODWORD(v305[3]) = 0;
  }

LABEL_751:
  if (_SBF_Private_IsD64Like())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    memset(v305, 0, 24);
    a3 = (a3 + 208);
    goto LABEL_68;
  }

LABEL_755:
  v114 = __sb__runningInSpringBoard();
  if (v114)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[2] = 0;
      goto LABEL_765;
    }
  }

  else
  {
    v253 = [MEMORY[0x277D75418] currentDevice];
    if ([v253 userInterfaceIdiom])
    {
      v305[2] = 0x100000000;
      goto LABEL_765;
    }
  }

  HIDWORD(v305[2]) = v114 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v244 = [MEMORY[0x277D759A0] mainScreen];
      [v244 _referenceBounds];
    }

    LODWORD(v305[2]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v117 >= *(MEMORY[0x277D66E30] + 136))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      v305[0] = 0;
      v305[1] = 0;
      a3 = (a3 + 168);
      goto LABEL_68;
    }
  }

  else
  {
    LODWORD(v305[2]) = 0;
  }

LABEL_765:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[1] = 0;
      goto LABEL_787;
    }
  }

  else
  {
    v250 = [MEMORY[0x277D75418] currentDevice];
    if ([v250 userInterfaceIdiom])
    {
      v305[1] = 0x100000000;
      goto LABEL_787;
    }
  }

  HIDWORD(v305[1]) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v242 = [MEMORY[0x277D759A0] mainScreen];
      [v242 _referenceBounds];
    }

    LODWORD(v305[1]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v125 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_825;
    }
  }

  else
  {
    LODWORD(v305[1]) = 0;
  }

LABEL_787:
  if (_SBF_Private_IsD54())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, sizeof(v304));
    v281 = 0;
    v283 = 0;
    v305[0] = 0;
    a3 = (a3 + 176);
    goto LABEL_68;
  }

LABEL_825:
  v126 = __sb__runningInSpringBoard();
  if (v126)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[0] = 0;
      goto LABEL_855;
    }
  }

  else
  {
    v249 = [MEMORY[0x277D75418] currentDevice];
    if ([v249 userInterfaceIdiom])
    {
      v305[0] = 0x100000000;
      goto LABEL_855;
    }
  }

  HIDWORD(v305[0]) = v126 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v239 = [MEMORY[0x277D759A0] mainScreen];
      [v239 _referenceBounds];
    }

    LODWORD(v305[0]) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v133 >= *(MEMORY[0x277D66E30] + 120) && _SBF_Private_IsN84OrSimilarDevice())
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, sizeof(v304));
      v281 = 0;
      v283 = 0;
      a3 = (a3 + 104);
      goto LABEL_68;
    }
  }

  else
  {
    LODWORD(v305[0]) = 0;
  }

LABEL_855:
  v129 = __sb__runningInSpringBoard();
  if (v129)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v10 = 0;
      v283 = 0;
      goto LABEL_879;
    }
  }

  else
  {
    v246 = [MEMORY[0x277D75418] currentDevice];
    if ([v246 userInterfaceIdiom])
    {
      v10 = 0;
      v283 = 1;
      goto LABEL_879;
    }
  }

  v283 = v129 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v130 = __sb__runningInSpringBoard();
    if (v130)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v238 = [MEMORY[0x277D759A0] mainScreen];
      [v238 _referenceBounds];
    }

    v10 = v130 ^ 1u;
    BSSizeRoundForScale();
    if (v138 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_914;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_879:
  if (_SBF_Private_IsD33OrSimilarDevice() && _SBF_Private_IsN84ZoomedOrSimilarDevice())
  {
    *&v304[16] = v10;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    memset(v304, 0, 16);
    v281 = 0;
    a3 = (a3 + 112);
    goto LABEL_68;
  }

LABEL_914:
  *&v304[16] = v10;
  if (!_SBF_Private_IsD93Like())
  {
LABEL_918:
    v281 = 0;
    *&v304[12] = 0;
    goto LABEL_975;
  }

  v139 = __sb__runningInSpringBoard();
  if (v139)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_918;
    }
  }

  else
  {
    v241 = [MEMORY[0x277D75418] currentDevice];
    if ([v241 userInterfaceIdiom])
    {
      v281 = 0;
      *&v304[12] = 1;
      goto LABEL_975;
    }
  }

  *&v304[12] = v139 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v146 = __sb__runningInSpringBoard();
    if (v146)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v232 = [MEMORY[0x277D759A0] mainScreen];
      [v232 _referenceBounds];
    }

    v10 = v146 ^ 1u;
    BSSizeRoundForScale();
    v281 = v10;
    if (v151 >= *(MEMORY[0x277D66E30] + 184))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      v301 = 0;
      memset(v304, 0, 12);
      a3 = (a3 + 88);
      goto LABEL_68;
    }
  }

  else
  {
    v281 = 0;
  }

LABEL_975:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v304[4] = 0;
      goto LABEL_985;
    }
  }

  else
  {
    v245 = [MEMORY[0x277D75418] currentDevice];
    if ([v245 userInterfaceIdiom])
    {
      *&v304[4] = 0;
      *&v304[8] = 1;
      goto LABEL_985;
    }
  }

  *&v304[8] = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v235 = [MEMORY[0x277D759A0] mainScreen];
      [v235 _referenceBounds];
    }

    *&v304[4] = v10 ^ 1;
    BSSizeRoundForScale();
    if (v147 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_989;
    }
  }

  else
  {
    *&v304[4] = 0;
  }

LABEL_985:
  if (_SBF_Private_IsD93Like())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    v298 = 0;
    v301 = 0;
    *v304 = 0;
    a3 = (a3 + 96);
    goto LABEL_68;
  }

LABEL_989:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_993:
    HIDWORD(v301) = 0;
    *v304 = 0;
    goto LABEL_1059;
  }

  v148 = __sb__runningInSpringBoard();
  if (v148)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_993;
    }
  }

  else
  {
    v237 = [MEMORY[0x277D75418] currentDevice];
    if ([v237 userInterfaceIdiom])
    {
      HIDWORD(v301) = 0;
      *v304 = 1;
      goto LABEL_1059;
    }
  }

  *v304 = v148 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v156 = __sb__runningInSpringBoard();
    if (v156)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v228 = [MEMORY[0x277D759A0] mainScreen];
      [v228 _referenceBounds];
    }

    v10 = v156 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v301) = v10;
    if (v161 >= *(MEMORY[0x277D66E30] + 104))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      v295 = 0;
      v298 = 0;
      LODWORD(v301) = 0;
      a3 = (a3 + 136);
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v301) = 0;
  }

LABEL_1059:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v298) = 0;
      LODWORD(v301) = 0;
      goto LABEL_1069;
    }
  }

  else
  {
    v240 = [MEMORY[0x277D75418] currentDevice];
    if ([v240 userInterfaceIdiom])
    {
      HIDWORD(v298) = 0;
      LODWORD(v301) = 1;
      goto LABEL_1069;
    }
  }

  LODWORD(v301) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v231 = [MEMORY[0x277D759A0] mainScreen];
      [v231 _referenceBounds];
    }

    HIDWORD(v298) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v157 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1073;
    }
  }

  else
  {
    HIDWORD(v298) = 0;
  }

LABEL_1069:
  if (_SBF_Private_IsD63Like())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    v292 = 0;
    v295 = 0;
    LODWORD(v298) = 0;
    a3 = (a3 + 144);
    goto LABEL_68;
  }

LABEL_1073:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1077:
    HIDWORD(v295) = 0;
    LODWORD(v298) = 0;
    goto LABEL_1161;
  }

  v158 = __sb__runningInSpringBoard();
  if (v158)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1077;
    }
  }

  else
  {
    v233 = [MEMORY[0x277D75418] currentDevice];
    if ([v233 userInterfaceIdiom])
    {
      HIDWORD(v295) = 0;
      LODWORD(v298) = 1;
      goto LABEL_1161;
    }
  }

  LODWORD(v298) = v158 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v224 = [MEMORY[0x277D759A0] mainScreen];
      [v224 _referenceBounds];
    }

    HIDWORD(v295) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 216))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      v288 = 0;
      v292 = 0;
      LODWORD(v295) = 0;
      a3 = (a3 + 152);
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v295) = 0;
  }

LABEL_1161:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v292) = 0;
      LODWORD(v295) = 0;
      goto LABEL_1171;
    }
  }

  else
  {
    v236 = [MEMORY[0x277D75418] currentDevice];
    if ([v236 userInterfaceIdiom])
    {
      HIDWORD(v292) = 0;
      LODWORD(v295) = 1;
      goto LABEL_1171;
    }
  }

  LODWORD(v295) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v227 = [MEMORY[0x277D759A0] mainScreen];
      [v227 _referenceBounds];
    }

    HIDWORD(v292) = v10 ^ 1;
    BSSizeRoundForScale();
    if (v168 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1175;
    }
  }

  else
  {
    HIDWORD(v292) = 0;
  }

LABEL_1171:
  if (_SBF_Private_IsD23Like())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    v278 = 0;
    v288 = 0;
    LODWORD(v292) = 0;
    a3 = (a3 + 160);
    goto LABEL_68;
  }

LABEL_1175:
  v169 = __sb__runningInSpringBoard();
  if (v169)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v288) = 0;
      LODWORD(v292) = 0;
      goto LABEL_1185;
    }
  }

  else
  {
    v234 = [MEMORY[0x277D75418] currentDevice];
    if ([v234 userInterfaceIdiom])
    {
      HIDWORD(v288) = 0;
      LODWORD(v292) = 1;
      goto LABEL_1185;
    }
  }

  LODWORD(v292) = v169 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v170 = __sb__runningInSpringBoard();
    if (v170)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v225 = [MEMORY[0x277D759A0] mainScreen];
      [v225 _referenceBounds];
    }

    v10 = v170 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v288) = v10;
    if (v173 >= *(MEMORY[0x277D66E30] + 120))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      v275 = 0;
      v286 = 0;
      v278 = 0;
      LODWORD(v288) = 0;
      a3 = (a3 + 120);
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v288) = 0;
  }

LABEL_1185:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v278 = 0;
      LODWORD(v288) = 0;
      goto LABEL_1207;
    }
  }

  else
  {
    v230 = [MEMORY[0x277D75418] currentDevice];
    if ([v230 userInterfaceIdiom])
    {
      v278 = 0;
      LODWORD(v288) = 1;
      goto LABEL_1207;
    }
  }

  LODWORD(v288) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v223 = [MEMORY[0x277D759A0] mainScreen];
      [v223 _referenceBounds];
    }

    v278 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v181 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1245;
    }
  }

  else
  {
    v278 = 0;
  }

LABEL_1207:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v272 = 0;
    v275 = 0;
    v286 = 0;
    a3 = (a3 + 128);
    goto LABEL_68;
  }

LABEL_1245:
  v182 = __sb__runningInSpringBoard();
  if (v182)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v286 = 0;
      HIDWORD(v275) = 0;
      goto LABEL_1275;
    }
  }

  else
  {
    v229 = [MEMORY[0x277D75418] currentDevice];
    if ([v229 userInterfaceIdiom])
    {
      v286 = 0;
      HIDWORD(v275) = 1;
      goto LABEL_1275;
    }
  }

  HIDWORD(v275) = v182 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v222 = [MEMORY[0x277D759A0] mainScreen];
      [v222 _referenceBounds];
    }

    v286 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v188 >= *(MEMORY[0x277D66E30] + 104))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v272 = 0;
      LODWORD(v275) = 0;
      a3 = (a3 + 72);
      goto LABEL_68;
    }
  }

  else
  {
    v286 = 0;
  }

LABEL_1275:
  v183 = __sb__runningInSpringBoard();
  if (v183)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v10 = 0;
      v184 = 0;
      goto LABEL_1297;
    }
  }

  else
  {
    v226 = [MEMORY[0x277D75418] currentDevice];
    if ([v226 userInterfaceIdiom])
    {
      v10 = 0;
      v184 = 1;
      goto LABEL_1297;
    }
  }

  v184 = v183 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v185 = __sb__runningInSpringBoard();
    if (v185)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v221 = [MEMORY[0x277D759A0] mainScreen];
      [v221 _referenceBounds];
    }

    v10 = v185 ^ 1u;
    BSSizeRoundForScale();
    if (v191 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1334;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_1297:
  if (_SBF_Private_IsD53())
  {
    v272 = v10;
    LODWORD(v275) = v184;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    a3 = (a3 + 80);
    goto LABEL_68;
  }

LABEL_1334:
  LODWORD(v275) = v184;
  v272 = v10;
  if (_SBF_Private_IsD16() && _SBF_Private_IsD52OrSimilarDevice())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    a3 = (a3 + 40);
    goto LABEL_68;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && _SBF_Private_IsD16())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    a3 = (a3 + 48);
    goto LABEL_68;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    a3 = (a3 + 24);
    goto LABEL_68;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    a3 = (a3 + 32);
    goto LABEL_68;
  }

  v194 = __sb__runningInSpringBoard();
  if (v194)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v28 = 0;
      v29 = 0;
      goto LABEL_1386;
    }
  }

  else
  {
    v220 = [MEMORY[0x277D75418] currentDevice];
    if ([v220 userInterfaceIdiom])
    {
      v28 = 0;
      v29 = 1;
      goto LABEL_1386;
    }
  }

  v29 = v194 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v216 = [MEMORY[0x277D759A0] mainScreen];
      [v216 _referenceBounds];
    }

    v28 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v204 >= *(MEMORY[0x277D66E30] + 88))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      a3 = (a3 + 56);
      goto LABEL_68;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_1386:
  v195 = __sb__runningInSpringBoard();
  if (v195)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_1416;
    }
  }

  else
  {
    v219 = [MEMORY[0x277D75418] currentDevice];
    if ([v219 userInterfaceIdiom])
    {
      v26 = 0;
      v27 = 1;
      goto LABEL_1416;
    }
  }

  v27 = v195 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v215 = [MEMORY[0x277D759A0] mainScreen];
      [v215 _referenceBounds];
    }

    v26 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v207 >= *(MEMORY[0x277D66E30] + 72))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a3 = (a3 + 64);
      goto LABEL_68;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_1416:
  v10 = __sb__runningInSpringBoard();
  if (!v10)
  {
    v218 = [MEMORY[0x277D75418] currentDevice];
    if ([v218 userInterfaceIdiom])
    {
      v24 = 0;
      v25 = 1;
      goto LABEL_1448;
    }

LABEL_1444:
    v25 = v10 ^ 1;
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v217 = [MEMORY[0x277D759A0] mainScreen];
      [v217 _referenceBounds];
    }

    v24 = v10 ^ 1;
    BSSizeRoundForScale();
    if (v200 >= *(MEMORY[0x277D66E30] + 56))
    {
      v22 = 0;
      v23 = 0;
      a3 = (a3 + 16);
      goto LABEL_68;
    }

    goto LABEL_1448;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1444;
  }

  v24 = 0;
  v25 = 0;
LABEL_1448:
  v201 = __sb__runningInSpringBoard();
  if (v201)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_68;
    }
  }

  else
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    if ([v10 userInterfaceIdiom])
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_68;
    }
  }

  v23 = v201 ^ 1;
  v212 = __sb__runningInSpringBoard();
  if (v212)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v214 = [MEMORY[0x277D759A0] mainScreen];
    [v214 _referenceBounds];
  }

  v22 = v212 ^ 1;
  BSSizeRoundForScale();
  if (v213 >= *(MEMORY[0x277D66E30] + 40))
  {
    a3 = (a3 + 8);
  }

  v19 = v214;
LABEL_68:
  v309->_ringDiameter = a3->var0;
  if (v22)
  {
  }

  if (v23)
  {
  }

  if (v24)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  if (v27)
  {
  }

  if (v28)
  {
  }

  v37 = HIDWORD(v305[10]);
  if (v29)
  {
  }

  v38 = LODWORD(v305[10]);
  if (v272)
  {
  }

  if (v275)
  {
  }

  if (v286)
  {
  }

  if (HIDWORD(v275))
  {
  }

  if (v278)
  {
  }

  if (v288)
  {
  }

  if (HIDWORD(v288))
  {
  }

  if (v292)
  {
  }

  if (HIDWORD(v292))
  {
  }

  if (v295)
  {
  }

  if (HIDWORD(v295))
  {
  }

  if (v298)
  {
  }

  if (HIDWORD(v298))
  {
  }

  if (v301)
  {
  }

  if (HIDWORD(v301))
  {
  }

  if (*v304)
  {
  }

  if (*&v304[4])
  {
  }

  if (*&v304[8])
  {
  }

  if (v281)
  {
  }

  if (*&v304[12])
  {
  }

  if (*&v304[16])
  {
  }

  if (v283)
  {
  }

  if (LODWORD(v305[0]))
  {
  }

  if (HIDWORD(v305[0]))
  {
  }

  if (LODWORD(v305[1]))
  {
  }

  if (HIDWORD(v305[1]))
  {
  }

  if (LODWORD(v305[2]))
  {
  }

  if (HIDWORD(v305[2]))
  {
  }

  if (LODWORD(v305[3]))
  {
  }

  if (HIDWORD(v305[3]))
  {
  }

  if (LODWORD(v305[4]))
  {
  }

  if (HIDWORD(v305[4]))
  {
  }

  if (LODWORD(v305[5]))
  {
  }

  if (HIDWORD(v305[5]))
  {
  }

  if (LODWORD(v305[6]))
  {
  }

  if (HIDWORD(v305[6]))
  {
  }

  if (LODWORD(v305[7]))
  {
  }

  if (HIDWORD(v305[7]))
  {
  }

  if (LODWORD(v305[8]))
  {
  }

  if (HIDWORD(v305[8]))
  {
  }

  if (LODWORD(v305[9]))
  {
  }

  if (HIDWORD(v305[9]))
  {

    if (!LODWORD(v305[10]))
    {
      goto LABEL_168;
    }
  }

  else if (!LODWORD(v305[10]))
  {
LABEL_168:
    if (HIDWORD(v305[10]))
    {
      goto LABEL_169;
    }

    goto LABEL_177;
  }

  if (HIDWORD(v305[10]))
  {
LABEL_169:

    if (!LODWORD(v305[11]))
    {
      goto LABEL_170;
    }

    goto LABEL_178;
  }

LABEL_177:
  if (!LODWORD(v305[11]))
  {
LABEL_170:
    if (HIDWORD(v305[11]))
    {
      goto LABEL_171;
    }

    goto LABEL_179;
  }

LABEL_178:

  if (HIDWORD(v305[11]))
  {
LABEL_171:

    if (!LODWORD(v305[12]))
    {
      goto LABEL_172;
    }

    goto LABEL_180;
  }

LABEL_179:
  if (!LODWORD(v305[12]))
  {
LABEL_172:
    if (HIDWORD(v305[12]))
    {
      goto LABEL_173;
    }

LABEL_181:
    if (!v306)
    {
      goto LABEL_183;
    }

    goto LABEL_182;
  }

LABEL_180:

  if (!HIDWORD(v305[12]))
  {
    goto LABEL_181;
  }

LABEL_173:

  if (v306)
  {
LABEL_182:
  }

LABEL_183:
  v39 = __sb__runningInSpringBoard();
  if (v39)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v40 = 0;
      v41 = 0;
      goto LABEL_192;
    }
  }

  else
  {
    v267 = [MEMORY[0x277D75418] currentDevice];
    if ([v267 userInterfaceIdiom] != 1)
    {
      v41 = 0;
      v40 = 1;
      goto LABEL_192;
    }
  }

  v40 = v39 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v258 = [MEMORY[0x277D759A0] mainScreen];
      [v258 _referenceBounds];
    }

    v41 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v61 == *(MEMORY[0x277D66E30] + 288) && v60 == *(MEMORY[0x277D66E30] + 296))
    {
      HIDWORD(v305[12]) = v42 ^ 1;
      v306 = v40;
      memset(v305, 0, 100);
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var28;
      goto LABEL_246;
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_192:
  v43 = __sb__runningInSpringBoard();
  HIDWORD(v305[12]) = v41;
  v306 = v40;
  if (v43)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v38 = 0;
      v44 = 0;
      goto LABEL_201;
    }
  }

  else
  {
    v266 = [MEMORY[0x277D75418] currentDevice];
    if ([v266 userInterfaceIdiom] != 1)
    {
      v44 = 0;
      v38 = 1;
      goto LABEL_201;
    }
  }

  v38 = v43 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v257 = [MEMORY[0x277D759A0] mainScreen];
      [v257 _referenceBounds];
    }

    v44 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 440))
    {
      HIDWORD(v305[11]) = v42 ^ 1;
      LODWORD(v305[12]) = v38;
      memset(v305, 0, 92);
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var33;
      goto LABEL_246;
    }
  }

  else
  {
    v44 = 0;
  }

LABEL_201:
  v45 = __sb__runningInSpringBoard();
  *(&v305[11] + 4) = __PAIR64__(v38, v44);
  if (v45)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v46 = 0;
      v37 = 0;
      goto LABEL_210;
    }
  }

  else
  {
    v265 = [MEMORY[0x277D75418] currentDevice];
    if ([v265 userInterfaceIdiom] != 1)
    {
      v37 = 0;
      v46 = 1;
      goto LABEL_210;
    }
  }

  v46 = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v256 = [MEMORY[0x277D759A0] mainScreen];
      [v256 _referenceBounds];
    }

    v37 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 376))
    {
      *(&v305[10] + 4) = __PAIR64__(v46, v37);
      memset(v305, 0, 84);
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var31;
      goto LABEL_246;
    }
  }

  else
  {
    v37 = 0;
  }

LABEL_210:
  v47 = __sb__runningInSpringBoard();
  *(&v305[10] + 4) = __PAIR64__(v46, v37);
  if (v47)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v27 = 0;
      v48 = 0;
      goto LABEL_219;
    }
  }

  else
  {
    v264 = [MEMORY[0x277D75418] currentDevice];
    if ([v264 userInterfaceIdiom] != 1)
    {
      v48 = 0;
      v27 = 1;
      goto LABEL_219;
    }
  }

  v27 = v47 ^ 1u;
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v261 = [MEMORY[0x277D759A0] mainScreen];
    [v261 _referenceBounds];
  }

  v48 = v42 ^ 1;
  BSSizeRoundForScale();
  if (v49 >= *(MEMORY[0x277D66E30] + 280))
  {
    HIDWORD(v305[9]) = v42 ^ 1;
    LODWORD(v305[10]) = v27;
    memset(v305, 0, 76);
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var32;
    goto LABEL_246;
  }

LABEL_219:
  v50 = __sb__runningInSpringBoard();
  *(&v305[9] + 4) = __PAIR64__(v27, v48);
  if (v50)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v305[8] + 4) = 0;
      goto LABEL_229;
    }
  }

  else
  {
    v263 = [MEMORY[0x277D75418] currentDevice];
    if ([v263 userInterfaceIdiom] != 1)
    {
      *(&v305[8] + 4) = 0x100000000;
      goto LABEL_229;
    }
  }

  LODWORD(v305[9]) = v50 ^ 1;
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v259 = [MEMORY[0x277D759A0] mainScreen];
    [v259 _referenceBounds];
  }

  HIDWORD(v305[8]) = v42 ^ 1;
  BSSizeRoundForScale();
  if (v58 >= *(MEMORY[0x277D66E30] + 264))
  {
    memset(v305, 0, 68);
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var30;
    goto LABEL_246;
  }

LABEL_229:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v305[7] + 4) = 0;
      goto LABEL_543;
    }
  }

  else
  {
    v262 = [MEMORY[0x277D75418] currentDevice];
    if ([v262 userInterfaceIdiom] != 1)
    {
      *(&v305[7] + 4) = 0x100000000;
      goto LABEL_543;
    }
  }

  LODWORD(v305[8]) = v59 ^ 1;
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v255 = [MEMORY[0x277D759A0] mainScreen];
    [v255 _referenceBounds];
  }

  HIDWORD(v305[7]) = v42 ^ 1;
  BSSizeRoundForScale();
  if (v94 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v305, 0, 60);
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var29;
    goto LABEL_246;
  }

LABEL_543:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_545;
    }

LABEL_551:
    memset(v305, 0, 56);
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var27;
    LODWORD(v305[7]) = v42 ^ 1;
    goto LABEL_246;
  }

  v260 = [MEMORY[0x277D75418] currentDevice];
  if ([v260 userInterfaceIdiom] == 1)
  {
    goto LABEL_551;
  }

LABEL_545:
  LODWORD(v305[7]) = v42 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_549:
    v305[6] = 0;
    goto LABEL_589;
  }

  v95 = __sb__runningInSpringBoard();
  if (v95)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_549;
    }
  }

  else
  {
    v253 = [MEMORY[0x277D75418] currentDevice];
    if ([v253 userInterfaceIdiom])
    {
      v305[6] = 0x100000000;
      goto LABEL_589;
    }
  }

  HIDWORD(v305[6]) = v95 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v246 = [MEMORY[0x277D759A0] mainScreen];
      [v246 _referenceBounds];
    }

    LODWORD(v305[6]) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v106 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v305, 0, 48);
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var23;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v305[6]) = 0;
  }

LABEL_589:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[5] = 0;
      goto LABEL_599;
    }
  }

  else
  {
    v254 = [MEMORY[0x277D75418] currentDevice];
    if ([v254 userInterfaceIdiom])
    {
      v305[5] = 0x100000000;
      goto LABEL_599;
    }
  }

  HIDWORD(v305[5]) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v249 = [MEMORY[0x277D759A0] mainScreen];
      [v249 _referenceBounds];
    }

    LODWORD(v305[5]) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v100 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_603;
    }
  }

  else
  {
    LODWORD(v305[5]) = 0;
  }

LABEL_599:
  if (_SBF_Private_IsD94Like())
  {
    memset(v305, 0, 40);
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var24;
    goto LABEL_246;
  }

LABEL_603:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_607:
    v305[4] = 0;
    goto LABEL_673;
  }

  v101 = __sb__runningInSpringBoard();
  if (v101)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_607;
    }
  }

  else
  {
    v250 = [MEMORY[0x277D75418] currentDevice];
    if ([v250 userInterfaceIdiom])
    {
      v305[4] = 0x100000000;
      goto LABEL_673;
    }
  }

  HIDWORD(v305[4]) = v101 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v241 = [MEMORY[0x277D759A0] mainScreen];
      [v241 _referenceBounds];
    }

    LODWORD(v305[4]) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v118 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v305, 0, 32);
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var25;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v305[4]) = 0;
  }

LABEL_673:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[3] = 0;
      goto LABEL_683;
    }
  }

  else
  {
    v252 = [MEMORY[0x277D75418] currentDevice];
    if ([v252 userInterfaceIdiom])
    {
      v305[3] = 0x100000000;
      goto LABEL_683;
    }
  }

  HIDWORD(v305[3]) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v245 = [MEMORY[0x277D759A0] mainScreen];
      [v245 _referenceBounds];
    }

    LODWORD(v305[3]) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v109 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_687;
    }
  }

  else
  {
    LODWORD(v305[3]) = 0;
  }

LABEL_683:
  if (_SBF_Private_IsD64Like())
  {
    memset(v305, 0, 24);
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var26;
    goto LABEL_246;
  }

LABEL_687:
  v110 = __sb__runningInSpringBoard();
  if (v110)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[2] = 0;
      goto LABEL_697;
    }
  }

  else
  {
    v251 = [MEMORY[0x277D75418] currentDevice];
    if ([v251 userInterfaceIdiom])
    {
      v305[2] = 0x100000000;
      goto LABEL_697;
    }
  }

  HIDWORD(v305[2]) = v110 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v242 = [MEMORY[0x277D759A0] mainScreen];
      [v242 _referenceBounds];
    }

    LODWORD(v305[2]) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v115 >= *(MEMORY[0x277D66E30] + 136))
    {
      v305[1] = 0;
      v305[0] = 0;
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var21;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v305[2]) = 0;
  }

LABEL_697:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[1] = 0;
      goto LABEL_775;
    }
  }

  else
  {
    v248 = [MEMORY[0x277D75418] currentDevice];
    if ([v248 userInterfaceIdiom])
    {
      v305[1] = 0x100000000;
      goto LABEL_775;
    }
  }

  HIDWORD(v305[1]) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v240 = [MEMORY[0x277D759A0] mainScreen];
      [v240 _referenceBounds];
    }

    LODWORD(v305[1]) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v121 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_809;
    }
  }

  else
  {
    LODWORD(v305[1]) = 0;
  }

LABEL_775:
  if (_SBF_Private_IsD54())
  {
    v305[0] = 0;
    v284 = 0;
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var22;
    goto LABEL_246;
  }

LABEL_809:
  v122 = __sb__runningInSpringBoard();
  if (v122)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v305[0] = 0;
      goto LABEL_835;
    }
  }

  else
  {
    v247 = [MEMORY[0x277D75418] currentDevice];
    if ([v247 userInterfaceIdiom])
    {
      v305[0] = 0x100000000;
      goto LABEL_835;
    }
  }

  HIDWORD(v305[0]) = v122 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v127 = __sb__runningInSpringBoard();
    if (v127)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v237 = [MEMORY[0x277D759A0] mainScreen];
      [v237 _referenceBounds];
    }

    v42 = v127 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v305[0]) = v42;
    if (v131 >= *(MEMORY[0x277D66E30] + 120) && _SBF_Private_IsN84OrSimilarDevice())
    {
      v284 = 0;
      v282 = 0;
      memset(v304, 0, sizeof(v304));
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var13;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v305[0]) = 0;
  }

LABEL_835:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v284 = 0;
      goto LABEL_865;
    }
  }

  else
  {
    v244 = [MEMORY[0x277D75418] currentDevice];
    if ([v244 userInterfaceIdiom])
    {
      v284 = 0x100000000;
      goto LABEL_865;
    }
  }

  HIDWORD(v284) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v236 = [MEMORY[0x277D759A0] mainScreen];
      [v236 _referenceBounds];
    }

    LODWORD(v284) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v134 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_896;
    }
  }

  else
  {
    LODWORD(v284) = 0;
  }

LABEL_865:
  if (_SBF_Private_IsD33OrSimilarDevice() && _SBF_Private_IsN84ZoomedOrSimilarDevice())
  {
    v282 = 0;
    memset(v304, 0, sizeof(v304));
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var14;
    goto LABEL_246;
  }

LABEL_896:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_900:
    *&v304[16] = 0;
    v282 = 0;
    goto LABEL_925;
  }

  v135 = __sb__runningInSpringBoard();
  if (v135)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_900;
    }
  }

  else
  {
    v239 = [MEMORY[0x277D75418] currentDevice];
    if ([v239 userInterfaceIdiom])
    {
      v282 = 0;
      *&v304[16] = 1;
      goto LABEL_925;
    }
  }

  *&v304[16] = v135 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v140 = __sb__runningInSpringBoard();
    if (v140)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v230 = [MEMORY[0x277D759A0] mainScreen];
      [v230 _referenceBounds];
    }

    v42 = v140 ^ 1u;
    BSSizeRoundForScale();
    v282 = v42;
    if (v149 >= *(MEMORY[0x277D66E30] + 184))
    {
      *v304 = 0;
      *&v304[8] = 0;
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var11;
      goto LABEL_246;
    }
  }

  else
  {
    v282 = 0;
  }

LABEL_925:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v304[8] = 0;
      goto LABEL_935;
    }
  }

  else
  {
    v243 = [MEMORY[0x277D75418] currentDevice];
    if ([v243 userInterfaceIdiom])
    {
      *&v304[8] = 0x100000000;
      goto LABEL_935;
    }
  }

  *&v304[12] = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v233 = [MEMORY[0x277D759A0] mainScreen];
      [v233 _referenceBounds];
    }

    *&v304[8] = v42 ^ 1;
    BSSizeRoundForScale();
    if (v141 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_939;
    }
  }

  else
  {
    *&v304[8] = 0;
  }

LABEL_935:
  if (_SBF_Private_IsD93Like())
  {
    *v304 = 0;
    v302 = 0;
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var12;
    goto LABEL_246;
  }

LABEL_939:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_943:
    *v304 = 0;
    goto LABEL_1009;
  }

  v142 = __sb__runningInSpringBoard();
  if (v142)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_943;
    }
  }

  else
  {
    v235 = [MEMORY[0x277D75418] currentDevice];
    if ([v235 userInterfaceIdiom])
    {
      *v304 = 0x100000000;
      goto LABEL_1009;
    }
  }

  *&v304[4] = v142 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v226 = [MEMORY[0x277D759A0] mainScreen];
      [v226 _referenceBounds];
    }

    *v304 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v159 >= *(MEMORY[0x277D66E30] + 104))
    {
      v302 = 0;
      v296 = 0;
      v299 = 0;
      v289 = 0;
      v293 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var17;
      goto LABEL_246;
    }
  }

  else
  {
    *v304 = 0;
  }

LABEL_1009:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v302 = 0;
      goto LABEL_1019;
    }
  }

  else
  {
    v238 = [MEMORY[0x277D75418] currentDevice];
    if ([v238 userInterfaceIdiom])
    {
      v302 = 0x100000000;
      goto LABEL_1019;
    }
  }

  HIDWORD(v302) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v229 = [MEMORY[0x277D759A0] mainScreen];
      [v229 _referenceBounds];
    }

    LODWORD(v302) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v152 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1023;
    }
  }

  else
  {
    LODWORD(v302) = 0;
  }

LABEL_1019:
  if (_SBF_Private_IsD63Like())
  {
    v296 = 0;
    v299 = 0;
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var18;
    goto LABEL_246;
  }

LABEL_1023:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1027:
    v299 = 0;
    goto LABEL_1093;
  }

  v153 = __sb__runningInSpringBoard();
  if (v153)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1027;
    }
  }

  else
  {
    v231 = [MEMORY[0x277D75418] currentDevice];
    if ([v231 userInterfaceIdiom])
    {
      v299 = 0x100000000;
      goto LABEL_1093;
    }
  }

  HIDWORD(v299) = v153 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v162 = __sb__runningInSpringBoard();
    if (v162)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v222 = [MEMORY[0x277D759A0] mainScreen];
      [v222 _referenceBounds];
    }

    v42 = v162 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v299) = v42;
    if (v174 >= *(MEMORY[0x277D66E30] + 216))
    {
      v293 = 0;
      v296 = 0;
      v289 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var19;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v299) = 0;
  }

LABEL_1093:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v296 = 0;
      goto LABEL_1103;
    }
  }

  else
  {
    v234 = [MEMORY[0x277D75418] currentDevice];
    if ([v234 userInterfaceIdiom])
    {
      v296 = 0x100000000;
      goto LABEL_1103;
    }
  }

  HIDWORD(v296) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v225 = [MEMORY[0x277D759A0] mainScreen];
      [v225 _referenceBounds];
    }

    LODWORD(v296) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v163 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1107;
    }
  }

  else
  {
    LODWORD(v296) = 0;
  }

LABEL_1103:
  if (_SBF_Private_IsD23Like())
  {
    v289 = 0;
    v293 = 0;
    v279 = 0;
    v276 = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var20;
    goto LABEL_246;
  }

LABEL_1107:
  v164 = __sb__runningInSpringBoard();
  if (v164)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v293 = 0;
      goto LABEL_1117;
    }
  }

  else
  {
    v232 = [MEMORY[0x277D75418] currentDevice];
    if ([v232 userInterfaceIdiom])
    {
      v293 = 0x100000000;
      goto LABEL_1117;
    }
  }

  HIDWORD(v293) = v164 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v223 = [MEMORY[0x277D759A0] mainScreen];
      [v223 _referenceBounds];
    }

    LODWORD(v293) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v171 >= *(MEMORY[0x277D66E30] + 120))
    {
      v289 = 0;
      v279 = 0;
      v276 = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var15;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v293) = 0;
  }

LABEL_1117:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v289) = 0;
      v279 = 0;
      goto LABEL_1195;
    }
  }

  else
  {
    v228 = [MEMORY[0x277D75418] currentDevice];
    if ([v228 userInterfaceIdiom])
    {
      v279 = 0;
      HIDWORD(v289) = 1;
      goto LABEL_1195;
    }
  }

  HIDWORD(v289) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v221 = [MEMORY[0x277D759A0] mainScreen];
      [v221 _referenceBounds];
    }

    v279 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v177 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1229;
    }
  }

  else
  {
    v279 = 0;
  }

LABEL_1195:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v276 = 0;
    LODWORD(v289) = 0;
    v270 = 0;
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var16;
    goto LABEL_246;
  }

LABEL_1229:
  v178 = __sb__runningInSpringBoard();
  if (v178)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v276) = 0;
      LODWORD(v289) = 0;
      goto LABEL_1255;
    }
  }

  else
  {
    v227 = [MEMORY[0x277D75418] currentDevice];
    if ([v227 userInterfaceIdiom])
    {
      LODWORD(v289) = 0;
      HIDWORD(v276) = 1;
      goto LABEL_1255;
    }
  }

  HIDWORD(v276) = v178 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v220 = [MEMORY[0x277D759A0] mainScreen];
      [v220 _referenceBounds];
    }

    LODWORD(v289) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v186 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v276) = 0;
      v270 = 0;
      v273 = 0;
      LODWORD(v268) = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var9;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v289) = 0;
  }

LABEL_1255:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v276) = 0;
      v270 = 0;
      goto LABEL_1285;
    }
  }

  else
  {
    v224 = [MEMORY[0x277D75418] currentDevice];
    if ([v224 userInterfaceIdiom])
    {
      v270 = 0;
      LODWORD(v276) = 1;
      goto LABEL_1285;
    }
  }

  LODWORD(v276) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v219 = [MEMORY[0x277D759A0] mainScreen];
      [v219 _referenceBounds];
    }

    v270 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v189 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1310;
    }
  }

  else
  {
    v270 = 0;
  }

LABEL_1285:
  if (_SBF_Private_IsD53())
  {
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var10;
    goto LABEL_246;
  }

LABEL_1310:
  if (_SBF_Private_IsD16() && _SBF_Private_IsD52OrSimilarDevice())
  {
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var5;
    goto LABEL_246;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && _SBF_Private_IsD16())
  {
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var6;
    goto LABEL_246;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var3;
    goto LABEL_246;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v273 = 0;
    LODWORD(v268) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var4;
    goto LABEL_246;
  }

  v192 = __sb__runningInSpringBoard();
  if (v192)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v273 = 0;
      LODWORD(v268) = 0;
      goto LABEL_1366;
    }
  }

  else
  {
    v218 = [MEMORY[0x277D75418] currentDevice];
    if ([v218 userInterfaceIdiom])
    {
      LODWORD(v268) = 0;
      v273 = 1;
      goto LABEL_1366;
    }
  }

  v273 = v192 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v216 = [MEMORY[0x277D759A0] mainScreen];
      [v216 _referenceBounds];
    }

    LODWORD(v268) = v42 ^ 1;
    BSSizeRoundForScale();
    if (v202 >= *(MEMORY[0x277D66E30] + 88))
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var7;
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v268) = 0;
  }

LABEL_1366:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_1396;
    }
  }

  else
  {
    v217 = [MEMORY[0x277D75418] currentDevice];
    if ([v217 userInterfaceIdiom])
    {
      v52 = 0;
      v51 = 1;
      goto LABEL_1396;
    }
  }

  v51 = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v215 = [MEMORY[0x277D759A0] mainScreen];
      [v215 _referenceBounds];
    }

    v52 = v42 ^ 1;
    BSSizeRoundForScale();
    if (v205 >= *(MEMORY[0x277D66E30] + 72))
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      p_var28 = &v307->var8;
      goto LABEL_246;
    }
  }

  else
  {
    v52 = 0;
  }

LABEL_1396:
  v196 = __sb__runningInSpringBoard();
  if (v196)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v53 = 0;
      v54 = 0;
      goto LABEL_1426;
    }
  }

  else
  {
    v42 = [MEMORY[0x277D75418] currentDevice];
    if ([v42 userInterfaceIdiom])
    {
      v54 = 0;
      v53 = 1;
      goto LABEL_1426;
    }
  }

  v53 = v196 ^ 1;
  v38 = __sb__runningInSpringBoard();
  if (v38)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v27 = [MEMORY[0x277D759A0] mainScreen];
    [v27 _referenceBounds];
  }

  v54 = v38 ^ 1;
  BSSizeRoundForScale();
  if (v198 >= *(MEMORY[0x277D66E30] + 56))
  {
    v55 = 0;
    v56 = 0;
    p_var28 = &v307->var2;
    goto LABEL_246;
  }

LABEL_1426:
  v38 = __sb__runningInSpringBoard();
  if (v38)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v55 = 0;
      v56 = 0;
LABEL_1477:
      p_var28 = &v307->var0;
      goto LABEL_246;
    }
  }

  else
  {
    v37 = [MEMORY[0x277D75418] currentDevice];
    if ([v37 userInterfaceIdiom])
    {
      v56 = 0;
      v55 = 1;
      goto LABEL_1477;
    }
  }

  v55 = v38 ^ 1;
  v208 = __sb__runningInSpringBoard();
  if (v208)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v38 = [MEMORY[0x277D759A0] mainScreen];
    [v38 _referenceBounds];
  }

  v56 = v208 ^ 1;
  BSSizeRoundForScale();
  if (v209 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_1477;
  }

  p_var28 = &v307->var1;
LABEL_246:
  v309->_lineWidth = *p_var28;
  if (v56)
  {
  }

  if (v55)
  {
  }

  if (v54)
  {
  }

  v64 = HIDWORD(v305[10]);
  if (v53)
  {
  }

  v65 = LODWORD(v305[10]);
  if (v52)
  {
  }

  v66 = HIDWORD(v305[9]);
  if (v51)
  {
  }

  if (v268)
  {
  }

  if (v273)
  {
  }

  if (v270)
  {
  }

  if (v276)
  {
  }

  if (v289)
  {
  }

  if (HIDWORD(v276))
  {
  }

  if (v279)
  {
  }

  if (HIDWORD(v289))
  {
  }

  if (v293)
  {
  }

  if (HIDWORD(v293))
  {
  }

  if (v296)
  {
  }

  if (HIDWORD(v296))
  {
  }

  if (v299)
  {
  }

  if (HIDWORD(v299))
  {
  }

  if (v302)
  {
  }

  if (HIDWORD(v302))
  {
  }

  if (*v304)
  {
  }

  if (*&v304[4])
  {
  }

  if (*&v304[8])
  {
  }

  if (*&v304[12])
  {
  }

  if (v282)
  {
  }

  if (*&v304[16])
  {
  }

  if (v284)
  {
  }

  if (HIDWORD(v284))
  {
  }

  if (LODWORD(v305[0]))
  {
  }

  if (HIDWORD(v305[0]))
  {
  }

  if (LODWORD(v305[1]))
  {
  }

  if (HIDWORD(v305[1]))
  {
  }

  if (LODWORD(v305[2]))
  {
  }

  if (HIDWORD(v305[2]))
  {
  }

  if (LODWORD(v305[3]))
  {
  }

  if (HIDWORD(v305[3]))
  {
  }

  if (LODWORD(v305[4]))
  {
  }

  if (HIDWORD(v305[4]))
  {
  }

  if (LODWORD(v305[5]))
  {
  }

  if (HIDWORD(v305[5]))
  {
  }

  if (LODWORD(v305[6]))
  {
  }

  if (HIDWORD(v305[6]))
  {
  }

  if (LODWORD(v305[7]))
  {
  }

  if (HIDWORD(v305[7]))
  {
  }

  if (LODWORD(v305[8]))
  {
  }

  if (HIDWORD(v305[8]))
  {
  }

  if (LODWORD(v305[9]))
  {

    if (!HIDWORD(v305[9]))
    {
      goto LABEL_344;
    }
  }

  else if (!HIDWORD(v305[9]))
  {
LABEL_344:
    if (LODWORD(v305[10]))
    {
      goto LABEL_345;
    }

    goto LABEL_357;
  }

  if (LODWORD(v305[10]))
  {
LABEL_345:

    if (!HIDWORD(v305[10]))
    {
      goto LABEL_346;
    }

    goto LABEL_358;
  }

LABEL_357:
  if (!HIDWORD(v305[10]))
  {
LABEL_346:
    if (LODWORD(v305[11]))
    {
      goto LABEL_347;
    }

    goto LABEL_359;
  }

LABEL_358:

  if (LODWORD(v305[11]))
  {
LABEL_347:

    if (!HIDWORD(v305[11]))
    {
      goto LABEL_348;
    }

    goto LABEL_360;
  }

LABEL_359:
  if (!HIDWORD(v305[11]))
  {
LABEL_348:
    if (LODWORD(v305[12]))
    {
      goto LABEL_349;
    }

    goto LABEL_361;
  }

LABEL_360:

  if (LODWORD(v305[12]))
  {
LABEL_349:

    if (!HIDWORD(v305[12]))
    {
      goto LABEL_350;
    }

    goto LABEL_362;
  }

LABEL_361:
  if (!HIDWORD(v305[12]))
  {
LABEL_350:
    if (!v306)
    {
      goto LABEL_352;
    }

    goto LABEL_351;
  }

LABEL_362:

  if (v306)
  {
LABEL_351:
  }

LABEL_352:
  v67 = __sb__runningInSpringBoard();
  if (v67)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v68 = 0;
      v69 = 0;
      goto LABEL_370;
    }
  }

  else
  {
    v267 = [MEMORY[0x277D75418] currentDevice];
    if ([v267 userInterfaceIdiom] != 1)
    {
      v69 = 0;
      v68 = 1;
      goto LABEL_370;
    }
  }

  v68 = v67 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v268 = [MEMORY[0x277D759A0] mainScreen];
      [v268 _referenceBounds];
    }

    v69 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v89 == *(MEMORY[0x277D66E30] + 288) && v88 == *(MEMORY[0x277D66E30] + 296))
    {
      v306 = v70 ^ 1;
      LODWORD(v307) = v68;
      v290 = 0;
      v287 = 0;
      memset(v305, 0, sizeof(v305));
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var28;
      goto LABEL_424;
    }
  }

  else
  {
    v69 = 0;
  }

LABEL_370:
  v71 = __sb__runningInSpringBoard();
  v306 = v69;
  LODWORD(v307) = v68;
  if (v71)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v72 = 0;
      v73 = 0;
      goto LABEL_379;
    }
  }

  else
  {
    v266 = [MEMORY[0x277D75418] currentDevice];
    if ([v266 userInterfaceIdiom] != 1)
    {
      v73 = 0;
      v72 = 1;
      goto LABEL_379;
    }
  }

  v72 = v71 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v258 = [MEMORY[0x277D759A0] mainScreen];
      [v258 _referenceBounds];
    }

    v73 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v90 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v305[12]) = v70 ^ 1;
      HIDWORD(v305[12]) = v72;
      v290 = 0;
      v287 = 0;
      memset(v305, 0, 96);
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var33;
      goto LABEL_424;
    }
  }

  else
  {
    v73 = 0;
  }

LABEL_379:
  v74 = __sb__runningInSpringBoard();
  v305[12] = __PAIR64__(v72, v73);
  if (v74)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v75 = 0;
      v64 = 0;
      goto LABEL_388;
    }
  }

  else
  {
    v265 = [MEMORY[0x277D75418] currentDevice];
    if ([v265 userInterfaceIdiom] != 1)
    {
      v64 = 0;
      v75 = 1;
      goto LABEL_388;
    }
  }

  v75 = v74 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v257 = [MEMORY[0x277D759A0] mainScreen];
      [v257 _referenceBounds];
    }

    v64 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v91 >= *(MEMORY[0x277D66E30] + 376))
    {
      v305[11] = __PAIR64__(v75, v64);
      v290 = 0;
      v287 = 0;
      memset(v305, 0, 88);
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var31;
      goto LABEL_424;
    }
  }

  else
  {
    v64 = 0;
  }

LABEL_388:
  v76 = __sb__runningInSpringBoard();
  v305[11] = __PAIR64__(v75, v64);
  if (v76)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v65 = 0;
      v66 = 0;
      goto LABEL_397;
    }
  }

  else
  {
    v264 = [MEMORY[0x277D75418] currentDevice];
    if ([v264 userInterfaceIdiom] != 1)
    {
      v66 = 0;
      v65 = 1;
      goto LABEL_397;
    }
  }

  v65 = v76 ^ 1u;
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v261 = [MEMORY[0x277D759A0] mainScreen];
    [v261 _referenceBounds];
  }

  v66 = v70 ^ 1;
  BSSizeRoundForScale();
  if (v77 >= *(MEMORY[0x277D66E30] + 280))
  {
    v305[10] = __PAIR64__(v65, v66);
    v290 = 0;
    v287 = 0;
    memset(v305, 0, 80);
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var32;
    goto LABEL_424;
  }

LABEL_397:
  v78 = __sb__runningInSpringBoard();
  v305[10] = __PAIR64__(v65, v66);
  if (v78)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v305[9] = 0;
      goto LABEL_407;
    }
  }

  else
  {
    v263 = [MEMORY[0x277D75418] currentDevice];
    if ([v263 userInterfaceIdiom] != 1)
    {
      v305[9] = 0x100000000;
      goto LABEL_407;
    }
  }

  HIDWORD(v305[9]) = v78 ^ 1;
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v259 = [MEMORY[0x277D759A0] mainScreen];
    [v259 _referenceBounds];
  }

  LODWORD(v305[9]) = v70 ^ 1;
  BSSizeRoundForScale();
  if (v86 >= *(MEMORY[0x277D66E30] + 264))
  {
    v290 = 0;
    v287 = 0;
    memset(v305, 0, 72);
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var30;
    goto LABEL_424;
  }

LABEL_407:
  v87 = __sb__runningInSpringBoard();
  if (v87)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v305[8] = 0;
      goto LABEL_555;
    }
  }

  else
  {
    v262 = [MEMORY[0x277D75418] currentDevice];
    if ([v262 userInterfaceIdiom] != 1)
    {
      v305[8] = 0x100000000;
      goto LABEL_555;
    }
  }

  HIDWORD(v305[8]) = v87 ^ 1;
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v256 = [MEMORY[0x277D759A0] mainScreen];
    [v256 _referenceBounds];
  }

  LODWORD(v305[8]) = v70 ^ 1;
  BSSizeRoundForScale();
  if (v96 >= *(MEMORY[0x277D66E30] + 248))
  {
    v290 = 0;
    v287 = 0;
    memset(v305, 0, 64);
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var29;
    goto LABEL_424;
  }

LABEL_555:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_557;
    }

LABEL_563:
    v290 = 0;
    v287 = 0;
    memset(v305, 0, 60);
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var27;
    HIDWORD(v305[7]) = v70 ^ 1;
    goto LABEL_424;
  }

  v260 = [MEMORY[0x277D75418] currentDevice];
  if ([v260 userInterfaceIdiom] == 1)
  {
    goto LABEL_563;
  }

LABEL_557:
  HIDWORD(v305[7]) = v70 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_561:
    *(&v305[6] + 4) = 0;
    goto LABEL_614;
  }

  v97 = __sb__runningInSpringBoard();
  if (v97)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_561;
    }
  }

  else
  {
    v254 = [MEMORY[0x277D75418] currentDevice];
    if ([v254 userInterfaceIdiom])
    {
      HIDWORD(v305[6]) = 0;
      LODWORD(v305[7]) = 1;
      goto LABEL_614;
    }
  }

  LODWORD(v305[7]) = v97 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v247 = [MEMORY[0x277D759A0] mainScreen];
      [v247 _referenceBounds];
    }

    HIDWORD(v305[6]) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v107 >= *(MEMORY[0x277D66E30] + 200))
    {
      v290 = 0;
      v287 = 0;
      memset(v305, 0, 52);
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var23;
      goto LABEL_424;
    }
  }

  else
  {
    HIDWORD(v305[6]) = 0;
  }

LABEL_614:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v305[5] + 4) = 0;
      goto LABEL_624;
    }
  }

  else
  {
    v255 = [MEMORY[0x277D75418] currentDevice];
    if ([v255 userInterfaceIdiom])
    {
      HIDWORD(v305[5]) = 0;
      LODWORD(v305[6]) = 1;
      goto LABEL_624;
    }
  }

  LODWORD(v305[6]) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v250 = [MEMORY[0x277D759A0] mainScreen];
      [v250 _referenceBounds];
    }

    HIDWORD(v305[5]) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v102 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_628;
    }
  }

  else
  {
    HIDWORD(v305[5]) = 0;
  }

LABEL_624:
  if (_SBF_Private_IsD94Like())
  {
    v290 = 0;
    v287 = 0;
    memset(v305, 0, 44);
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var24;
    goto LABEL_424;
  }

LABEL_628:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_632:
    *(&v305[4] + 4) = 0;
    goto LABEL_707;
  }

  v103 = __sb__runningInSpringBoard();
  if (v103)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_632;
    }
  }

  else
  {
    v251 = [MEMORY[0x277D75418] currentDevice];
    if ([v251 userInterfaceIdiom])
    {
      HIDWORD(v305[4]) = 0;
      LODWORD(v305[5]) = 1;
      goto LABEL_707;
    }
  }

  LODWORD(v305[5]) = v103 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v242 = [MEMORY[0x277D759A0] mainScreen];
      [v242 _referenceBounds];
    }

    HIDWORD(v305[4]) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v119 >= *(MEMORY[0x277D66E30] + 136))
    {
      v290 = 0;
      v287 = 0;
      memset(v305, 0, 36);
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var25;
      goto LABEL_424;
    }
  }

  else
  {
    HIDWORD(v305[4]) = 0;
  }

LABEL_707:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v305[3] + 4) = 0;
      goto LABEL_717;
    }
  }

  else
  {
    v253 = [MEMORY[0x277D75418] currentDevice];
    if ([v253 userInterfaceIdiom])
    {
      HIDWORD(v305[3]) = 0;
      LODWORD(v305[4]) = 1;
      goto LABEL_717;
    }
  }

  LODWORD(v305[4]) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v246 = [MEMORY[0x277D759A0] mainScreen];
      [v246 _referenceBounds];
    }

    HIDWORD(v305[3]) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v111 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_721;
    }
  }

  else
  {
    HIDWORD(v305[3]) = 0;
  }

LABEL_717:
  if (_SBF_Private_IsD64Like())
  {
    v290 = 0;
    v287 = 0;
    memset(v305, 0, 28);
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var26;
    goto LABEL_424;
  }

LABEL_721:
  v112 = __sb__runningInSpringBoard();
  if (v112)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v305[2] + 4) = 0;
      goto LABEL_731;
    }
  }

  else
  {
    v252 = [MEMORY[0x277D75418] currentDevice];
    if ([v252 userInterfaceIdiom])
    {
      HIDWORD(v305[2]) = 0;
      LODWORD(v305[3]) = 1;
      goto LABEL_731;
    }
  }

  LODWORD(v305[3]) = v112 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v243 = [MEMORY[0x277D759A0] mainScreen];
      [v243 _referenceBounds];
    }

    HIDWORD(v305[2]) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v116 >= *(MEMORY[0x277D66E30] + 136))
    {
      v290 = 0;
      v287 = 0;
      memset(v305, 0, 20);
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var21;
      goto LABEL_424;
    }
  }

  else
  {
    HIDWORD(v305[2]) = 0;
  }

LABEL_731:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v305[1] + 4) = 0;
      goto LABEL_781;
    }
  }

  else
  {
    v249 = [MEMORY[0x277D75418] currentDevice];
    if ([v249 userInterfaceIdiom])
    {
      HIDWORD(v305[1]) = 0;
      LODWORD(v305[2]) = 1;
      goto LABEL_781;
    }
  }

  LODWORD(v305[2]) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v241 = [MEMORY[0x277D759A0] mainScreen];
      [v241 _referenceBounds];
    }

    HIDWORD(v305[1]) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v123 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_817;
    }
  }

  else
  {
    HIDWORD(v305[1]) = 0;
  }

LABEL_781:
  if (_SBF_Private_IsD54())
  {
    *(v305 + 4) = 0;
    v290 = 0;
    v287 = 0;
    LODWORD(v305[0]) = 0;
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var22;
    goto LABEL_424;
  }

LABEL_817:
  v124 = __sb__runningInSpringBoard();
  if (v124)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v305 + 4) = 0;
      goto LABEL_845;
    }
  }

  else
  {
    v248 = [MEMORY[0x277D75418] currentDevice];
    if ([v248 userInterfaceIdiom])
    {
      HIDWORD(v305[0]) = 0;
      LODWORD(v305[1]) = 1;
      goto LABEL_845;
    }
  }

  LODWORD(v305[1]) = v124 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v128 = __sb__runningInSpringBoard();
    if (v128)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v238 = [MEMORY[0x277D759A0] mainScreen];
      [v238 _referenceBounds];
    }

    v70 = v128 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v305[0]) = v70;
    if (v132 >= *(MEMORY[0x277D66E30] + 120) && _SBF_Private_IsN84OrSimilarDevice())
    {
      v290 = 0;
      v287 = 0;
      LODWORD(v305[0]) = 0;
      v285 = 0;
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var13;
      goto LABEL_424;
    }
  }

  else
  {
    HIDWORD(v305[0]) = 0;
  }

LABEL_845:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v290 = 0;
      v287 = 0;
      goto LABEL_872;
    }
  }

  else
  {
    v245 = [MEMORY[0x277D75418] currentDevice];
    if ([v245 userInterfaceIdiom])
    {
      v287 = 0;
      v290 = 1;
      goto LABEL_872;
    }
  }

  v290 = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v237 = [MEMORY[0x277D759A0] mainScreen];
      [v237 _referenceBounds];
    }

    v287 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v136 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_905;
    }
  }

  else
  {
    v287 = 0;
  }

LABEL_872:
  if (_SBF_Private_IsD33OrSimilarDevice() && _SBF_Private_IsN84ZoomedOrSimilarDevice())
  {
    LODWORD(v305[0]) = 0;
    v285 = 0;
    memset(v304, 0, sizeof(v304));
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var14;
    goto LABEL_424;
  }

LABEL_905:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_909:
    LODWORD(v305[0]) = 0;
    v285 = 0;
    goto LABEL_950;
  }

  v137 = __sb__runningInSpringBoard();
  if (v137)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_909;
    }
  }

  else
  {
    v240 = [MEMORY[0x277D75418] currentDevice];
    if ([v240 userInterfaceIdiom])
    {
      v285 = 0;
      LODWORD(v305[0]) = 1;
      goto LABEL_950;
    }
  }

  LODWORD(v305[0]) = v137 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v143 = __sb__runningInSpringBoard();
    if (v143)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v231 = [MEMORY[0x277D759A0] mainScreen];
      [v231 _referenceBounds];
    }

    v70 = v143 ^ 1u;
    BSSizeRoundForScale();
    v285 = v70;
    if (v150 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v304, 0, sizeof(v304));
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var11;
      goto LABEL_424;
    }
  }

  else
  {
    v285 = 0;
  }

LABEL_950:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v304[12] = 0;
      goto LABEL_960;
    }
  }

  else
  {
    v244 = [MEMORY[0x277D75418] currentDevice];
    if ([v244 userInterfaceIdiom])
    {
      *&v304[12] = 0x100000000;
      goto LABEL_960;
    }
  }

  *&v304[16] = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v234 = [MEMORY[0x277D759A0] mainScreen];
      [v234 _referenceBounds];
    }

    *&v304[12] = v70 ^ 1;
    BSSizeRoundForScale();
    if (v144 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_964;
    }
  }

  else
  {
    *&v304[12] = 0;
  }

LABEL_960:
  if (_SBF_Private_IsD93Like())
  {
    *&v304[4] = 0;
    *v304 = 0;
    v303 = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var12;
    goto LABEL_424;
  }

LABEL_964:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_968:
    *&v304[4] = 0;
    goto LABEL_1034;
  }

  v145 = __sb__runningInSpringBoard();
  if (v145)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_968;
    }
  }

  else
  {
    v236 = [MEMORY[0x277D75418] currentDevice];
    if ([v236 userInterfaceIdiom])
    {
      *&v304[4] = 0x100000000;
      goto LABEL_1034;
    }
  }

  *&v304[8] = v145 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v227 = [MEMORY[0x277D759A0] mainScreen];
      [v227 _referenceBounds];
    }

    *&v304[4] = v70 ^ 1;
    BSSizeRoundForScale();
    if (v160 >= *(MEMORY[0x277D66E30] + 104))
    {
      *v304 = 0;
      v303 = 0;
      v297 = 0;
      v300 = 0;
      v294 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var17;
      goto LABEL_424;
    }
  }

  else
  {
    *&v304[4] = 0;
  }

LABEL_1034:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *v304 = 0;
      HIDWORD(v303) = 0;
      goto LABEL_1044;
    }
  }

  else
  {
    v239 = [MEMORY[0x277D75418] currentDevice];
    if ([v239 userInterfaceIdiom])
    {
      HIDWORD(v303) = 0;
      *v304 = 1;
      goto LABEL_1044;
    }
  }

  *v304 = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v230 = [MEMORY[0x277D759A0] mainScreen];
      [v230 _referenceBounds];
    }

    HIDWORD(v303) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v154 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1048;
    }
  }

  else
  {
    HIDWORD(v303) = 0;
  }

LABEL_1044:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v303) = 0;
    v297 = 0;
    v300 = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var18;
    goto LABEL_424;
  }

LABEL_1048:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1052:
    LODWORD(v303) = 0;
    HIDWORD(v300) = 0;
    goto LABEL_1127;
  }

  v155 = __sb__runningInSpringBoard();
  if (v155)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1052;
    }
  }

  else
  {
    v232 = [MEMORY[0x277D75418] currentDevice];
    if ([v232 userInterfaceIdiom])
    {
      HIDWORD(v300) = 0;
      LODWORD(v303) = 1;
      goto LABEL_1127;
    }
  }

  LODWORD(v303) = v155 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v165 = __sb__runningInSpringBoard();
    if (v165)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v223 = [MEMORY[0x277D759A0] mainScreen];
      [v223 _referenceBounds];
    }

    v70 = v165 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v300) = v70;
    if (v175 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v300) = 0;
      v294 = 0;
      v297 = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var19;
      goto LABEL_424;
    }
  }

  else
  {
    HIDWORD(v300) = 0;
  }

LABEL_1127:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v300) = 0;
      HIDWORD(v297) = 0;
      goto LABEL_1137;
    }
  }

  else
  {
    v235 = [MEMORY[0x277D75418] currentDevice];
    if ([v235 userInterfaceIdiom])
    {
      HIDWORD(v297) = 0;
      LODWORD(v300) = 1;
      goto LABEL_1137;
    }
  }

  LODWORD(v300) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v226 = [MEMORY[0x277D759A0] mainScreen];
      [v226 _referenceBounds];
    }

    HIDWORD(v297) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v166 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1141;
    }
  }

  else
  {
    HIDWORD(v297) = 0;
  }

LABEL_1137:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v297) = 0;
    v294 = 0;
    v277 = 0;
    v280 = 0;
    v291 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var20;
    goto LABEL_424;
  }

LABEL_1141:
  v167 = __sb__runningInSpringBoard();
  if (v167)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v297) = 0;
      HIDWORD(v294) = 0;
      goto LABEL_1151;
    }
  }

  else
  {
    v233 = [MEMORY[0x277D75418] currentDevice];
    if ([v233 userInterfaceIdiom])
    {
      HIDWORD(v294) = 0;
      LODWORD(v297) = 1;
      goto LABEL_1151;
    }
  }

  LODWORD(v297) = v167 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v224 = [MEMORY[0x277D759A0] mainScreen];
      [v224 _referenceBounds];
    }

    HIDWORD(v294) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v172 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v294) = 0;
      v277 = 0;
      v280 = 0;
      v291 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var15;
      goto LABEL_424;
    }
  }

  else
  {
    HIDWORD(v294) = 0;
  }

LABEL_1151:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v294) = 0;
      HIDWORD(v280) = 0;
      goto LABEL_1201;
    }
  }

  else
  {
    v229 = [MEMORY[0x277D75418] currentDevice];
    if ([v229 userInterfaceIdiom])
    {
      HIDWORD(v280) = 0;
      LODWORD(v294) = 1;
      goto LABEL_1201;
    }
  }

  LODWORD(v294) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v222 = [MEMORY[0x277D759A0] mainScreen];
      [v222 _referenceBounds];
    }

    HIDWORD(v280) = v70 ^ 1;
    BSSizeRoundForScale();
    if (v179 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1237;
    }
  }

  else
  {
    HIDWORD(v280) = 0;
  }

LABEL_1201:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v280) = 0;
    v291 = 0;
    v277 = 0;
    v274 = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var16;
    goto LABEL_424;
  }

LABEL_1237:
  v180 = __sb__runningInSpringBoard();
  if (v180)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v280) = 0;
      v291 = 0;
      goto LABEL_1265;
    }
  }

  else
  {
    v228 = [MEMORY[0x277D75418] currentDevice];
    if ([v228 userInterfaceIdiom])
    {
      v291 = 0;
      LODWORD(v280) = 1;
      goto LABEL_1265;
    }
  }

  LODWORD(v280) = v180 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v221 = [MEMORY[0x277D759A0] mainScreen];
      [v221 _referenceBounds];
    }

    v291 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v187 >= *(MEMORY[0x277D66E30] + 104))
    {
      v277 = 0;
      v274 = 0;
      v271 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var9;
      goto LABEL_424;
    }
  }

  else
  {
    v291 = 0;
  }

LABEL_1265:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v277) = 0;
      v274 = 0;
      goto LABEL_1291;
    }
  }

  else
  {
    v225 = [MEMORY[0x277D75418] currentDevice];
    if ([v225 userInterfaceIdiom])
    {
      v274 = 0;
      HIDWORD(v277) = 1;
      goto LABEL_1291;
    }
  }

  HIDWORD(v277) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v220 = [MEMORY[0x277D759A0] mainScreen];
      [v220 _referenceBounds];
    }

    v274 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v190 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1322;
    }
  }

  else
  {
    v274 = 0;
  }

LABEL_1291:
  if (_SBF_Private_IsD53())
  {
    LODWORD(v277) = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var10;
    goto LABEL_424;
  }

LABEL_1322:
  if (_SBF_Private_IsD16() && _SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v277) = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var5;
    goto LABEL_424;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && _SBF_Private_IsD16())
  {
    LODWORD(v277) = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var6;
    goto LABEL_424;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v277) = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var3;
    goto LABEL_424;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v277) = 0;
    v271 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var4;
    goto LABEL_424;
  }

  v193 = __sb__runningInSpringBoard();
  if (v193)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v277) = 0;
      v271 = 0;
      goto LABEL_1376;
    }
  }

  else
  {
    v219 = [MEMORY[0x277D75418] currentDevice];
    if ([v219 userInterfaceIdiom])
    {
      v271 = 0;
      LODWORD(v277) = 1;
      goto LABEL_1376;
    }
  }

  LODWORD(v277) = v193 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v217 = [MEMORY[0x277D759A0] mainScreen];
      [v217 _referenceBounds];
    }

    v271 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v203 >= *(MEMORY[0x277D66E30] + 88))
    {
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var7;
      goto LABEL_424;
    }
  }

  else
  {
    v271 = 0;
  }

LABEL_1376:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v79 = 0;
      v80 = 0;
      goto LABEL_1406;
    }
  }

  else
  {
    v218 = [MEMORY[0x277D75418] currentDevice];
    if ([v218 userInterfaceIdiom])
    {
      v80 = 0;
      v79 = 1;
      goto LABEL_1406;
    }
  }

  v79 = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v70 = __sb__runningInSpringBoard();
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v216 = [MEMORY[0x277D759A0] mainScreen];
      [v216 _referenceBounds];
    }

    v80 = v70 ^ 1;
    BSSizeRoundForScale();
    if (v206 >= *(MEMORY[0x277D66E30] + 72))
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_var33 = &v308->var8;
      goto LABEL_424;
    }
  }

  else
  {
    v80 = 0;
  }

LABEL_1406:
  v197 = __sb__runningInSpringBoard();
  if (v197)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v81 = 0;
      v82 = 0;
      goto LABEL_1437;
    }
  }

  else
  {
    v70 = [MEMORY[0x277D75418] currentDevice];
    if ([v70 userInterfaceIdiom])
    {
      v82 = 0;
      v81 = 1;
      goto LABEL_1437;
    }
  }

  v81 = v197 ^ 1;
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v66 = [MEMORY[0x277D759A0] mainScreen];
    [v66 _referenceBounds];
  }

  v82 = v64 ^ 1;
  BSSizeRoundForScale();
  if (v199 >= *(MEMORY[0x277D66E30] + 56))
  {
    v83 = 0;
    v84 = 0;
    p_var33 = &v308->var2;
    goto LABEL_424;
  }

LABEL_1437:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v83 = 0;
      v84 = 0;
LABEL_1483:
      p_var33 = &v308->var0;
      goto LABEL_424;
    }
  }

  else
  {
    v65 = [MEMORY[0x277D75418] currentDevice];
    if ([v65 userInterfaceIdiom])
    {
      v84 = 0;
      v83 = 1;
      goto LABEL_1483;
    }
  }

  v83 = v64 ^ 1;
  v210 = __sb__runningInSpringBoard();
  if (v210)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v64 = [MEMORY[0x277D759A0] mainScreen];
    [v64 _referenceBounds];
  }

  v84 = v210 ^ 1;
  BSSizeRoundForScale();
  if (v211 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_1483;
  }

  p_var33 = &v308->var1;
LABEL_424:
  v309->_splashRingDiameter = *p_var33;
  if (v84)
  {
  }

  if (v83)
  {
  }

  if (v82)
  {
  }

  if (v81)
  {
  }

  if (v80)
  {
  }

  if (v79)
  {
  }

  if (v271)
  {
  }

  if (v277)
  {
  }

  if (v274)
  {
  }

  if (HIDWORD(v277))
  {
  }

  if (v291)
  {
  }

  if (v280)
  {
  }

  if (HIDWORD(v280))
  {
  }

  if (v294)
  {
  }

  if (HIDWORD(v294))
  {
  }

  if (v297)
  {
  }

  if (HIDWORD(v297))
  {
  }

  if (v300)
  {
  }

  if (HIDWORD(v300))
  {
  }

  if (v303)
  {
  }

  if (HIDWORD(v303))
  {
  }

  if (*v304)
  {
  }

  if (*&v304[4])
  {
  }

  if (*&v304[8])
  {
  }

  if (*&v304[12])
  {
  }

  if (*&v304[16])
  {
  }

  if (v285)
  {
  }

  if (LODWORD(v305[0]))
  {
  }

  if (v287)
  {
  }

  if (v290)
  {
  }

  if (HIDWORD(v305[0]))
  {
  }

  if (LODWORD(v305[1]))
  {
  }

  if (HIDWORD(v305[1]))
  {
  }

  if (LODWORD(v305[2]))
  {
  }

  if (HIDWORD(v305[2]))
  {
  }

  if (LODWORD(v305[3]))
  {
  }

  if (HIDWORD(v305[3]))
  {
  }

  if (LODWORD(v305[4]))
  {
  }

  if (HIDWORD(v305[4]))
  {
  }

  if (LODWORD(v305[5]))
  {
  }

  if (HIDWORD(v305[5]))
  {
  }

  if (LODWORD(v305[6]))
  {
  }

  if (HIDWORD(v305[6]))
  {
  }

  if (LODWORD(v305[7]))
  {
  }

  if (HIDWORD(v305[7]))
  {
  }

  if (LODWORD(v305[8]))
  {
  }

  if (HIDWORD(v305[8]))
  {
  }

  if (LODWORD(v305[9]))
  {
  }

  if (HIDWORD(v305[9]))
  {

    if (!LODWORD(v305[10]))
    {
      goto LABEL_522;
    }
  }

  else if (!LODWORD(v305[10]))
  {
LABEL_522:
    if (HIDWORD(v305[10]))
    {
      goto LABEL_523;
    }

    goto LABEL_533;
  }

  if (HIDWORD(v305[10]))
  {
LABEL_523:

    if (!LODWORD(v305[11]))
    {
      goto LABEL_524;
    }

    goto LABEL_534;
  }

LABEL_533:
  if (!LODWORD(v305[11]))
  {
LABEL_524:
    if (HIDWORD(v305[11]))
    {
      goto LABEL_525;
    }

    goto LABEL_535;
  }

LABEL_534:

  if (HIDWORD(v305[11]))
  {
LABEL_525:

    if (!LODWORD(v305[12]))
    {
      goto LABEL_526;
    }

    goto LABEL_536;
  }

LABEL_535:
  if (!LODWORD(v305[12]))
  {
LABEL_526:
    if (HIDWORD(v305[12]))
    {
      goto LABEL_527;
    }

    goto LABEL_537;
  }

LABEL_536:

  if (HIDWORD(v305[12]))
  {
LABEL_527:

    if (!v306)
    {
      goto LABEL_528;
    }

LABEL_538:

    if (!v307)
    {
      goto LABEL_530;
    }

    goto LABEL_529;
  }

LABEL_537:
  if (v306)
  {
    goto LABEL_538;
  }

LABEL_528:
  if (v307)
  {
LABEL_529:
  }

LABEL_530:
  v92 = v309;

  return v92;
}

- (CGPoint)ringCenter
{
  x = self->_ringCenter.x;
  y = self->_ringCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end