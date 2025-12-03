@interface MTLumaDodgePillSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation MTLumaDodgePillSettings

- (void)setDefaultValues
{
  if (_RunningInSpringBoard___once != -1)
  {
    [MTLumaDodgePillSettings setDefaultValues];
  }

  if (_RunningInSpringBoard___result == 1)
  {
    _MainScreenReferenceBounds();
    v4 = v3;
    v6 = v5;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v4 = v8;
    v6 = v9;
  }

  [(MTLumaDodgePillSettings *)self setMinWidth:round(v4 * 0.3574)];
  [(MTLumaDodgePillSettings *)self setMaxWidth:round(v6 * 0.2571)];
  [(MTLumaDodgePillSettings *)self setHeight:5.0];
  [(MTLumaDodgePillSettings *)self setEdgeSpacing:8.0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] == 1)
    {
      if (_RunningInSpringBoard___once != -1)
      {
        [MTLumaDodgePillSettings setDefaultValues];
      }

      v13 = _RunningInSpringBoard___result;
      if (_RunningInSpringBoard___result == 1)
      {
        v14 = _MainScreenReferenceBounds();
      }

      else
      {
        userInterfaceIdiom = [MEMORY[0x277D759A0] mainScreen];
        [userInterfaceIdiom _referenceBounds];
      }

      Height = CGRectGetHeight(*&v14);
      if ((v13 & 1) == 0)
      {
      }

      if (Height > 1210.0)
      {
        [(MTLumaDodgePillSettings *)self setMinWidth:315.0];
        v19 = 345.0;
        goto LABEL_29;
      }
    }

    else
    {
    }

    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {

LABEL_30:
      [(MTLumaDodgePillSettings *)self setHeight:5.5];
      [(MTLumaDodgePillSettings *)self setEdgeSpacing:7.5];
      goto LABEL_31;
    }

    if (_RunningInSpringBoard___once != -1)
    {
      [MTLumaDodgePillSettings setDefaultValues];
    }

    v21 = _RunningInSpringBoard___result;
    if (_RunningInSpringBoard___result == 1)
    {
      v22 = _MainScreenReferenceBounds();
    }

    else
    {
      userInterfaceIdiom = [MEMORY[0x277D759A0] mainScreen];
      [userInterfaceIdiom _referenceBounds];
    }

    v26 = CGRectGetHeight(*&v22);
    if ((v21 & 1) == 0)
    {
    }

    if (v26 <= 1024.0)
    {
      goto LABEL_30;
    }

    [(MTLumaDodgePillSettings *)self setMinWidth:273.0];
    v19 = 315.0;
LABEL_29:
    [(MTLumaDodgePillSettings *)self setMaxWidth:v19];
    goto LABEL_30;
  }

LABEL_31:
  [(MTLumaDodgePillSettings *)self setColorAddWhiteness:0.71];
  [(MTLumaDodgePillSettings *)self setBrightLumaThreshold:0.7];
  [(MTLumaDodgePillSettings *)self setDarkLumaThreshold:0.37];
  [(MTLumaDodgePillSettings *)self setInitialLumaThreshold:0.5];
  [(MTLumaDodgePillSettings *)self setCornerRadius:4.0];
  [(MTLumaDodgePillSettings *)self setCornerMask:0];
  initWithDefaultValues = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillSettings *)self setNoneSettings:initWithDefaultValues];

  initWithDefaultValues2 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setColorAddOpacity:0.525];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setLumaMapPlusColorOpacity:0.31];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setOverlayBlendOpacity:0.4];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setBlur:10.0];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setBrightness:0.06];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setSaturation:1.15];
  [(MTLumaDodgePillSettings *)self setThinSettings:initWithDefaultValues2];
  initWithDefaultValues3 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues3 setColorAddOpacity:0.5];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues3 setLumaMapPlusColorOpacity:1.0];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues3 setBlur:10.0];
  [(MTLumaDodgePillSettings *)self setGraySettings:initWithDefaultValues3];
  initWithDefaultValues4 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues4 setLumaMapPlusColorOpacity:1.0];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues4 setBlur:10.0];
  [(MTLumaDodgePillSettings *)self setBlackSettings:initWithDefaultValues4];
  initWithDefaultValues5 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues5 setColorAddOpacity:1.0];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues5 setLumaMapPlusColorOpacity:1.0];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues5 setBlur:10.0];
  [(MTLumaDodgePillSettings *)self setWhiteSettings:initWithDefaultValues5];
  [(MTLumaDodgePillSettings *)self setDisableLumaTracking:0];
  [(MTLumaDodgePillSettings *)self setOverrideDodgeMode:0];
}

