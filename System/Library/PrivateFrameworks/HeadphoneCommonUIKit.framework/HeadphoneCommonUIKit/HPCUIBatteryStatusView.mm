@interface HPCUIBatteryStatusView
+ (BOOL)isBeatsNonWx:(id)wx;
+ (id)hpsDeviceForHeadphoneDevice:(id)device;
- ($FFD8FFF7A5D2C2666551BEB14716E99F)status;
- (BOOL)engravingIsSupported:(unsigned int)supported;
- (HPCUIBatteryStatusView)initWithFrame:(CGRect)frame device:(id)device darkMode:(BOOL)mode;
- (id)batteryIconViewInstance;
- (id)combinedBatteryValue:(id)value;
- (id)getDeviceCaseIcon:(unsigned int)icon;
- (unsigned)_batteryLevelCombined;
- (void)applyFilters:(id)filters imageView:(id)view;
- (void)applyFiltersForMode:(BOOL)mode;
- (void)getBatteryStatus;
- (void)getEngravedCaseImage:(NSString *)image productID:(unsigned int)d completionHandler:(id)handler;
- (void)setStatus:(id *)status;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setStatus:(id *)status
{
  p_status = &self->status;
  v5 = *&status->var8;
  v6 = *&status->var4;
  *&self->status.battLevelSingle = *&status->var0;
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

  deviceBatteryLevelSingleView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
  [deviceBatteryLevelSingleView setChargePercent:battLevelSingle];

  LODWORD(deviceBatteryLevelSingleView) = self->untethered;
  deviceBatteryLevelSingleView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
  v10 = deviceBatteryLevelSingleView2;
  if (deviceBatteryLevelSingleView == 1)
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
  [deviceBatteryLevelSingleView2 setIsCharging:v11];

  deviceBatteryLevelLeftView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
  [deviceBatteryLevelLeftView setChargePercent:p_status->battLevelLeft];

  deviceBatteryLevelLeftView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
  [deviceBatteryLevelLeftView2 setIsCharging:p_status->battIsChargingLeft != 0];

  deviceBatteryLevelRightView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
  [deviceBatteryLevelRightView setChargePercent:p_status->battLevelRight];

  deviceBatteryLevelRightView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
  [deviceBatteryLevelRightView2 setIsCharging:p_status->battIsChargingRight != 0];

  deviceBatteryLevelCaseView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
  [deviceBatteryLevelCaseView setChargePercent:p_status->battLevelCase];

  deviceBatteryLevelCaseView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
  [deviceBatteryLevelCaseView2 setIsCharging:p_status->battIsChargingCase != 0];
}

- (HPCUIBatteryStatusView)initWithFrame:(CGRect)frame device:(id)device darkMode:(BOOL)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v27.receiver = self;
  v27.super_class = HPCUIBatteryStatusView;
  height = [(HPCUIBatteryStatusView *)&v27 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->currentDevice, device);
    v15 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      classicDevice = [(HPCUIDeviceDeviceProtocol *)v14->currentDevice classicDevice];
      address = [classicDevice address];
      *buf = 138412290;
      v29 = address;
      _os_log_impl(&dword_1AC345000, v15, OS_LOG_TYPE_DEFAULT, "Battery Status: Classic device address %@", buf, 0xCu);
    }

    objc_initWeak(buf, v14);
    if (-[HPCUIBatteryStatusView engravingIsSupported:](v14, "engravingIsSupported:", [deviceCopy productId]))
    {
      address2 = [deviceCopy address];
      productId = [deviceCopy productId];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __56__HPCUIBatteryStatusView_initWithFrame_device_darkMode___block_invoke;
      v25[3] = &unk_1E7973BF8;
      objc_copyWeak(&v26, buf);
      [(HPCUIBatteryStatusView *)v14 getEngravedCaseImage:address2 productID:productId completionHandler:v25];

      objc_destroyWeak(&v26);
    }

    v14->darkMode = mode;
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
  classicDevice = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  [classicDevice batteryStatus:&self->status];

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

  getProductIDString = [(HPCUIBatteryStatusView *)self getProductIDString];
  productIdString = self->productIdString;
  self->productIdString = getProductIDString;

  classicDevice2 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  accessorySettingFeatureBitMask = [classicDevice2 accessorySettingFeatureBitMask];

  self->untethered = (accessorySettingFeatureBitMask & 0x400) != 0;
  classicDevice3 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  LODWORD(classicDevice2) = [HPCUIBatteryStatusView isBeatsNonWx:classicDevice3];

  if (classicDevice2)
  {
    self->untethered = 1;
  }
}

