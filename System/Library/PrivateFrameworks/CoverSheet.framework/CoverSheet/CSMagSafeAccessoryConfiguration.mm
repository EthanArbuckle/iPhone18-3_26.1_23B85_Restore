@interface CSMagSafeAccessoryConfiguration
+ (id)batteryCaseConfiguration;
+ (id)configuration:(id)configuration withBatteryPack:(BOOL)pack;
+ (id)defaultConfiguration;
+ (id)staticViewConfiguration;
- (CGRect)visibleScreenCoordinatesForSleeve;
- (CSMagSafeAccessoryConfiguration)initWithStaticViewNeeded:(BOOL)needed;
- (double)dateTimeMostExtremeLeadingX;
- (double)dateTimeMostExtremeTrailingX;
- (double)listMinY;
- (double)prominentBaselineToListY;
- (double)timeLabelBaselineY;
- (double)windowedAccessoryInset;
@end

@implementation CSMagSafeAccessoryConfiguration

+ (id)defaultConfiguration
{
  if (defaultConfiguration_onceToken != -1)
  {
    +[CSMagSafeAccessoryConfiguration defaultConfiguration];
  }

  v3 = defaultConfiguration___defaultConfiguration;

  return v3;
}

uint64_t __55__CSMagSafeAccessoryConfiguration_defaultConfiguration__block_invoke()
{
  v0 = [[CSMagSafeAccessoryConfiguration alloc] initWithStaticViewNeeded:0];
  v1 = defaultConfiguration___defaultConfiguration;
  defaultConfiguration___defaultConfiguration = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)batteryCaseConfiguration
{
  if (batteryCaseConfiguration_onceToken != -1)
  {
    +[CSMagSafeAccessoryConfiguration batteryCaseConfiguration];
  }

  v3 = batteryCaseConfiguration___batteryCaseConfiguration;

  return v3;
}

void __59__CSMagSafeAccessoryConfiguration_batteryCaseConfiguration__block_invoke()
{
  v0 = [[CSMagSafeAccessoryConfiguration alloc] initWithStaticViewNeeded:0];
  v1 = batteryCaseConfiguration___batteryCaseConfiguration;
  batteryCaseConfiguration___batteryCaseConfiguration = v0;

  v2 = batteryCaseConfiguration___batteryCaseConfiguration;
  v3 = +[CSMagSafeRingConfiguration auxiliaryConfiguration];
  [v2 setAuxiliaryRing:v3];
}

+ (id)staticViewConfiguration
{
  if (staticViewConfiguration_onceToken != -1)
  {
    +[CSMagSafeAccessoryConfiguration staticViewConfiguration];
  }

  v3 = staticViewConfiguration___staticViewConfiguration;

  return v3;
}

uint64_t __58__CSMagSafeAccessoryConfiguration_staticViewConfiguration__block_invoke()
{
  v0 = [[CSMagSafeAccessoryConfiguration alloc] initWithStaticViewNeeded:1];
  v1 = staticViewConfiguration___staticViewConfiguration;
  staticViewConfiguration___staticViewConfiguration = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)configuration:(id)configuration withBatteryPack:(BOOL)pack
{
  v4 = [configuration copy];

  return v4;
}

