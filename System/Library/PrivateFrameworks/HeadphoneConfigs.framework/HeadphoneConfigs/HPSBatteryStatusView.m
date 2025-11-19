@interface HPSBatteryStatusView
- ($FFD8FFF7A5D2C2666551BEB14716E99F)status;
- (BOOL)isProductOfDifferentColors;
- (HPSBatteryStatusView)initWithFrame:(CGRect)a3 device:(id)a4 darkMode:(BOOL)a5;
- (id)batteryIconViewInstance;
- (id)combinedBatteryValue:(id)a3;
- (id)getAssetsDictionary:(unsigned int)a3;
- (id)getDeviceCaseIcon:(unsigned int)a3;
- (unsigned)_batteryLevelCombined;
- (unsigned)bestDeviceColor:(unsigned int)a3 productID:(unsigned int)a4;
- (unsigned)defaultFiltersID;
- (void)applyFilters:(id)a3 imageView:(id)a4;
- (void)applyFiltersForMode:(BOOL)a3;
- (void)getBatteryStatus;
- (void)setStatus:(id *)a3;
- (void)setupViews;
@end

@implementation HPSBatteryStatusView

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

  [(HPSBatteryGroupView *)self->_deviceBatteryLevelSingleView setChargePercent:battLevelSingle];
  untethered = self->untethered;
  v9 = [(HPSBatteryGroupView *)self->_deviceBatteryLevelSingleView batteryIconView];
  v10 = v9;
  if (untethered)
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

  [(HPSBatteryGroupView *)self->_deviceBatteryLevelLeftView setChargePercent:p_status->battLevelLeft];
  v13 = [(HPSBatteryGroupView *)self->_deviceBatteryLevelLeftView batteryIconView];
  [v13 setIsCharging:p_status->battIsChargingLeft != 0];

  [(HPSBatteryGroupView *)self->_deviceBatteryLevelRightView setChargePercent:p_status->battLevelRight];
  v14 = [(HPSBatteryGroupView *)self->_deviceBatteryLevelRightView batteryIconView];
  [v14 setIsCharging:p_status->battIsChargingRight != 0];

  [(HPSBatteryGroupView *)self->_deviceBatteryLevelCaseView setChargePercent:p_status->battLevelCase];
  v15 = [(HPSBatteryGroupView *)self->_deviceBatteryLevelCaseView batteryIconView];
  [v15 setIsCharging:p_status->battIsChargingCase != 0];
}

- (HPSBatteryStatusView)initWithFrame:(CGRect)a3 device:(id)a4 darkMode:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v29.receiver = self;
  v29.super_class = HPSBatteryStatusView;
  v13 = [(HPSBatteryStatusView *)&v29 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->currentDevice, a4);
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(BluetoothDeviceProtocol *)v14->currentDevice classicDevice];
      v17 = [v16 address];
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Battery Status: Classic device address %@", buf, 0xCu);
    }

    v18 = [[HPSEngravingService alloc] initWithDevice:v14->currentDevice];
    engravingService = v14->engravingService;
    v14->engravingService = v18;

    if ([(HPSEngravingService *)v14->engravingService isEngravingSupported])
    {
      v20 = v14->engravingService;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __54__HPSBatteryStatusView_initWithFrame_device_darkMode___block_invoke;
      v27[3] = &unk_2796AE580;
      v28 = v14;
      [(HPSEngravingService *)v20 getEngravedCaseView:v27];
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

    [(HPSBatteryStatusView *)v14 getBatteryStatus];
    [(HPSBatteryStatusView *)v14 setupViews];
    v14->deviceColor = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

void __54__HPSBatteryStatusView_initWithFrame_device_darkMode___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 512), a2);
  v4 = a2;
  [*(a1 + 32) setupViews];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
}

- (void)getBatteryStatus
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  [v3 batteryStatus:&self->status];

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    battLevelSingle = self->status.battLevelSingle;
    battLevelRight = self->status.battLevelRight;
    battLevelLeft = self->status.battLevelLeft;
    battLevelCase = self->status.battLevelCase;
    battLevelCombined = self->status.battLevelCombined;
    v16[0] = 67110144;
    v16[1] = battLevelSingle;
    v17 = 1024;
    v18 = battLevelRight;
    v19 = 1024;
    v20 = battLevelLeft;
    v21 = 1024;
    v22 = battLevelCase;
    v23 = 1024;
    v24 = battLevelCombined;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Battery Status: battLevelSingle %d, battLevelRight %d, battLevelLeft %d, battLevelCase %d, battLevelCombined %d", v16, 0x20u);
  }

  v10 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  v11 = +[HPSProductUtils getProductIDString:](HPSProductUtils, "getProductIDString:", [v10 productId]);
  productIdString = self->productIdString;
  self->productIdString = v11;

  v13 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  LOWORD(v10) = [v13 accessorySettingFeatureBitMask];

  self->untethered = (v10 & 0x400) != 0;
  v14 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  LODWORD(v13) = [HPSProductUtils isBeatsNonWx:v14];

  if (v13)
  {
    self->untethered = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)applyFiltersForMode:(BOOL)a3
{
  self->darkMode = a3;
  v4 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  v5 = [v4 productId];

  v6 = [(HPSBatteryStatusView *)self getAssetsDictionary:v5];
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
        [(HPSBatteryStatusView *)self applyFilters:v6 imageView:?];
        v6 = [(HPSBatteryStatusView *)self applyFilters:v10 imageView:self->rightImageView];
        v7 = v10;
        if (!self->caseEngravingView)
        {
          deviceImageView = self->caseImageView;
          v9 = self;
LABEL_9:
          v6 = [(HPSBatteryStatusView *)v9 applyFilters:v10 imageView:deviceImageView];
          v7 = v10;
        }
      }
    }
  }

LABEL_10:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)applyFilters:(id)a3 imageView:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CD9EA0];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [v9 initWithType:*MEMORY[0x277CDA2C0]];
  v11 = objc_alloc(MEMORY[0x277CD9EA0]);
  v12 = [v11 initWithType:*MEMORY[0x277CDA270]];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = *(MEMORY[0x277CD9DA0] + 4);
  v53 = *(MEMORY[0x277CD9DA0] + 20);
  v50 = *(MEMORY[0x277CD9DA0] + 28);
  v51 = *(MEMORY[0x277CD9DA0] + 44);
  v49[0] = *(MEMORY[0x277CD9DA0] + 52);
  *(v49 + 12) = *(MEMORY[0x277CD9DA0] + 64);
  darkMode = self->darkMode;
  v15 = [(HPSBatteryStatusView *)self isProductOfDifferentColors];
  if (darkMode)
  {
    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"DarkMatrixValue-%d", self->deviceColor];
    }

    else
    {
      v16 = @"DarkMatrixValue";
    }

    if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"DarkBiasValue-%d", self->deviceColor];
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

    if ((v23 == 0.0 || v20 == 0.0) && [(HPSBatteryStatusView *)self isProductOfDifferentColors])
    {
      v39 = @"DarkBiasValue-%d";
      v40 = v8;
      v24 = @"DarkMatrixValue-%d";
LABEL_22:
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:v24, -[HPSBatteryStatusView defaultFiltersID](self, "defaultFiltersID")];

      v30 = [MEMORY[0x277CCACA8] stringWithFormat:v39, -[HPSBatteryStatusView defaultFiltersID](self, "defaultFiltersID")];

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
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"LightMatrixValue-%d", self->deviceColor];
    }

    else
    {
      v16 = @"LightMatrixValue";
    }

    if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"LightBiasValue-%d", self->deviceColor];
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

    if ((v23 == 0.0 || v20 == 0.0) && [(HPSBatteryStatusView *)self isProductOfDifferentColors])
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
  v35 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v41];
  [v10 setValue:v35 forKey:@"inputColorMatrix"];

  *&v36 = v23;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  [v12 setValue:v37 forKey:@"inputAmount"];

  [v13 addObject:v10];
  [v13 addObject:v12];
  v38 = [v8 layer];

  [v38 setFilters:v13];
}