- (void)applyFiltersForMode:(BOOL)mode
{
  self->darkMode = mode;
  classicDevice = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  productId = [classicDevice productId];

  v6 = [(HPCUIBatteryStatusView *)self getAssetsDictionary:productId];
  v7 = v6;
  if (!self->untethered)
  {
    deviceImageView = self->deviceImageView;
    if (!deviceImageView)
    {
      goto LABEL_10;
    }

    selfCopy2 = self;
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
          selfCopy2 = self;
LABEL_9:
          v6 = [(HPCUIBatteryStatusView *)selfCopy2 applyFilters:v10 imageView:deviceImageView];
          v7 = v10;
        }
      }
    }
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)applyFilters:(id)filters imageView:(id)view
{
  filtersCopy = filters;
  v7 = MEMORY[0x1E6979378];
  viewCopy = view;
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
  isProductOfDifferentColors = [(HPCUIBatteryStatusView *)self isProductOfDifferentColors];
  if (darkMode)
  {
    if (isProductOfDifferentColors)
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

    v18 = [filtersCopy objectForKey:v16];
    [v18 floatValue];
    v20 = v19;

    v21 = [filtersCopy objectForKey:v17];
    [v21 floatValue];
    v23 = v22;

    if ((v23 == 0.0 || v20 == 0.0) && [(HPCUIBatteryStatusView *)self isProductOfDifferentColors])
    {
      v39 = @"DarkBiasValue-%d";
      v40 = viewCopy;
      v24 = @"DarkMatrixValue-%d";
LABEL_22:
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, -[HPCUIBatteryStatusView defaultFiltersID](self, "defaultFiltersID")];

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:v39, -[HPCUIBatteryStatusView defaultFiltersID](self, "defaultFiltersID")];

      v31 = [filtersCopy objectForKey:v29];
      [v31 floatValue];
      v20 = v32;

      v33 = [filtersCopy objectForKey:v30];
      [v33 floatValue];
      v23 = v34;

      v16 = v29;
      v17 = v30;
      viewCopy = v40;
    }
  }

  else
  {
    if (isProductOfDifferentColors)
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

    v25 = [filtersCopy objectForKey:v16];
    [v25 floatValue];
    v20 = v26;

    v27 = [filtersCopy objectForKey:v17];
    [v27 floatValue];
    v23 = v28;

    if ((v23 == 0.0 || v20 == 0.0) && [(HPCUIBatteryStatusView *)self isProductOfDifferentColors])
    {
      v39 = @"LightBiasValue-%d";
      v40 = viewCopy;
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
  layer = [viewCopy layer];

  [layer setFilters:v13];
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
  subviews = [(HPCUIBatteryStatusView *)self subviews];
  [subviews enumerateObjectsUsingBlock:&__block_literal_global];

  classicDevice = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
  productId = [classicDevice productId];

  v6 = [(HPCUIBatteryStatusView *)self getAssetsDictionary:productId];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    heightAnchor = [(HPCUIBatteryStatusView *)self heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:234.0];
    [v7 addObject:v9];

    v252 = 0;
    classicDevice2 = [(HPCUIDeviceDeviceProtocol *)self->currentDevice classicDevice];
    [classicDevice2 getDeviceColor:&v252];

    self->deviceColor = [(HPCUIBatteryStatusView *)self bestDeviceColor:v252 productID:productId];
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
      v256 = productId;
      _os_log_impl(&dword_1AC345000, v11, OS_LOG_TYPE_DEFAULT, "Battery Status: device color: %u untethered: %d pid: %d", buf, 0x14u);
    }

    if (!self->untethered)
    {
      deviceImage = [(HPCUIBatteryStatusView *)self deviceImage];
      v35 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:deviceImage];
      deviceImageView = self->deviceImageView;
      self->deviceImageView = v35;

      [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:self->deviceImageView];
      [(UIImageView *)self->deviceImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      heightAnchor2 = [(UIImageView *)self->deviceImageView heightAnchor];
      v38 = [heightAnchor2 constraintEqualToConstant:108.0];
      [v7 addObject:v38];

      [(UIImageView *)self->deviceImageView setContentMode:1];
      [(HPCUIBatteryStatusView *)self addSubview:self->deviceImageView];
      LOBYTE(heightAnchor2) = [(HPCUIBatteryStatusView *)self _batteryLevelCombined];
      v39 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v41 = v40;
      v42 = self->status.battIsChargingSingle != 0;
      batteryIconViewInstance = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v44 = [(HPCUIBatteryGroupView *)v39 initWithFrame:heightAnchor2 batteryPercent:v42 isCharging:0 glyph:0 batteryLevelDescription:batteryIconViewInstance batteryIconView:0.0, 0.0, v41, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelSingleView:v44];

      deviceBatteryLevelSingleView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [deviceBatteryLevelSingleView setTranslatesAutoresizingMaskIntoConstraints:0];

      deviceBatteryLevelSingleView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [deviceBatteryLevelSingleView2 setSemanticContentAttribute:3];

      deviceBatteryLevelSingleView3 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [(HPCUIBatteryStatusView *)self addSubview:deviceBatteryLevelSingleView3];

      centerYAnchor = [(UIImageView *)self->deviceImageView centerYAnchor];
      bottomAnchor = [(HPCUIBatteryStatusView *)self bottomAnchor];
      v50 = [centerYAnchor constraintEqualToAnchor:bottomAnchor constant:-136.0];
      [v7 addObject:v50];

      centerXAnchor = [(UIImageView *)self->deviceImageView centerXAnchor];
      centerXAnchor2 = [(HPCUIBatteryStatusView *)self centerXAnchor];
      v53 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v7 addObject:v53];

      deviceBatteryLevelSingleView4 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      centerXAnchor3 = [deviceBatteryLevelSingleView4 centerXAnchor];
      centerXAnchor4 = [(UIImageView *)self->deviceImageView centerXAnchor];
      v57 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [v7 addObject:v57];

      deviceBatteryLevelSingleView5 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      bottomAnchor2 = [deviceBatteryLevelSingleView5 bottomAnchor];
      bottomAnchor3 = [(HPCUIBatteryStatusView *)self bottomAnchor];
      v61 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
      [v7 addObject:v61];
LABEL_55:

      [MEMORY[0x1E696ACD8] activateConstraints:v7];
      goto LABEL_56;
    }

    v246 = productId;
    leftBudImage = [(HPCUIBatteryStatusView *)self leftBudImage];
    rightBudImage = [(HPCUIBatteryStatusView *)self rightBudImage];
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:leftBudImage];
    leftImageView = self->leftImageView;
    self->leftImageView = v16;

    v247 = rightBudImage;
    v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:rightBudImage];
    rightImageView = self->rightImageView;
    self->rightImageView = v18;

    [(UIImageView *)self->leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->rightImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:self->leftImageView];
    [(HPCUIBatteryStatusView *)self applyFilters:v6 imageView:self->rightImageView];
    v20 = [v6 objectForKey:@"BudHeight"];
    [v20 floatValue];
    v22 = v21;

    [leftBudImage size];
    v24 = v23;
    v25 = (v22 / v24);
    [leftBudImage size];
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

    v248 = leftBudImage;
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

      heightAnchor3 = [v250 heightAnchor];
      v136 = [heightAnchor3 constraintEqualToConstant:v22];
      [v7 addObject:v136];

      widthAnchor = [v250 widthAnchor];
      v138 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v138 floatValue];
      v140 = [widthAnchor constraintEqualToConstant:(v139 + (v27 * 2.0))];
      [v7 addObject:v140];

      v141 = 1;
      [(UIImageView *)self->leftImageView setContentMode:1];
      heightAnchor4 = [(UIImageView *)self->leftImageView heightAnchor];
      v143 = [heightAnchor4 constraintEqualToConstant:v22];
      [v7 addObject:v143];

      [(UIImageView *)self->rightImageView setContentMode:1];
      heightAnchor5 = [(UIImageView *)self->rightImageView heightAnchor];
      v145 = [heightAnchor5 constraintEqualToConstant:v22];
      [v7 addObject:v145];

      [v250 addSubview:self->leftImageView];
      [v250 addSubview:self->rightImageView];
      _batteryLevelCombined = [(HPCUIBatteryStatusView *)self _batteryLevelCombined];
      v147 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v149 = v148;
      if (!self->status.battIsChargingLeft)
      {
        v141 = self->status.battIsChargingRight != 0;
      }

      v150 = v64 + v131;
      batteryIconViewInstance2 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v152 = [(HPCUIBatteryGroupView *)v147 initWithFrame:_batteryLevelCombined batteryPercent:v141 isCharging:0 glyph:0 batteryLevelDescription:batteryIconViewInstance2 batteryIconView:0.0, 0.0, v149, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelSingleView:v152];

      deviceBatteryLevelSingleView6 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      [deviceBatteryLevelSingleView6 setSemanticContentAttribute:3];

      if (_batteryLevelCombined)
      {
        deviceBatteryLevelSingleView7 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
        [deviceBatteryLevelSingleView7 setTranslatesAutoresizingMaskIntoConstraints:0];

        deviceBatteryLevelSingleView8 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
        [(HPCUIBatteryStatusView *)self addSubview:deviceBatteryLevelSingleView8];
      }

      v122 = v150 + v134;
      leadingAnchor = [(UIImageView *)self->leftImageView leadingAnchor];
      leadingAnchor2 = [v250 leadingAnchor];
      v158 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v7 addObject:v158];

      centerXAnchor5 = [(UIImageView *)self->rightImageView centerXAnchor];
      centerXAnchor6 = [(UIImageView *)self->leftImageView centerXAnchor];
      v161 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v161 floatValue];
      [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:(v162 + v27)];
      v163 = v110 = v6;
      [v7 addObject:v163];

      if (!_batteryLevelCombined)
      {
        v128 = 416;
        goto LABEL_40;
      }

      deviceBatteryLevelSingleView9 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
      centerXAnchor7 = [deviceBatteryLevelSingleView9 centerXAnchor];
      centerXAnchor8 = [(UIImageView *)self->leftImageView centerXAnchor];
      v167 = [v110 objectForKey:@"UnifiedSpacingBetweenBuds"];
      [v167 floatValue];
      v169 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8 constant:((v168 + v27) * 0.5)];
      [v7 addObject:v169];

      deviceBatteryLevelSingleView10 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelSingleView];
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

      heightAnchor6 = [v250 heightAnchor];
      v72 = [heightAnchor6 constraintEqualToConstant:v22];
      [v7 addObject:v72];

      widthAnchor2 = [v250 widthAnchor];
      v74 = [v6 objectForKey:@"SeparateSpacingBetweenBuds"];
      [v74 floatValue];
      v76 = [widthAnchor2 constraintEqualToConstant:(v75 + (v27 * 2.0))];
      [v7 addObject:v76];

      [(UIImageView *)self->leftImageView setContentMode:1];
      heightAnchor7 = [(UIImageView *)self->leftImageView heightAnchor];
      v78 = [heightAnchor7 constraintEqualToConstant:v22];
      [v7 addObject:v78];

      [(UIImageView *)self->rightImageView setContentMode:1];
      heightAnchor8 = [(UIImageView *)self->rightImageView heightAnchor];
      v80 = [heightAnchor8 constraintEqualToConstant:v22];
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
      batteryIconViewInstance3 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v89 = [(HPCUIBatteryGroupView *)v82 initWithFrame:battLevelLeft batteryPercent:v85 isCharging:0 glyph:v87 batteryLevelDescription:batteryIconViewInstance3 batteryIconView:0.0, 0.0, v84, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelLeftView:v89];

      deviceBatteryLevelLeftView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
      [deviceBatteryLevelLeftView setTranslatesAutoresizingMaskIntoConstraints:0];

      deviceBatteryLevelLeftView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
      [deviceBatteryLevelLeftView2 setSemanticContentAttribute:3];

      v92 = [HPCUIBatteryGroupView alloc];
      [(HPCUIBatteryStatusView *)self size];
      v94 = v93;
      v95 = self->status.battIsChargingRight != 0;
      v96 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v97 = [v96 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_RIGHT" value:&stru_1F210A6C0 table:@"DeviceConfig"];
      batteryIconViewInstance4 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
      v99 = [(HPCUIBatteryGroupView *)v92 initWithFrame:battLevelRight batteryPercent:v95 isCharging:0 glyph:v97 batteryLevelDescription:batteryIconViewInstance4 batteryIconView:0.0, 0.0, v94, 30.0];
      [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelRightView:v99];

      deviceBatteryLevelRightView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      [deviceBatteryLevelRightView setTranslatesAutoresizingMaskIntoConstraints:0];

      deviceBatteryLevelRightView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      [deviceBatteryLevelRightView2 setSemanticContentAttribute:3];

      if (battLevelLeft)
      {
        deviceBatteryLevelLeftView3 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
        [v250 addSubview:deviceBatteryLevelLeftView3];
      }

      if (battLevelRight)
      {
        deviceBatteryLevelRightView3 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
        [v250 addSubview:deviceBatteryLevelRightView3];
      }

      v104 = v64 + v67;
      leadingAnchor3 = [(UIImageView *)self->leftImageView leadingAnchor];
      leadingAnchor4 = [v250 leadingAnchor];
      v107 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v7 addObject:v107];

      centerXAnchor9 = [(UIImageView *)self->rightImageView centerXAnchor];
      centerXAnchor10 = [(UIImageView *)self->leftImageView centerXAnchor];
      v110 = v249;
      v111 = [v249 objectForKey:@"SeparateSpacingBetweenBuds"];
      [v111 floatValue];
      v113 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10 constant:(v112 + v27)];
      [v7 addObject:v113];

      if (battLevelLeft)
      {
        deviceBatteryLevelLeftView4 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
        centerXAnchor11 = [deviceBatteryLevelLeftView4 centerXAnchor];
        centerXAnchor12 = [(UIImageView *)self->leftImageView centerXAnchor];
        v117 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
        [v7 addObject:v117];

        deviceBatteryLevelLeftView5 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelLeftView];
        bottomAnchor4 = [deviceBatteryLevelLeftView5 bottomAnchor];
        bottomAnchor5 = [(HPCUIBatteryStatusView *)self bottomAnchor];
        v121 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-14.0];
        [v7 addObject:v121];
      }

      v122 = v104 + v70;
      if (!battLevelRight)
      {
        v128 = v243;
        goto LABEL_40;
      }

      deviceBatteryLevelRightView4 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      centerXAnchor13 = [deviceBatteryLevelRightView4 centerXAnchor];
      centerXAnchor14 = [(UIImageView *)self->rightImageView centerXAnchor];
      v126 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14];
      [v7 addObject:v126];

      deviceBatteryLevelSingleView10 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelRightView];
      v128 = v243;
    }

    bottomAnchor6 = [deviceBatteryLevelSingleView10 bottomAnchor];
    bottomAnchor7 = [(HPCUIBatteryStatusView *)self bottomAnchor];
    v172 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-14.0];
    [v7 addObject:v172];

