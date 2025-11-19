@interface HPCUIBatteryStatusView
+ (BOOL)isBeatsNonWx:(id)a3;
+ (id)hpsDeviceForHeadphoneDevice:(id)a3;
- ($FFD8FFF7A5D2C2666551BEB14716E99F)status;
- (BOOL)engravingIsSupported:(unsigned int)a3;
- (HPCUIBatteryStatusView)initWithFrame:(CGRect)a3 device:(id)a4 darkMode:(BOOL)a5;
- (id)batteryIconViewInstance;
- (id)combinedBatteryValue:(id)a3;
- (id)getDeviceCaseIcon:(unsigned int)a3;
- (unsigned)_batteryLevelCombined;
- (void)applyFilters:(id)a3 imageView:(id)a4;
- (void)applyFiltersForMode:(BOOL)a3;
- (void)getBatteryStatus;
- (void)getEngravedCaseImage:(NSString *)a3 productID:(unsigned int)a4 completionHandler:(id)a5;
- (void)setStatus:(id *)a3;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HPCUIBatteryStatusView

- ($FFD8FFF7A5D2C2666551BEB14716E99F)status
{
  v3 = *&self[10].var8;
  *&retstr->var0 = *&self[10].var4;
  *&retstr->var4 = v3;
  *&retstr->var8 = *&self[11].var2;
  return self;
}

- (void)setStatus:(id *)a3
{
  p_status = &self->status;
  v5 = *&a3->var8;
  v6 = *&a3->var4;
  *&self->status.battLevelSingle = *&a3->var0;
  *&self->status.battLevelLeft = v6;
  *&self->status.battLevelCombined = v5;
  if (self->untethered)
  {
    battLevelSingle = (self->status.battLevelRight + self->status.battLevelLeft) >> 1;
  }

  else
  {
    battLevelSingle = p_status->battLevelSingle;
  }

  v8 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
  [v8 setChargePercent:battLevelSingle];

  LODWORD(v8) = self->untethered;
  v9 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
  v10 = v9;
  if (v8 == 1)
  {
    if (p_status->battIsChargingLeft)
    {
      v11 = 1;
      goto LABEL_10;
    }

    v12 = 12;
  }

  else
  {
    v12 = 4;
  }

  v11 = *(&p_status->battLevelSingle + v12) != 0;
LABEL_10:
  [v9 setIsCharging:v11];

  v13 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
  [v13 setChargePercent:p_status->battLevelLeft];

  v14 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
  [v14 setIsCharging:p_status->battIsChargingLeft != 0];

  v15 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
  [v15 setChargePercent:p_status->battLevelRight];

  v16 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
  [v16 setIsCharging:p_status->battIsChargingRight != 0];

  v17 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
  [v17 setChargePercent:p_status->battLevelCase];

  v18 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
  [v18 setIsCharging:p_status->battIsChargingCase != 0];
}

- (HPCUIBatteryStatusView)initWithFrame:(CGRect)a3 device:(id)a4 darkMode:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v27.receiver = self;
  v27.super_class = HPCUIBatteryStatusView;
  v13 = [(HPCUIBatteryStatusView *)&v27 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->currentDevice, a4);
    v15 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HPCUIDeviceDeviceProtocol *)v14->currentDevice classicDevice];
      v17 = [v16 address];
      *buf = 138412290;
      v29 = v17;
      _os_log_impl(&dword_1AC345000, v15, OS_LOG_TYPE_DEFAULT, "Battery Status: Classic device address %@", buf, 0xCu);
    }

    objc_initWeak(buf, v14);
    if (-[HPCUIBatteryStatusView engravingIsSupported:](v14, "engravingIsSupported:", [v12 productId]))
    {
      v18 = [v12 address];
      v19 = [v12 productId];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __56__HPCUIBatteryStatusView_initWithFrame_device_darkMode___block_invoke;
      v25[3] = &unk_1E7973BF8;
      objc_copyWeak(&v26, buf);
      [(HPCUIBatteryStatusView *)v14 getEngravedCaseImage:v18 productID:v19 completionHandler:v25];

      objc_destroyWeak(&v26);
    }

    v14->darkMode = a5;
    deviceImageView = v14->deviceImageView;
    v14->deviceImageView = 0;

    caseImageView = v14->caseImageView;
    v14->caseImageView = 0;

    leftImageView = v14->leftImageView;
    v14->leftImageView = 0;

    rightImageView = v14->rightImageView;
    v14->rightImageView = 0;

    [(HPCUIBatteryStatusView *)v14 getBatteryStatus];
    [(HPCUIBatteryStatusView *)v14 setupViews];
    v14->deviceColor = 0;
    objc_destroyWeak(buf);
  }

  return v14;
}