- (CSMagSafeAccessoryConfiguration)initWithStaticViewNeeded:(BOOL)needed
{
  v10.receiver = self;
  v10.super_class = CSMagSafeAccessoryConfiguration;
  v4 = [(CSMagSafeAccessoryConfiguration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_staticViewNeeded = needed;
    if (needed)
    {
      +[CSMagSafeRingConfiguration staticConfiguration];
    }

    else
    {
      +[CSMagSafeRingConfiguration defaultConfiguration];
    }
    v6 = ;
    v5->_ring = v6;

    v7 = objc_alloc_init(CSLayoutStrategy);
    layoutStrategy = v5->_layoutStrategy;
    v5->_layoutStrategy = v7;

    [(CSLayoutStrategy *)v5->_layoutStrategy setPersistentLayout:v5];
  }

  return v5;
}

- (CGRect)visibleScreenCoordinatesForSleeve
{
  layoutStrategy = [(CSMagSafeAccessoryConfiguration *)self layoutStrategy];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  [layoutStrategy suggestedVisibleFrameForSleeveInScreenCoordinates:1 forceCenteredX:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)timeLabelBaselineY
{
  v3 = __sb__runningInSpringBoard();
  mainScreen27 = &CSTimeLabelPortraitBaselineY;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      currentDevice28 = 0;
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      currentDevice28 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  v6 = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    currentDevice28 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v28 == *(MEMORY[0x277D66E30] + 288) && v27 == *(MEMORY[0x277D66E30] + 296))
    {
      v156 = currentDevice29 ^ 1;
      v157 = v6;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v154 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v155 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96670;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice28 = 0;
  }

LABEL_10:
  v8 = __sb__runningInSpringBoard();
  v156 = currentDevice28;
  v157 = v6;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v9 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 440))
    {
      v154 = currentDevice29 ^ 1;
      v155 = v10;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96698;
      goto LABEL_67;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_19:
  v11 = __sb__runningInSpringBoard();
  v154 = v9;
  v155 = v10;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_28;
    }
  }

  v13 = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    v12 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 376))
    {
      v152 = currentDevice29 ^ 1;
      v153 = v13;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96688;
      goto LABEL_67;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_28:
  v14 = __sb__runningInSpringBoard();
  v152 = v12;
  v153 = v13;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      mainScreen28 = 0;
      v15 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      mainScreen28 = 0;
      v15 = 1;
      goto LABEL_37;
    }
  }

  v15 = v14 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  mainScreen28 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 280))
  {
    v150 = currentDevice29 ^ 1;
    v151 = v15;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v148 = 0uLL;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    v149 = 0;
    v133 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96690;
    goto LABEL_67;
  }

LABEL_37:
  v17 = __sb__runningInSpringBoard();
  v150 = mainScreen28;
  v151 = v15;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v148) = 0;
      mainScreen27 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      HIDWORD(v148) = 0;
      mainScreen27 = 1;
      goto LABEL_47;
    }
  }

  mainScreen27 = v17 ^ 1u;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  HIDWORD(v148) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v25 >= *(MEMORY[0x277D66E30] + 264))
  {
    v149 = mainScreen27;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    *&v148 = 0;
    v137 = 0;
    v136 = 0;
    DWORD2(v148) = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96680;
    goto LABEL_67;
  }

LABEL_47:
  v26 = __sb__runningInSpringBoard();
  v149 = mainScreen27;
  if (v26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v148 + 4) = 0;
      goto LABEL_186;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *(&v148 + 4) = 0x100000000;
      goto LABEL_186;
    }
  }

  DWORD2(v148) = v26 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  DWORD1(v148) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v34 >= *(MEMORY[0x277D66E30] + 248))
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    LODWORD(v148) = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96678;
    goto LABEL_67;
  }

LABEL_186:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_188;
    }

LABEL_194:
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96668;
    LODWORD(v148) = currentDevice29 ^ 1;
    goto LABEL_67;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_194;
  }

LABEL_188:
  LODWORD(v148) = currentDevice29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_192:
    v147 = 0;
    goto LABEL_202;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_192;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v147 = 0x100000000;
      goto LABEL_202;
    }
  }

  HIDWORD(v147) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v147) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 200))
    {
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96648;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

LABEL_202:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v146 = 0;
      goto LABEL_212;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v146 = 0x100000000;
      goto LABEL_212;
    }
  }

  HIDWORD(v146) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    LODWORD(v146) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_216;
    }
  }

  else
  {
    LODWORD(v146) = 0;
  }

LABEL_212:
  if (_SBF_Private_IsD94Like())
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96650;
    goto LABEL_67;
  }

LABEL_216:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_220:
    v145 = 0;
    goto LABEL_230;
  }

  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v145 = 0x100000000;
      goto LABEL_230;
    }
  }

  HIDWORD(v145) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v145) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 136))
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96658;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v145) = 0;
  }

LABEL_230:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v144 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v144 = 0x100000000;
      goto LABEL_240;
    }
  }

  HIDWORD(v144) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v144) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_244;
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

LABEL_240:
  if (_SBF_Private_IsD64Like())
  {
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96660;
    goto LABEL_67;
  }

LABEL_244:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v143 = 0;
      goto LABEL_254;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v143 = 0x100000000;
      goto LABEL_254;
    }
  }

  HIDWORD(v143) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    currentDevice29 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v143) = currentDevice29;
    if (v42 >= *(MEMORY[0x277D66E30] + 136))
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96638;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v143) = 0;
  }