- (id)getDeviceCaseIcon:(unsigned int)a3
{
  v4 = 0;
  v31[1] = *MEMORY[0x277D85DE8];
  if (a3 <= 8210)
  {
    if (a3 <= 8206)
    {
      if (a3 == 8194)
      {
        v6 = @"airpods.chargingcase.fill";
        goto LABEL_26;
      }

      if (a3 != 8203)
      {
        if (a3 != 8206)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

LABEL_22:
      v6 = @"beats.powerbeatspro.chargingcase.fill";
      goto LABEL_26;
    }

    if (a3 == 8207)
    {
      v6 = @"airpods.chargingcase.wireless.fill";
      goto LABEL_26;
    }

    if (a3 != 8209)
    {
      v5 = 8210;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (a3 > 8220)
  {
    if (a3 == 8221)
    {
      goto LABEL_22;
    }

    if (a3 == 8228)
    {
LABEL_20:
      v6 = @"airpodspro.chargingcase.wireless.fill";
      goto LABEL_26;
    }

    v5 = 8239;
LABEL_18:
    if (a3 != v5)
    {
      goto LABEL_30;
    }

    v6 = @"beats.fit.pro.chargingcase.fill";
LABEL_26:
    v7 = [objc_alloc(MEMORY[0x277D1B168]) initWithSymbolName:v6 bundleURL:0];
    v8 = [objc_alloc(MEMORY[0x277D1B150]) initWithSystemColor:12];
    v9 = [objc_alloc(MEMORY[0x277D1B150]) initWithSystemColor:11];
    v10 = objc_alloc(MEMORY[0x277D1B150]);
    v11 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v12 = [v10 initWithCGColor:{objc_msgSend(v11, "CGColor")}];

    v13 = objc_alloc_init(MEMORY[0x277D1B158]);
    if (self->darkMode)
    {
      v31[0] = v9;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [v13 setSymbolColors:v14];

      v30 = v8;
      v15 = &v30;
    }

    else
    {
      v29 = v8;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [v13 setSymbolColors:v16];

      v28 = v12;
      v15 = &v28;
    }

    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v13 setEnclosureColors:v17];

    [v13 setRenderingMode:3];
    v18 = [v7 imageForGraphicSymbolDescriptor:v13];
    v19 = [v18 CGImage];
    v20 = PSBlankIconImage();
    [v20 size];
    v22 = v21;
    v24 = v23;

    v25 = [MEMORY[0x277D755B8] imageWithCGImage:v19];
    v33.width = v22;
    v33.height = v24;
    UIGraphicsBeginImageContextWithOptions(v33, 0, 0.0);
    [v25 drawInRect:{0.0, 0.0, v22, v24}];
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    goto LABEL_30;
  }

  switch(a3)
  {
    case 0x2013u:
      v6 = @"airpods.gen3.chargingcase.wireless.fill";
      goto LABEL_26;
    case 0x2014u:
      goto LABEL_20;
    case 0x2016u:
LABEL_21:
      v6 = @"beats.studiobuds.chargingcase.fill";
      goto LABEL_26;
  }

LABEL_30:
  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAssetsDictionary:(unsigned int)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  switch(a3)
  {
    case 0x2002u:
    case 0x200Fu:
      v25 = [MEMORY[0x277CCABB0] numberWithInt:85];
      [v4 setObject:v25 forKeyedSubscript:@"BudHeight"];

      v26 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v4 setObject:v26 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v27 = [MEMORY[0x277CCABB0] numberWithInt:30];
      [v4 setObject:v27 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v28 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v28 forKeyedSubscript:@"CaseHeight"];

      v29 = [MEMORY[0x277CCABB0] numberWithInt:62];
      [v4 setObject:v29 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v30 = [MEMORY[0x277CCABB0] numberWithInt:35];
      [v4 setObject:v30 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v31) = 1053609165;
      v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
      [v4 setObject:v32 forKeyedSubscript:@"DarkBiasValue"];

      v13 = MEMORY[0x277CCABB0];
      LODWORD(v14) = 1065772646;
      goto LABEL_5;
    case 0x2003u:
      v809 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v809 forKeyedSubscript:@"BudHeight"];

      LODWORD(v810) = 1051931443;
      v811 = [MEMORY[0x277CCABB0] numberWithFloat:v810];
      [v4 setObject:v811 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v812) = 1065772646;
      v813 = [MEMORY[0x277CCABB0] numberWithFloat:v812];
      [v4 setObject:v813 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v814) = 0.5;
      v815 = [MEMORY[0x277CCABB0] numberWithFloat:v814];
      [v4 setObject:v815 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v816) = 1066359849;
      v817 = [MEMORY[0x277CCABB0] numberWithFloat:v816];
      [v4 setObject:v817 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v818) = 1044549468;
      v819 = [MEMORY[0x277CCABB0] numberWithFloat:v818];
      [v4 setObject:v819 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v820) = 1065017672;
      v821 = [MEMORY[0x277CCABB0] numberWithFloat:v820];
      [v4 setObject:v821 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v822) = 0.5;
      v823 = [MEMORY[0x277CCABB0] numberWithFloat:v822];
      [v4 setObject:v823 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v824) = 1066695393;
      v825 = [MEMORY[0x277CCABB0] numberWithFloat:v824];
      [v4 setObject:v825 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v826) = 1055286886;
      v827 = [MEMORY[0x277CCABB0] numberWithFloat:v826];
      [v4 setObject:v827 forKeyedSubscript:@"DarkBiasValue-11"];

      LODWORD(v828) = 1057300152;
      v829 = [MEMORY[0x277CCABB0] numberWithFloat:v828];
      [v4 setObject:v829 forKeyedSubscript:@"DarkMatrixValue-11"];

      LODWORD(v830) = 0.5;
      v831 = [MEMORY[0x277CCABB0] numberWithFloat:v830];
      [v4 setObject:v831 forKeyedSubscript:@"LightBiasValue-11"];

      LODWORD(v832) = 1066695393;
      v833 = [MEMORY[0x277CCABB0] numberWithFloat:v832];
      [v4 setObject:v833 forKeyedSubscript:@"LightMatrixValue-11"];

      LODWORD(v834) = 1047233823;
      v835 = [MEMORY[0x277CCABB0] numberWithFloat:v834];
      [v4 setObject:v835 forKeyedSubscript:@"DarkBiasValue-12"];

      LODWORD(v836) = 1061662228;
      v837 = [MEMORY[0x277CCABB0] numberWithFloat:v836];
      [v4 setObject:v837 forKeyedSubscript:@"DarkMatrixValue-12"];

      LODWORD(v838) = 0.5;
      v839 = [MEMORY[0x277CCABB0] numberWithFloat:v838];
      [v4 setObject:v839 forKeyedSubscript:@"LightBiasValue-12"];

      LODWORD(v840) = 1066695393;
      v841 = [MEMORY[0x277CCABB0] numberWithFloat:v840];
      [v4 setObject:v841 forKeyedSubscript:@"LightMatrixValue-12"];

      LODWORD(v842) = 1047233823;
      v843 = [MEMORY[0x277CCABB0] numberWithFloat:v842];
      [v4 setObject:v843 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v844) = 1061662228;
      v845 = [MEMORY[0x277CCABB0] numberWithFloat:v844];
      [v4 setObject:v845 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v846) = 0.5;
      v847 = [MEMORY[0x277CCABB0] numberWithFloat:v846];
      [v4 setObject:v847 forKeyedSubscript:@"LightBiasValue-13"];

      LODWORD(v848) = 1066695393;
      v849 = [MEMORY[0x277CCABB0] numberWithFloat:v848];
      [v4 setObject:v849 forKeyedSubscript:@"LightMatrixValue-13"];

      LODWORD(v850) = 1055286886;
      v851 = [MEMORY[0x277CCABB0] numberWithFloat:v850];
      [v4 setObject:v851 forKeyedSubscript:@"DarkBiasValue-18"];

      LODWORD(v852) = 1059816735;
      v853 = [MEMORY[0x277CCABB0] numberWithFloat:v852];
      [v4 setObject:v853 forKeyedSubscript:@"DarkMatrixValue-18"];

      LODWORD(v854) = 0.5;
      v855 = [MEMORY[0x277CCABB0] numberWithFloat:v854];
      [v4 setObject:v855 forKeyedSubscript:@"LightBiasValue-18"];

      LODWORD(v856) = 1066695393;
      v857 = [MEMORY[0x277CCABB0] numberWithFloat:v856];
      [v4 setObject:v857 forKeyedSubscript:@"LightMatrixValue-18"];

      LODWORD(v858) = 1056629064;
      v859 = [MEMORY[0x277CCABB0] numberWithFloat:v858];
      [v4 setObject:v859 forKeyedSubscript:@"DarkBiasValue-19"];

      LODWORD(v860) = 1058306785;
      v861 = [MEMORY[0x277CCABB0] numberWithFloat:v860];
      [v4 setObject:v861 forKeyedSubscript:@"DarkMatrixValue-19"];

      LODWORD(v862) = 0.5;
      v863 = [MEMORY[0x277CCABB0] numberWithFloat:v862];
      [v4 setObject:v863 forKeyedSubscript:@"LightBiasValue-19"];

      LODWORD(v864) = 1066695393;
      v865 = [MEMORY[0x277CCABB0] numberWithFloat:v864];
      [v4 setObject:v865 forKeyedSubscript:@"LightMatrixValue-19"];

      LODWORD(v866) = 1056293519;
      v867 = [MEMORY[0x277CCABB0] numberWithFloat:v866];
      [v4 setObject:v867 forKeyedSubscript:@"DarkBiasValue-20"];

      LODWORD(v868) = 1060320051;
      v869 = [MEMORY[0x277CCABB0] numberWithFloat:v868];
      [v4 setObject:v869 forKeyedSubscript:@"DarkMatrixValue-20"];

      LODWORD(v870) = 0.5;
      v871 = [MEMORY[0x277CCABB0] numberWithFloat:v870];
      [v4 setObject:v871 forKeyedSubscript:@"LightBiasValue-20"];

      LODWORD(v872) = 1066695393;
      v873 = [MEMORY[0x277CCABB0] numberWithFloat:v872];
      [v4 setObject:v873 forKeyedSubscript:@"LightMatrixValue-20"];

      LODWORD(v874) = 1056125747;
      v875 = [MEMORY[0x277CCABB0] numberWithFloat:v874];
      [v4 setObject:v875 forKeyedSubscript:@"DarkBiasValue-21"];

      LODWORD(v876) = 1058977874;
      v877 = [MEMORY[0x277CCABB0] numberWithFloat:v876];
      [v4 setObject:v877 forKeyedSubscript:@"DarkMatrixValue-21"];

      LODWORD(v878) = 0.5;
      v879 = [MEMORY[0x277CCABB0] numberWithFloat:v878];
      [v4 setObject:v879 forKeyedSubscript:@"LightBiasValue-21"];

      LODWORD(v880) = 1066695393;
      v881 = [MEMORY[0x277CCABB0] numberWithFloat:v880];
      [v4 setObject:v881 forKeyedSubscript:@"LightMatrixValue-21"];

      LODWORD(v882) = 1055957975;
      v883 = [MEMORY[0x277CCABB0] numberWithFloat:v882];
      [v4 setObject:v883 forKeyedSubscript:@"DarkBiasValue-23"];

      LODWORD(v884) = 1052266988;
      v885 = [MEMORY[0x277CCABB0] numberWithFloat:v884];
      [v4 setObject:v885 forKeyedSubscript:@"DarkMatrixValue-23"];

      LODWORD(v886) = 0.5;
      v887 = [MEMORY[0x277CCABB0] numberWithFloat:v886];
      [v4 setObject:v887 forKeyedSubscript:@"LightBiasValue-23"];

      LODWORD(v888) = 1066695393;
      v889 = [MEMORY[0x277CCABB0] numberWithFloat:v888];
      [v4 setObject:v889 forKeyedSubscript:@"LightMatrixValue-23"];

      LODWORD(v890) = 1058642330;
      v891 = [MEMORY[0x277CCABB0] numberWithFloat:v890];
      [v4 setObject:v891 forKeyedSubscript:@"DarkBiasValue-32"];

      LODWORD(v892) = 1049582633;
      v893 = [MEMORY[0x277CCABB0] numberWithFloat:v892];
      [v4 setObject:v893 forKeyedSubscript:@"DarkMatrixValue-32"];

      LODWORD(v894) = 0.5;
      v895 = [MEMORY[0x277CCABB0] numberWithFloat:v894];
      [v4 setObject:v895 forKeyedSubscript:@"LightBiasValue-32"];

      LODWORD(v896) = 1066695393;
      v897 = [MEMORY[0x277CCABB0] numberWithFloat:v896];
      [v4 setObject:v897 forKeyedSubscript:@"LightMatrixValue-32"];

      LODWORD(v898) = 1052266988;
      v899 = [MEMORY[0x277CCABB0] numberWithFloat:v898];
      [v4 setObject:v899 forKeyedSubscript:@"DarkBiasValue-33"];

      LODWORD(v900) = 1059313418;
      v901 = [MEMORY[0x277CCABB0] numberWithFloat:v900];
      [v4 setObject:v901 forKeyedSubscript:@"DarkMatrixValue-33"];

      LODWORD(v902) = 0.5;
      v903 = [MEMORY[0x277CCABB0] numberWithFloat:v902];
      [v4 setObject:v903 forKeyedSubscript:@"LightBiasValue-33"];

      LODWORD(v904) = 1066695393;
      v905 = [MEMORY[0x277CCABB0] numberWithFloat:v904];
      [v4 setObject:v905 forKeyedSubscript:@"LightMatrixValue-33"];

      LODWORD(v906) = 1056293519;
      v907 = [MEMORY[0x277CCABB0] numberWithFloat:v906];
      [v4 setObject:v907 forKeyedSubscript:@"DarkBiasValue-34"];

      LODWORD(v908) = 0.5;
      v909 = [MEMORY[0x277CCABB0] numberWithFloat:v908];
      [v4 setObject:v909 forKeyedSubscript:@"DarkMatrixValue-34"];

      LODWORD(v910) = 0.5;
      v911 = [MEMORY[0x277CCABB0] numberWithFloat:v910];
      [v4 setObject:v911 forKeyedSubscript:@"LightBiasValue-34"];

      LODWORD(v912) = 1066695393;
      v913 = [MEMORY[0x277CCABB0] numberWithFloat:v912];
      [v4 setObject:v913 forKeyedSubscript:@"LightMatrixValue-34"];

      LODWORD(v914) = 1053609165;
      v915 = [MEMORY[0x277CCABB0] numberWithFloat:v914];
      [v4 setObject:v915 forKeyedSubscript:@"DarkBiasValue-35"];

      LODWORD(v916) = 1058139013;
      v917 = [MEMORY[0x277CCABB0] numberWithFloat:v916];
      [v4 setObject:v917 forKeyedSubscript:@"DarkMatrixValue-35"];

      LODWORD(v918) = 0.5;
      v919 = [MEMORY[0x277CCABB0] numberWithFloat:v918];
      [v4 setObject:v919 forKeyedSubscript:@"LightBiasValue-35"];

      LODWORD(v920) = 1066695393;
      v921 = [MEMORY[0x277CCABB0] numberWithFloat:v920];
      [v4 setObject:v921 forKeyedSubscript:@"LightMatrixValue-35"];

      LODWORD(v922) = 1056293519;
      v923 = [MEMORY[0x277CCABB0] numberWithFloat:v922];
      [v4 setObject:v923 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v924) = 1054280253;
      v925 = [MEMORY[0x277CCABB0] numberWithFloat:v924];
      [v4 setObject:v925 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v926) = 0.5;
      v927 = [MEMORY[0x277CCABB0] numberWithFloat:v926];
      [v4 setObject:v927 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v928) = 1066695393;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v928];
      v126 = @"LightMatrixValue-37";
      break;
    case 0x2005u:
      v633 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v633 forKeyedSubscript:@"BudHeight"];

      LODWORD(v634) = 1049414861;
      v635 = [MEMORY[0x277CCABB0] numberWithFloat:v634];
      [v4 setObject:v635 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v636) = 1066192077;
      v637 = [MEMORY[0x277CCABB0] numberWithFloat:v636];
      [v4 setObject:v637 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v638) = 0.5;
      v639 = [MEMORY[0x277CCABB0] numberWithFloat:v638];
      [v4 setObject:v639 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v640) = 1066359849;
      v641 = [MEMORY[0x277CCABB0] numberWithFloat:v640];
      [v4 setObject:v641 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v642) = 1056125747;
      v643 = [MEMORY[0x277CCABB0] numberWithFloat:v642];
      [v4 setObject:v643 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v644) = 1053944709;
      v645 = [MEMORY[0x277CCABB0] numberWithFloat:v644];
      [v4 setObject:v645 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v646) = 0.5;
      v647 = [MEMORY[0x277CCABB0] numberWithFloat:v646];
      [v4 setObject:v647 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v648) = 1066695393;
      v649 = [MEMORY[0x277CCABB0] numberWithFloat:v648];
      [v4 setObject:v649 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v650) = 1059481190;
      v651 = [MEMORY[0x277CCABB0] numberWithFloat:v650];
      [v4 setObject:v651 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v652) = 1049582633;
      v653 = [MEMORY[0x277CCABB0] numberWithFloat:v652];
      [v4 setObject:v653 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v654) = 0.5;
      v655 = [MEMORY[0x277CCABB0] numberWithFloat:v654];
      [v4 setObject:v655 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v656) = 1066695393;
      v657 = [MEMORY[0x277CCABB0] numberWithFloat:v656];
      [v4 setObject:v657 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v658) = 1059984507;
      v659 = [MEMORY[0x277CCABB0] numberWithFloat:v658];
      [v4 setObject:v659 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v660) = 1051931443;
      v661 = [MEMORY[0x277CCABB0] numberWithFloat:v660];
      [v4 setObject:v661 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v662) = 0.5;
      v663 = [MEMORY[0x277CCABB0] numberWithFloat:v662];
      [v4 setObject:v663 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v664) = 1066695393;
      v665 = [MEMORY[0x277CCABB0] numberWithFloat:v664];
      [v4 setObject:v665 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v666) = 1050253722;
      v667 = [MEMORY[0x277CCABB0] numberWithFloat:v666];
      [v4 setObject:v667 forKeyedSubscript:@"DarkBiasValue-27"];

      LODWORD(v668) = 1065520988;
      v669 = [MEMORY[0x277CCABB0] numberWithFloat:v668];
      [v4 setObject:v669 forKeyedSubscript:@"DarkMatrixValue-27"];

      LODWORD(v670) = 0.5;
      v671 = [MEMORY[0x277CCABB0] numberWithFloat:v670];
      [v4 setObject:v671 forKeyedSubscript:@"LightBiasValue-27"];

      LODWORD(v672) = 1066695393;
      v673 = [MEMORY[0x277CCABB0] numberWithFloat:v672];
      [v4 setObject:v673 forKeyedSubscript:@"LightMatrixValue-27"];

      LODWORD(v674) = 1056293519;
      v675 = [MEMORY[0x277CCABB0] numberWithFloat:v674];
      [v4 setObject:v675 forKeyedSubscript:@"DarkBiasValue-29"];

      LODWORD(v676) = 1035489772;
      v677 = [MEMORY[0x277CCABB0] numberWithFloat:v676];
      [v4 setObject:v677 forKeyedSubscript:@"DarkMatrixValue-29"];

      LODWORD(v678) = 0.5;
      v679 = [MEMORY[0x277CCABB0] numberWithFloat:v678];
      [v4 setObject:v679 forKeyedSubscript:@"LightBiasValue-29"];

      LODWORD(v680) = 1066695393;
      v681 = [MEMORY[0x277CCABB0] numberWithFloat:v680];
      [v4 setObject:v681 forKeyedSubscript:@"LightMatrixValue-29"];

      LODWORD(v682) = 1055286886;
      v683 = [MEMORY[0x277CCABB0] numberWithFloat:v682];
      [v4 setObject:v683 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v684) = 1057132380;
      v685 = [MEMORY[0x277CCABB0] numberWithFloat:v684];
      [v4 setObject:v685 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v686) = 0.5;
      v687 = [MEMORY[0x277CCABB0] numberWithFloat:v686];
      [v4 setObject:v687 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v688) = 1066695393;
      v689 = [MEMORY[0x277CCABB0] numberWithFloat:v688];
      [v4 setObject:v689 forKeyedSubscript:@"LightMatrixValue-37"];

      LODWORD(v690) = 1056293519;
      v691 = [MEMORY[0x277CCABB0] numberWithFloat:v690];
      [v4 setObject:v691 forKeyedSubscript:@"DarkBiasValue-65"];

      LODWORD(v692) = 1062836634;
      v693 = [MEMORY[0x277CCABB0] numberWithFloat:v692];
      [v4 setObject:v693 forKeyedSubscript:@"DarkMatrixValue-65"];

      LODWORD(v694) = 0.5;
      v695 = [MEMORY[0x277CCABB0] numberWithFloat:v694];
      [v4 setObject:v695 forKeyedSubscript:@"LightBiasValue-65"];

      LODWORD(v696) = 1066695393;
      v697 = [MEMORY[0x277CCABB0] numberWithFloat:v696];
      [v4 setObject:v697 forKeyedSubscript:@"LightMatrixValue-65"];

      LODWORD(v698) = 1055286886;
      v699 = [MEMORY[0x277CCABB0] numberWithFloat:v698];
      [v4 setObject:v699 forKeyedSubscript:@"DarkBiasValue-73"];

      LODWORD(v700) = 1059816735;
      v701 = [MEMORY[0x277CCABB0] numberWithFloat:v700];
      [v4 setObject:v701 forKeyedSubscript:@"DarkMatrixValue-73"];

      LODWORD(v702) = 0.5;
      v703 = [MEMORY[0x277CCABB0] numberWithFloat:v702];
      [v4 setObject:v703 forKeyedSubscript:@"LightBiasValue-73"];

      LODWORD(v704) = 1066695393;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v704];
      v126 = @"LightMatrixValue-73";
      break;
    case 0x2006u:
      v929 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v929 forKeyedSubscript:@"BudHeight"];

      LODWORD(v930) = 1051931443;
      v931 = [MEMORY[0x277CCABB0] numberWithFloat:v930];
      [v4 setObject:v931 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v932) = 1065772646;
      v933 = [MEMORY[0x277CCABB0] numberWithFloat:v932];
      [v4 setObject:v933 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v934) = 0.5;
      v935 = [MEMORY[0x277CCABB0] numberWithFloat:v934];
      [v4 setObject:v935 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v936) = 1066695393;
      v937 = [MEMORY[0x277CCABB0] numberWithFloat:v936];
      [v4 setObject:v937 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v938) = 1058726216;
      v939 = [MEMORY[0x277CCABB0] numberWithFloat:v938];
      [v4 setObject:v939 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v940) = 1046562734;
      v941 = [MEMORY[0x277CCABB0] numberWithFloat:v940];
      [v4 setObject:v941 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v942) = 0.5;
      v943 = [MEMORY[0x277CCABB0] numberWithFloat:v942];
      [v4 setObject:v943 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v944) = 1066695393;
      v945 = [MEMORY[0x277CCABB0] numberWithFloat:v944];
      [v4 setObject:v945 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v946) = 1056293519;
      v947 = [MEMORY[0x277CCABB0] numberWithFloat:v946];
      [v4 setObject:v947 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v948) = 1064514355;
      v949 = [MEMORY[0x277CCABB0] numberWithFloat:v948];
      [v4 setObject:v949 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v950) = 0.5;
      v951 = [MEMORY[0x277CCABB0] numberWithFloat:v950];
      [v4 setObject:v951 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v952) = 1066695393;
      v953 = [MEMORY[0x277CCABB0] numberWithFloat:v952];
      [v4 setObject:v953 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v954) = 1054951342;
      v955 = [MEMORY[0x277CCABB0] numberWithFloat:v954];
      [v4 setObject:v955 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v956) = 1062836634;
      v957 = [MEMORY[0x277CCABB0] numberWithFloat:v956];
      [v4 setObject:v957 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v958) = 0.5;
      v959 = [MEMORY[0x277CCABB0] numberWithFloat:v958];
      [v4 setObject:v959 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v960) = 1066695393;
      v961 = [MEMORY[0x277CCABB0] numberWithFloat:v960];
      [v4 setObject:v961 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v962) = 1055286886;
      v963 = [MEMORY[0x277CCABB0] numberWithFloat:v962];
      [v4 setObject:v963 forKeyedSubscript:@"DarkBiasValue-8"];

      LODWORD(v964) = 1062836634;
      v965 = [MEMORY[0x277CCABB0] numberWithFloat:v964];
      [v4 setObject:v965 forKeyedSubscript:@"DarkMatrixValue-8"];

      LODWORD(v966) = 0.5;
      v967 = [MEMORY[0x277CCABB0] numberWithFloat:v966];
      [v4 setObject:v967 forKeyedSubscript:@"LightBiasValue-8"];

      LODWORD(v968) = 1066695393;
      v969 = [MEMORY[0x277CCABB0] numberWithFloat:v968];
      [v4 setObject:v969 forKeyedSubscript:@"LightMatrixValue-8"];

      LODWORD(v970) = 1059481190;
      v971 = [MEMORY[0x277CCABB0] numberWithFloat:v970];
      [v4 setObject:v971 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v972) = 1045220557;
      v973 = [MEMORY[0x277CCABB0] numberWithFloat:v972];
      [v4 setObject:v973 forKeyedSubscript:@"DarkMatrixValue-9"];

      LODWORD(v974) = 0.5;
      v975 = [MEMORY[0x277CCABB0] numberWithFloat:v974];
      [v4 setObject:v975 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v976) = 1066695393;
      v977 = [MEMORY[0x277CCABB0] numberWithFloat:v976];
      [v4 setObject:v977 forKeyedSubscript:@"LightMatrixValue-9"];

      LODWORD(v978) = 1055622431;
      v979 = [MEMORY[0x277CCABB0] numberWithFloat:v978];
      [v4 setObject:v979 forKeyedSubscript:@"DarkBiasValue-14"];

      LODWORD(v980) = 0.75;
      v981 = [MEMORY[0x277CCABB0] numberWithFloat:v980];
      [v4 setObject:v981 forKeyedSubscript:@"DarkMatrixValue-14"];

      LODWORD(v982) = 0.5;
      v983 = [MEMORY[0x277CCABB0] numberWithFloat:v982];
      [v4 setObject:v983 forKeyedSubscript:@"LightBiasValue-14"];

      LODWORD(v984) = 1066695393;
      v985 = [MEMORY[0x277CCABB0] numberWithFloat:v984];
      [v4 setObject:v985 forKeyedSubscript:@"LightMatrixValue-14"];

      LODWORD(v986) = 1056293519;
      v987 = [MEMORY[0x277CCABB0] numberWithFloat:v986];
      [v4 setObject:v987 forKeyedSubscript:@"DarkBiasValue-15"];

      LODWORD(v988) = 1061494456;
      v989 = [MEMORY[0x277CCABB0] numberWithFloat:v988];
      [v4 setObject:v989 forKeyedSubscript:@"DarkMatrixValue-15"];

      LODWORD(v990) = 0.5;
      v991 = [MEMORY[0x277CCABB0] numberWithFloat:v990];
      [v4 setObject:v991 forKeyedSubscript:@"LightBiasValue-15"];

      LODWORD(v992) = 1066695393;
      v993 = [MEMORY[0x277CCABB0] numberWithFloat:v992];
      [v4 setObject:v993 forKeyedSubscript:@"LightMatrixValue-15"];

      LODWORD(v994) = 1059145646;
      v995 = [MEMORY[0x277CCABB0] numberWithFloat:v994];
      [v4 setObject:v995 forKeyedSubscript:@"DarkBiasValue-18"];

      LODWORD(v996) = 1052938076;
      v997 = [MEMORY[0x277CCABB0] numberWithFloat:v996];
      [v4 setObject:v997 forKeyedSubscript:@"DarkMatrixValue-18"];

      LODWORD(v998) = 0.5;
      v999 = [MEMORY[0x277CCABB0] numberWithFloat:v998];
      [v4 setObject:v999 forKeyedSubscript:@"LightBiasValue-18"];

      LODWORD(v1000) = 1066695393;
      v1001 = [MEMORY[0x277CCABB0] numberWithFloat:v1000];
      [v4 setObject:v1001 forKeyedSubscript:@"LightMatrixValue-18"];

      LODWORD(v1002) = 1057132380;
      v1003 = [MEMORY[0x277CCABB0] numberWithFloat:v1002];
      [v4 setObject:v1003 forKeyedSubscript:@"DarkBiasValue-19"];

      LODWORD(v1004) = 1059481190;
      v1005 = [MEMORY[0x277CCABB0] numberWithFloat:v1004];
      [v4 setObject:v1005 forKeyedSubscript:@"DarkMatrixValue-19"];

      LODWORD(v1006) = 0.5;
      v1007 = [MEMORY[0x277CCABB0] numberWithFloat:v1006];
      [v4 setObject:v1007 forKeyedSubscript:@"LightBiasValue-19"];

      LODWORD(v1008) = 1066695393;
      v1009 = [MEMORY[0x277CCABB0] numberWithFloat:v1008];
      [v4 setObject:v1009 forKeyedSubscript:@"LightMatrixValue-19"];

      LODWORD(v1010) = 1058810102;
      v1011 = [MEMORY[0x277CCABB0] numberWithFloat:v1010];
      [v4 setObject:v1011 forKeyedSubscript:@"DarkBiasValue-20"];

      LODWORD(v1012) = 1051260355;
      v1013 = [MEMORY[0x277CCABB0] numberWithFloat:v1012];
      [v4 setObject:v1013 forKeyedSubscript:@"DarkMatrixValue-20"];

      LODWORD(v1014) = 0.5;
      v1015 = [MEMORY[0x277CCABB0] numberWithFloat:v1014];
      [v4 setObject:v1015 forKeyedSubscript:@"LightBiasValue-20"];

      LODWORD(v1016) = 1066695393;
      v1017 = [MEMORY[0x277CCABB0] numberWithFloat:v1016];
      [v4 setObject:v1017 forKeyedSubscript:@"LightMatrixValue-20"];

      LODWORD(v1018) = 1058977874;
      v1019 = [MEMORY[0x277CCABB0] numberWithFloat:v1018];
      [v4 setObject:v1019 forKeyedSubscript:@"DarkBiasValue-21"];

      LODWORD(v1020) = 1050924810;
      v1021 = [MEMORY[0x277CCABB0] numberWithFloat:v1020];
      [v4 setObject:v1021 forKeyedSubscript:@"DarkMatrixValue-21"];

      LODWORD(v1022) = 0.5;
      v1023 = [MEMORY[0x277CCABB0] numberWithFloat:v1022];
      [v4 setObject:v1023 forKeyedSubscript:@"LightBiasValue-21"];

      LODWORD(v1024) = 1066695393;
      v1025 = [MEMORY[0x277CCABB0] numberWithFloat:v1024];
      [v4 setObject:v1025 forKeyedSubscript:@"LightMatrixValue-21"];

      LODWORD(v1026) = 1051931443;
      v1027 = [MEMORY[0x277CCABB0] numberWithFloat:v1026];
      [v4 setObject:v1027 forKeyedSubscript:@"DarkBiasValue-27"];

      LODWORD(v1028) = 1065772646;
      v1029 = [MEMORY[0x277CCABB0] numberWithFloat:v1028];
      [v4 setObject:v1029 forKeyedSubscript:@"DarkMatrixValue-27"];

      LODWORD(v1030) = 0.5;
      v1031 = [MEMORY[0x277CCABB0] numberWithFloat:v1030];
      [v4 setObject:v1031 forKeyedSubscript:@"LightBiasValue-27"];

      LODWORD(v1032) = 1066695393;
      v1033 = [MEMORY[0x277CCABB0] numberWithFloat:v1032];
      [v4 setObject:v1033 forKeyedSubscript:@"LightMatrixValue-27"];

      LODWORD(v1034) = 1056293519;
      v1035 = [MEMORY[0x277CCABB0] numberWithFloat:v1034];
      [v4 setObject:v1035 forKeyedSubscript:@"DarkBiasValue-29"];

      LODWORD(v1036) = 1062668861;
      v1037 = [MEMORY[0x277CCABB0] numberWithFloat:v1036];
      [v4 setObject:v1037 forKeyedSubscript:@"DarkMatrixValue-29"];

      LODWORD(v1038) = 0.5;
      v1039 = [MEMORY[0x277CCABB0] numberWithFloat:v1038];
      [v4 setObject:v1039 forKeyedSubscript:@"LightBiasValue-29"];

      LODWORD(v1040) = 1066695393;
      v1041 = [MEMORY[0x277CCABB0] numberWithFloat:v1040];
      [v4 setObject:v1041 forKeyedSubscript:@"LightMatrixValue-29"];

      LODWORD(v1042) = 1055957975;
      v1043 = [MEMORY[0x277CCABB0] numberWithFloat:v1042];
      [v4 setObject:v1043 forKeyedSubscript:@"DarkBiasValue-32"];

      LODWORD(v1044) = 1059984507;
      v1045 = [MEMORY[0x277CCABB0] numberWithFloat:v1044];
      [v4 setObject:v1045 forKeyedSubscript:@"DarkMatrixValue-32"];

      LODWORD(v1046) = 0.5;
      v1047 = [MEMORY[0x277CCABB0] numberWithFloat:v1046];
      [v4 setObject:v1047 forKeyedSubscript:@"LightBiasValue-32"];

      LODWORD(v1048) = 1066695393;
      v1049 = [MEMORY[0x277CCABB0] numberWithFloat:v1048];
      [v4 setObject:v1049 forKeyedSubscript:@"LightMatrixValue-32"];

      LODWORD(v1050) = 1056461292;
      v1051 = [MEMORY[0x277CCABB0] numberWithFloat:v1050];
      [v4 setObject:v1051 forKeyedSubscript:@"DarkBiasValue-33"];

      LODWORD(v1052) = 1059648963;
      v1053 = [MEMORY[0x277CCABB0] numberWithFloat:v1052];
      [v4 setObject:v1053 forKeyedSubscript:@"DarkMatrixValue-33"];

      LODWORD(v1054) = 0.5;
      v1055 = [MEMORY[0x277CCABB0] numberWithFloat:v1054];
      [v4 setObject:v1055 forKeyedSubscript:@"LightBiasValue-33"];

      LODWORD(v1056) = 1066695393;
      v1057 = [MEMORY[0x277CCABB0] numberWithFloat:v1056];
      [v4 setObject:v1057 forKeyedSubscript:@"LightMatrixValue-33"];

      LODWORD(v1058) = 1056293519;
      v1059 = [MEMORY[0x277CCABB0] numberWithFloat:v1058];
      [v4 setObject:v1059 forKeyedSubscript:@"DarkBiasValue-34"];

      LODWORD(v1060) = 1061326684;
      v1061 = [MEMORY[0x277CCABB0] numberWithFloat:v1060];
      [v4 setObject:v1061 forKeyedSubscript:@"DarkMatrixValue-34"];

      LODWORD(v1062) = 0.5;
      v1063 = [MEMORY[0x277CCABB0] numberWithFloat:v1062];
      [v4 setObject:v1063 forKeyedSubscript:@"LightBiasValue-34"];

      LODWORD(v1064) = 1066695393;
      v1065 = [MEMORY[0x277CCABB0] numberWithFloat:v1064];
      [v4 setObject:v1065 forKeyedSubscript:@"LightMatrixValue-34"];

      LODWORD(v1066) = 1055622431;
      v1067 = [MEMORY[0x277CCABB0] numberWithFloat:v1066];
      [v4 setObject:v1067 forKeyedSubscript:@"DarkBiasValue-35"];

      LODWORD(v1068) = 1059648963;
      v1069 = [MEMORY[0x277CCABB0] numberWithFloat:v1068];
      [v4 setObject:v1069 forKeyedSubscript:@"DarkMatrixValue-35"];

      LODWORD(v1070) = 0.5;
      v1071 = [MEMORY[0x277CCABB0] numberWithFloat:v1070];
      [v4 setObject:v1071 forKeyedSubscript:@"LightBiasValue-35"];

      LODWORD(v1072) = 1066695393;
      v1073 = [MEMORY[0x277CCABB0] numberWithFloat:v1072];
      [v4 setObject:v1073 forKeyedSubscript:@"LightMatrixValue-35"];

      LODWORD(v1074) = 1058306785;
      v1075 = [MEMORY[0x277CCABB0] numberWithFloat:v1074];
      [v4 setObject:v1075 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v1076) = 1051092582;
      v1077 = [MEMORY[0x277CCABB0] numberWithFloat:v1076];
      [v4 setObject:v1077 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v1078) = 0.5;
      v1079 = [MEMORY[0x277CCABB0] numberWithFloat:v1078];
      [v4 setObject:v1079 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v1080) = 1066695393;
      v1081 = [MEMORY[0x277CCABB0] numberWithFloat:v1080];
      [v4 setObject:v1081 forKeyedSubscript:@"LightMatrixValue-37"];

      LODWORD(v1082) = 1054951342;
      v1083 = [MEMORY[0x277CCABB0] numberWithFloat:v1082];
      [v4 setObject:v1083 forKeyedSubscript:@"DarkBiasValue-42"];

      LODWORD(v1084) = 1062501089;
      v1085 = [MEMORY[0x277CCABB0] numberWithFloat:v1084];
      [v4 setObject:v1085 forKeyedSubscript:@"DarkMatrixValue-42"];

      LODWORD(v1086) = 0.5;
      v1087 = [MEMORY[0x277CCABB0] numberWithFloat:v1086];
      [v4 setObject:v1087 forKeyedSubscript:@"LightBiasValue-42"];

      LODWORD(v1088) = 1066695393;
      v1089 = [MEMORY[0x277CCABB0] numberWithFloat:v1088];
      [v4 setObject:v1089 forKeyedSubscript:@"LightMatrixValue-42"];

      LODWORD(v1090) = 1054280253;
      v1091 = [MEMORY[0x277CCABB0] numberWithFloat:v1090];
      [v4 setObject:v1091 forKeyedSubscript:@"DarkBiasValue-46"];

      LODWORD(v1092) = 1063843267;
      v1093 = [MEMORY[0x277CCABB0] numberWithFloat:v1092];
      [v4 setObject:v1093 forKeyedSubscript:@"DarkMatrixValue-46"];

      LODWORD(v1094) = 0.5;
      v1095 = [MEMORY[0x277CCABB0] numberWithFloat:v1094];
      [v4 setObject:v1095 forKeyedSubscript:@"LightBiasValue-46"];

      LODWORD(v1096) = 1066695393;
      v1097 = [MEMORY[0x277CCABB0] numberWithFloat:v1096];
      [v4 setObject:v1097 forKeyedSubscript:@"LightMatrixValue-46"];

      LODWORD(v1098) = 1051931443;
      v1099 = [MEMORY[0x277CCABB0] numberWithFloat:v1098];
      [v4 setObject:v1099 forKeyedSubscript:@"DarkBiasValue-47"];

      LODWORD(v1100) = 1065772646;
      v1101 = [MEMORY[0x277CCABB0] numberWithFloat:v1100];
      [v4 setObject:v1101 forKeyedSubscript:@"DarkMatrixValue-47"];

      LODWORD(v1102) = 0.5;
      v1103 = [MEMORY[0x277CCABB0] numberWithFloat:v1102];
      [v4 setObject:v1103 forKeyedSubscript:@"LightBiasValue-47"];

      LODWORD(v1104) = 1066695393;
      v1105 = [MEMORY[0x277CCABB0] numberWithFloat:v1104];
      [v4 setObject:v1105 forKeyedSubscript:@"LightMatrixValue-47"];

      LODWORD(v1106) = 1054615798;
      v1107 = [MEMORY[0x277CCABB0] numberWithFloat:v1106];
      [v4 setObject:v1107 forKeyedSubscript:@"DarkBiasValue-61"];

      LODWORD(v1108) = 1063507722;
      v1109 = [MEMORY[0x277CCABB0] numberWithFloat:v1108];
      [v4 setObject:v1109 forKeyedSubscript:@"DarkMatrixValue-61"];

      LODWORD(v1110) = 0.5;
      v1111 = [MEMORY[0x277CCABB0] numberWithFloat:v1110];
      [v4 setObject:v1111 forKeyedSubscript:@"LightBiasValue-61"];

      LODWORD(v1112) = 1066695393;
      v1113 = [MEMORY[0x277CCABB0] numberWithFloat:v1112];
      [v4 setObject:v1113 forKeyedSubscript:@"LightMatrixValue-61"];

      LODWORD(v1114) = 1053944709;
      v1115 = [MEMORY[0x277CCABB0] numberWithFloat:v1114];
      [v4 setObject:v1115 forKeyedSubscript:@"DarkBiasValue-62"];

      LODWORD(v1116) = 1064011039;
      v1117 = [MEMORY[0x277CCABB0] numberWithFloat:v1116];
      [v4 setObject:v1117 forKeyedSubscript:@"DarkMatrixValue-62"];

      LODWORD(v1118) = 0.5;
      v1119 = [MEMORY[0x277CCABB0] numberWithFloat:v1118];
      [v4 setObject:v1119 forKeyedSubscript:@"LightBiasValue-62"];

      LODWORD(v1120) = 1066695393;
      v1121 = [MEMORY[0x277CCABB0] numberWithFloat:v1120];
      [v4 setObject:v1121 forKeyedSubscript:@"LightMatrixValue-62"];

      LODWORD(v1122) = 1054951342;
      v1123 = [MEMORY[0x277CCABB0] numberWithFloat:v1122];
      [v4 setObject:v1123 forKeyedSubscript:@"DarkBiasValue-63"];

      LODWORD(v1124) = 1064011039;
      v1125 = [MEMORY[0x277CCABB0] numberWithFloat:v1124];
      [v4 setObject:v1125 forKeyedSubscript:@"DarkMatrixValue-63"];

      LODWORD(v1126) = 0.5;
      v1127 = [MEMORY[0x277CCABB0] numberWithFloat:v1126];
      [v4 setObject:v1127 forKeyedSubscript:@"LightBiasValue-63"];

      LODWORD(v1128) = 1066695393;
      v1129 = [MEMORY[0x277CCABB0] numberWithFloat:v1128];
      [v4 setObject:v1129 forKeyedSubscript:@"LightMatrixValue-63"];

      LODWORD(v1130) = 1054951342;
      v1131 = [MEMORY[0x277CCABB0] numberWithFloat:v1130];
      [v4 setObject:v1131 forKeyedSubscript:@"DarkBiasValue-64"];

      LODWORD(v1132) = 1060487823;
      v1133 = [MEMORY[0x277CCABB0] numberWithFloat:v1132];
      [v4 setObject:v1133 forKeyedSubscript:@"DarkMatrixValue-64"];

      LODWORD(v1134) = 0.5;
      v1135 = [MEMORY[0x277CCABB0] numberWithFloat:v1134];
      [v4 setObject:v1135 forKeyedSubscript:@"LightBiasValue-64"];

      LODWORD(v1136) = 1066695393;
      v1137 = [MEMORY[0x277CCABB0] numberWithFloat:v1136];
      [v4 setObject:v1137 forKeyedSubscript:@"LightMatrixValue-64"];

      LODWORD(v1138) = 1055957975;
      v1139 = [MEMORY[0x277CCABB0] numberWithFloat:v1138];
      [v4 setObject:v1139 forKeyedSubscript:@"DarkBiasValue-91"];

      LODWORD(v1140) = 1064011039;
      v1141 = [MEMORY[0x277CCABB0] numberWithFloat:v1140];
      [v4 setObject:v1141 forKeyedSubscript:@"DarkMatrixValue-91"];

      LODWORD(v1142) = 0.5;
      v1143 = [MEMORY[0x277CCABB0] numberWithFloat:v1142];
      [v4 setObject:v1143 forKeyedSubscript:@"LightBiasValue-91"];

      LODWORD(v1144) = 1065185444;
      v1145 = [MEMORY[0x277CCABB0] numberWithFloat:v1144];
      [v4 setObject:v1145 forKeyedSubscript:@"LightMatrixValue-91"];

      LODWORD(v1146) = 1055957975;
      v1147 = [MEMORY[0x277CCABB0] numberWithFloat:v1146];
      [v4 setObject:v1147 forKeyedSubscript:@"DarkBiasValue-92"];

      LODWORD(v1148) = 1063675494;
      v1149 = [MEMORY[0x277CCABB0] numberWithFloat:v1148];
      [v4 setObject:v1149 forKeyedSubscript:@"DarkMatrixValue-92"];

      LODWORD(v1150) = 0.5;
      v1151 = [MEMORY[0x277CCABB0] numberWithFloat:v1150];
      [v4 setObject:v1151 forKeyedSubscript:@"LightBiasValue-92"];

      LODWORD(v1152) = 1065185444;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v1152];
      v126 = @"LightMatrixValue-92";
      break;
    case 0x2009u:
      v705 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v705 forKeyedSubscript:@"BudHeight"];

      LODWORD(v706) = 1051931443;
      v707 = [MEMORY[0x277CCABB0] numberWithFloat:v706];
      [v4 setObject:v707 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v708) = 1065772646;
      v709 = [MEMORY[0x277CCABB0] numberWithFloat:v708];
      [v4 setObject:v709 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v710) = 0.5;
      v711 = [MEMORY[0x277CCABB0] numberWithFloat:v710];
      [v4 setObject:v711 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v712) = 1066695393;
      v713 = [MEMORY[0x277CCABB0] numberWithFloat:v712];
      [v4 setObject:v713 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v714) = 1057384038;
      v715 = [MEMORY[0x277CCABB0] numberWithFloat:v714];
      [v4 setObject:v715 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v716) = 1058642330;
      v717 = [MEMORY[0x277CCABB0] numberWithFloat:v716];
      [v4 setObject:v717 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v718) = 0.5;
      v719 = [MEMORY[0x277CCABB0] numberWithFloat:v718];
      [v4 setObject:v719 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v720) = 1066695393;
      v721 = [MEMORY[0x277CCABB0] numberWithFloat:v720];
      [v4 setObject:v721 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v722) = 1058474557;
      v723 = [MEMORY[0x277CCABB0] numberWithFloat:v722];
      [v4 setObject:v723 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v724) = 1053944709;
      v725 = [MEMORY[0x277CCABB0] numberWithFloat:v724];
      [v4 setObject:v725 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v726) = 0.5;
      v727 = [MEMORY[0x277CCABB0] numberWithFloat:v726];
      [v4 setObject:v727 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v728) = 1066695393;
      v729 = [MEMORY[0x277CCABB0] numberWithFloat:v728];
      [v4 setObject:v729 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v730) = 1057467924;
      v731 = [MEMORY[0x277CCABB0] numberWithFloat:v730];
      [v4 setObject:v731 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v732) = 1057132380;
      v733 = [MEMORY[0x277CCABB0] numberWithFloat:v732];
      [v4 setObject:v733 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v734) = 0.5;
      v735 = [MEMORY[0x277CCABB0] numberWithFloat:v734];
      [v4 setObject:v735 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v736) = 1066695393;
      v737 = [MEMORY[0x277CCABB0] numberWithFloat:v736];
      [v4 setObject:v737 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v738) = 1057467924;
      v739 = [MEMORY[0x277CCABB0] numberWithFloat:v738];
      [v4 setObject:v739 forKeyedSubscript:@"DarkBiasValue-24"];

      LODWORD(v740) = 0.5;
      v741 = [MEMORY[0x277CCABB0] numberWithFloat:v740];
      [v4 setObject:v741 forKeyedSubscript:@"DarkMatrixValue-24"];

      LODWORD(v742) = 0.5;
      v743 = [MEMORY[0x277CCABB0] numberWithFloat:v742];
      [v4 setObject:v743 forKeyedSubscript:@"LightBiasValue-24"];

      LODWORD(v744) = 1066695393;
      v745 = [MEMORY[0x277CCABB0] numberWithFloat:v744];
      [v4 setObject:v745 forKeyedSubscript:@"LightMatrixValue-24"];

      LODWORD(v746) = 1051931443;
      v747 = [MEMORY[0x277CCABB0] numberWithFloat:v746];
      [v4 setObject:v747 forKeyedSubscript:@"DarkBiasValue-25"];

      LODWORD(v748) = 1066024305;
      v749 = [MEMORY[0x277CCABB0] numberWithFloat:v748];
      [v4 setObject:v749 forKeyedSubscript:@"DarkMatrixValue-25"];

      LODWORD(v750) = 0.5;
      v751 = [MEMORY[0x277CCABB0] numberWithFloat:v750];
      [v4 setObject:v751 forKeyedSubscript:@"LightBiasValue-25"];

      LODWORD(v752) = 1066695393;
      v753 = [MEMORY[0x277CCABB0] numberWithFloat:v752];
      [v4 setObject:v753 forKeyedSubscript:@"LightMatrixValue-25"];

      LODWORD(v754) = 1058642330;
      v755 = [MEMORY[0x277CCABB0] numberWithFloat:v754];
      [v4 setObject:v755 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v756) = 1050589266;
      v757 = [MEMORY[0x277CCABB0] numberWithFloat:v756];
      [v4 setObject:v757 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v758) = 0.5;
      v759 = [MEMORY[0x277CCABB0] numberWithFloat:v758];
      [v4 setObject:v759 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v760) = 1066695393;
      v761 = [MEMORY[0x277CCABB0] numberWithFloat:v760];
      [v4 setObject:v761 forKeyedSubscript:@"LightMatrixValue-37"];

      LODWORD(v762) = 1057803469;
      v763 = [MEMORY[0x277CCABB0] numberWithFloat:v762];
      [v4 setObject:v763 forKeyedSubscript:@"DarkBiasValue-38"];

      LODWORD(v764) = 1060320051;
      v765 = [MEMORY[0x277CCABB0] numberWithFloat:v764];
      [v4 setObject:v765 forKeyedSubscript:@"DarkMatrixValue-38"];

      LODWORD(v766) = 0.5;
      v767 = [MEMORY[0x277CCABB0] numberWithFloat:v766];
      [v4 setObject:v767 forKeyedSubscript:@"LightBiasValue-38"];

      LODWORD(v768) = 1066695393;
      v769 = [MEMORY[0x277CCABB0] numberWithFloat:v768];
      [v4 setObject:v769 forKeyedSubscript:@"LightMatrixValue-38"];

      LODWORD(v770) = 1051931443;
      v771 = [MEMORY[0x277CCABB0] numberWithFloat:v770];
      [v4 setObject:v771 forKeyedSubscript:@"DarkBiasValue-39"];

      LODWORD(v772) = 1065772646;
      v773 = [MEMORY[0x277CCABB0] numberWithFloat:v772];
      [v4 setObject:v773 forKeyedSubscript:@"DarkMatrixValue-39"];

      LODWORD(v774) = 0.5;
      v775 = [MEMORY[0x277CCABB0] numberWithFloat:v774];
      [v4 setObject:v775 forKeyedSubscript:@"LightBiasValue-39"];

      LODWORD(v776) = 1066695393;
      v777 = [MEMORY[0x277CCABB0] numberWithFloat:v776];
      [v4 setObject:v777 forKeyedSubscript:@"LightMatrixValue-39"];

      LODWORD(v778) = 1057635697;
      v779 = [MEMORY[0x277CCABB0] numberWithFloat:v778];
      [v4 setObject:v779 forKeyedSubscript:@"DarkBiasValue-40"];

      LODWORD(v780) = 1058474557;
      v781 = [MEMORY[0x277CCABB0] numberWithFloat:v780];
      [v4 setObject:v781 forKeyedSubscript:@"DarkMatrixValue-40"];

      LODWORD(v782) = 0.5;
      v783 = [MEMORY[0x277CCABB0] numberWithFloat:v782];
      [v4 setObject:v783 forKeyedSubscript:@"LightBiasValue-40"];

      LODWORD(v784) = 1066695393;
      v785 = [MEMORY[0x277CCABB0] numberWithFloat:v784];
      [v4 setObject:v785 forKeyedSubscript:@"LightMatrixValue-40"];

      LODWORD(v786) = 1053944709;
      v787 = [MEMORY[0x277CCABB0] numberWithFloat:v786];
      [v4 setObject:v787 forKeyedSubscript:@"DarkBiasValue-41"];

      LODWORD(v788) = 1062836634;
      v789 = [MEMORY[0x277CCABB0] numberWithFloat:v788];
      [v4 setObject:v789 forKeyedSubscript:@"DarkMatrixValue-41"];

      LODWORD(v790) = 0.5;
      v791 = [MEMORY[0x277CCABB0] numberWithFloat:v790];
      [v4 setObject:v791 forKeyedSubscript:@"LightBiasValue-41"];

      LODWORD(v792) = 1066695393;
      v793 = [MEMORY[0x277CCABB0] numberWithFloat:v792];
      [v4 setObject:v793 forKeyedSubscript:@"LightMatrixValue-41"];

      LODWORD(v794) = 1052938076;
      v795 = [MEMORY[0x277CCABB0] numberWithFloat:v794];
      [v4 setObject:v795 forKeyedSubscript:@"DarkBiasValue-66"];

      LODWORD(v796) = 1059145646;
      v797 = [MEMORY[0x277CCABB0] numberWithFloat:v796];
      [v4 setObject:v797 forKeyedSubscript:@"DarkMatrixValue-66"];

      LODWORD(v798) = 0.5;
      v799 = [MEMORY[0x277CCABB0] numberWithFloat:v798];
      [v4 setObject:v799 forKeyedSubscript:@"LightBiasValue-66"];

      LODWORD(v800) = 1066695393;
      v801 = [MEMORY[0x277CCABB0] numberWithFloat:v800];
      [v4 setObject:v801 forKeyedSubscript:@"LightMatrixValue-66"];

      LODWORD(v802) = 1051595899;
      v803 = [MEMORY[0x277CCABB0] numberWithFloat:v802];
      [v4 setObject:v803 forKeyedSubscript:@"DarkBiasValue-67"];

      LODWORD(v804) = 1065520988;
      v805 = [MEMORY[0x277CCABB0] numberWithFloat:v804];
      [v4 setObject:v805 forKeyedSubscript:@"DarkMatrixValue-67"];

      LODWORD(v806) = 0.5;
      v807 = [MEMORY[0x277CCABB0] numberWithFloat:v806];
      [v4 setObject:v807 forKeyedSubscript:@"LightBiasValue-67"];

      LODWORD(v808) = 1066695393;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v808];
      v126 = @"LightMatrixValue-67";
      break;
    case 0x200Au:
      goto LABEL_7;
    case 0x200Bu:
      v399 = [MEMORY[0x277CCABB0] numberWithInt:86];
      [v4 setObject:v399 forKeyedSubscript:@"BudHeight"];

      v400 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v400 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v401 = [MEMORY[0x277CCABB0] numberWithInt:17];
      [v4 setObject:v401 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v402 = [MEMORY[0x277CCABB0] numberWithInt:70];
      [v4 setObject:v402 forKeyedSubscript:@"CaseHeight"];

      v403 = [MEMORY[0x277CCABB0] numberWithInt:33];
      [v4 setObject:v403 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v404 = [MEMORY[0x277CCABB0] numberWithInt:22];
      [v4 setObject:v404 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v405) = 0.5;
      v406 = [MEMORY[0x277CCABB0] numberWithFloat:v405];
      [v4 setObject:v406 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v407) = 1063675494;
      v408 = [MEMORY[0x277CCABB0] numberWithFloat:v407];
      [v4 setObject:v408 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v409) = 1057300152;
      v410 = [MEMORY[0x277CCABB0] numberWithFloat:v409];
      [v4 setObject:v410 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v411) = 1066695393;
      v412 = [MEMORY[0x277CCABB0] numberWithFloat:v411];
      [v4 setObject:v412 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v413) = 0.5;
      v414 = [MEMORY[0x277CCABB0] numberWithFloat:v413];
      [v4 setObject:v414 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v415) = 1061997773;
      v416 = [MEMORY[0x277CCABB0] numberWithFloat:v415];
      [v4 setObject:v416 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v417) = 1057803469;
      v418 = [MEMORY[0x277CCABB0] numberWithFloat:v417];
      [v4 setObject:v418 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v419) = 1066695393;
      v420 = [MEMORY[0x277CCABB0] numberWithFloat:v419];
      [v4 setObject:v420 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v421) = 0.5;
      v422 = [MEMORY[0x277CCABB0] numberWithFloat:v421];
      [v4 setObject:v422 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v423) = 1064514355;
      v424 = [MEMORY[0x277CCABB0] numberWithFloat:v423];
      [v4 setObject:v424 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v425) = 0.5;
      v426 = [MEMORY[0x277CCABB0] numberWithFloat:v425];
      [v4 setObject:v426 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v427) = 1066695393;
      v428 = [MEMORY[0x277CCABB0] numberWithFloat:v427];
      [v4 setObject:v428 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v429) = 0.5;
      v430 = [MEMORY[0x277CCABB0] numberWithFloat:v429];
      [v4 setObject:v430 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v431) = 1063675494;
      v432 = [MEMORY[0x277CCABB0] numberWithFloat:v431];
      [v4 setObject:v432 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v433) = 1058642330;
      v434 = [MEMORY[0x277CCABB0] numberWithFloat:v433];
      [v4 setObject:v434 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v435) = 1066695393;
      v436 = [MEMORY[0x277CCABB0] numberWithFloat:v435];
      [v4 setObject:v436 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v437) = 0.5;
      v438 = [MEMORY[0x277CCABB0] numberWithFloat:v437];
      [v4 setObject:v438 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v439) = 1064514355;
      v440 = [MEMORY[0x277CCABB0] numberWithFloat:v439];
      [v4 setObject:v440 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v441) = 1058306785;
      v442 = [MEMORY[0x277CCABB0] numberWithFloat:v441];
      [v4 setObject:v442 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v443) = 1066695393;
      v444 = [MEMORY[0x277CCABB0] numberWithFloat:v443];
      [v4 setObject:v444 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v445) = 0.5;
      v446 = [MEMORY[0x277CCABB0] numberWithFloat:v445];
      [v4 setObject:v446 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v447) = 1064514355;
      v448 = [MEMORY[0x277CCABB0] numberWithFloat:v447];
      [v4 setObject:v448 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v449) = 1057803469;
      v450 = [MEMORY[0x277CCABB0] numberWithFloat:v449];
      [v4 setObject:v450 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v451) = 1066695393;
      v452 = [MEMORY[0x277CCABB0] numberWithFloat:v451];
      [v4 setObject:v452 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v453) = 0.5;
      v454 = [MEMORY[0x277CCABB0] numberWithFloat:v453];
      [v4 setObject:v454 forKeyedSubscript:@"DarkBiasValue-11"];

      LODWORD(v455) = 1063675494;
      v456 = [MEMORY[0x277CCABB0] numberWithFloat:v455];
      [v4 setObject:v456 forKeyedSubscript:@"DarkMatrixValue-11"];

      LODWORD(v457) = 1058642330;
      v458 = [MEMORY[0x277CCABB0] numberWithFloat:v457];
      [v4 setObject:v458 forKeyedSubscript:@"LightBiasValue-11"];

      LODWORD(v459) = 1066695393;
      v460 = [MEMORY[0x277CCABB0] numberWithFloat:v459];
      [v4 setObject:v460 forKeyedSubscript:@"LightMatrixValue-11"];

      LODWORD(v461) = 0.5;
      v462 = [MEMORY[0x277CCABB0] numberWithFloat:v461];
      [v4 setObject:v462 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v463) = 1064514355;
      v464 = [MEMORY[0x277CCABB0] numberWithFloat:v463];
      [v4 setObject:v464 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v465) = 0.5;
      v466 = [MEMORY[0x277CCABB0] numberWithFloat:v465];
      [v4 setObject:v466 forKeyedSubscript:@"LightBiasValue-13"];

      v467 = MEMORY[0x277CCABB0];
      LODWORD(v468) = 1066695393;
      goto LABEL_32;
    case 0x200Cu:
      v531 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v531 forKeyedSubscript:@"BudHeight"];

      LODWORD(v532) = 1058810102;
      v533 = [MEMORY[0x277CCABB0] numberWithFloat:v532];
      [v4 setObject:v533 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v534) = 1053273620;
      v535 = [MEMORY[0x277CCABB0] numberWithFloat:v534];
      [v4 setObject:v535 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v536) = 0.5;
      v537 = [MEMORY[0x277CCABB0] numberWithFloat:v536];
      [v4 setObject:v537 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v538) = 1066695393;
      v539 = [MEMORY[0x277CCABB0] numberWithFloat:v538];
      [v4 setObject:v539 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v540) = 1056293519;
      v541 = [MEMORY[0x277CCABB0] numberWithFloat:v540];
      [v4 setObject:v541 forKeyedSubscript:@"DarkBiasValue-60"];

      LODWORD(v542) = 1063172178;
      v543 = [MEMORY[0x277CCABB0] numberWithFloat:v542];
      [v4 setObject:v543 forKeyedSubscript:@"DarkMatrixValue-60"];

      LODWORD(v544) = 0.5;
      v545 = [MEMORY[0x277CCABB0] numberWithFloat:v544];
      [v4 setObject:v545 forKeyedSubscript:@"LightBiasValue-60"];

      LODWORD(v546) = 1066695393;
      v547 = [MEMORY[0x277CCABB0] numberWithFloat:v546];
      [v4 setObject:v547 forKeyedSubscript:@"LightMatrixValue-60"];

      LODWORD(v548) = 1053609165;
      v549 = [MEMORY[0x277CCABB0] numberWithFloat:v548];
      [v4 setObject:v549 forKeyedSubscript:@"DarkBiasValue-69"];

      LODWORD(v550) = 1063507722;
      v551 = [MEMORY[0x277CCABB0] numberWithFloat:v550];
      [v4 setObject:v551 forKeyedSubscript:@"DarkMatrixValue-69"];

      LODWORD(v552) = 0.5;
      v553 = [MEMORY[0x277CCABB0] numberWithFloat:v552];
      [v4 setObject:v553 forKeyedSubscript:@"LightBiasValue-69"];

      LODWORD(v554) = 1066695393;
      v555 = [MEMORY[0x277CCABB0] numberWithFloat:v554];
      [v4 setObject:v555 forKeyedSubscript:@"LightMatrixValue-69"];

      LODWORD(v556) = 1053609165;
      v557 = [MEMORY[0x277CCABB0] numberWithFloat:v556];
      [v4 setObject:v557 forKeyedSubscript:@"DarkBiasValue-70"];

      LODWORD(v558) = 1063172178;
      v559 = [MEMORY[0x277CCABB0] numberWithFloat:v558];
      [v4 setObject:v559 forKeyedSubscript:@"DarkMatrixValue-70"];

      LODWORD(v560) = 0.5;
      v561 = [MEMORY[0x277CCABB0] numberWithFloat:v560];
      [v4 setObject:v561 forKeyedSubscript:@"LightBiasValue-70"];

      LODWORD(v562) = 1066695393;
      v563 = [MEMORY[0x277CCABB0] numberWithFloat:v562];
      [v4 setObject:v563 forKeyedSubscript:@"LightMatrixValue-70"];

      LODWORD(v564) = 1058139013;
      v565 = [MEMORY[0x277CCABB0] numberWithFloat:v564];
      [v4 setObject:v565 forKeyedSubscript:@"DarkBiasValue-71"];

      LODWORD(v566) = 1056125747;
      v567 = [MEMORY[0x277CCABB0] numberWithFloat:v566];
      [v4 setObject:v567 forKeyedSubscript:@"DarkMatrixValue-71"];

      LODWORD(v568) = 0.5;
      v569 = [MEMORY[0x277CCABB0] numberWithFloat:v568];
      [v4 setObject:v569 forKeyedSubscript:@"LightBiasValue-71"];

      LODWORD(v570) = 1066695393;
      v571 = [MEMORY[0x277CCABB0] numberWithFloat:v570];
      [v4 setObject:v571 forKeyedSubscript:@"LightMatrixValue-71"];

      LODWORD(v572) = 1054615798;
      v573 = [MEMORY[0x277CCABB0] numberWithFloat:v572];
      [v4 setObject:v573 forKeyedSubscript:@"DarkBiasValue-72"];

      LODWORD(v574) = 1061830001;
      v575 = [MEMORY[0x277CCABB0] numberWithFloat:v574];
      [v4 setObject:v575 forKeyedSubscript:@"DarkMatrixValue-72"];

      LODWORD(v576) = 0.5;
      v577 = [MEMORY[0x277CCABB0] numberWithFloat:v576];
      [v4 setObject:v577 forKeyedSubscript:@"LightBiasValue-72"];

      LODWORD(v578) = 1066695393;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v578];
      v126 = @"LightMatrixValue-72";
      break;
    case 0x200Du:
      v507 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v507 forKeyedSubscript:@"BudHeight"];

      LODWORD(v508) = 1050421494;
      v509 = [MEMORY[0x277CCABB0] numberWithFloat:v508];
      [v4 setObject:v509 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v510) = 1066192077;
      v511 = [MEMORY[0x277CCABB0] numberWithFloat:v510];
      [v4 setObject:v511 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v512) = 0.5;
      v513 = [MEMORY[0x277CCABB0] numberWithFloat:v512];
      [v4 setObject:v513 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v514) = 1066695393;
      v515 = [MEMORY[0x277CCABB0] numberWithFloat:v514];
      [v4 setObject:v515 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v516) = 0.375;
      v517 = [MEMORY[0x277CCABB0] numberWithFloat:v516];
      [v4 setObject:v517 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v518) = 1058810102;
      v519 = [MEMORY[0x277CCABB0] numberWithFloat:v518];
      [v4 setObject:v519 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v520) = 0.5;
      v521 = [MEMORY[0x277CCABB0] numberWithFloat:v520];
      [v4 setObject:v521 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v522) = 1066695393;
      v523 = [MEMORY[0x277CCABB0] numberWithFloat:v522];
      [v4 setObject:v523 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v524) = 1055286886;
      v525 = [MEMORY[0x277CCABB0] numberWithFloat:v524];
      [v4 setObject:v525 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v526) = 1060320051;
      v527 = [MEMORY[0x277CCABB0] numberWithFloat:v526];
      [v4 setObject:v527 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v528) = 0.5;
      v529 = [MEMORY[0x277CCABB0] numberWithFloat:v528];
      [v4 setObject:v529 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v530) = 1066695393;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v530];
      v126 = @"LightMatrixValue-2";
      break;
    case 0x200Eu:
      v1153 = [MEMORY[0x277CCABB0] numberWithInt:64];
      [v4 setObject:v1153 forKeyedSubscript:@"BudHeight"];

      v1154 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v1154 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v1155 = [MEMORY[0x277CCABB0] numberWithInt:27];
      [v4 setObject:v1155 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v1156 = [MEMORY[0x277CCABB0] numberWithInt:92];
      [v4 setObject:v1156 forKeyedSubscript:@"CaseHeight"];

      v1157 = [MEMORY[0x277CCABB0] numberWithInt:59];
      [v4 setObject:v1157 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v1158 = [MEMORY[0x277CCABB0] numberWithInt:38];
      [v4 setObject:v1158 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v1159) = 1053609165;
      v1160 = [MEMORY[0x277CCABB0] numberWithFloat:v1159];
      [v4 setObject:v1160 forKeyedSubscript:@"DarkBiasValue"];

      v23 = MEMORY[0x277CCABB0];
      LODWORD(v24) = 1065772646;
      goto LABEL_25;
    case 0x2010u:
      v367 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v367 forKeyedSubscript:@"BudHeight"];

      LODWORD(v368) = 0.5;
      v369 = [MEMORY[0x277CCABB0] numberWithFloat:v368];
      [v4 setObject:v369 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v370) = 1063675494;
      v371 = [MEMORY[0x277CCABB0] numberWithFloat:v370];
      [v4 setObject:v371 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v372) = 1057803469;
      v373 = [MEMORY[0x277CCABB0] numberWithFloat:v372];
      [v4 setObject:v373 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v374) = 1068792545;
      v375 = [MEMORY[0x277CCABB0] numberWithFloat:v374];
      [v4 setObject:v375 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v376) = 1055622431;
      v377 = [MEMORY[0x277CCABB0] numberWithFloat:v376];
      [v4 setObject:v377 forKeyedSubscript:@"DarkBiasValue-77"];

      LODWORD(v378) = 1064849900;
      v379 = [MEMORY[0x277CCABB0] numberWithFloat:v378];
      [v4 setObject:v379 forKeyedSubscript:@"DarkMatrixValue-77"];

      LODWORD(v380) = 0.5;
      v381 = [MEMORY[0x277CCABB0] numberWithFloat:v380];
      [v4 setObject:v381 forKeyedSubscript:@"LightBiasValue-77"];

      LODWORD(v382) = 1.0;
      v383 = [MEMORY[0x277CCABB0] numberWithFloat:v382];
      [v4 setObject:v383 forKeyedSubscript:@"LightMatrixValue-77"];

      LODWORD(v384) = 1054280253;
      v385 = [MEMORY[0x277CCABB0] numberWithFloat:v384];
      [v4 setObject:v385 forKeyedSubscript:@"DarkBiasValue-78"];

      LODWORD(v386) = 1064849900;
      v387 = [MEMORY[0x277CCABB0] numberWithFloat:v386];
      [v4 setObject:v387 forKeyedSubscript:@"DarkMatrixValue-78"];

      LODWORD(v388) = 0.5;
      v389 = [MEMORY[0x277CCABB0] numberWithFloat:v388];
      [v4 setObject:v389 forKeyedSubscript:@"LightBiasValue-78"];

      LODWORD(v390) = 1.0;
      v391 = [MEMORY[0x277CCABB0] numberWithFloat:v390];
      [v4 setObject:v391 forKeyedSubscript:@"LightMatrixValue-78"];

      LODWORD(v392) = 1053609165;
      v393 = [MEMORY[0x277CCABB0] numberWithFloat:v392];
      [v4 setObject:v393 forKeyedSubscript:@"DarkBiasValue-79"];

      LODWORD(v394) = 1065017672;
      v395 = [MEMORY[0x277CCABB0] numberWithFloat:v394];
      [v4 setObject:v395 forKeyedSubscript:@"DarkMatrixValue-79"];

      LODWORD(v396) = 0.5;
      v397 = [MEMORY[0x277CCABB0] numberWithFloat:v396];
      [v4 setObject:v397 forKeyedSubscript:@"LightBiasValue-79"];

      LODWORD(v398) = 1.0;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v398];
      v126 = @"LightMatrixValue-79";
      break;
    case 0x2011u:
      v314 = [MEMORY[0x277CCABB0] numberWithInt:31];
      [v4 setObject:v314 forKeyedSubscript:@"BudHeight"];

      v315 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v315 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v316 = [MEMORY[0x277CCABB0] numberWithInt:25];
      [v4 setObject:v316 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v317 = [MEMORY[0x277CCABB0] numberWithInt:100];
      [v4 setObject:v317 forKeyedSubscript:@"CaseHeight"];

      v318 = [MEMORY[0x277CCABB0] numberWithInt:49];
      [v4 setObject:v318 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v319 = [MEMORY[0x277CCABB0] numberWithInt:30];
      [v4 setObject:v319 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v320) = 1052938076;
      v321 = [MEMORY[0x277CCABB0] numberWithFloat:v320];
      [v4 setObject:v321 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v322) = 1065017672;
      v323 = [MEMORY[0x277CCABB0] numberWithFloat:v322];
      [v4 setObject:v323 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v324) = 0.5;
      v325 = [MEMORY[0x277CCABB0] numberWithFloat:v324];
      [v4 setObject:v325 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v326) = 1.0;
      v327 = [MEMORY[0x277CCABB0] numberWithFloat:v326];
      [v4 setObject:v327 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v328) = 1056293519;
      v329 = [MEMORY[0x277CCABB0] numberWithFloat:v328];
      [v4 setObject:v329 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v330) = 1064849900;
      v331 = [MEMORY[0x277CCABB0] numberWithFloat:v330];
      [v4 setObject:v331 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v332) = 1057300152;
      v333 = [MEMORY[0x277CCABB0] numberWithFloat:v332];
      [v4 setObject:v333 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v334) = 1066527621;
      v335 = [MEMORY[0x277CCABB0] numberWithFloat:v334];
      [v4 setObject:v335 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v336) = 1055622431;
      v337 = [MEMORY[0x277CCABB0] numberWithFloat:v336];
      [v4 setObject:v337 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v338) = 1064682127;
      v339 = [MEMORY[0x277CCABB0] numberWithFloat:v338];
      [v4 setObject:v339 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v340) = 0.5;
      v341 = [MEMORY[0x277CCABB0] numberWithFloat:v340];
      [v4 setObject:v341 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v342) = 1.0;
      v343 = [MEMORY[0x277CCABB0] numberWithFloat:v342];
      [v4 setObject:v343 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v344) = 1055622431;
      v345 = [MEMORY[0x277CCABB0] numberWithFloat:v344];
      [v4 setObject:v345 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v346) = 1064514355;
      v347 = [MEMORY[0x277CCABB0] numberWithFloat:v346];
      [v4 setObject:v347 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v348) = 0.5;
      v349 = [MEMORY[0x277CCABB0] numberWithFloat:v348];
      [v4 setObject:v349 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v350) = 1.0;
      v351 = [MEMORY[0x277CCABB0] numberWithFloat:v350];
      [v4 setObject:v351 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v352) = 1055957975;
      v353 = [MEMORY[0x277CCABB0] numberWithFloat:v352];
      [v4 setObject:v353 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v354) = 1065017672;
      v355 = [MEMORY[0x277CCABB0] numberWithFloat:v354];
      [v4 setObject:v355 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v356) = 0.5;
      v357 = [MEMORY[0x277CCABB0] numberWithFloat:v356];
      [v4 setObject:v357 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v358) = 1.0;
      v359 = [MEMORY[0x277CCABB0] numberWithFloat:v358];
      [v4 setObject:v359 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v360) = 1055622431;
      v361 = [MEMORY[0x277CCABB0] numberWithFloat:v360];
      [v4 setObject:v361 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v362) = 1064346583;
      v363 = [MEMORY[0x277CCABB0] numberWithFloat:v362];
      [v4 setObject:v363 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v364) = 0.5;
      v365 = [MEMORY[0x277CCABB0] numberWithFloat:v364];
      [v4 setObject:v365 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v366) = 1.0;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v366];
      v126 = @"LightMatrixValue-6";
      break;
    case 0x2012u:
      goto LABEL_10;
    case 0x2013u:
      v579 = [MEMORY[0x277CCABB0] numberWithInt:62];
      [v4 setObject:v579 forKeyedSubscript:@"BudHeight"];

      v580 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v580 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v581 = [MEMORY[0x277CCABB0] numberWithInt:34];
      [v4 setObject:v581 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v582 = [MEMORY[0x277CCABB0] numberWithInt:94];
      [v4 setObject:v582 forKeyedSubscript:@"CaseHeight"];

      v583 = [MEMORY[0x277CCABB0] numberWithInt:74];
      [v4 setObject:v583 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v584 = [MEMORY[0x277CCABB0] numberWithInt:46];
      [v4 setObject:v584 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v585) = 1053776937;
      v586 = [MEMORY[0x277CCABB0] numberWithFloat:v585];
      [v4 setObject:v586 forKeyedSubscript:@"DarkBiasValue"];

      LODWORD(v587) = 1066359849;
      v588 = [MEMORY[0x277CCABB0] numberWithFloat:v587];
      [v4 setObject:v588 forKeyedSubscript:@"DarkMatrixValue"];

      v34 = MEMORY[0x277CCABB0];
      LODWORD(v35) = 1058139013;
      goto LABEL_26;
    case 0x2014u:
    case 0x2024u:
      v15 = [MEMORY[0x277CCABB0] numberWithInt:64];
      [v4 setObject:v15 forKeyedSubscript:@"BudHeight"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v16 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v17 = [MEMORY[0x277CCABB0] numberWithInt:27];
      [v4 setObject:v17 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v18 = [MEMORY[0x277CCABB0] numberWithInt:102];
      [v4 setObject:v18 forKeyedSubscript:@"CaseHeight"];

      v19 = [MEMORY[0x277CCABB0] numberWithInt:59];
      [v4 setObject:v19 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v20 = [MEMORY[0x277CCABB0] numberWithInt:38];
      [v4 setObject:v20 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v21) = 1053273620;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      [v4 setObject:v22 forKeyedSubscript:@"DarkBiasValue"];

      v23 = MEMORY[0x277CCABB0];
      LODWORD(v24) = 1066443735;
LABEL_25:
      v1161 = [v23 numberWithFloat:v24];
      [v4 setObject:v1161 forKeyedSubscript:@"DarkMatrixValue"];

      v34 = MEMORY[0x277CCABB0];
      LODWORD(v35) = 1057803469;
      goto LABEL_26;
    case 0x2016u:
      v589 = [MEMORY[0x277CCABB0] numberWithInt:31];
      [v4 setObject:v589 forKeyedSubscript:@"BudHeight"];

      v590 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v590 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v591 = [MEMORY[0x277CCABB0] numberWithInt:25];
      [v4 setObject:v591 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v592 = [MEMORY[0x277CCABB0] numberWithInt:100];
      [v4 setObject:v592 forKeyedSubscript:@"CaseHeight"];

      v593 = [MEMORY[0x277CCABB0] numberWithInt:49];
      [v4 setObject:v593 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v594 = [MEMORY[0x277CCABB0] numberWithInt:30];
      [v4 setObject:v594 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v595) = 1056293519;
      v596 = [MEMORY[0x277CCABB0] numberWithFloat:v595];
      [v4 setObject:v596 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v597) = 1064849900;
      v598 = [MEMORY[0x277CCABB0] numberWithFloat:v597];
      [v4 setObject:v598 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v599) = 1057300152;
      v600 = [MEMORY[0x277CCABB0] numberWithFloat:v599];
      [v4 setObject:v600 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v601) = 1066527621;
      v602 = [MEMORY[0x277CCABB0] numberWithFloat:v601];
      [v4 setObject:v602 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v603) = 1054615798;
      v604 = [MEMORY[0x277CCABB0] numberWithFloat:v603];
      [v4 setObject:v604 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v605) = 1064849900;
      v606 = [MEMORY[0x277CCABB0] numberWithFloat:v605];
      [v4 setObject:v606 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v607) = 0.5;
      v608 = [MEMORY[0x277CCABB0] numberWithFloat:v607];
      [v4 setObject:v608 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v609) = 1.0;
      v610 = [MEMORY[0x277CCABB0] numberWithFloat:v609];
      [v4 setObject:v610 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v611) = 1055957975;
      v612 = [MEMORY[0x277CCABB0] numberWithFloat:v611];
      [v4 setObject:v612 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v613) = 1063843267;
      v614 = [MEMORY[0x277CCABB0] numberWithFloat:v613];
      [v4 setObject:v614 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v615) = 1056360628;
      v616 = [MEMORY[0x277CCABB0] numberWithFloat:v615];
      [v4 setObject:v616 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v617) = 1064766013;
      v618 = [MEMORY[0x277CCABB0] numberWithFloat:v617];
      [v4 setObject:v618 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v619) = 1053609165;
      v620 = [MEMORY[0x277CCABB0] numberWithFloat:v619];
      [v4 setObject:v620 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v621) = 1064346583;
      v622 = [MEMORY[0x277CCABB0] numberWithFloat:v621];
      [v4 setObject:v622 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v623) = 0.5;
      v624 = [MEMORY[0x277CCABB0] numberWithFloat:v623];
      [v4 setObject:v624 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v625) = 1.0;
      v626 = [MEMORY[0x277CCABB0] numberWithFloat:v625];
      [v4 setObject:v626 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v627) = 1054615798;
      v628 = [MEMORY[0x277CCABB0] numberWithFloat:v627];
      [v4 setObject:v628 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v629) = 1064514355;
      v630 = [MEMORY[0x277CCABB0] numberWithFloat:v629];
      [v4 setObject:v630 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v631) = 0.5;
      v632 = [MEMORY[0x277CCABB0] numberWithFloat:v631];
      [v4 setObject:v632 forKeyedSubscript:@"LightBiasValue-4"];

      v505 = MEMORY[0x277CCABB0];
      LODWORD(v506) = 1.0;
      goto LABEL_19;
    case 0x2017u:
      v1165 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v1165 forKeyedSubscript:@"BudHeight"];

      LODWORD(v1166) = 1056159302;
      v1167 = [MEMORY[0x277CCABB0] numberWithFloat:v1166];
      [v4 setObject:v1167 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v1168) = 1065269330;
      v1169 = [MEMORY[0x277CCABB0] numberWithFloat:v1168];
      [v4 setObject:v1169 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v1170) = 0.5;
      v1171 = [MEMORY[0x277CCABB0] numberWithFloat:v1170];
      [v4 setObject:v1171 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v1172) = 1.0;
      v1173 = [MEMORY[0x277CCABB0] numberWithFloat:v1172];
      [v4 setObject:v1173 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v1174) = 1056226410;
      v1175 = [MEMORY[0x277CCABB0] numberWithFloat:v1174];
      [v4 setObject:v1175 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v1176) = 1064262697;
      v1177 = [MEMORY[0x277CCABB0] numberWithFloat:v1176];
      [v4 setObject:v1177 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v1178) = 0.5;
      v1179 = [MEMORY[0x277CCABB0] numberWithFloat:v1178];
      [v4 setObject:v1179 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v1180) = 1.0;
      v1181 = [MEMORY[0x277CCABB0] numberWithFloat:v1180];
      [v4 setObject:v1181 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v1182) = 1056629064;
      v1183 = [MEMORY[0x277CCABB0] numberWithFloat:v1182];
      [v4 setObject:v1183 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v1184) = 1065017672;
      v1185 = [MEMORY[0x277CCABB0] numberWithFloat:v1184];
      [v4 setObject:v1185 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v1186) = 0.5;
      v1187 = [MEMORY[0x277CCABB0] numberWithFloat:v1186];
      [v4 setObject:v1187 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v1188) = 1065604874;
      v1189 = [MEMORY[0x277CCABB0] numberWithFloat:v1188];
      [v4 setObject:v1189 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v1190) = 1057300152;
      v1191 = [MEMORY[0x277CCABB0] numberWithFloat:v1190];
      [v4 setObject:v1191 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v1192) = 1063675494;
      v1193 = [MEMORY[0x277CCABB0] numberWithFloat:v1192];
      [v4 setObject:v1193 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v1194) = 1057803469;
      v1195 = [MEMORY[0x277CCABB0] numberWithFloat:v1194];
      [v4 setObject:v1195 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v1196) = 1065017672;
      v1197 = [MEMORY[0x277CCABB0] numberWithFloat:v1196];
      [v4 setObject:v1197 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v1198) = 0.5;
      v1199 = [MEMORY[0x277CCABB0] numberWithFloat:v1198];
      [v4 setObject:v1199 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v1200) = 1.0;
      v1201 = [MEMORY[0x277CCABB0] numberWithFloat:v1200];
      [v4 setObject:v1201 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v1202) = 1057132380;
      v1203 = [MEMORY[0x277CCABB0] numberWithFloat:v1202];
      [v4 setObject:v1203 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v1204) = 1065772646;
      v1205 = [MEMORY[0x277CCABB0] numberWithFloat:v1204];
      [v4 setObject:v1205 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v1206) = 1056360628;
      v1207 = [MEMORY[0x277CCABB0] numberWithFloat:v1206];
      [v4 setObject:v1207 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v1208) = 1065772646;
      v1209 = [MEMORY[0x277CCABB0] numberWithFloat:v1208];
      [v4 setObject:v1209 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v1210) = 0.5;
      v1211 = [MEMORY[0x277CCABB0] numberWithFloat:v1210];
      [v4 setObject:v1211 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v1212) = 1.0;
      v1213 = [MEMORY[0x277CCABB0] numberWithFloat:v1212];
      [v4 setObject:v1213 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v1214) = 1056427737;
      v1215 = [MEMORY[0x277CCABB0] numberWithFloat:v1214];
      [v4 setObject:v1215 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v1216) = 1064849900;
      v1217 = [MEMORY[0x277CCABB0] numberWithFloat:v1216];
      [v4 setObject:v1217 forKeyedSubscript:@"DarkMatrixValue-9"];

      LODWORD(v1218) = 1057434370;
      v1219 = [MEMORY[0x277CCABB0] numberWithFloat:v1218];
      [v4 setObject:v1219 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v1220) = 1066317906;
      v1221 = [MEMORY[0x277CCABB0] numberWithFloat:v1220];
      [v4 setObject:v1221 forKeyedSubscript:@"LightMatrixValue-9"];

      LODWORD(v1222) = 0.5;
      v1223 = [MEMORY[0x277CCABB0] numberWithFloat:v1222];
      [v4 setObject:v1223 forKeyedSubscript:@"DarkBiasValue-12"];

      LODWORD(v1224) = 1.0;
      v1225 = [MEMORY[0x277CCABB0] numberWithFloat:v1224];
      [v4 setObject:v1225 forKeyedSubscript:@"DarkMatrixValue-12"];

      LODWORD(v1226) = 1056629064;
      v1227 = [MEMORY[0x277CCABB0] numberWithFloat:v1226];
      [v4 setObject:v1227 forKeyedSubscript:@"LightBiasValue-12"];

      LODWORD(v1228) = 1064346583;
      v1229 = [MEMORY[0x277CCABB0] numberWithFloat:v1228];
      [v4 setObject:v1229 forKeyedSubscript:@"LightMatrixValue-12"];

      LODWORD(v1230) = 0.5;
      v1231 = [MEMORY[0x277CCABB0] numberWithFloat:v1230];
      [v4 setObject:v1231 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v1232) = 1.0;
      v1233 = [MEMORY[0x277CCABB0] numberWithFloat:v1232];
      [v4 setObject:v1233 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v1234) = 1055622431;
      v1235 = [MEMORY[0x277CCABB0] numberWithFloat:v1234];
      [v4 setObject:v1235 forKeyedSubscript:@"LightBiasValue-13"];

      v467 = MEMORY[0x277CCABB0];
      LODWORD(v468) = 1063339950;
LABEL_32:
      v125 = [v467 numberWithFloat:v468];
      v126 = @"LightMatrixValue-13";
      break;
    case 0x2019u:
    case 0x201Bu:
    case 0x201Eu:
    case 0x2020u:
      v5 = [MEMORY[0x277CCABB0] numberWithInt:62];
      [v4 setObject:v5 forKeyedSubscript:@"BudHeight"];

      v6 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v6 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v7 = [MEMORY[0x277CCABB0] numberWithInt:34];
      [v4 setObject:v7 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v8 = [MEMORY[0x277CCABB0] numberWithInt:94];
      [v4 setObject:v8 forKeyedSubscript:@"CaseHeight"];

      v9 = [MEMORY[0x277CCABB0] numberWithInt:74];
      [v4 setObject:v9 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v10 = [MEMORY[0x277CCABB0] numberWithInt:46];
      [v4 setObject:v10 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v11) = 1053609165;
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
      [v4 setObject:v12 forKeyedSubscript:@"DarkBiasValue"];

      v13 = MEMORY[0x277CCABB0];
      LODWORD(v14) = 1065940419;
LABEL_5:
      v33 = [v13 numberWithFloat:v14];
      [v4 setObject:v33 forKeyedSubscript:@"DarkMatrixValue"];

      v34 = MEMORY[0x277CCABB0];
      LODWORD(v35) = 0.5;
LABEL_26:
      v1162 = [v34 numberWithFloat:v35];
      [v4 setObject:v1162 forKeyedSubscript:@"LightBiasValue"];

      LODWORD(v1163) = 1066695393;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v1163];
      v126 = @"LightMatrixValue";
      break;
    case 0x201Au:
      v127 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v127 forKeyedSubscript:@"BudHeight"];

      LODWORD(v128) = 0.5;
      v129 = [MEMORY[0x277CCABB0] numberWithFloat:v128];
      [v4 setObject:v129 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v130) = 1.0;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v130];
      [v4 setObject:v131 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v132) = 1055957975;
      v133 = [MEMORY[0x277CCABB0] numberWithFloat:v132];
      [v4 setObject:v133 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v134) = 1061997773;
      v135 = [MEMORY[0x277CCABB0] numberWithFloat:v134];
      [v4 setObject:v135 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v136) = 0.5;
      v137 = [MEMORY[0x277CCABB0] numberWithFloat:v136];
      [v4 setObject:v137 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v138) = 1.0;
      v139 = [MEMORY[0x277CCABB0] numberWithFloat:v138];
      [v4 setObject:v139 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v140) = 1055957975;
      v141 = [MEMORY[0x277CCABB0] numberWithFloat:v140];
      [v4 setObject:v141 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v142) = 1061997773;
      v143 = [MEMORY[0x277CCABB0] numberWithFloat:v142];
      [v4 setObject:v143 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v144) = 0.5;
      v145 = [MEMORY[0x277CCABB0] numberWithFloat:v144];
      [v4 setObject:v145 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v146) = 1.0;
      v147 = [MEMORY[0x277CCABB0] numberWithFloat:v146];
      [v4 setObject:v147 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v148) = 1055957975;
      v149 = [MEMORY[0x277CCABB0] numberWithFloat:v148];
      [v4 setObject:v149 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v150) = 1062836634;
      v151 = [MEMORY[0x277CCABB0] numberWithFloat:v150];
      [v4 setObject:v151 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v152) = 0.5;
      v153 = [MEMORY[0x277CCABB0] numberWithFloat:v152];
      [v4 setObject:v153 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v154) = 1.0;
      v155 = [MEMORY[0x277CCABB0] numberWithFloat:v154];
      [v4 setObject:v155 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v156) = 1055957975;
      v157 = [MEMORY[0x277CCABB0] numberWithFloat:v156];
      [v4 setObject:v157 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v158) = 1062836634;
      v159 = [MEMORY[0x277CCABB0] numberWithFloat:v158];
      [v4 setObject:v159 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v160) = 0.5;
      v161 = [MEMORY[0x277CCABB0] numberWithFloat:v160];
      [v4 setObject:v161 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v162) = 1.0;
      v163 = [MEMORY[0x277CCABB0] numberWithFloat:v162];
      [v4 setObject:v163 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v164) = 1055957975;
      v165 = [MEMORY[0x277CCABB0] numberWithFloat:v164];
      [v4 setObject:v165 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v166) = 1061997773;
      v167 = [MEMORY[0x277CCABB0] numberWithFloat:v166];
      [v4 setObject:v167 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v168) = 0.5;
      v169 = [MEMORY[0x277CCABB0] numberWithFloat:v168];
      [v4 setObject:v169 forKeyedSubscript:@"LightBiasValue-8"];

      LODWORD(v170) = 1065017672;
      v171 = [MEMORY[0x277CCABB0] numberWithFloat:v170];
      [v4 setObject:v171 forKeyedSubscript:@"LightMatrixValue-8"];

      LODWORD(v172) = 1055622431;
      v173 = [MEMORY[0x277CCABB0] numberWithFloat:v172];
      [v4 setObject:v173 forKeyedSubscript:@"DarkBiasValue-8"];

      LODWORD(v174) = 1063172178;
      v175 = [MEMORY[0x277CCABB0] numberWithFloat:v174];
      [v4 setObject:v175 forKeyedSubscript:@"DarkMatrixValue-8"];

      LODWORD(v176) = 0.5;
      v177 = [MEMORY[0x277CCABB0] numberWithFloat:v176];
      [v4 setObject:v177 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v178) = 1065017672;
      v179 = [MEMORY[0x277CCABB0] numberWithFloat:v178];
      [v4 setObject:v179 forKeyedSubscript:@"LightMatrixValue-9"];

      LODWORD(v180) = 1055957975;
      v181 = [MEMORY[0x277CCABB0] numberWithFloat:v180];
      [v4 setObject:v181 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v182) = 1063843267;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v182];
      v126 = @"DarkMatrixValue-9";
      break;
    case 0x201Du:
      v469 = [MEMORY[0x277CCABB0] numberWithInt:74];
      [v4 setObject:v469 forKeyedSubscript:@"BudHeight"];

      v470 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v470 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v471 = [MEMORY[0x277CCABB0] numberWithInt:17];
      [v4 setObject:v471 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v472 = [MEMORY[0x277CCABB0] numberWithInt:57];
      [v4 setObject:v472 forKeyedSubscript:@"CaseHeight"];

      v473 = [MEMORY[0x277CCABB0] numberWithInt:33];
      [v4 setObject:v473 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v474 = [MEMORY[0x277CCABB0] numberWithInt:22];
      [v4 setObject:v474 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v475) = 1056293519;
      v476 = [MEMORY[0x277CCABB0] numberWithFloat:v475];
      [v4 setObject:v476 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v477) = 1064178811;
      v478 = [MEMORY[0x277CCABB0] numberWithFloat:v477];
      [v4 setObject:v478 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v479) = 0.5;
      v480 = [MEMORY[0x277CCABB0] numberWithFloat:v479];
      [v4 setObject:v480 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v481) = 1065185444;
      v482 = [MEMORY[0x277CCABB0] numberWithFloat:v481];
      [v4 setObject:v482 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v483) = 1055957975;
      v484 = [MEMORY[0x277CCABB0] numberWithFloat:v483];
      [v4 setObject:v484 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v485) = 1064514355;
      v486 = [MEMORY[0x277CCABB0] numberWithFloat:v485];
      [v4 setObject:v486 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v487) = 0.5;
      v488 = [MEMORY[0x277CCABB0] numberWithFloat:v487];
      [v4 setObject:v488 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v489) = 1065185444;
      v490 = [MEMORY[0x277CCABB0] numberWithFloat:v489];
      [v4 setObject:v490 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v491) = 1056629064;
      v492 = [MEMORY[0x277CCABB0] numberWithFloat:v491];
      [v4 setObject:v492 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v493) = 1064849900;
      v494 = [MEMORY[0x277CCABB0] numberWithFloat:v493];
      [v4 setObject:v494 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v495) = 0.5;
      v496 = [MEMORY[0x277CCABB0] numberWithFloat:v495];
      [v4 setObject:v496 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v497) = 1065185444;
      v498 = [MEMORY[0x277CCABB0] numberWithFloat:v497];
      [v4 setObject:v498 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v499) = 1056293519;
      v500 = [MEMORY[0x277CCABB0] numberWithFloat:v499];
      [v4 setObject:v500 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v501) = 1064849900;
      v502 = [MEMORY[0x277CCABB0] numberWithFloat:v501];
      [v4 setObject:v502 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v503) = 0.5;
      v504 = [MEMORY[0x277CCABB0] numberWithFloat:v503];
      [v4 setObject:v504 forKeyedSubscript:@"LightBiasValue-4"];

      v505 = MEMORY[0x277CCABB0];
      LODWORD(v506) = 1065185444;
LABEL_19:
      v125 = [v505 numberWithFloat:v506];
      v126 = @"LightMatrixValue-4";
      break;
    case 0x201Fu:
      v36 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v36 forKeyedSubscript:@"BudHeight"];

      LODWORD(v37) = 0.5;
      v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
      [v4 setObject:v38 forKeyedSubscript:@"DarkBiasValue-21"];

      LODWORD(v39) = 1064682127;
      v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
      [v4 setObject:v40 forKeyedSubscript:@"DarkMatrixValue-21"];

      LODWORD(v41) = 0.5;
      v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      [v4 setObject:v42 forKeyedSubscript:@"LightBiasValue-21"];

      LODWORD(v43) = 1064849900;
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
      [v4 setObject:v44 forKeyedSubscript:@"LightMatrixValue-21"];

      LODWORD(v45) = 0.5;
      v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
      [v4 setObject:v46 forKeyedSubscript:@"DarkBiasValue-22"];

      LODWORD(v47) = 1063675494;
      v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
      [v4 setObject:v48 forKeyedSubscript:@"DarkMatrixValue-22"];

      LODWORD(v49) = 0.5;
      v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
      [v4 setObject:v50 forKeyedSubscript:@"LightBiasValue-22"];

      LODWORD(v51) = 1064849900;
      v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
      [v4 setObject:v52 forKeyedSubscript:@"LightMatrixValue-22"];

      LODWORD(v53) = 0.5;
      v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
      [v4 setObject:v54 forKeyedSubscript:@"DarkBiasValue-20"];

      LODWORD(v55) = 1063675494;
      v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
      [v4 setObject:v56 forKeyedSubscript:@"DarkMatrixValue-20"];

      LODWORD(v57) = 0.5;
      v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
      [v4 setObject:v58 forKeyedSubscript:@"LightBiasValue-20"];

      LODWORD(v59) = 1064849900;
      v60 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
      [v4 setObject:v60 forKeyedSubscript:@"LightMatrixValue-20"];

      LODWORD(v61) = 1055286886;
      v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
      [v4 setObject:v62 forKeyedSubscript:@"DarkBiasValue-19"];

      LODWORD(v63) = 1.0;
      v64 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
      [v4 setObject:v64 forKeyedSubscript:@"DarkMatrixValue-19"];

      LODWORD(v65) = 0.5;
      v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
      [v4 setObject:v66 forKeyedSubscript:@"LightBiasValue-19"];

      LODWORD(v67) = 1.0;
      v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
      [v4 setObject:v68 forKeyedSubscript:@"LightMatrixValue-19"];

      LODWORD(v69) = 0.5;
      v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
      [v4 setObject:v70 forKeyedSubscript:@"DarkBiasValue-18"];

      LODWORD(v71) = 1063675494;
      v72 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
      [v4 setObject:v72 forKeyedSubscript:@"DarkMatrixValue-18"];

      LODWORD(v73) = 0.5;
      v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
      [v4 setObject:v74 forKeyedSubscript:@"LightBiasValue-18"];

      LODWORD(v75) = 1.0;
      v76 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
      [v4 setObject:v76 forKeyedSubscript:@"LightMatrixValue-18"];

LABEL_7:
      v77 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v77 forKeyedSubscript:@"BudHeight"];

      LODWORD(v78) = 0.5;
      v79 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
      [v4 setObject:v79 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v80) = 1063675494;
      v81 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
      [v4 setObject:v81 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v82) = 0.5;
      v83 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
      [v4 setObject:v83 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v84) = 1.0;
      v85 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
      [v4 setObject:v85 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v86) = 0.5;
      v87 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
      [v4 setObject:v87 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v88) = 1064682127;
      v89 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
      [v4 setObject:v89 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v90) = 0.5;
      v91 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
      [v4 setObject:v91 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v92) = 1064849900;
      v93 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
      [v4 setObject:v93 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v94) = 0.5;
      v95 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
      [v4 setObject:v95 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v96) = 1063675494;
      v97 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
      [v4 setObject:v97 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v98) = 0.5;
      v99 = [MEMORY[0x277CCABB0] numberWithFloat:v98];
      [v4 setObject:v99 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v100) = 1064849900;
      v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
      [v4 setObject:v101 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v102) = 0.5;
      v103 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
      [v4 setObject:v103 forKeyedSubscript:@"DarkBiasValue-15"];

      LODWORD(v104) = 1063675494;
      v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
      [v4 setObject:v105 forKeyedSubscript:@"DarkMatrixValue-15"];

      LODWORD(v106) = 0.5;
      v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
      [v4 setObject:v107 forKeyedSubscript:@"LightBiasValue-15"];

      LODWORD(v108) = 1.0;
      v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
      [v4 setObject:v109 forKeyedSubscript:@"LightMatrixValue-15"];

      LODWORD(v110) = 1055286886;
      v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
      [v4 setObject:v111 forKeyedSubscript:@"DarkBiasValue-16"];

      LODWORD(v112) = 1.0;
      v113 = [MEMORY[0x277CCABB0] numberWithFloat:v112];
      [v4 setObject:v113 forKeyedSubscript:@"DarkMatrixValue-16"];

      LODWORD(v114) = 0.5;
      v115 = [MEMORY[0x277CCABB0] numberWithFloat:v114];
      [v4 setObject:v115 forKeyedSubscript:@"LightBiasValue-16"];

      LODWORD(v116) = 1.0;
      v117 = [MEMORY[0x277CCABB0] numberWithFloat:v116];
      [v4 setObject:v117 forKeyedSubscript:@"LightMatrixValue-16"];

      LODWORD(v118) = 0.5;
      v119 = [MEMORY[0x277CCABB0] numberWithFloat:v118];
      [v4 setObject:v119 forKeyedSubscript:@"DarkBiasValue-17"];

      LODWORD(v120) = 1064514355;
      v121 = [MEMORY[0x277CCABB0] numberWithFloat:v120];
      [v4 setObject:v121 forKeyedSubscript:@"DarkMatrixValue-17"];

      LODWORD(v122) = 0.5;
      v123 = [MEMORY[0x277CCABB0] numberWithFloat:v122];
      [v4 setObject:v123 forKeyedSubscript:@"LightBiasValue-17"];

      LODWORD(v124) = 1064682127;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v124];
      v126 = @"LightMatrixValue-17";
      break;
    case 0x2025u:
      v1272 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v4 setObject:v1272 forKeyedSubscript:@"BudHeight"];

      LODWORD(v1273) = 1057803469;
      v1274 = [MEMORY[0x277CCABB0] numberWithFloat:v1273];
      [v4 setObject:v1274 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v1275) = 1.0;
      v1276 = [MEMORY[0x277CCABB0] numberWithFloat:v1275];
      [v4 setObject:v1276 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v1277) = 1057635697;
      v1278 = [MEMORY[0x277CCABB0] numberWithFloat:v1277];
      [v4 setObject:v1278 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v1279) = 1064514355;
      v1280 = [MEMORY[0x277CCABB0] numberWithFloat:v1279];
      [v4 setObject:v1280 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v1281) = 0.5;
      v1282 = [MEMORY[0x277CCABB0] numberWithFloat:v1281];
      [v4 setObject:v1282 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v1283) = 1.0;
      v1284 = [MEMORY[0x277CCABB0] numberWithFloat:v1283];
      [v4 setObject:v1284 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v1285) = 1055957975;
      v1286 = [MEMORY[0x277CCABB0] numberWithFloat:v1285];
      [v4 setObject:v1286 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v1287) = 1064514355;
      v1288 = [MEMORY[0x277CCABB0] numberWithFloat:v1287];
      [v4 setObject:v1288 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v1289) = 0.5;
      v1290 = [MEMORY[0x277CCABB0] numberWithFloat:v1289];
      [v4 setObject:v1290 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v1291) = 1.0;
      v1292 = [MEMORY[0x277CCABB0] numberWithFloat:v1291];
      [v4 setObject:v1292 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v1293) = 1055957975;
      v1294 = [MEMORY[0x277CCABB0] numberWithFloat:v1293];
      [v4 setObject:v1294 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v1295) = 1064514355;
      v1296 = [MEMORY[0x277CCABB0] numberWithFloat:v1295];
      [v4 setObject:v1296 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v1297) = 0.5;
      v1298 = [MEMORY[0x277CCABB0] numberWithFloat:v1297];
      [v4 setObject:v1298 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v1299) = 1065185444;
      v1300 = [MEMORY[0x277CCABB0] numberWithFloat:v1299];
      [v4 setObject:v1300 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v1301) = 1055957975;
      v1302 = [MEMORY[0x277CCABB0] numberWithFloat:v1301];
      [v4 setObject:v1302 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v1303) = 1064346583;
      v1304 = [MEMORY[0x277CCABB0] numberWithFloat:v1303];
      [v4 setObject:v1304 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v1305) = 0.5;
      v1306 = [MEMORY[0x277CCABB0] numberWithFloat:v1305];
      [v4 setObject:v1306 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v1307) = 1065185444;
      v1308 = [MEMORY[0x277CCABB0] numberWithFloat:v1307];
      [v4 setObject:v1308 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v1309) = 1055957975;
      v1310 = [MEMORY[0x277CCABB0] numberWithFloat:v1309];
      [v4 setObject:v1310 forKeyedSubscript:@"DarkBiasValue-6"];

      v1270 = MEMORY[0x277CCABB0];
      LODWORD(v1271) = 1064514355;
      goto LABEL_35;
    case 0x2026u:
      v1236 = [MEMORY[0x277CCABB0] numberWithInt:48];
      [v4 setObject:v1236 forKeyedSubscript:@"BudHeight"];

      v1237 = [MEMORY[0x277CCABB0] numberWithInt:25];
      [v4 setObject:v1237 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v1238 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v1238 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v1239 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v4 setObject:v1239 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      LODWORD(v1240) = 1057803469;
      v1241 = [MEMORY[0x277CCABB0] numberWithFloat:v1240];
      [v4 setObject:v1241 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v1242) = 1.0;
      v1243 = [MEMORY[0x277CCABB0] numberWithFloat:v1242];
      [v4 setObject:v1243 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v1244) = 1057635697;
      v1245 = [MEMORY[0x277CCABB0] numberWithFloat:v1244];
      [v4 setObject:v1245 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v1246) = 1064514355;
      v1247 = [MEMORY[0x277CCABB0] numberWithFloat:v1246];
      [v4 setObject:v1247 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v1248) = 0.5;
      v1249 = [MEMORY[0x277CCABB0] numberWithFloat:v1248];
      [v4 setObject:v1249 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v1250) = 1.0;
      v1251 = [MEMORY[0x277CCABB0] numberWithFloat:v1250];
      [v4 setObject:v1251 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v1252) = 1055957975;
      v1253 = [MEMORY[0x277CCABB0] numberWithFloat:v1252];
      [v4 setObject:v1253 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v1254) = 1064514355;
      v1255 = [MEMORY[0x277CCABB0] numberWithFloat:v1254];
      [v4 setObject:v1255 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v1256) = 0.5;
      v1257 = [MEMORY[0x277CCABB0] numberWithFloat:v1256];
      [v4 setObject:v1257 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v1258) = 1.0;
      v1259 = [MEMORY[0x277CCABB0] numberWithFloat:v1258];
      [v4 setObject:v1259 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v1260) = 1055957975;
      v1261 = [MEMORY[0x277CCABB0] numberWithFloat:v1260];
      [v4 setObject:v1261 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v1262) = 1064514355;
      v1263 = [MEMORY[0x277CCABB0] numberWithFloat:v1262];
      [v4 setObject:v1263 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v1264) = 0.5;
      v1265 = [MEMORY[0x277CCABB0] numberWithFloat:v1264];
      [v4 setObject:v1265 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v1266) = 1.0;
      v1267 = [MEMORY[0x277CCABB0] numberWithFloat:v1266];
      [v4 setObject:v1267 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v1268) = 1056293519;
      v1269 = [MEMORY[0x277CCABB0] numberWithFloat:v1268];
      [v4 setObject:v1269 forKeyedSubscript:@"DarkBiasValue-6"];

      v1270 = MEMORY[0x277CCABB0];
      LODWORD(v1271) = 1064011039;
LABEL_35:
      v125 = [v1270 numberWithFloat:v1271];
      v126 = @"DarkMatrixValue-6";
      break;
    case 0x202Fu:
      v183 = [MEMORY[0x277CCABB0] numberWithInt:51];
      [v4 setObject:v183 forKeyedSubscript:@"BudHeight"];

      v184 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v184 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v185 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v4 setObject:v185 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v186 = [MEMORY[0x277CCABB0] numberWithInt:52];
      [v4 setObject:v186 forKeyedSubscript:@"CaseHeight"];

      v187 = [MEMORY[0x277CCABB0] numberWithInt:50];
      [v4 setObject:v187 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v188 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v4 setObject:v188 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v189) = 1056293519;
      v190 = [MEMORY[0x277CCABB0] numberWithFloat:v189];
      [v4 setObject:v190 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v191) = 1064514355;
      v192 = [MEMORY[0x277CCABB0] numberWithFloat:v191];
      [v4 setObject:v192 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v193) = 0.5;
      v194 = [MEMORY[0x277CCABB0] numberWithFloat:v193];
      [v4 setObject:v194 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v195) = 1065604874;
      v196 = [MEMORY[0x277CCABB0] numberWithFloat:v195];
      [v4 setObject:v196 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v197) = 1056293519;
      v198 = [MEMORY[0x277CCABB0] numberWithFloat:v197];
      [v4 setObject:v198 forKeyedSubscript:@"DarkBiasValue-10"];

      LODWORD(v199) = 1062668861;
      v200 = [MEMORY[0x277CCABB0] numberWithFloat:v199];
      [v4 setObject:v200 forKeyedSubscript:@"DarkMatrixValue-10"];

      LODWORD(v201) = 0.5;
      v202 = [MEMORY[0x277CCABB0] numberWithFloat:v201];
      [v4 setObject:v202 forKeyedSubscript:@"LightBiasValue-10"];

      LODWORD(v203) = 1.0;
      v204 = [MEMORY[0x277CCABB0] numberWithFloat:v203];
      [v4 setObject:v204 forKeyedSubscript:@"LightMatrixValue-10"];

      LODWORD(v205) = 1056293519;
      v206 = [MEMORY[0x277CCABB0] numberWithFloat:v205];
      [v4 setObject:v206 forKeyedSubscript:@"DarkBiasValue-11"];

      LODWORD(v207) = 1063675494;
      v208 = [MEMORY[0x277CCABB0] numberWithFloat:v207];
      [v4 setObject:v208 forKeyedSubscript:@"DarkMatrixValue-11"];

      LODWORD(v209) = 0.5;
      v210 = [MEMORY[0x277CCABB0] numberWithFloat:v209];
      [v4 setObject:v210 forKeyedSubscript:@"LightBiasValue-11"];

      LODWORD(v211) = 1.0;
      v212 = [MEMORY[0x277CCABB0] numberWithFloat:v211];
      [v4 setObject:v212 forKeyedSubscript:@"LightMatrixValue-11"];

      LODWORD(v213) = 1056629064;
      v214 = [MEMORY[0x277CCABB0] numberWithFloat:v213];
      [v4 setObject:v214 forKeyedSubscript:@"DarkBiasValue-12"];

      LODWORD(v215) = 1064514355;
      v216 = [MEMORY[0x277CCABB0] numberWithFloat:v215];
      [v4 setObject:v216 forKeyedSubscript:@"DarkMatrixValue-12"];

      LODWORD(v217) = 0.5;
      v218 = [MEMORY[0x277CCABB0] numberWithFloat:v217];
      [v4 setObject:v218 forKeyedSubscript:@"LightBiasValue-12"];

      LODWORD(v219) = 1.0;
      v220 = [MEMORY[0x277CCABB0] numberWithFloat:v219];
      [v4 setObject:v220 forKeyedSubscript:@"LightMatrixValue-12"];

      LODWORD(v221) = 1056293519;
      v222 = [MEMORY[0x277CCABB0] numberWithFloat:v221];
      [v4 setObject:v222 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v223) = 1064514355;
      v224 = [MEMORY[0x277CCABB0] numberWithFloat:v223];
      [v4 setObject:v224 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v225) = 0.5;
      v226 = [MEMORY[0x277CCABB0] numberWithFloat:v225];
      [v4 setObject:v226 forKeyedSubscript:@"LightBiasValue-13"];

      LODWORD(v227) = 1.0;
      v228 = [MEMORY[0x277CCABB0] numberWithFloat:v227];
      [v4 setObject:v228 forKeyedSubscript:@"LightMatrixValue-13"];

LABEL_10:
      v229 = [MEMORY[0x277CCABB0] numberWithInt:51];
      [v4 setObject:v229 forKeyedSubscript:@"BudHeight"];

      v230 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v4 setObject:v230 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v231 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v4 setObject:v231 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v232 = [MEMORY[0x277CCABB0] numberWithInt:52];
      [v4 setObject:v232 forKeyedSubscript:@"CaseHeight"];

      v233 = [MEMORY[0x277CCABB0] numberWithInt:50];
      [v4 setObject:v233 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v234 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v4 setObject:v234 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v235) = 1056293519;
      v236 = [MEMORY[0x277CCABB0] numberWithFloat:v235];
      [v4 setObject:v236 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v237) = 1064514355;
      v238 = [MEMORY[0x277CCABB0] numberWithFloat:v237];
      [v4 setObject:v238 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v239) = 0.5;
      v240 = [MEMORY[0x277CCABB0] numberWithFloat:v239];
      [v4 setObject:v240 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v241) = 1065604874;
      v242 = [MEMORY[0x277CCABB0] numberWithFloat:v241];
      [v4 setObject:v242 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v243) = 0.5;
      v244 = [MEMORY[0x277CCABB0] numberWithFloat:v243];
      [v4 setObject:v244 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v245) = 0.75;
      v246 = [MEMORY[0x277CCABB0] numberWithFloat:v245];
      [v4 setObject:v246 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v247) = 0.5;
      v248 = [MEMORY[0x277CCABB0] numberWithFloat:v247];
      [v4 setObject:v248 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v249) = 1.0;
      v250 = [MEMORY[0x277CCABB0] numberWithFloat:v249];
      [v4 setObject:v250 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v251) = 1056293519;
      v252 = [MEMORY[0x277CCABB0] numberWithFloat:v251];
      [v4 setObject:v252 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v253) = 1064178811;
      v254 = [MEMORY[0x277CCABB0] numberWithFloat:v253];
      [v4 setObject:v254 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v255) = 0.5;
      v256 = [MEMORY[0x277CCABB0] numberWithFloat:v255];
      [v4 setObject:v256 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v257) = 1.0;
      v258 = [MEMORY[0x277CCABB0] numberWithFloat:v257];
      [v4 setObject:v258 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v259) = 1056293519;
      v260 = [MEMORY[0x277CCABB0] numberWithFloat:v259];
      [v4 setObject:v260 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v261) = 1063507722;
      v262 = [MEMORY[0x277CCABB0] numberWithFloat:v261];
      [v4 setObject:v262 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v263) = 0.5;
      v264 = [MEMORY[0x277CCABB0] numberWithFloat:v263];
      [v4 setObject:v264 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v265) = 1.0;
      v266 = [MEMORY[0x277CCABB0] numberWithFloat:v265];
      [v4 setObject:v266 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v267) = 1056293519;
      v268 = [MEMORY[0x277CCABB0] numberWithFloat:v267];
      [v4 setObject:v268 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v269) = 1064178811;
      v270 = [MEMORY[0x277CCABB0] numberWithFloat:v269];
      [v4 setObject:v270 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v271) = 0.5;
      v272 = [MEMORY[0x277CCABB0] numberWithFloat:v271];
      [v4 setObject:v272 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v273) = 1.0;
      v274 = [MEMORY[0x277CCABB0] numberWithFloat:v273];
      [v4 setObject:v274 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v275) = 1056629064;
      v276 = [MEMORY[0x277CCABB0] numberWithFloat:v275];
      [v4 setObject:v276 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v277) = 1064514355;
      v278 = [MEMORY[0x277CCABB0] numberWithFloat:v277];
      [v4 setObject:v278 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v279) = 0.5;
      v280 = [MEMORY[0x277CCABB0] numberWithFloat:v279];
      [v4 setObject:v280 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v281) = 1.0;
      v282 = [MEMORY[0x277CCABB0] numberWithFloat:v281];
      [v4 setObject:v282 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v283) = 1055286886;
      v284 = [MEMORY[0x277CCABB0] numberWithFloat:v283];
      [v4 setObject:v284 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v285) = 1063507722;
      v286 = [MEMORY[0x277CCABB0] numberWithFloat:v285];
      [v4 setObject:v286 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v287) = 0.5;
      v288 = [MEMORY[0x277CCABB0] numberWithFloat:v287];
      [v4 setObject:v288 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v289) = 1.0;
      v290 = [MEMORY[0x277CCABB0] numberWithFloat:v289];
      [v4 setObject:v290 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v291) = 1054951342;
      v292 = [MEMORY[0x277CCABB0] numberWithFloat:v291];
      [v4 setObject:v292 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v293) = 1062501089;
      v294 = [MEMORY[0x277CCABB0] numberWithFloat:v293];
      [v4 setObject:v294 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v295) = 0.5;
      v296 = [MEMORY[0x277CCABB0] numberWithFloat:v295];
      [v4 setObject:v296 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v297) = 1.0;
      v298 = [MEMORY[0x277CCABB0] numberWithFloat:v297];
      [v4 setObject:v298 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v299) = 1056293519;
      v300 = [MEMORY[0x277CCABB0] numberWithFloat:v299];
      [v4 setObject:v300 forKeyedSubscript:@"DarkBiasValue-8"];

      LODWORD(v301) = 1063507722;
      v302 = [MEMORY[0x277CCABB0] numberWithFloat:v301];
      [v4 setObject:v302 forKeyedSubscript:@"DarkMatrixValue-8"];

      LODWORD(v303) = 0.5;
      v304 = [MEMORY[0x277CCABB0] numberWithFloat:v303];
      [v4 setObject:v304 forKeyedSubscript:@"LightBiasValue-8"];

      LODWORD(v305) = 1.0;
      v306 = [MEMORY[0x277CCABB0] numberWithFloat:v305];
      [v4 setObject:v306 forKeyedSubscript:@"LightMatrixValue-8"];

      LODWORD(v307) = 1055286886;
      v308 = [MEMORY[0x277CCABB0] numberWithFloat:v307];
      [v4 setObject:v308 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v309) = 1060655596;
      v310 = [MEMORY[0x277CCABB0] numberWithFloat:v309];
      [v4 setObject:v310 forKeyedSubscript:@"DarkMatrixValue-9"];

      LODWORD(v311) = 0.5;
      v312 = [MEMORY[0x277CCABB0] numberWithFloat:v311];
      [v4 setObject:v312 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v313) = 1.0;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v313];
      v126 = @"LightMatrixValue-9";
      break;
    default:
      v125 = [MEMORY[0x277CCABB0] numberWithInt:108];
      v126 = @"BudHeight";
      break;
  }

  [v4 setObject:v125 forKeyedSubscript:v126];

  return v4;
}

- (void)setupViews
{
  v306 = *MEMORY[0x277D85DE8];
  v3 = [(HPSBatteryStatusView *)self subviews];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_12];

  v4 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  v5 = [v4 productId];

  v6 = [(HPSBatteryStatusView *)self getAssetsDictionary:v5];
  if (!v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Battery Status: setupViews returning because assetsDict is NULL", buf, 2u);
    }

    goto LABEL_104;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(HPSBatteryStatusView *)self heightAnchor];
  v9 = [v8 constraintEqualToConstant:234.0];
  [v7 addObject:v9];

  v301 = 0;
  v10 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  [v10 getDeviceColor:&v301];

  self->deviceColor = [(HPSBatteryStatusView *)self bestDeviceColor:v301 productID:v5];
  v11 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    deviceColor = self->deviceColor;
    untethered = self->untethered;
    *buf = 67109632;
    *v303 = deviceColor;
    *&v303[4] = 1024;
    *&v303[6] = untethered;
    v304 = 1024;
    v305 = v5;
    _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Battery Status: device color: %u untethered: %d pid: %d", buf, 0x14u);
  }

  v14 = self->untethered;
  v15 = [(HPSBatteryStatusView *)self isProductOfDifferentColors];
  if (!v14)
  {
    if (v15)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", self->productIdString, self->deviceColor];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:self->productIdString];
    }

    v21 = MEMORY[0x277D755B8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v21 imageNamed:v17 inBundle:v22 compatibleWithTraitCollection:0];

    if (!v23)
    {
      v24 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v303 = v17;
        _os_log_impl(&dword_251143000, v24, OS_LOG_TYPE_DEFAULT, "Battery Status: deviceImageFileName not found %@", buf, 0xCu);
      }

      if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->productIdString, @"Default"];
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:self->productIdString];
      }

      v36 = v25;

      v37 = MEMORY[0x277D755B8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v37 imageNamed:v36 inBundle:v38 compatibleWithTraitCollection:0];

      if (!v23)
      {
        v206 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v303 = v36;
          _os_log_impl(&dword_251143000, v206, OS_LOG_TYPE_DEFAULT, "Battery Status: default deviceImageFileName not found %@ returning", buf, 0xCu);
        }

        goto LABEL_104;
      }

      v17 = v36;
    }

    v39 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v23];
    deviceImageView = self->deviceImageView;
    self->deviceImageView = v39;

    [(HPSBatteryStatusView *)self applyFilters:v6 imageView:self->deviceImageView];
    [(UIImageView *)self->deviceImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [(UIImageView *)self->deviceImageView heightAnchor];
    v42 = [v41 constraintEqualToConstant:108.0];
    [v7 addObject:v42];

    [(UIImageView *)self->deviceImageView setContentMode:1];
    [(HPSBatteryStatusView *)self addSubview:self->deviceImageView];
    LOBYTE(v41) = [(HPSBatteryStatusView *)self _batteryLevelCombined];
    v43 = [HPSBatteryGroupView alloc];
    [(HPSBatteryStatusView *)self size];
    v45 = v44;
    v46 = self->status.battIsChargingSingle != 0;
    v47 = [(HPSBatteryStatusView *)self batteryIconViewInstance];
    v48 = [(HPSBatteryGroupView *)v43 initWithFrame:v41 batteryPercent:v46 isCharging:0 glyph:0 batteryLevelDescription:v47 batteryIconView:0.0, 0.0, v45, 30.0];
    [(HPSBatteryStatusView *)self setDeviceBatteryLevelSingleView:v48];

    v49 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

    v50 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    [v50 setSemanticContentAttribute:3];

    v51 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    [(HPSBatteryStatusView *)self addSubview:v51];

    v52 = [(UIImageView *)self->deviceImageView centerYAnchor];
    v53 = [(HPSBatteryStatusView *)self bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-136.0];
    [v7 addObject:v54];

    v55 = [(UIImageView *)self->deviceImageView centerXAnchor];
    v56 = [(HPSBatteryStatusView *)self centerXAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    [v7 addObject:v57];

    v58 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    v59 = [v58 centerXAnchor];
    v60 = [(UIImageView *)self->deviceImageView centerXAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    [v7 addObject:v61];

    v62 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    v63 = [v62 bottomAnchor];
    v64 = [(HPSBatteryStatusView *)self bottomAnchor];
    [v63 constraintEqualToAnchor:v64 constant:-12.0];
    v66 = v65 = v23;
    [v7 addObject:v66];
LABEL_103:

    [MEMORY[0x277CCAAD0] activateConstraints:v7];
    goto LABEL_104;
  }

  v297 = v5;
  productIdString = self->productIdString;
  if (v15)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%d", productIdString, @"Left", self->deviceColor];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", productIdString, @"Left", v286];
  }
  v18 = ;
  v298 = v7;
  v19 = [(HPSBatteryStatusView *)self isProductOfDifferentColors];
  v20 = self->productIdString;
  if (v19)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%d", v20, @"Right", self->deviceColor];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v20, @"Right", v287];
  }
  v26 = ;
  v27 = MEMORY[0x277D755B8];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v27 imageNamed:v18 inBundle:v28 compatibleWithTraitCollection:0];

  v30 = MEMORY[0x277D755B8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v30 imageNamed:v26 inBundle:v31 compatibleWithTraitCollection:0];

  if (v29)
  {
    v33 = v29;
  }

  else
  {
    v34 = v32;
    v35 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v303 = v18;
      _os_log_impl(&dword_251143000, v35, OS_LOG_TYPE_DEFAULT, "Battery Status: leftBudImageFileName not found %@", buf, 0xCu);
    }

    if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", self->productIdString, @"Left", @"Default"];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->productIdString, @"Left", v288];
    }
    v67 = ;

    v68 = MEMORY[0x277D755B8];
    v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v68 imageNamed:v67 inBundle:v69 compatibleWithTraitCollection:0];

    if (!v33)
    {
      v207 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v303 = v67;
        _os_log_impl(&dword_251143000, v207, OS_LOG_TYPE_DEFAULT, "Battery Status: Default leftBudImageFileName not found %@ returning", buf, 0xCu);
      }

      goto LABEL_114;
    }

    v18 = v67;
    v32 = v34;
  }

  v295 = v33;
  v296 = v18;
  if (v32)
  {
    goto LABEL_42;
  }

  v70 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v303 = v26;
    _os_log_impl(&dword_251143000, v70, OS_LOG_TYPE_DEFAULT, "Battery Status: rightBudImageFileName not found %@", buf, 0xCu);
  }

  if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", self->productIdString, @"Right", @"Default"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->productIdString, @"Right", v288];
  }
  v71 = ;

  v72 = MEMORY[0x277D755B8];
  v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v74 = [v72 imageNamed:v71 inBundle:v73 compatibleWithTraitCollection:0];

  if (!v74)
  {
    v207 = sharedBluetoothSettingsLogComponent();
    v34 = v295;
    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v303 = v71;
      _os_log_impl(&dword_251143000, v207, OS_LOG_TYPE_DEFAULT, "Battery Status: Default rightBudImageFileName not found %@ returning", buf, 0xCu);
    }

    v26 = v71;
    v67 = v18;