void __56__HPCUIBatteryStatusView_initWithFrame_device_darkMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3[2](v3);

  v5 = WeakRetained[63];
  WeakRetained[63] = v4;

  if (WeakRetained[63])
  {
    [WeakRetained setupViews];
    [WeakRetained setNeedsLayout];
    [WeakRetained layoutIfNeeded];
  }
}

- (void)getBatteryStatus
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  [v3 batteryStatus:&self->status];

  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    battLevelSingle = self->status.battLevelSingle;
    battLevelRight = self->status.battLevelRight;
    battLevelLeft = self->status.battLevelLeft;
    battLevelCase = self->status.battLevelCase;
    battLevelCombined = self->status.battLevelCombined;
    v15[0] = 67110144;
    v15[1] = battLevelSingle;
    v16 = 1024;
    v17 = battLevelRight;
    v18 = 1024;
    v19 = battLevelLeft;
    v20 = 1024;
    v21 = battLevelCase;
    v22 = 1024;
    v23 = battLevelCombined;
    _os_log_impl(&dword_1AC345000, v4, OS_LOG_TYPE_DEFAULT, "Battery Status: battLevelSingle %d, battLevelRight %d, battLevelLeft %d, battLevelCase %d, battLevelCombined %d", v15, 0x20u);
  }

  v10 = [(HPCUIBatteryStatusView *)self getProductIDString];
  productIdString = self->productIdString;
  self->productIdString = v10;

  v12 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  v13 = [v12 accessorySettingFeatureBitMask];

  self->untethered = (v13 & 0x400) != 0;
  v14 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  LODWORD(v12) = [HPCUIBatteryStatusView isBeatsNonWx:v14];

  if (v12)
  {
    self->untethered = 1;
  }
}