LABEL_254:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v142 = 0;
      goto LABEL_264;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v142 = 0x100000000;
      goto LABEL_264;
    }
  }

  HIDWORD(v142) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    LODWORD(v142) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_264:
  if (_SBF_Private_IsD54())
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96640;
    goto LABEL_67;
  }

LABEL_274:
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v141 = 0;
      goto LABEL_284;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      v141 = 0x100000000;
      goto LABEL_284;
    }
  }

  HIDWORD(v141) = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v141) = currentDevice29;
    if (v47 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC965F8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_284:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v140 = 0;
      goto LABEL_294;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_294;
    }
  }

  HIDWORD(v140) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(v140) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_303;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_294:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96600;
    goto LABEL_67;
  }

LABEL_303:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_307:
    v139 = 0;
    goto LABEL_314;
  }

  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_307;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_314;
    }
  }

  HIDWORD(v139) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    LODWORD(v139) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 184))
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC965E8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_314:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v138 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_324;
    }
  }

  HIDWORD(v138) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v138) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_328;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_324:
  if (_SBF_Private_IsD93Like())
  {
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965F0;
    goto LABEL_67;
  }

LABEL_328:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_332:
    v137 = 0;
    goto LABEL_342;
  }

  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_332;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_342;
    }
  }

  HIDWORD(v137) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    LODWORD(v137) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96618;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_342:
  v53 = __sb__runningInSpringBoard();
  if (v53)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v136) = 0;
      currentDevice29 = 0;
      goto LABEL_352;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      HIDWORD(v136) = 1;
      goto LABEL_352;
    }
  }

  HIDWORD(v136) = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    currentDevice29 = v54 ^ 1u;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_356;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_352:
  if (_SBF_Private_IsD63Like())
  {
    v135 = 0;
    LODWORD(v136) = currentDevice29;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96620;
    goto LABEL_67;
  }

LABEL_356:
  LODWORD(v136) = currentDevice29;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_360:
    v135 = 0;
    HIDWORD(v134) = 0;
    goto LABEL_370;
  }

  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_360;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      v135 = 1;
      goto LABEL_370;
    }
  }

  v135 = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v134) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96628;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_370:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_380;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_380;
    }
  }

  LODWORD(v134) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v133) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_384;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_380:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96630;
    goto LABEL_67;
  }

LABEL_384:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_394;
    }
  }

  LODWORD(v133) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v132) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v132) = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96608;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_394:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_404;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_404;
    }
  }

  LODWORD(v132) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v131) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_414;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_404:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96610;
    goto LABEL_67;
  }

LABEL_414:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      HIDWORD(v130) = 0;
      goto LABEL_424;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v130) = 0;
      LODWORD(v131) = 1;
      goto LABEL_424;
    }
  }

  LODWORD(v131) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v130) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v130) = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC965D8;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v130) = 0;
  }

LABEL_424:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v130) = 0;
      currentDevice29 = 0;
      goto LABEL_434;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      LODWORD(v130) = 1;
      goto LABEL_434;
    }
  }

  LODWORD(v130) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v65 = __sb__runningInSpringBoard();
    if (v65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    currentDevice29 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_441;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_434:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v129) = currentDevice29;
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965E0;
    goto LABEL_67;
  }

LABEL_441:
  HIDWORD(v129) = currentDevice29;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965B8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965C0;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965A8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965B0;
    goto LABEL_67;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v129) = 0;
      v128 = 0;
      goto LABEL_461;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v128 = 0;
      LODWORD(v129) = 1;
      goto LABEL_461;
    }
  }

  LODWORD(v129) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v128 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 88))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC965C8;
      goto LABEL_67;
    }
  }

  else
  {
    v128 = 0;
  }

LABEL_461:
  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_471;
    }
  }

  v18 = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v19 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 72))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC965D0;
      goto LABEL_67;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_471:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v21 = 0;
      v20 = 1;
      goto LABEL_481;
    }
  }

  v20 = currentDevice29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
  }

  v21 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v70 >= *(MEMORY[0x277D66E30] + 56))
  {
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC965A0;
    goto LABEL_67;
  }