LABEL_114:

    v7 = v298;
    goto LABEL_104;
  }

  v26 = v71;
  v33 = v295;
  v32 = v74;
LABEL_42:
  v75 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v33];
  leftImageView = self->leftImageView;
  self->leftImageView = v75;

  v292 = v32;
  v77 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v32];
  rightImageView = self->rightImageView;
  self->rightImageView = v77;

  [(UIImageView *)self->leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->rightImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSBatteryStatusView *)self applyFilters:v6 imageView:self->leftImageView];
  [(HPSBatteryStatusView *)self applyFilters:v6 imageView:self->rightImageView];
  v79 = [v6 objectForKey:@"BudHeight"];
  [v79 floatValue];
  v81 = v80;

  [v33 size];
  v83 = v82;
  v84 = (v81 / v83);
  [v33 size];
  v86 = v85 * v84;
  v87 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v87 setSemanticContentAttribute:3];
  if (_os_feature_enabled_impl())
  {
    v88 = [(HPSBatteryStatusView *)self combinedBatteryValue:self->currentDevice];
    v89 = v88 != 0;

    v90 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = @"False";
      if (v88)
      {
        v91 = @"TRUE";
      }

      *buf = 138412290;
      *v303 = v91;
      v92 = "Battery Status: Showing AABattery combined %@";
LABEL_54:
      _os_log_impl(&dword_251143000, v90, OS_LOG_TYPE_DEFAULT, v92, buf, 0xCu);
    }
  }

  else
  {
    if (self->status.battLevelLeft - self->status.battLevelRight >= 0)
    {
      v93 = self->status.battLevelLeft - self->status.battLevelRight;
    }

    else
    {
      v93 = self->status.battLevelRight - self->status.battLevelLeft;
    }

    v89 = v93 < 0xB;
    v90 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v94 = @"False";
      if (v93 < 0xB)
      {
        v94 = @"TRUE";
      }

      *buf = 138412290;
      *v303 = v94;
      v92 = "Battery Status: Showing Legacy combined %@";
      goto LABEL_54;
    }
  }

  v95 = (v86 * 2.0) + 0.0;

  v299 = v87;
  v293 = v26;
  v290 = v89;
  if (!self->untethered || v89)
  {
    v161 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
    [v161 floatValue];
    v163 = v162;

    v164 = [v6 objectForKey:@"UnifiedSpacingBudsCase"];
    [v164 floatValue];
    v166 = v165;

    v167 = [v87 heightAnchor];
    [v167 constraintEqualToConstant:v81];
    v169 = v168 = v87;
    [v298 addObject:v169];

    v170 = [v168 widthAnchor];
    v171 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
    [v171 floatValue];
    v173 = [v170 constraintEqualToConstant:(v172 + (v86 * 2.0))];
    [v298 addObject:v173];

    v174 = 1;
    [(UIImageView *)self->leftImageView setContentMode:1];
    v175 = [(UIImageView *)self->leftImageView heightAnchor];
    v176 = [v175 constraintEqualToConstant:v81];
    [v298 addObject:v176];

    [(UIImageView *)self->rightImageView setContentMode:1];
    v177 = [(UIImageView *)self->rightImageView heightAnchor];
    v178 = [v177 constraintEqualToConstant:v81];
    [v298 addObject:v178];

    [v168 addSubview:self->leftImageView];
    [v168 addSubview:self->rightImageView];
    v179 = [(HPSBatteryStatusView *)self _batteryLevelCombined];
    v180 = [HPSBatteryGroupView alloc];
    [(HPSBatteryStatusView *)self size];
    v182 = v181;
    if (!self->status.battIsChargingLeft)
    {
      v174 = self->status.battIsChargingRight != 0;
    }

    v183 = v95 + v163;
    v184 = [(HPSBatteryStatusView *)self batteryIconViewInstance];
    v185 = [(HPSBatteryGroupView *)v180 initWithFrame:v179 batteryPercent:v174 isCharging:0 glyph:0 batteryLevelDescription:v184 batteryIconView:0.0, 0.0, v182, 30.0];
    [(HPSBatteryStatusView *)self setDeviceBatteryLevelSingleView:v185];

    v186 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    [v186 setSemanticContentAttribute:3];

    if (v179)
    {
      v187 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
      [v187 setTranslatesAutoresizingMaskIntoConstraints:0];

      v188 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
      [(HPSBatteryStatusView *)self addSubview:v188];
    }

    v153 = v183 + v166;
    v189 = [(UIImageView *)self->leftImageView leadingAnchor];
    v190 = [v299 leadingAnchor];
    v191 = [v189 constraintEqualToAnchor:v190];
    v7 = v298;
    [v298 addObject:v191];

    v192 = [(UIImageView *)self->rightImageView centerXAnchor];
    v193 = [(UIImageView *)self->leftImageView centerXAnchor];
    v194 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
    [v194 floatValue];
    v196 = [v192 constraintEqualToAnchor:v193 constant:(v195 + v86)];
    [v298 addObject:v196];

    if (!v179)
    {
      v159 = v18;
      v160 = v297;
      v144 = 0x277CCA000;
      goto LABEL_79;
    }

    v197 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    v198 = [v197 centerXAnchor];
    v199 = [(UIImageView *)self->leftImageView centerXAnchor];
    v200 = [v6 objectForKey:@"UnifiedSpacingBetweenBuds"];
    [v200 floatValue];
    v202 = [v198 constraintEqualToAnchor:v199 constant:((v201 + v86) * 0.5)];
    [v298 addObject:v202];

    v158 = [(HPSBatteryStatusView *)self deviceBatteryLevelSingleView];
    v159 = v18;
    v160 = v297;
    v144 = 0x277CCA000;
  }

  else
  {
    v96 = [v6 objectForKey:@"SeparateSpacingBetweenBuds"];
    [v96 floatValue];
    v98 = v97;

    v99 = [v6 objectForKey:@"SeparateSpacingBudsCase"];
    [v99 floatValue];
    v101 = v100;

    v102 = [v87 heightAnchor];
    v103 = [v102 constraintEqualToConstant:v81];
    v7 = v298;
    [v298 addObject:v103];

    v104 = [v299 widthAnchor];
    v105 = [v6 objectForKey:@"SeparateSpacingBetweenBuds"];
    [v105 floatValue];
    v107 = [v104 constraintEqualToConstant:(v106 + (v86 * 2.0))];
    [v298 addObject:v107];

    [(UIImageView *)self->leftImageView setContentMode:1];
    v108 = [(UIImageView *)self->leftImageView heightAnchor];
    v109 = [v108 constraintEqualToConstant:v81];
    [v298 addObject:v109];

    [(UIImageView *)self->rightImageView setContentMode:1];
    v110 = [(UIImageView *)self->rightImageView heightAnchor];
    v111 = [v110 constraintEqualToConstant:v81];
    [v298 addObject:v111];

    [v299 addSubview:self->leftImageView];
    [v299 addSubview:self->rightImageView];
    battLevelLeft = self->status.battLevelLeft;
    battLevelRight = self->status.battLevelRight;
    v113 = [HPSBatteryGroupView alloc];
    [(HPSBatteryStatusView *)self size];
    v115 = v114;
    v116 = self->status.battIsChargingLeft != 0;
    v117 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v118 = [v117 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_LEFT" value:&stru_286339F58 table:@"DeviceConfig"];
    v119 = [(HPSBatteryStatusView *)self batteryIconViewInstance];
    v120 = [(HPSBatteryGroupView *)v113 initWithFrame:battLevelLeft batteryPercent:v116 isCharging:0 glyph:v118 batteryLevelDescription:v119 batteryIconView:0.0, 0.0, v115, 30.0];
    [(HPSBatteryStatusView *)self setDeviceBatteryLevelLeftView:v120];

    v121 = [(HPSBatteryStatusView *)self deviceBatteryLevelLeftView];
    [v121 setTranslatesAutoresizingMaskIntoConstraints:0];

    v122 = [(HPSBatteryStatusView *)self deviceBatteryLevelLeftView];
    [v122 setSemanticContentAttribute:3];

    v123 = [HPSBatteryGroupView alloc];
    [(HPSBatteryStatusView *)self size];
    v125 = v124;
    v126 = self->status.battIsChargingRight != 0;
    v127 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v128 = [v127 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_RIGHT" value:&stru_286339F58 table:@"DeviceConfig"];
    v129 = [(HPSBatteryStatusView *)self batteryIconViewInstance];
    v130 = [(HPSBatteryGroupView *)v123 initWithFrame:battLevelRight batteryPercent:v126 isCharging:0 glyph:v128 batteryLevelDescription:v129 batteryIconView:0.0, 0.0, v125, 30.0];
    [(HPSBatteryStatusView *)self setDeviceBatteryLevelRightView:v130];

    v131 = [(HPSBatteryStatusView *)self deviceBatteryLevelRightView];
    [v131 setTranslatesAutoresizingMaskIntoConstraints:0];

    v132 = [(HPSBatteryStatusView *)self deviceBatteryLevelRightView];
    [v132 setSemanticContentAttribute:3];

    if (battLevelLeft)
    {
      v133 = [(HPSBatteryStatusView *)self deviceBatteryLevelLeftView];
      [v299 addSubview:v133];
    }

    if (battLevelRight)
    {
      v134 = [(HPSBatteryStatusView *)self deviceBatteryLevelRightView];
      [v299 addSubview:v134];
    }

    v135 = v95 + v98;
    v136 = [(UIImageView *)self->leftImageView leadingAnchor];
    v137 = [v299 leadingAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];
    [v298 addObject:v138];

    v139 = [(UIImageView *)self->rightImageView centerXAnchor];
    v140 = [(UIImageView *)self->leftImageView centerXAnchor];
    v141 = [v6 objectForKey:@"SeparateSpacingBetweenBuds"];
    [v141 floatValue];
    v143 = [v139 constraintEqualToAnchor:v140 constant:(v142 + v86)];
    [v298 addObject:v143];

    v144 = 0x277CCA000uLL;
    if (battLevelLeft)
    {
      v145 = [(HPSBatteryStatusView *)self deviceBatteryLevelLeftView];
      v146 = [v145 centerXAnchor];
      v147 = [(UIImageView *)self->leftImageView centerXAnchor];
      v148 = [v146 constraintEqualToAnchor:v147];
      [v298 addObject:v148];

      v149 = [(HPSBatteryStatusView *)self deviceBatteryLevelLeftView];
      v150 = [v149 bottomAnchor];
      v151 = [(HPSBatteryStatusView *)self bottomAnchor];
      v152 = [v150 constraintEqualToAnchor:v151 constant:-12.0];
      [v298 addObject:v152];
    }

    v153 = v135 + v101;
    if (!battLevelRight)
    {
      v159 = v18;
      v160 = v297;
      goto LABEL_79;
    }

    v154 = [(HPSBatteryStatusView *)self deviceBatteryLevelRightView];
    v155 = [v154 centerXAnchor];
    v156 = [(UIImageView *)self->rightImageView centerXAnchor];
    v157 = [v155 constraintEqualToAnchor:v156];
    [v298 addObject:v157];

    v158 = [(HPSBatteryStatusView *)self deviceBatteryLevelRightView];
    v159 = v18;
    v160 = v297;
  }

  v203 = [v158 bottomAnchor];
  v204 = [(HPSBatteryStatusView *)self bottomAnchor];
  v205 = [v203 constraintEqualToAnchor:v204 constant:-12.0];
  [v7 addObject:v205];

LABEL_79:
  if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@-%d", self->productIdString, @"Case", self->deviceColor];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->productIdString, @"Case", v288];
  }
  v208 = ;
  v209 = MEMORY[0x277D755B8];
  v210 = [*(v144 + 2264) bundleForClass:objc_opt_class()];
  v211 = [v209 imageNamed:v208 inBundle:v210 compatibleWithTraitCollection:0];

  if (v211)
  {
    v212 = v208;
LABEL_84:
    v213 = 0x277D75000uLL;
LABEL_85:
    v214 = [objc_alloc(*(v213 + 1512)) initWithImage:v211];
    caseImageView = self->caseImageView;
    self->caseImageView = v214;

    caseEngravingView = self->caseEngravingView;
    if (caseEngravingView)
    {
      objc_storeStrong(&self->caseImageView, caseEngravingView);
    }

    else
    {
      [(HPSBatteryStatusView *)self applyFilters:v6 imageView:self->caseImageView];
    }

    [(UIImageView *)self->caseImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v218 = [v6 objectForKey:@"CaseHeight"];
    [v218 floatValue];
    v220 = v219;

    [v211 size];
    v222 = v221;
    [v211 size];
    v224 = v223;
    [(UIImageView *)self->caseImageView setContentMode:1];
    v225 = [(UIImageView *)self->caseImageView heightAnchor];
    v226 = [v225 constraintEqualToConstant:v220];
    [v7 addObject:v226];

    v294 = v211;
    if (v290 || !self->untethered || ([(HPSBatteryStatusView *)self getDeviceCaseIcon:v160], v227 = objc_claimAutoreleasedReturnValue(), v227, !v227))
    {
      v230 = 0;
    }

    else
    {
      v228 = objc_alloc(*(v213 + 1512));
      v229 = [(HPSBatteryStatusView *)self getDeviceCaseIcon:v160];
      v230 = [v228 initWithImage:v229];
    }

    v300 = v212;
    v231 = [HPSBatteryGroupView alloc];
    [(HPSBatteryStatusView *)self size];
    v233 = v232;
    battLevelCase = self->status.battLevelCase;
    v235 = self->status.battIsChargingCase != 0;
    v236 = [(HPSBatteryStatusView *)self batteryIconViewInstance];
    v237 = [(HPSBatteryGroupView *)v231 initWithFrame:battLevelCase batteryPercent:v235 isCharging:v230 glyph:0 batteryLevelDescription:v236 batteryIconView:0.0, 0.0, v233, 30.0];
    [(HPSBatteryStatusView *)self setDeviceBatteryLevelCaseView:v237];

    v238 = [(HPSBatteryStatusView *)self deviceBatteryLevelCaseView];
    [v238 setTranslatesAutoresizingMaskIntoConstraints:0];

    v239 = [(HPSBatteryStatusView *)self deviceBatteryLevelCaseView];
    [v239 setSemanticContentAttribute:3];

    v240 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v240 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v240 setSemanticContentAttribute:3];
    v241 = [v240 heightAnchor];
    v242 = v241;
    if (v220 <= v81)
    {
      v243 = v81;
    }

    else
    {
      v243 = v220;
    }

    v244 = [v241 constraintEqualToConstant:v243];
    [v7 addObject:v244];

    if (v297 == 8230)
    {
      v245 = [v240 centerXAnchor];
      v246 = v299;
      v247 = [v299 centerXAnchor];
      v248 = [v245 constraintEqualToAnchor:v247];
      [v7 addObject:v248];
    }

    else
    {
      v249 = v222;
      v250 = v153 + (v220 / v249) * v224;
      v245 = [v240 widthAnchor];
      v247 = [v245 constraintEqualToConstant:v250];
      [v7 addObject:v247];
      v246 = v299;
    }

    [v240 addSubview:v246];
    [v240 addSubview:self->caseImageView];
    [(HPSBatteryStatusView *)self addSubview:v240];
    v251 = [(HPSBatteryStatusView *)self deviceBatteryLevelCaseView];
    [(HPSBatteryStatusView *)self addSubview:v251];

    v252 = [v240 centerYAnchor];
    v253 = [(HPSBatteryStatusView *)self bottomAnchor];
    v254 = [v252 constraintEqualToAnchor:v253 constant:-136.0];
    [v7 addObject:v254];

    v255 = [v246 leadingAnchor];
    v256 = [v240 leadingAnchor];
    v257 = [v255 constraintEqualToAnchor:v256];
    [v7 addObject:v257];

    v258 = [v246 centerXAnchor];
    v259 = [v240 centerXAnchor];
    v260 = [v258 constraintEqualToAnchor:v259];
    [v7 addObject:v260];

    v261 = [v246 centerYAnchor];
    v262 = [v240 centerYAnchor];
    v263 = [v261 constraintEqualToAnchor:v262];
    [v7 addObject:v263];

    v264 = [v240 centerXAnchor];
    v265 = [(HPSBatteryStatusView *)self centerXAnchor];
    v266 = [v264 constraintEqualToAnchor:v265];
    [v7 addObject:v266];

    v267 = [v240 centerYAnchor];
    v268 = [(HPSBatteryStatusView *)self centerYAnchor];
    v269 = [v267 constraintEqualToAnchor:v268];
    [v7 addObject:v269];

    v270 = [(UIImageView *)self->caseImageView trailingAnchor];
    v271 = [v240 trailingAnchor];
    v272 = [v270 constraintEqualToAnchor:v271];
    [v7 addObject:v272];

    v273 = [(HPSBatteryStatusView *)self deviceBatteryLevelCaseView];
    v274 = [v273 centerXAnchor];
    v275 = [(UIImageView *)self->caseImageView centerXAnchor];
    v276 = [v274 constraintEqualToAnchor:v275];
    [v7 addObject:v276];

    v277 = [(HPSBatteryStatusView *)self deviceBatteryLevelCaseView];
    v278 = [v277 bottomAnchor];
    v279 = [(HPSBatteryStatusView *)self bottomAnchor];
    v280 = [v278 constraintEqualToAnchor:v279 constant:-12.0];
    [v7 addObject:v280];

    v62 = v295;
    v17 = v296;
    v63 = v292;
    v65 = v293;
    v64 = v246;
    v66 = v300;
    goto LABEL_103;
  }

  v217 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v303 = v208;
    _os_log_impl(&dword_251143000, v217, OS_LOG_TYPE_DEFAULT, "Battery Status: caseImageFileName not found %@", buf, 0xCu);
  }

  if ([(HPSBatteryStatusView *)self isProductOfDifferentColors])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@-%@", self->productIdString, @"Case", @"Default"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->productIdString, @"Case", v289];
  }
  v282 = ;

  v283 = MEMORY[0x277D755B8];
  v284 = [*(v144 + 2264) bundleForClass:objc_opt_class()];
  v211 = [v283 imageNamed:v282 inBundle:v284 compatibleWithTraitCollection:0];

  v212 = v282;
  if (v211)
  {
    goto LABEL_84;
  }

  v213 = 0x277D75000;
  if (v160 == 8230)
  {
    goto LABEL_85;
  }

  v285 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v303 = v282;
    _os_log_impl(&dword_251143000, v285, OS_LOG_TYPE_DEFAULT, "Battery Status: Default caseImageFileName not found %@ returning", buf, 0xCu);
  }