- (void)applyFiltersForMode:(BOOL)a3
{
  self->darkMode = a3;
  v4 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  v5 = [v4 productId];

  v6 = [(HPCUIBatteryStatusView *)self getAssetsDictionary:v5];
  v7 = v6;
  if (!self->untethered)
  {
    deviceImageView = self->deviceImageView;
    if (!deviceImageView)
    {
      goto LABEL_10;
    }

    v9 = self;
    v10 = v7;
    goto LABEL_9;
  }

  if (self->caseImageView)
  {
    if (self->leftImageView)
    {
      if (self->rightImageView)
      {
        v10 = v6;
        [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:?];
        v6 = [(HPCUIBatteryStatusView *)self applyFilters:v10 imageView:self->rightImageView];
        v7 = v10;
        if (!self->caseEngravingView)
        {
          deviceImageView = self->caseImageView;
          v9 = self;
LABEL_9:
          v6 = [(HPCUIBatteryStatusView *)v9 applyFilters:v10 imageView:deviceImageView];
          v7 = v10;
        }
      }
    }
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)applyFilters:(id)a3 imageView:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E6979378];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [v9 initWithType:*MEMORY[0x1E6979880]];
  v11 = objc_alloc(MEMORY[0x1E6979378]);
  v12 = [v11 initWithType:*MEMORY[0x1E6979818]];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = *(MEMORY[0x1E6979280] + 4);
  v53 = *(MEMORY[0x1E6979280] + 20);
  v50 = *(MEMORY[0x1E6979280] + 28);
  v51 = *(MEMORY[0x1E6979280] + 44);
  v49[0] = *(MEMORY[0x1E6979280] + 52);
  *(v49 + 12) = *(MEMORY[0x1E6979280] + 64);
  darkMode = self->darkMode;
  v15 = [(HPCUIBatteryStatusView *)self isProductOfDifferentColors];
  if (darkMode)
  {
    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DarkMatrixValue-%d", self->deviceColor];
    }

    else
    {
      v16 = @"DarkMatrixValue";
    }

    if ([(HPCUIBatteryStatusView *)self isProductOfDifferentColors])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DarkBiasValue-%d", self->deviceColor];
    }

    else
    {
      v17 = @"DarkBiasValue";
    }

    v18 = [v6 objectForKey:v16];
    [v18 floatValue];
    v20 = v19;

    v21 = [v6 objectForKey:v17];
    [v21 floatValue];
    v23 = v22;

    if ((v23 == 0.0 || v20 == 0.0) && [(HPCUIBatteryStatusView *)self isProductOfDifferentColors])
    {
      v39 = @"DarkBiasValue-%d";
      v40 = v8;
      v24 = @"DarkMatrixValue-%d";
LABEL_22:
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, -[HPCUIBatteryStatusView defaultFiltersID](self, "defaultFiltersID")];

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:v39, -[HPCUIBatteryStatusView defaultFiltersID](self, "defaultFiltersID")];

      v31 = [v6 objectForKey:v29];
      [v31 floatValue];
      v20 = v32;

      v33 = [v6 objectForKey:v30];
      [v33 floatValue];
      v23 = v34;

      v16 = v29;
      v17 = v30;
      v8 = v40;
    }
  }

  else
  {
    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LightMatrixValue-%d", self->deviceColor];
    }

    else
    {
      v16 = @"LightMatrixValue";
    }

    if ([(HPCUIBatteryStatusView *)self isProductOfDifferentColors])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LightBiasValue-%d", self->deviceColor];
    }

    else
    {
      v17 = @"LightBiasValue";
    }

    v25 = [v6 objectForKey:v16];
    [v25 floatValue];
    v20 = v26;

    v27 = [v6 objectForKey:v17];
    [v27 floatValue];
    v23 = v28;

    if ((v23 == 0.0 || v20 == 0.0) && [(HPCUIBatteryStatusView *)self isProductOfDifferentColors])
    {
      v39 = @"LightBiasValue-%d";
      v40 = v8;
      v24 = @"LightMatrixValue-%d";
      goto LABEL_22;
    }
  }

  v41 = v20;
  v42 = v52;
  v43 = v53;
  v44 = v20;
  v45 = v50;
  v46 = v51;
  v47 = v20;
  *v48 = v49[0];
  *&v48[12] = *(v49 + 12);
  v35 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v41];
  [v10 setValue:v35 forKey:@"inputColorMatrix"];

  *&v36 = v23;
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  [v12 setValue:v37 forKey:@"inputAmount"];

  [v13 addObject:v10];
  [v13 addObject:v12];
  v38 = [v8 layer];

  [v38 setFilters:v13];
}

- (unsigned)_batteryLevelCombined
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->untethered)
  {
    v2 = (self->status.battLevelRight + self->status.battLevelLeft) >> 1;
  }

  else
  {
    LOWORD(v2) = self->status.battLevelSingle;
  }

  v3 = [(HPCUIBatteryStatusView *)self combinedBatteryValue:self->currentDevice];
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = [v3 intValue];
      _os_log_impl(&dword_1AC345000, v5, OS_LOG_TYPE_DEFAULT, "Battery Status: Showing L + R %d", v7, 8u);
    }

    LOWORD(v2) = [v3 intValue];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPCUIBatteryStatusView *)v5 _batteryLevelCombined];
    }
  }

  return v2;
}