LABEL_481:
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
LABEL_498:
      v24 = &CSTimeLabelPortraitBaselineY;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_498;
    }
  }

  v22 = mainScreen28 ^ 1;
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  v23 = v73 ^ 1;
  BSSizeRoundForScale();
  if (v74 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_498;
  }

  v24 = &qword_21EC96598;
LABEL_67:
  v32 = *v24;
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v128)
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (DWORD1(v148))
  {
  }

  if (DWORD2(v148))
  {
  }

  if (HIDWORD(v148))
  {

    if (!v149)
    {
      goto LABEL_163;
    }
  }

  else if (!v149)
  {
LABEL_163:
    if (v150)
    {
      goto LABEL_164;
    }

    goto LABEL_174;
  }

  if (v150)
  {
LABEL_164:

    if (!v151)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v151)
  {
LABEL_165:
    if (v152)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v152)
  {
LABEL_166:

    if (!v153)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v153)
  {
LABEL_167:
    if (v154)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v154)
  {
LABEL_168:

    if (!v155)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v155)
  {
LABEL_169:
    if (v156)
    {
      goto LABEL_170;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (v156)
  {
LABEL_170:

    if (!v157)
    {
      return v32;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v157)
  {
LABEL_181:
  }

  return v32;
}

- (double)windowedAccessoryInset
{
  v3 = __sb__runningInSpringBoard();
  mainScreen27 = &CSWindowedAccessoryInset;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      currentDevice28 = 0;
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      currentDevice28 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  v6 = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    currentDevice28 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v28 == *(MEMORY[0x277D66E30] + 288) && v27 == *(MEMORY[0x277D66E30] + 296))
    {
      v156 = currentDevice29 ^ 1;
      v157 = v6;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v154 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v155 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96AB0;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice28 = 0;
  }

LABEL_10:
  v8 = __sb__runningInSpringBoard();
  v156 = currentDevice28;
  v157 = v6;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v9 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 440))
    {
      v154 = currentDevice29 ^ 1;
      v155 = v10;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96AD8;
      goto LABEL_67;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_19:
  v11 = __sb__runningInSpringBoard();
  v154 = v9;
  v155 = v10;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_28;
    }
  }

  v13 = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    v12 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 376))
    {
      v152 = currentDevice29 ^ 1;
      v153 = v13;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96AC8;
      goto LABEL_67;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_28:
  v14 = __sb__runningInSpringBoard();
  v152 = v12;
  v153 = v13;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      mainScreen28 = 0;
      v15 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      mainScreen28 = 0;
      v15 = 1;
      goto LABEL_37;
    }
  }

  v15 = v14 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  mainScreen28 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 280))
  {
    v150 = currentDevice29 ^ 1;
    v151 = v15;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v148 = 0uLL;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    v149 = 0;
    v133 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AD0;
    goto LABEL_67;
  }

LABEL_37:
  v17 = __sb__runningInSpringBoard();
  v150 = mainScreen28;
  v151 = v15;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v148) = 0;
      mainScreen27 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      HIDWORD(v148) = 0;
      mainScreen27 = 1;
      goto LABEL_47;
    }
  }

  mainScreen27 = v17 ^ 1u;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  HIDWORD(v148) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v25 >= *(MEMORY[0x277D66E30] + 264))
  {
    v149 = mainScreen27;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    *&v148 = 0;
    v137 = 0;
    v136 = 0;
    DWORD2(v148) = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AC0;
    goto LABEL_67;
  }

LABEL_47:
  v26 = __sb__runningInSpringBoard();
  v149 = mainScreen27;
  if (v26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v148 + 4) = 0;
      goto LABEL_186;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *(&v148 + 4) = 0x100000000;
      goto LABEL_186;
    }
  }

  DWORD2(v148) = v26 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  DWORD1(v148) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v34 >= *(MEMORY[0x277D66E30] + 248))
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    LODWORD(v148) = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AB8;
    goto LABEL_67;
  }

LABEL_186:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_188;
    }

LABEL_194:
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AA8;
    LODWORD(v148) = currentDevice29 ^ 1;
    goto LABEL_67;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_194;
  }