LABEL_104:
  v281 = *MEMORY[0x277D85DE8];
}

- (BOOL)isProductOfDifferentColors
{
  v2 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  v3 = [v2 productId];

  return ((v3 - 8195) < 0x2D) & (0x100C1498E7CDuLL >> (v3 - 3));
}

- (unsigned)defaultFiltersID
{
  v2 = [(BluetoothDeviceProtocol *)self->currentDevice classicDevice];
  v3 = [v2 productId];

  return ((v3 - 8204) & 0xFFFFFFFB) == 0;
}

- (unsigned)bestDeviceColor:(unsigned int)a3 productID:(unsigned int)a4
{
  v4 = a4 - 10;
  if (a4 - 8202 <= 0x25)
  {
    if (((1 << v4) & 0x2000000182) != 0)
    {
      v5 = a3 & 0xF;
      if ((~a3 & 0xF) == 0)
      {
        v5 = 0;
      }

      if (a3 >> 4 == 15)
      {
        LOBYTE(a3) = v5;
      }

      else
      {
        LOBYTE(a3) = a3 >> 4;
      }
    }

    else if (((1 << v4) & 0x200001) != 0)
    {
      LOBYTE(a3) = a3 & 0x1F;
    }
  }

  return a3;
}

- (unsigned)_batteryLevelCombined
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->untethered)
  {
    v2 = (self->status.battLevelRight + self->status.battLevelLeft) >> 1;
  }

  else
  {
    LOWORD(v2) = self->status.battLevelSingle;
  }

  v3 = [(HPSBatteryStatusView *)self combinedBatteryValue:self->currentDevice];
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [v3 intValue];
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Battery Status: Showing L + R %d", v8, 8u);
    }

    LOWORD(v2) = [v3 intValue];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSBatteryStatusView *)v5 _batteryLevelCombined];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)batteryIconViewInstance
{
  v2 = objc_alloc_init(HPSBatteryIconView);

  return v2;
}

- (id)combinedBatteryValue:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2511D3A38(v4);

  return v6;
}

@end