+ (id)settingsControllerModule
{
  v50[8] = *MEMORY[0x277D85DE8];
  v45 = [MEMORY[0x277D431F0] rowWithTitle:@"Narrow Width" valueKeyPath:@"minWidth"];
  v43 = [v45 valueValidator:&__block_literal_global_0];
  v50[0] = v43;
  v41 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"minWidth"];
  v39 = [v41 minValue:1.0 maxValue:300.0];
  v37 = [v39 valueValidator:&__block_literal_global_0];
  v50[1] = v37;
  v34 = [MEMORY[0x277D431F0] rowWithTitle:@"Wide Width" valueKeyPath:@"maxWidth"];
  v32 = [v34 valueValidator:&__block_literal_global_81];
  v50[2] = v32;
  v2 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"maxWidth"];
  v3 = [v2 minValue:1.0 maxValue:300.0];
  v4 = [v3 valueValidator:&__block_literal_global_81];
  v50[3] = v4;
  v5 = [MEMORY[0x277D431F0] rowWithTitle:@"Height" valueKeyPath:@"height"];
  v50[4] = v5;
  v6 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"height"];
  v7 = [v6 minValue:1.0 maxValue:30.0];
  v50[5] = v7;
  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Edge Spacing" valueKeyPath:@"edgeSpacing"];
  v50[6] = v8;
  v9 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"edgeSpacing"];
  v10 = [v9 minValue:0.0 maxValue:30.0];
  v50[7] = v10;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];

  v46 = [MEMORY[0x277D43218] sectionWithRows:v36 title:@"Geometry"];
  v44 = [MEMORY[0x277D431F0] rowWithTitle:@"+Color: Whiteness" valueKeyPath:@"colorAddWhiteness"];
  v49[0] = v44;
  v42 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"colorAddWhiteness"];
  v40 = [v42 minValue:0.0 maxValue:1.0];
  v49[1] = v40;
  v38 = [MEMORY[0x277D431F0] rowWithTitle:@"Luma Threshold: Bright" valueKeyPath:@"brightLumaThreshold"];
  v49[2] = v38;
  v35 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"brightLumaThreshold"];
  v33 = [v35 minValue:0.0 maxValue:1.0];
  v49[3] = v33;
  v31 = [MEMORY[0x277D431F0] rowWithTitle:@"Luma Threshold: Dark" valueKeyPath:@"darkLumaThreshold"];
  v49[4] = v31;
  v11 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"darkLumaThreshold"];
  v12 = [v11 minValue:0.0 maxValue:1.0];
  v49[5] = v12;
  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Luma Threshold: Initial" valueKeyPath:@"initialLumaThreshold"];
  v49[6] = v13;
  v14 = [MEMORY[0x277D43298] rowWithTitle:0 valueKeyPath:@"initialLumaThreshold"];
  v15 = [v14 minValue:0.0 maxValue:1.0];
  v49[7] = v15;
  v16 = [MEMORY[0x277D431E0] rowWithTitle:@"Thin" childSettingsKeyPath:@"thinSettings"];
  v49[8] = v16;
  v17 = [MEMORY[0x277D431E0] rowWithTitle:@"Gray" childSettingsKeyPath:@"graySettings"];
  v49[9] = v17;
  v18 = [MEMORY[0x277D431E0] rowWithTitle:@"Black" childSettingsKeyPath:@"blackSettings"];
  v49[10] = v18;
  v19 = [MEMORY[0x277D431E0] rowWithTitle:@"White" childSettingsKeyPath:@"whiteSettings"];
  v49[11] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:12];

  v21 = [MEMORY[0x277D43218] sectionWithRows:v20 title:@"Mode Parameters"];
  v22 = [MEMORY[0x277D432A0] rowWithTitle:@"Disable Luma Tracking" valueKeyPath:@"disableLumaTracking"];
  v48[0] = v22;
  v23 = [MEMORY[0x277D431B8] rowWithTitle:@"Override Dodge Mode" valueKeyPath:@"overrideDodgeMode"];
  v24 = [v23 possibleValues:&unk_282FA5C00 titles:&unk_282FA5C18];
  v48[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];

  v26 = [MEMORY[0x277D43218] sectionWithRows:v25 title:@"Power Analysis Tools"];
  v27 = MEMORY[0x277D43218];
  v47[0] = v46;
  v47[1] = v21;
  v47[2] = v26;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v29 = [v27 moduleWithTitle:0 contents:v28];

  return v29;
}

id __51__MTLumaDodgePillSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 maxWidth];
  v6 = v5;
  [v4 doubleValue];
  if (v7 <= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  }

  v9 = v8;

  return v9;
}

id __51__MTLumaDodgePillSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 minWidth];
  v6 = v5;
  [v4 doubleValue];
  if (v7 >= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  }

  v9 = v8;

  return v9;
}

@end