LABEL_188:
  LODWORD(v148) = currentDevice29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_192:
    v147 = 0;
    goto LABEL_202;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_192;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v147 = 0x100000000;
      goto LABEL_202;
    }
  }

  HIDWORD(v147) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v147) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 200))
    {
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A88;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

LABEL_202:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v146 = 0;
      goto LABEL_212;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v146 = 0x100000000;
      goto LABEL_212;
    }
  }

  HIDWORD(v146) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    LODWORD(v146) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_216;
    }
  }

  else
  {
    LODWORD(v146) = 0;
  }

LABEL_212:
  if (_SBF_Private_IsD94Like())
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A90;
    goto LABEL_67;
  }

LABEL_216:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_220:
    v145 = 0;
    goto LABEL_230;
  }

  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v145 = 0x100000000;
      goto LABEL_230;
    }
  }

  HIDWORD(v145) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v145) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 136))
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A98;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v145) = 0;
  }

LABEL_230:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v144 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v144 = 0x100000000;
      goto LABEL_240;
    }
  }

  HIDWORD(v144) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v144) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_244;
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

LABEL_240:
  if (_SBF_Private_IsD64Like())
  {
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AA0;
    goto LABEL_67;
  }

LABEL_244:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v143 = 0;
      goto LABEL_254;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v143 = 0x100000000;
      goto LABEL_254;
    }
  }

  HIDWORD(v143) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    currentDevice29 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v143) = currentDevice29;
    if (v42 >= *(MEMORY[0x277D66E30] + 136))
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A78;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v143) = 0;
  }

LABEL_254:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v142 = 0;
      goto LABEL_264;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v142 = 0x100000000;
      goto LABEL_264;
    }
  }

  HIDWORD(v142) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    LODWORD(v142) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_264:
  if (_SBF_Private_IsD54())
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A80;
    goto LABEL_67;
  }

LABEL_274:
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v141 = 0;
      goto LABEL_284;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      v141 = 0x100000000;
      goto LABEL_284;
    }
  }

  HIDWORD(v141) = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v141) = currentDevice29;
    if (v47 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A38;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_284:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v140 = 0;
      goto LABEL_294;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_294;
    }
  }

  HIDWORD(v140) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(v140) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_303;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_294:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A40;
    goto LABEL_67;
  }

LABEL_303:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_307:
    v139 = 0;
    goto LABEL_314;
  }

  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_307;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_314;
    }
  }

  HIDWORD(v139) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    LODWORD(v139) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 184))
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A28;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_314:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v138 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_324;
    }
  }

  HIDWORD(v138) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v138) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_328;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_324:
  if (_SBF_Private_IsD93Like())
  {
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A30;
    goto LABEL_67;
  }

LABEL_328:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_332:
    v137 = 0;
    goto LABEL_342;
  }

  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_332;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_342;
    }
  }

  HIDWORD(v137) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    LODWORD(v137) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A58;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_342:
  v53 = __sb__runningInSpringBoard();
  if (v53)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v136) = 0;
      currentDevice29 = 0;
      goto LABEL_352;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      HIDWORD(v136) = 1;
      goto LABEL_352;
    }
  }

  HIDWORD(v136) = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    currentDevice29 = v54 ^ 1u;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_356;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_352:
  if (_SBF_Private_IsD63Like())
  {
    v135 = 0;
    LODWORD(v136) = currentDevice29;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A60;
    goto LABEL_67;
  }

LABEL_356:
  LODWORD(v136) = currentDevice29;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_360:
    v135 = 0;
    HIDWORD(v134) = 0;
    goto LABEL_370;
  }

  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_360;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      v135 = 1;
      goto LABEL_370;
    }
  }

  v135 = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v134) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A68;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_370:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_380;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_380;
    }
  }

  LODWORD(v134) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v133) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_384;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_380:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A70;
    goto LABEL_67;
  }

LABEL_384:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_394;
    }
  }

  LODWORD(v133) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v132) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v132) = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A48;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_394:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_404;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_404;
    }
  }

  LODWORD(v132) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v131) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_414;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_404:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A50;
    goto LABEL_67;
  }

LABEL_414:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      HIDWORD(v130) = 0;
      goto LABEL_424;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v130) = 0;
      LODWORD(v131) = 1;
      goto LABEL_424;
    }
  }

  LODWORD(v131) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v130) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v130) = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A18;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v130) = 0;
  }