LABEL_40:
    v173 = objc_alloc(MEMORY[0x1E69DCAE0]);
    caseImage = [(HPCUIBatteryStatusView *)self caseImage];
    v175 = [v173 initWithImage:caseImage];
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

    caseImage2 = [(HPCUIBatteryStatusView *)self caseImage];
    [caseImage2 size];
    v183 = v182;

    caseImage3 = [(HPCUIBatteryStatusView *)self caseImage];
    [caseImage3 size];
    v186 = v185;

    [(UIImageView *)self->caseImageView setContentMode:1];
    heightAnchor9 = [(UIImageView *)self->caseImageView heightAnchor];
    v188 = [heightAnchor9 constraintEqualToConstant:v180];
    [v7 addObject:v188];

    if (v245 || !self->untethered)
    {
      bottomAnchor2 = v250;
      v189 = 0;
      v190 = v246;
    }

    else
    {
      bottomAnchor2 = v250;
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
    batteryIconViewInstance5 = [(HPCUIBatteryStatusView *)self batteryIconViewInstance];
    v251 = v189;
    v201 = [(HPCUIBatteryGroupView *)v194 initWithFrame:v198 batteryPercent:v199 isCharging:v189 glyph:0 batteryLevelDescription:batteryIconViewInstance5 batteryIconView:0.0, 0.0, v196, 30.0];
    [(HPCUIBatteryStatusView *)self setDeviceBatteryLevelCaseView:v201];

    deviceBatteryLevelCaseView = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    [deviceBatteryLevelCaseView setTranslatesAutoresizingMaskIntoConstraints:0];

    deviceBatteryLevelCaseView2 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    [deviceBatteryLevelCaseView2 setSemanticContentAttribute:3];

    v61 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v61 setSemanticContentAttribute:3];
    heightAnchor10 = [v61 heightAnchor];
    v205 = heightAnchor10;
    if (v180 >= v22)
    {
      v206 = v180;
    }

    else
    {
      v206 = v22;
    }

    v207 = [heightAnchor10 constraintEqualToConstant:v206];
    [v7 addObject:v207];

    if (v190 == 8230)
    {
      centerXAnchor15 = [v61 centerXAnchor];
      centerXAnchor16 = [bottomAnchor2 centerXAnchor];
      v210 = [centerXAnchor15 constraintEqualToAnchor:centerXAnchor16];
      [v7 addObject:v210];
    }

    else
    {
      v211 = v183;
      v212 = v122 + (v180 / v211) * v186;
      centerXAnchor15 = [v61 widthAnchor];
      centerXAnchor16 = [centerXAnchor15 constraintEqualToConstant:v212];
      [v7 addObject:centerXAnchor16];
    }

    [v61 addSubview:bottomAnchor2];
    [v61 addSubview:self->caseImageView];
    [(HPCUIBatteryStatusView *)self addSubview:v61];
    deviceBatteryLevelCaseView3 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    [(HPCUIBatteryStatusView *)self addSubview:deviceBatteryLevelCaseView3];

    centerYAnchor2 = [v61 centerYAnchor];
    bottomAnchor8 = [(HPCUIBatteryStatusView *)self bottomAnchor];
    v216 = [centerYAnchor2 constraintEqualToAnchor:bottomAnchor8 constant:-136.0];
    [v7 addObject:v216];

    leadingAnchor5 = [bottomAnchor2 leadingAnchor];
    leadingAnchor6 = [v61 leadingAnchor];
    v219 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v7 addObject:v219];

    centerXAnchor17 = [bottomAnchor2 centerXAnchor];
    centerXAnchor18 = [v61 centerXAnchor];
    v222 = [centerXAnchor17 constraintEqualToAnchor:centerXAnchor18];
    [v7 addObject:v222];

    centerYAnchor3 = [bottomAnchor2 centerYAnchor];
    centerYAnchor4 = [v61 centerYAnchor];
    v225 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v7 addObject:v225];

    centerXAnchor19 = [v61 centerXAnchor];
    centerXAnchor20 = [(HPCUIBatteryStatusView *)self centerXAnchor];
    v228 = [centerXAnchor19 constraintEqualToAnchor:centerXAnchor20];
    [v7 addObject:v228];

    centerYAnchor5 = [v61 centerYAnchor];
    centerYAnchor6 = [(HPCUIBatteryStatusView *)self centerYAnchor];
    v231 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v7 addObject:v231];

    trailingAnchor = [(UIImageView *)self->caseImageView trailingAnchor];
    trailingAnchor2 = [v61 trailingAnchor];
    v234 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v7 addObject:v234];

    deviceBatteryLevelCaseView4 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    centerXAnchor21 = [deviceBatteryLevelCaseView4 centerXAnchor];
    centerXAnchor22 = [(UIImageView *)self->caseImageView centerXAnchor];
    v238 = [centerXAnchor21 constraintEqualToAnchor:centerXAnchor22];
    [v7 addObject:v238];

    deviceBatteryLevelCaseView5 = [(HPCUIBatteryStatusView *)self deviceBatteryLevelCaseView];
    bottomAnchor9 = [deviceBatteryLevelCaseView5 bottomAnchor];
    bottomAnchor10 = [(HPCUIBatteryStatusView *)self bottomAnchor];
    v242 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-14.0];
    [v7 addObject:v242];

    deviceImage = v248;
    v6 = v249;
    deviceBatteryLevelSingleView5 = v247;
    bottomAnchor3 = v251;
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