- (void)setupViews
{
  v257 = *MEMORY[0x1E69E9840];
  v3 = [(HPCUIBatteryStatusView *)self subviews];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global];

  v4 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  v5 = [v4 productId];

  v6 = [(HPCUIBatteryStatusView *)self getAssetsDictionary:v5];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(HPCUIBatteryStatusView *)self heightAnchor];
    v9 = [v8 constraintEqualToConstant:234.0];
    [v7 addObject:v9];

    v252 = 0;
    v10 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
    [v10 getDeviceColor:&v252];

    self->deviceColor = [(HPCUIBatteryStatusView *)self bestDeviceColor:v252 productID:v5];
    v11 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      deviceColor = self->deviceColor;
      untethered = self->untethered;
      *buf = 67109632;
      *v254 = deviceColor;
      *&v254[4] = 1024;
      *&v254[6] = untethered;
      v255 = 1024;
      v256 = v5;
      _os_log_impl(&dword_1AC345000, v11, OS_LOG_TYPE_DEFAULT, "Battery Status: device color: %u untethered: %d pid: %d", buf, 0x14u);
    }

    if (!self->untethered)
    {
      v34 = [(HPCUIBatteryStatusView *)self deviceImage];
      v35 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v34];
      deviceImageView = self->deviceImageView;
      self->deviceImageView = v35;

      [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:self->deviceImageView];
      [(UIImageView *)self->deviceImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = [(UIImageView *)self->deviceImageView heightAnchor];
      v38 = [v37 constraintEqualToConstant:108.0];
      [v7 addObject:v38];

      [(UIImageView *)self->deviceImageView setContentMode:1];
      [(HPCUIBatteryStatusView *)self addSubview:self->deviceImageView];
      LOBYTE(v37) = [(HPCUIBatteryStatusView *)self _batteryLevelCombined];
      v39 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v41 = v40;
      v42 = self->status.battIsChargingSingle != 0;
      v43 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v44 = [(HPCUIBatteryGroupView *)v39 initWithFrame:v37 batteryPercent:v42 isCharging:0 glyph:0 batteryLevelDescription:v43 batteryIconView:0.0, 0.0, v41, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelSingleView:v44];

      v45 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

      v46 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [v46 setSemanticContentAttribute:3];

      v47 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [(HPCUIBatteryStatusView *)self addSubview:v47];

      v48 = [(UIImageView *)self->deviceImageView centerYAnchor];
      v49 = [(HPCUIBatteryStatusView *)self bottomAnchor];
      v50 = [v48 constraintEqualToAnchor:v49 constant:-136.0];
      [v7 addObject:v50];

      v51 = [(UIImageView *)self->deviceImageView centerXAnchor];
      v52 = [(HPCUIBatteryStatusView *)self centerXAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];
      [v7 addObject:v53];

      v54 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      v55 = [v54 centerXAnchor];
      v56 = [(UIImageView *)self->deviceImageView centerXAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];
      [v7 addObject:v57];

      v58 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      v59 = [v58 bottomAnchor];
      v60 = [(HPCUIBatteryStatusView *)self bottomAnchor];
      v61 = [v59 constraintEqualToAnchor:v60 constant:-14.0];
      [v7 addObject:v61];
LABEL_55:

      [MEMORY[0x1E696ACD8] activateConstraints:v7];
      goto LABEL_56;
    }

    v246 = v5;
    v14 = [(HPCUIBatteryStatusView *)self leftBudImage];
    v15 = [(HPCUIBatteryStatusView *)self rightBudImage];
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
    leftImageView = self->leftImageView;
    self->leftImageView = v16;

    v247 = v15;
    v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    rightImageView = self->rightImageView;
    self->rightImageView = v18;

    [(UIImageView *)self->leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->rightImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:self->leftImageView];
    [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:self->rightImageView];
    v20 = [v6 objectForKey:@"BudHeight"];
    [v20 floatValue];
    v22 = v21;

    [v14 size];
    v24 = v23;
    v25 = (v22 / v24);
    [v14 size];
    v27 = v26 * v25;
    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v250 = v28;
    [v28 setSemanticContentAttribute:3];
    if (_os_feature_enabled_impl())
    {
      v29 = [(HPCUIBatteryStatusView *)self combinedBatteryValue:self->currentDevice];
      v30 = v29 != 0;

      v31 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = @"False";
        if (v29)
        {
          v32 = @"TRUE";
        }

        *buf = 138412290;
        *v254 = v32;
        v33 = "Battery Status: Showing AABattery combined %@";
LABEL_20:
        _os_log_impl(&dword_1AC345000, v31, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

    else
    {
      if (self->status.battLevelLeft - self->status.battLevelRight >= 0)
      {
        v62 = self->status.battLevelLeft - self->status.battLevelRight;
      }

      else
      {
        v62 = self->status.battLevelRight - self->status.battLevelLeft;
      }

      v30 = v62 < 0xB;
      v31 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v63 = @"False";
        if (v62 < 0xB)
        {
          v63 = @"TRUE";
        }

        *buf = 138412290;
        *v254 = v63;
        v33 = "Battery Status: Showing Legacy combined %@";
        goto LABEL_20;
      }
    }

    v64 = (v27 * 2.0) + 0.0;

    v248 = v14;
    v249 = v6;
    v245 = v30;
    if (!self->untethered || v30)
    {
      v129 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v129 floatValue];
      v131 = v130;

      v132 = [v6 objectForKey:@"UnifiedSpacingBudsCase"];
      [v132 floatValue];
      v134 = v133;

      v135 = [v250 heightAnchor];
      v136 = [v135 constraintEqualToConstant:v22];
      [v7 addObject:v136];

      v137 = [v250 widthAnchor];
      v138 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v138 floatValue];
      v140 = [v137 constraintEqualToConstant:(v139 + (v27 * 2.0))];
      [v7 addObject:v140];

      v141 = 1;
      [(UIImageView *)self->leftImageView setContentMode:1];
      v142 = [(UIImageView *)self->leftImageView heightAnchor];
      v143 = [v142 constraintEqualToConstant:v22];
      [v7 addObject:v143];

      [(UIImageView *)self->rightImageView setContentMode:1];
      v144 = [(UIImageView *)self->rightImageView heightAnchor];
      v145 = [v144 constraintEqualToConstant:v22];
      [v7 addObject:v145];

      [v250 addSubview:self->leftImageView];
      [v250 addSubview:self->rightImageView];
      v146 = [(HPCUIBatteryStatusView *)self _batteryLevelCombined];
      v147 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v149 = v148;
      if (!self->status.battIsChargingLeft)
      {
        v141 = self->status.battIsChargingRight != 0;
      }

      v150 = v64 + v131;
      v151 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v152 = [(HPCUIBatteryGroupView *)v147 initWithFrame:v146 batteryPercent:v141 isCharging:0 glyph:0 batteryLevelDescription:v151 batteryIconView:0.0, 0.0, v149, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelSingleView:v152];

      v153 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [v153 setSemanticContentAttribute:3];

      if (v146)
      {
        v154 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
        [v154 setTranslatesAutoresizingMaskIntoConstraints:0];

        v155 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
        [(HPCUIBatteryStatusView *)self addSubview:v155];
      }

      v122 = v150 + v134;
      v156 = [(UIImageView *)self->leftImageView leadingAnchor];
      v157 = [v250 leadingAnchor];
      v158 = [v156 constraintEqualToAnchor:v157];
      [v7 addObject:v158];

      v159 = [(UIImageView *)self->rightImageView centerXAnchor];
      v160 = [(UIImageView *)self->leftImageView centerXAnchor];
      v161 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v161 floatValue];
      [v159 constraintEqualToAnchor:v160 constant:(v162 + v27)];
      v163 = v110 = v6;
      [v7 addObject:v163];

      if (!v146)
      {
        v128 = 416;
        goto LABEL_40;
      }

      v164 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      v165 = [v164 centerXAnchor];
      v166 = [(UIImageView *)self->leftImageView centerXAnchor];
      v167 = [v110 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v167 floatValue];
      v169 = [v165 constraintEqualToAnchor:v166 constant:((v168 + v27) * 0.5)];
      [v7 addObject:v169];

      v127 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      v128 = 416;
    }

    else
    {
      v65 = [v6 objectForKey:@"SeparateSpacingBetweenBuds"];
      [v65 floatValue];
      v67 = v66;

      v68 = [v6 objectForKey:@"SeparateSpacingBudsCase"];
      [v68 floatValue];
      v70 = v69;

      v71 = [v250 heightAnchor];
      v72 = [v71 constraintEqualToConstant:v22];
      [v7 addObject:v72];

      v73 = [v250 widthAnchor];
      v74 = [v6 objectForKey:@"SeparateSpacingBetweenBuds"];
      [v74 floatValue];
      v76 = [v73 constraintEqualToConstant:(v75 + (v27 * 2.0))];
      [v7 addObject:v76];

      [(UIImageView *)self->leftImageView setContentMode:1];
      v77 = [(UIImageView *)self->leftImageView heightAnchor];
      v78 = [v77 constraintEqualToConstant:v22];
      [v7 addObject:v78];

      [(UIImageView *)self->rightImageView setContentMode:1];
      v79 = [(UIImageView *)self->rightImageView heightAnchor];
      v80 = [v79 constraintEqualToConstant:v22];
      [v7 addObject:v80];

      [v250 addSubview:self->leftImageView];
      [v250 addSubview:self->rightImageView];
      battLevelLeft = self->status.battLevelLeft;
      battLevelRight = self->status.battLevelRight;
      v82 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v84 = v83;
      v85 = self->status.battIsChargingLeft != 0;
      v86 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v87 = [v86 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_LEFT" value:&stru_1F210A6C0 table:@"DeviceConfig"];
      v88 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v89 = [(HPCUIBatteryGroupView *)v82 initWithFrame:battLevelLeft batteryPercent:v85 isCharging:0 glyph:v87 batteryLevelDescription:v88 batteryIconView:0.0, 0.0, v84, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelLeftView:v89];

      v90 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
      [v90 setTranslatesAutoresizingMaskIntoConstraints:0];

      v91 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
      [v91 setSemanticContentAttribute:3];

      v92 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v94 = v93;
      v95 = self->status.battIsChargingRight != 0;
      v96 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v97 = [v96 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_RIGHT" value:&stru_1F210A6C0 table:@"DeviceConfig"];
      v98 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v99 = [(HPCUIBatteryGroupView *)v92 initWithFrame:battLevelRight batteryPercent:v95 isCharging:0 glyph:v97 batteryLevelDescription:v98 batteryIconView:0.0, 0.0, v94, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelRightView:v99];

      v100 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      [v100 setTranslatesAutoresizingMaskIntoConstraints:0];

      v101 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      [v101 setSemanticContentAttribute:3];

      if (battLevelLeft)
      {
        v102 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
        [v250 addSubview:v102];
      }

      if (battLevelRight)
      {
        v103 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
        [v250 addSubview:v103];
      }

      v104 = v64 + v67;
      v105 = [(UIImageView *)self->leftImageView leadingAnchor];
      v106 = [v250 leadingAnchor];
      v107 = [v105 constraintEqualToAnchor:v106];
      [v7 addObject:v107];

      v108 = [(UIImageView *)self->rightImageView centerXAnchor];
      v109 = [(UIImageView *)self->leftImageView centerXAnchor];
      v110 = v249;
      v111 = [v249 objectForKey:@"SeparateSpacingBetweenBuds"];
      [v111 floatValue];
      v113 = [v108 constraintEqualToAnchor:v109 constant:(v112 + v27)];
      [v7 addObject:v113];

      if (battLevelLeft)
      {
        v114 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
        v115 = [v114 centerXAnchor];
        v116 = [(UIImageView *)self->leftImageView centerXAnchor];
        v117 = [v115 constraintEqualToAnchor:v116];
        [v7 addObject:v117];

        v118 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
        v119 = [v118 bottomAnchor];
        v120 = [(HPCUIBatteryStatusView *)self bottomAnchor];
        v121 = [v119 constraintEqualToAnchor:v120 constant:-14.0];
        [v7 addObject:v121];
      }

      v122 = v104 + v70;
      if (!battLevelRight)
      {
        v128 = v243;
        goto LABEL_40;
      }

      v123 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      v124 = [v123 centerXAnchor];
      v125 = [(UIImageView *)self->rightImageView centerXAnchor];
      v126 = [v124 constraintEqualToAnchor:v125];
      [v7 addObject:v126];

      v127 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      v128 = v243;
    }

    v170 = [v127 bottomAnchor];
    v171 = [(HPCUIBatteryStatusView *)self bottomAnchor];
    v172 = [v170 constraintEqualToAnchor:v171 constant:-14.0];
    [v7 addObject:v172];

LABEL_40:
    v173 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v174 = [(HPCUIBatteryStatusView *)self caseImage];
    v175 = [v173 initWithImage:v174];
    caseImageView = self->caseImageView;
    self->caseImageView = v175;

    caseEngravingView = self->caseEngravingView;
    if (caseEngravingView)
    {
      objc_storeStrong(&self->caseImageView, caseEngravingView);
    }

    else
    {
      [(HPCUIBatteryStatusView *)self applyFilters:v110 imageView:self->caseImageView];
    }

    [(UIImageView *)self->caseImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v178 = [v110 objectForKey:@"CaseHeight"];
    [v178 floatValue];
    v180 = v179;

    v181 = [(HPCUIBatteryStatusView *)self caseImage];
    [v181 size];
    v183 = v182;

    v184 = [(HPCUIBatteryStatusView *)self caseImage];
    [v184 size];
    v186 = v185;

    [(UIImageView *)self->caseImageView setContentMode:1];
    v187 = [(UIImageView *)self->caseImageView heightAnchor];
    v188 = [v187 constraintEqualToConstant:v180];
    [v7 addObject:v188];

    if (v245 || !self->untethered)
    {
      v59 = v250;
      v189 = 0;
      v190 = v246;
    }

    else
    {
      v59 = v250;
      v190 = v246;
      v191 = [(HPCUIBatteryStatusView *)self getDeviceCaseIcon:v246];

      if (v191)
      {
        v192 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v193 = [(HPCUIBatteryStatusView *)self getDeviceCaseIcon:v246];
        v189 = [v192 initWithImage:v193];
      }

      else
      {
        v189 = 0;
      }
    }

    v194 = [HPCUIBatteryGroupView alloc];
    [(HPCUIBatteryStatusView *)self size];
    v196 = v195;
    v197 = self + v128;
    v198 = v197[24];
    v199 = *(v197 + 7) != 0;
    v200 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
    v251 = v189;
    v201 = [(HPCUIBatteryGroupView *)v194 initWithFrame:v198 batteryPercent:v199 isCharging:v189 glyph:0 batteryLevelDescription:v200 batteryIconView:0.0, 0.0, v196, 30.0];
    [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelCaseView:v201];

    v202 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    [v202 setTranslatesAutoresizingMaskIntoConstraints:0];

    v203 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    [v203 setSemanticContentAttribute:3];

    v61 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v61 setSemanticContentAttribute:3];
    v204 = [v61 heightAnchor];
    v205 = v204;
    if (v180 >= v22)
    {
      v206 = v180;
    }

    else
    {
      v206 = v22;
    }

    v207 = [v204 constraintEqualToConstant:v206];
    [v7 addObject:v207];

    if (v190 == 8230)
    {
      v208 = [v61 centerXAnchor];
      v209 = [v59 centerXAnchor];
      v210 = [v208 constraintEqualToAnchor:v209];
      [v7 addObject:v210];
    }

    else
    {
      v211 = v183;
      v212 = v122 + (v180 / v211) * v186;
      v208 = [v61 widthAnchor];
      v209 = [v208 constraintEqualToConstant:v212];
      [v7 addObject:v209];
    }

    [v61 addSubview:v59];
    [v61 addSubview:self->caseImageView];
    [(HPCUIBatteryStatusView *)self addSubview:v61];
    v213 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    [(HPCUIBatteryStatusView *)self addSubview:v213];

    v214 = [v61 centerYAnchor];
    v215 = [(HPCUIBatteryStatusView *)self bottomAnchor];
    v216 = [v214 constraintEqualToAnchor:v215 constant:-136.0];
    [v7 addObject:v216];

    v217 = [v59 leadingAnchor];
    v218 = [v61 leadingAnchor];
    v219 = [v217 constraintEqualToAnchor:v218];
    [v7 addObject:v219];

    v220 = [v59 centerXAnchor];
    v221 = [v61 centerXAnchor];
    v222 = [v220 constraintEqualToAnchor:v221];
    [v7 addObject:v222];

    v223 = [v59 centerYAnchor];
    v224 = [v61 centerYAnchor];
    v225 = [v223 constraintEqualToAnchor:v224];
    [v7 addObject:v225];

    v226 = [v61 centerXAnchor];
    v227 = [(HPCUIBatteryStatusView *)self centerXAnchor];
    v228 = [v226 constraintEqualToAnchor:v227];
    [v7 addObject:v228];

    v229 = [v61 centerYAnchor];
    v230 = [(HPCUIBatteryStatusView *)self centerYAnchor];
    v231 = [v229 constraintEqualToAnchor:v230];
    [v7 addObject:v231];

    v232 = [(UIImageView *)self->caseImageView trailingAnchor];
    v233 = [v61 trailingAnchor];
    v234 = [v232 constraintEqualToAnchor:v233];
    [v7 addObject:v234];

    v235 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    v236 = [v235 centerXAnchor];
    v237 = [(UIImageView *)self->caseImageView centerXAnchor];
    v238 = [v236 constraintEqualToAnchor:v237];
    [v7 addObject:v238];

    v239 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    v240 = [v239 bottomAnchor];
    v241 = [(HPCUIBatteryStatusView *)self bottomAnchor];
    v242 = [v240 constraintEqualToAnchor:v241 constant:-14.0];
    [v7 addObject:v242];

    v34 = v248;
    v6 = v249;
    v58 = v247;
    v60 = v251;
    goto LABEL_55;
  }

  v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC345000, v7, OS_LOG_TYPE_DEFAULT, "Battery Status: setupViews returning because assetsDict is NULL", buf, 2u);
  }