LABEL_424:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v130) = 0;
      currentDevice29 = 0;
      goto LABEL_434;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      LODWORD(v130) = 1;
      goto LABEL_434;
    }
  }

  LODWORD(v130) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v65 = __sb__runningInSpringBoard();
    if (v65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    currentDevice29 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_441;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_434:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v129) = currentDevice29;
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A20;
    goto LABEL_67;
  }

LABEL_441:
  HIDWORD(v129) = currentDevice29;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969F8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A00;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969E8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969F0;
    goto LABEL_67;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v129) = 0;
      v128 = 0;
      goto LABEL_461;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v128 = 0;
      LODWORD(v129) = 1;
      goto LABEL_461;
    }
  }

  LODWORD(v129) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v128 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 88))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A08;
      goto LABEL_67;
    }
  }

  else
  {
    v128 = 0;
  }

LABEL_461:
  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_471;
    }
  }

  v18 = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v19 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 72))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A10;
      goto LABEL_67;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_471:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v21 = 0;
      v20 = 1;
      goto LABEL_481;
    }
  }

  v20 = currentDevice29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
  }

  v21 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v70 >= *(MEMORY[0x277D66E30] + 56))
  {
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969E0;
    goto LABEL_67;
  }

LABEL_481:
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
LABEL_498:
      v24 = &CSWindowedAccessoryInset;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_498;
    }
  }

  v22 = mainScreen28 ^ 1;
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  v23 = v73 ^ 1;
  BSSizeRoundForScale();
  if (v74 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_498;
  }

  v24 = &qword_21EC969D8;
LABEL_67:
  v32 = *v24;
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v128)
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (DWORD1(v148))
  {
  }

  if (DWORD2(v148))
  {
  }

  if (HIDWORD(v148))
  {

    if (!v149)
    {
      goto LABEL_163;
    }
  }

  else if (!v149)
  {
LABEL_163:
    if (v150)
    {
      goto LABEL_164;
    }

    goto LABEL_174;
  }

  if (v150)
  {
LABEL_164:

    if (!v151)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v151)
  {
LABEL_165:
    if (v152)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v152)
  {
LABEL_166:

    if (!v153)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v153)
  {
LABEL_167:
    if (v154)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v154)
  {
LABEL_168:

    if (!v155)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v155)
  {
LABEL_169:
    if (v156)
    {
      goto LABEL_170;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (v156)
  {
LABEL_170:

    if (!v157)
    {
      return v32;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v157)
  {
LABEL_181:
  }

  return v32;
}

- (double)prominentBaselineToListY
{
  v3 = __sb__runningInSpringBoard();
  mainScreen27 = &CSProminentBaselineToListY;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      currentDevice28 = 0;
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      currentDevice28 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  v6 = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    currentDevice28 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v28 == *(MEMORY[0x277D66E30] + 288) && v27 == *(MEMORY[0x277D66E30] + 296))
    {
      v156 = currentDevice29 ^ 1;
      v157 = v6;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v154 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v155 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96890;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice28 = 0;
  }

LABEL_10:
  v8 = __sb__runningInSpringBoard();
  v156 = currentDevice28;
  v157 = v6;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v9 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 440))
    {
      v154 = currentDevice29 ^ 1;
      v155 = v10;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC968B8;
      goto LABEL_67;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_19:
  v11 = __sb__runningInSpringBoard();
  v154 = v9;
  v155 = v10;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_28;
    }
  }

  v13 = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    v12 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 376))
    {
      v152 = currentDevice29 ^ 1;
      v153 = v13;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC968A8;
      goto LABEL_67;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_28:
  v14 = __sb__runningInSpringBoard();
  v152 = v12;
  v153 = v13;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      mainScreen28 = 0;
      v15 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      mainScreen28 = 0;
      v15 = 1;
      goto LABEL_37;
    }
  }

  v15 = v14 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  mainScreen28 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 280))
  {
    v150 = currentDevice29 ^ 1;
    v151 = v15;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v148 = 0uLL;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    v149 = 0;
    v133 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC968B0;
    goto LABEL_67;
  }