- (id)getDeviceCaseIcon:(unsigned int)icon
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = [(HPCUIBatteryStatusView *)self getDeviceCaseIconName:*&icon];
  v5 = [objc_alloc(MEMORY[0x1E69A89B0]) initWithSymbolName:v4 bundleURL:0];
  v6 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:12];
  v7 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:11];
  v8 = objc_alloc(MEMORY[0x1E69A8968]);
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v10 = [v8 initWithCGColor:{objc_msgSend(secondarySystemBackgroundColor, "CGColor")}];

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
  cGImage = [v16 CGImage];
  v18 = PSBlankIconImage();
  [v18 size];
  v20 = v19;
  v22 = v21;

  v23 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImage];
  v31.width = v20;
  v31.height = v22;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  [v23 drawInRect:{0.0, 0.0, v20, v22}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (BOOL)isBeatsNonWx:(id)wx
{
  wxCopy = wx;
  v4 = wxCopy;
  if (wxCopy)
  {
    productId = [wxCopy productId];
    productId2 = [v4 productId];
    productId3 = [v4 productId];
    v10 = productId == 8209 || productId2 == 8214 || productId3 == 8230;
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

+ (id)hpsDeviceForHeadphoneDevice:(id)device
{
  deviceCopy = device;
  v4 = [[HPCUIDevice alloc] initWithHeadphoneDevice:deviceCopy btsDevice:0];

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = HPCUIBatteryStatusView;
  [(HPCUIBatteryStatusView *)&v5 traitCollectionDidChange:change];
  traitCollection = [(HPCUIBatteryStatusView *)self traitCollection];
  self->darkMode = [traitCollection userInterfaceStyle] == 2;
}

- (id)batteryIconViewInstance
{
  v2 = objc_alloc_init(HPCUIBatteryIconView);

  return v2;
}

- (BOOL)engravingIsSupported:(unsigned int)supported
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  HPCUIBatteryStatusView.engravingIsSupported(_:)(supported);
  MEMORY[0x1E69E5920](self);
  return sub_1AC3B72B4() & 1;
}

- (void)getEngravedCaseImage:(NSString *)image productID:(unsigned int)d completionHandler:(id)handler
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](image);
  v9 = _Block_copy(handler);
  MEMORY[0x1E69E5928](self);
  v5 = swift_allocObject();
  *(v5 + 16) = image;
  *(v5 + 24) = d;
  *(v5 + 32) = v9;
  *(v5 + 40) = self;
  sub_1AC384CD4(&unk_1AC3BB480, v5);
}

- (id)combinedBatteryValue:(id)value
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](value);
  MEMORY[0x1E69E5928](self);
  v9.super.isa = value;
  v7 = HPCUIBatteryStatusView.combinedBatteryValue(_:)(v9);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](value);

  return v7;
}

@end