LABEL_56:
}

- (id)getDeviceCaseIcon:(unsigned int)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = [(HPCUIBatteryStatusView *)self getDeviceCaseIconName:*&a3];
  v5 = [objc_alloc(MEMORY[0x1E69A89B0]) initWithSymbolName:v4 bundleURL:0];
  v6 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:12];
  v7 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:11];
  v8 = objc_alloc(MEMORY[0x1E69A8968]);
  v9 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v10 = [v8 initWithCGColor:{objc_msgSend(v9, "CGColor")}];

  v11 = objc_alloc_init(MEMORY[0x1E69A8970]);
  if (self->darkMode)
  {
    v29[0] = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v11 setSymbolColors:v12];

    v28 = v6;
    v13 = &v28;
  }

  else
  {
    v27 = v6;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [v11 setSymbolColors:v14];

    v26 = v10;
    v13 = &v26;
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v11 setEnclosureColors:v15];

  [v11 setRenderingMode:3];
  v16 = [v5 imageForGraphicSymbolDescriptor:v11];
  v17 = [v16 CGImage];
  v18 = PSBlankIconImage();
  [v18 size];
  v20 = v19;
  v22 = v21;

  v23 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v17];
  v31.width = v20;
  v31.height = v22;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  [v23 drawInRect:{0.0, 0.0, v20, v22}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (BOOL)isBeatsNonWx:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 productId];
    v6 = [v4 productId];
    v7 = [v4 productId];
    v10 = v5 == 8209 || v6 == 8214 || v7 == 8230;
  }

  else
  {
    v11 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HPCUIBatteryStatusView isBeatsNonWx:v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)hpsDeviceForHeadphoneDevice:(id)a3
{
  v3 = a3;
  v4 = [[HPCUIDevice alloc] initWithHeadphoneDevice:v3 btsDevice:0];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = HPCUIBatteryStatusView;
  [(HPCUIBatteryStatusView *)&v5 traitCollectionDidChange:a3];
  v4 = [(HPCUIBatteryStatusView *)self traitCollection];
  self->darkMode = [v4 userInterfaceStyle] == 2;
}

- (id)batteryIconViewInstance
{
  v2 = objc_alloc_init(HPCUIBatteryIconView);

  return v2;
}

- (BOOL)engravingIsSupported:(unsigned int)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  HPCUIBatteryStatusView.engravingIsSupported(_:)(a3);
  MEMORY[0x1E69E5920](self);
  return sub_1AC3B72B4() & 1;
}

- (void)getEngravedCaseImage:(NSString *)a3 productID:(unsigned int)a4 completionHandler:(id)a5
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  v9 = _Block_copy(a5);
  MEMORY[0x1E69E5928](self);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = v9;
  *(v5 + 40) = self;
  sub_1AC384CD4(&unk_1AC3BB480, v5);
}

- (id)combinedBatteryValue:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v9.super.isa = a3;
  v7 = HPCUIBatteryStatusView.combinedBatteryValue(_:)(v9);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);

  return v7;
}

@end