LABEL_37:
  v17 = __sb__runningInSpringBoard();
  v150 = mainScreen28;
  v151 = v15;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v148) = 0;
      mainScreen27 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      HIDWORD(v148) = 0;
      mainScreen27 = 1;
      goto LABEL_47;
    }
  }

  mainScreen27 = v17 ^ 1u;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  HIDWORD(v148) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v25 >= *(MEMORY[0x277D66E30] + 264))
  {
    v149 = mainScreen27;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    *&v148 = 0;
    v137 = 0;
    v136 = 0;
    DWORD2(v148) = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC968A0;
    goto LABEL_67;
  }

LABEL_47:
  v26 = __sb__runningInSpringBoard();
  v149 = mainScreen27;
  if (v26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v148 + 4) = 0;
      goto LABEL_186;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *(&v148 + 4) = 0x100000000;
      goto LABEL_186;
    }
  }

  DWORD2(v148) = v26 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  DWORD1(v148) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v34 >= *(MEMORY[0x277D66E30] + 248))
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    LODWORD(v148) = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96898;
    goto LABEL_67;
  }

LABEL_186:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_188;
    }

LABEL_194:
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96888;
    LODWORD(v148) = currentDevice29 ^ 1;
    goto LABEL_67;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_194;
  }

LABEL_188:
  LODWORD(v148) = currentDevice29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_192:
    v147 = 0;
    goto LABEL_202;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_192;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v147 = 0x100000000;
      goto LABEL_202;
    }
  }

  HIDWORD(v147) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v147) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 200))
    {
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96868;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

LABEL_202:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v146 = 0;
      goto LABEL_212;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v146 = 0x100000000;
      goto LABEL_212;
    }
  }

  HIDWORD(v146) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    LODWORD(v146) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_216;
    }
  }

  else
  {
    LODWORD(v146) = 0;
  }

LABEL_212:
  if (_SBF_Private_IsD94Like())
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96870;
    goto LABEL_67;
  }

LABEL_216:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_220:
    v145 = 0;
    goto LABEL_230;
  }

  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v145 = 0x100000000;
      goto LABEL_230;
    }
  }

  HIDWORD(v145) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v145) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 136))
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96878;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v145) = 0;
  }

LABEL_230:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v144 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v144 = 0x100000000;
      goto LABEL_240;
    }
  }

  HIDWORD(v144) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v144) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_244;
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

LABEL_240:
  if (_SBF_Private_IsD64Like())
  {
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96880;
    goto LABEL_67;
  }

LABEL_244:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v143 = 0;
      goto LABEL_254;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v143 = 0x100000000;
      goto LABEL_254;
    }
  }

  HIDWORD(v143) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    currentDevice29 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v143) = currentDevice29;
    if (v42 >= *(MEMORY[0x277D66E30] + 136))
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96858;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v143) = 0;
  }

LABEL_254:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v142 = 0;
      goto LABEL_264;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v142 = 0x100000000;
      goto LABEL_264;
    }
  }

  HIDWORD(v142) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    LODWORD(v142) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_264:
  if (_SBF_Private_IsD54())
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96860;
    goto LABEL_67;
  }

LABEL_274:
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v141 = 0;
      goto LABEL_284;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      v141 = 0x100000000;
      goto LABEL_284;
    }
  }

  HIDWORD(v141) = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v141) = currentDevice29;
    if (v47 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96818;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_284:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v140 = 0;
      goto LABEL_294;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_294;
    }
  }

  HIDWORD(v140) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(v140) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_303;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_294:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96820;
    goto LABEL_67;
  }

LABEL_303:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_307:
    v139 = 0;
    goto LABEL_314;
  }

  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_307;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_314;
    }
  }

  HIDWORD(v139) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    LODWORD(v139) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 184))
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96808;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_314:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v138 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_324;
    }
  }

  HIDWORD(v138) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v138) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_328;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_324:
  if (_SBF_Private_IsD93Like())
  {
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96810;
    goto LABEL_67;
  }

LABEL_328:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_332:
    v137 = 0;
    goto LABEL_342;
  }

  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_332;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_342;
    }
  }

  HIDWORD(v137) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    LODWORD(v137) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96838;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_342:
  v53 = __sb__runningInSpringBoard();
  if (v53)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v136) = 0;
      currentDevice29 = 0;
      goto LABEL_352;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      HIDWORD(v136) = 1;
      goto LABEL_352;
    }
  }

  HIDWORD(v136) = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    currentDevice29 = v54 ^ 1u;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_356;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_352:
  if (_SBF_Private_IsD63Like())
  {
    v135 = 0;
    LODWORD(v136) = currentDevice29;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96840;
    goto LABEL_67;
  }

LABEL_356:
  LODWORD(v136) = currentDevice29;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_360:
    v135 = 0;
    HIDWORD(v134) = 0;
    goto LABEL_370;
  }

  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_360;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      v135 = 1;
      goto LABEL_370;
    }
  }

  v135 = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v134) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96848;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_370:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_380;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_380;
    }
  }

  LODWORD(v134) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v133) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_384;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_380:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96850;
    goto LABEL_67;
  }

LABEL_384:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_394;
    }
  }

  LODWORD(v133) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v132) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v132) = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96828;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_394:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_404;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_404;
    }
  }

  LODWORD(v132) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v131) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_414;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_404:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96830;
    goto LABEL_67;
  }

LABEL_414:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      HIDWORD(v130) = 0;
      goto LABEL_424;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v130) = 0;
      LODWORD(v131) = 1;
      goto LABEL_424;
    }
  }

  LODWORD(v131) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v130) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v130) = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC967F8;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v130) = 0;
  }

LABEL_424:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v130) = 0;
      currentDevice29 = 0;
      goto LABEL_434;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      LODWORD(v130) = 1;
      goto LABEL_434;
    }
  }

  LODWORD(v130) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v65 = __sb__runningInSpringBoard();
    if (v65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    currentDevice29 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_441;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_434:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v129) = currentDevice29;
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96800;
    goto LABEL_67;
  }

LABEL_441:
  HIDWORD(v129) = currentDevice29;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC967D8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC967E0;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC967C8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC967D0;
    goto LABEL_67;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v129) = 0;
      v128 = 0;
      goto LABEL_461;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v128 = 0;
      LODWORD(v129) = 1;
      goto LABEL_461;
    }
  }

  LODWORD(v129) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v128 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 88))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC967E8;
      goto LABEL_67;
    }
  }

  else
  {
    v128 = 0;
  }

LABEL_461:
  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_471;
    }
  }

  v18 = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v19 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 72))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC967F0;
      goto LABEL_67;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_471:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v21 = 0;
      v20 = 1;
      goto LABEL_481;
    }
  }

  v20 = currentDevice29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
  }

  v21 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v70 >= *(MEMORY[0x277D66E30] + 56))
  {
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC967C0;
    goto LABEL_67;
  }

LABEL_481:
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
LABEL_498:
      v24 = &CSProminentBaselineToListY;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_498;
    }
  }

  v22 = mainScreen28 ^ 1;
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  v23 = v73 ^ 1;
  BSSizeRoundForScale();
  if (v74 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_498;
  }

  v24 = &qword_21EC967B8;
LABEL_67:
  v32 = *v24;
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v128)
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (DWORD1(v148))
  {
  }

  if (DWORD2(v148))
  {
  }

  if (HIDWORD(v148))
  {

    if (!v149)
    {
      goto LABEL_163;
    }
  }

  else if (!v149)
  {
LABEL_163:
    if (v150)
    {
      goto LABEL_164;
    }

    goto LABEL_174;
  }

  if (v150)
  {
LABEL_164:

    if (!v151)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v151)
  {
LABEL_165:
    if (v152)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v152)
  {
LABEL_166:

    if (!v153)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v153)
  {
LABEL_167:
    if (v154)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v154)
  {
LABEL_168:

    if (!v155)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v155)
  {
LABEL_169:
    if (v156)
    {
      goto LABEL_170;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (v156)
  {
LABEL_170:

    if (!v157)
    {
      return v32;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v157)
  {
LABEL_181:
  }

  return v32;
}

- (double)listMinY
{
  [(CSMagSafeAccessoryConfiguration *)self timeLabelBaselineY];
  v4 = v3;
  [(CSMagSafeAccessoryConfiguration *)self timeToSubtitleLabelBaselineDifferenceY];
  v6 = v4 + v5;
  [(CSMagSafeAccessoryConfiguration *)self prominentBaselineToListY];
  return v6 + v7;
}

- (double)dateTimeMostExtremeLeadingX
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  MidX = CGRectGetMidX(v5);

  return MidX;
}

- (double)dateTimeMostExtremeTrailingX
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  MidX = CGRectGetMidX(v5);

  return MidX;
}

@end