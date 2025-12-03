@interface _CSDoubleBatteryChargingView
- (_CSDoubleBatteryChargingView)initWithFrame:(CGRect)frame;
- (double)_batteryTopPadding;
- (double)_chargingBoltTopOffset;
- (double)_deviceNameBaselineOffset;
- (double)_spaceBetweenBatteryImages;
- (id)_chargePercentFont;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler;
- (void)setBatteryVisible:(BOOL)visible;
- (void)setLegibilitySettings:(id)settings;
- (void)setPrimaryBatteryText:(id)text forBattery:(id)battery;
- (void)setSecondaryBatteryText:(id)text forBattery:(id)battery;
@end

@implementation _CSDoubleBatteryChargingView

- (_CSDoubleBatteryChargingView)initWithFrame:(CGRect)frame
{
  v58.receiver = self;
  v58.super_class = _CSDoubleBatteryChargingView;
  v3 = [(CSBatteryChargingView *)&v58 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v56 = +[CSBatteryChargingView maskImageNameForInternalChargingBattery];
    v55 = +[CSBatteryChargingView maskImageNameForExternalChargingBattery];
    v4 = [MEMORY[0x277D755B8] imageNamed:v56 inBundle:v57];
    v5 = [MEMORY[0x277D755B8] imageNamed:v55 inBundle:v57];
    [v4 size];
    v7 = v6;
    v9 = v8;
    [v5 size];
    v11 = v10;
    v13 = v12;
    v14 = [CSBatteryFillView alloc];
    v15 = -[CSBatteryFillView initWithFrame:isInternalBattery:lowBatteryLevel:](v14, "initWithFrame:isInternalBattery:lowBatteryLevel:", 1, [MEMORY[0x277D75A78] lowBatteryLevel], 0.0, 0.0, v7, v9);
    internalBatteryFillView = v3->_internalBatteryFillView;
    v3->_internalBatteryFillView = v15;

    v17 = v3->_internalBatteryFillView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CSBatteryFillView *)v17 setBackgroundColor:clearColor];

    v19 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2020];
    [v19 setRenderingHint:1];
    [v19 setGrayscaleTintMaskImage:v4];
    [v19 setColorTintMaskImage:v4];
    [v19 setFilterMaskImage:v4];
    v20 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:v19 settings:{0.0, 0.0, v7, v9}];
    internalBatteryBlurView = v3->_internalBatteryBlurView;
    v3->_internalBatteryBlurView = v20;

    v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v4];
    [v22 setFrame:{0.0, 0.0, v7, v9}];
    [(CSBatteryFillView *)v3->_internalBatteryFillView setMaskView:v22];
    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v7, v9}];
    internalBatteryContainerView = v3->_internalBatteryContainerView;
    v3->_internalBatteryContainerView = v23;

    v25 = v3->_internalBatteryContainerView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v25 setBackgroundColor:clearColor2];

    [(UIView *)v3->_internalBatteryContainerView setAutoresizingMask:18];
    [(UIView *)v3->_internalBatteryContainerView setClipsToBounds:1];
    [(UIView *)v3->_internalBatteryContainerView addSubview:v3->_internalBatteryBlurView];
    [(UIView *)v3->_internalBatteryContainerView addSubview:v3->_internalBatteryFillView];
    inputSettings = [(_UIBackdropView *)v3->_internalBatteryBlurView inputSettings];
    [inputSettings setGrayscaleTintMaskImage:v4];

    inputSettings2 = [(_UIBackdropView *)v3->_internalBatteryBlurView inputSettings];
    [inputSettings2 setColorTintMaskImage:v4];

    inputSettings3 = [(_UIBackdropView *)v3->_internalBatteryBlurView inputSettings];
    [inputSettings3 setFilterMaskImage:v4];

    v30 = [[CSBatteryFillView alloc] initWithFrame:0 isInternalBattery:20 lowBatteryLevel:0.0, 0.0, v11, v13];
    externalBatteryFillView = v3->_externalBatteryFillView;
    v3->_externalBatteryFillView = v30;

    v32 = v3->_externalBatteryFillView;
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(CSBatteryFillView *)v32 setBackgroundColor:clearColor3];

    v34 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2020];
    [v34 setRenderingHint:1];
    [v34 setGrayscaleTintMaskImage:v5];
    [v34 setColorTintMaskImage:v5];
    v54 = v5;
    [v34 setFilterMaskImage:v5];
    v35 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:v34 settings:{0.0, 0.0, v11, v13}];
    externalBatteryBlurView = v3->_externalBatteryBlurView;
    v3->_externalBatteryBlurView = v35;

    v37 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    [v37 setFrame:{0.0, 0.0, v11, v13}];
    [(CSBatteryFillView *)v3->_externalBatteryFillView setMaskView:v37];
    v38 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v11, v13}];
    externalBatteryContainerView = v3->_externalBatteryContainerView;
    v3->_externalBatteryContainerView = v38;

    v40 = v3->_externalBatteryContainerView;
    clearColor4 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v40 setBackgroundColor:clearColor4];

    [(UIView *)v3->_externalBatteryContainerView setAutoresizingMask:18];
    [(UIView *)v3->_externalBatteryContainerView setClipsToBounds:1];
    [(UIView *)v3->_externalBatteryContainerView addSubview:v3->_externalBatteryBlurView];
    [(UIView *)v3->_externalBatteryContainerView addSubview:v3->_externalBatteryFillView];
    v42 = [MEMORY[0x277D755B8] imageNamed:@"LockScreenSmallChargingBolt" inBundle:v57];
    v43 = [v42 imageWithRenderingMode:2];

    v44 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v43];
    internalChargingIndicator = v3->_internalChargingIndicator;
    v3->_internalChargingIndicator = v44;

    v46 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v43];
    externalChargingIndicator = v3->_externalChargingIndicator;
    v3->_externalChargingIndicator = v46;

    [(_CSDoubleBatteryChargingView *)v3 addSubview:v3->_internalChargingIndicator];
    [(_CSDoubleBatteryChargingView *)v3 addSubview:v3->_externalChargingIndicator];
    [(_CSDoubleBatteryChargingView *)v3 _spaceBetweenBatteryImages];
    v49 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v7 + v11 + v48, v9}];
    batteryContainerView = v3->_batteryContainerView;
    v3->_batteryContainerView = v49;

    v51 = v3->_batteryContainerView;
    clearColor5 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v51 setBackgroundColor:clearColor5];

    [(UIView *)v3->_batteryContainerView addSubview:v3->_internalBatteryContainerView];
    [(UIView *)v3->_batteryContainerView addSubview:v3->_externalBatteryContainerView];
    [(_CSDoubleBatteryChargingView *)v3 addSubview:v3->_batteryContainerView];
    [(UIView *)v3->_batteryContainerView setAlpha:0.0];
  }

  return v3;
}

- (void)setBatteryVisible:(BOOL)visible
{
  batteryContainerView = self->_batteryContainerView;
  v5 = 0.0;
  if (visible)
  {
    v5 = 1.0;
  }

  [(UIView *)batteryContainerView setAlpha:v5];

  [(_CSDoubleBatteryChargingView *)self setNeedsLayout];
}

- (void)setLegibilitySettings:(id)settings
{
  v17.receiver = self;
  v17.super_class = _CSDoubleBatteryChargingView;
  settingsCopy = settings;
  [(CSBatteryChargingView *)&v17 setLegibilitySettings:settingsCopy];
  internalChargingNameLabel = self->_internalChargingNameLabel;
  v6 = [(CSBatteryChargingView *)self legibilitySettings:v17.receiver];
  [(SBUILegibilityLabel *)internalChargingNameLabel setLegibilitySettings:v6];

  externalChargingNameLabel = self->_externalChargingNameLabel;
  legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
  [(SBUILegibilityLabel *)externalChargingNameLabel setLegibilitySettings:legibilitySettings];

  internalChargePercentLabel = self->_internalChargePercentLabel;
  legibilitySettings2 = [(CSBatteryChargingView *)self legibilitySettings];
  [(SBUILegibilityLabel *)internalChargePercentLabel setLegibilitySettings:legibilitySettings2];

  externalChargePercentLabel = self->_externalChargePercentLabel;
  legibilitySettings3 = [(CSBatteryChargingView *)self legibilitySettings];
  [(SBUILegibilityLabel *)externalChargePercentLabel setLegibilitySettings:legibilitySettings3];

  internalChargingIndicator = self->_internalChargingIndicator;
  primaryColor = [settingsCopy primaryColor];
  [(UIImageView *)internalChargingIndicator setTintColor:primaryColor];

  externalChargingIndicator = self->_externalChargingIndicator;
  primaryColor2 = [settingsCopy primaryColor];

  [(UIImageView *)externalChargingIndicator setTintColor:primaryColor2];
}

- (void)setPrimaryBatteryText:(id)text forBattery:(id)battery
{
  batteryCopy = battery;
  v6 = [(CSBatteryChargingView *)self _updateChargeString:text oldLabel:self->_internalChargePercentLabel];
  internalChargePercentLabel = self->_internalChargePercentLabel;
  self->_internalChargePercentLabel = v6;

  -[CSBatteryFillView setChargePercentage:](self->_internalBatteryFillView, "setChargePercentage:", [batteryCopy percentCharge]);
  if (!self->_internalChargingNameLabel)
  {
    rootSettings = [MEMORY[0x277D65E90] rootSettings];
    legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
    [rootSettings dateStrengthForStyle:{objc_msgSend(legibilitySettings, "style")}];
    v11 = v10;

    v12 = objc_alloc(MEMORY[0x277D67CF8]);
    legibilitySettings2 = [(CSBatteryChargingView *)self legibilitySettings];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    model = [currentDevice model];
    _chargePercentFont = [(_CSDoubleBatteryChargingView *)self _chargePercentFont];
    v17 = [v12 initWithSettings:legibilitySettings2 strength:model string:_chargePercentFont font:v11];
    internalChargingNameLabel = self->_internalChargingNameLabel;
    self->_internalChargingNameLabel = v17;

    [(_CSDoubleBatteryChargingView *)self addSubview:self->_internalChargingNameLabel];
  }

  internalChargingIndicator = self->_internalChargingIndicator;
  isCharging = [batteryCopy isCharging];
  v21 = 0.0;
  if (isCharging)
  {
    v21 = 1.0;
  }

  [(UIImageView *)internalChargingIndicator setAlpha:v21];
  [(_CSDoubleBatteryChargingView *)self setNeedsLayout];
}

- (void)setSecondaryBatteryText:(id)text forBattery:(id)battery
{
  externalChargePercentLabel = self->_externalChargePercentLabel;
  batteryCopy = battery;
  v8 = [(CSBatteryChargingView *)self _updateChargeString:text oldLabel:externalChargePercentLabel];
  v9 = self->_externalChargePercentLabel;
  self->_externalChargePercentLabel = v8;

  -[CSBatteryFillView setChargePercentage:](self->_externalBatteryFillView, "setChargePercentage:", [batteryCopy percentCharge]);
  [(SBUILegibilityLabel *)self->_externalChargingNameLabel removeFromSuperview];
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
  [rootSettings dateStrengthForStyle:{objc_msgSend(legibilitySettings, "style")}];
  v13 = v12;

  v14 = objc_alloc(MEMORY[0x277D67CF8]);
  legibilitySettings2 = [(CSBatteryChargingView *)self legibilitySettings];
  name = [batteryCopy name];
  _chargePercentFont = [(_CSDoubleBatteryChargingView *)self _chargePercentFont];
  v18 = [v14 initWithSettings:legibilitySettings2 strength:name string:_chargePercentFont font:v13];
  externalChargingNameLabel = self->_externalChargingNameLabel;
  self->_externalChargingNameLabel = v18;

  [(_CSDoubleBatteryChargingView *)self addSubview:self->_externalChargingNameLabel];
  externalChargingIndicator = self->_externalChargingIndicator;
  LODWORD(legibilitySettings2) = [batteryCopy isCharging];

  v21 = 0.0;
  if (legibilitySettings2)
  {
    v21 = 1.0;
  }

  [(UIImageView *)externalChargingIndicator setAlpha:v21];

  [(_CSDoubleBatteryChargingView *)self setNeedsLayout];
}

- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)layoutSubviews
{
  v119.receiver = self;
  v119.super_class = _CSDoubleBatteryChargingView;
  [(_CSDoubleBatteryChargingView *)&v119 layoutSubviews];
  [(_CSDoubleBatteryChargingView *)self bounds];
  v4 = v3;
  [(UIView *)self->_batteryContainerView frame];
  v6 = v5;
  v8 = v7;
  v111 = v5;
  v112 = v7;
  v9 = (v4 - v5) * 0.5;
  v110 = floorf(v9);
  [(_CSDoubleBatteryChargingView *)self _batteryTopPadding];
  v109 = v10;
  [(UIView *)self->_batteryContainerView setFrame:v110, v10, v6, v8];
  v11 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v12 = &OBJC_IVAR____CSDoubleBatteryChargingView__internalBatteryContainerView;
  }

  else
  {
    v12 = &OBJC_IVAR____CSDoubleBatteryChargingView__externalBatteryContainerView;
  }

  v13 = *v11;
  v14 = *(&self->super.super.super.super.super.super.isa + *v12);
  if ([v13 userInterfaceLayoutDirection] == 1)
  {
    v15 = &OBJC_IVAR____CSDoubleBatteryChargingView__externalBatteryContainerView;
  }

  else
  {
    v15 = &OBJC_IVAR____CSDoubleBatteryChargingView__internalBatteryContainerView;
  }

  v16 = *(&self->super.super.super.super.super.super.isa + *v15);
  [v14 frame];
  v18 = v17;
  v20 = v19;
  v21 = *MEMORY[0x277CBF348];
  v22 = *(MEMORY[0x277CBF348] + 8);
  [v14 setFrame:{*MEMORY[0x277CBF348], v22}];
  [v16 frame];
  v24 = v23;
  v26 = v25;
  v120.origin.x = v21;
  v120.origin.y = v22;
  v120.size.width = v18;
  v120.size.height = v20;
  MaxX = CGRectGetMaxX(v120);
  [(_CSDoubleBatteryChargingView *)self _spaceBetweenBatteryImages];
  [v16 setFrame:{MaxX + v28, 0.0, v24, v26}];
  _chargePercentFont = [(_CSDoubleBatteryChargingView *)self _chargePercentFont];
  [(UIView *)self->_externalBatteryContainerView frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [(UIView *)self->_internalBatteryContainerView frame];
  [(_CSDoubleBatteryChargingView *)self convertRect:self->_batteryContainerView fromView:?];
  v39 = v38;
  v108 = v38;
  v41 = v40;
  v117 = v42;
  v118 = v40;
  v43 = v42;
  v45 = v44;
  [(_CSDoubleBatteryChargingView *)self convertRect:self->_batteryContainerView fromView:v31, v33, v35, v37];
  v114 = v47;
  v115 = v46;
  rect = v48;
  v50 = v49;
  v116 = v49;
  [(UIImageView *)self->_internalChargingIndicator frame];
  v52 = v51;
  v106 = v53;
  v121.origin.x = v39;
  v121.origin.y = v41;
  v121.size.width = v43;
  v121.size.height = v45;
  MidX = CGRectGetMidX(v121);
  v55 = v52 * 0.5;
  v56 = MidX - floorf(v55);
  v122.origin.x = v110;
  v122.origin.y = v109;
  v122.size.width = v111;
  v122.size.height = v112;
  MaxY = CGRectGetMaxY(v122);
  [(_CSDoubleBatteryChargingView *)self _chargingBoltTopOffset];
  [(UIImageView *)self->_internalChargingIndicator setFrame:v56, MaxY + v58, v52, v106];
  [(UIImageView *)self->_externalChargingIndicator frame];
  v60 = v59;
  v107 = v61;
  v123.origin.y = v114;
  v123.origin.x = v115;
  v123.size.width = rect;
  v123.size.height = v50;
  v62 = CGRectGetMidX(v123);
  v63 = v60 * 0.5;
  v64 = v62 - floorf(v63);
  v124.origin.x = v110;
  v124.origin.y = v109;
  v124.size.width = v111;
  v124.size.height = v112;
  v65 = CGRectGetMaxY(v124);
  [(_CSDoubleBatteryChargingView *)self _chargingBoltTopOffset];
  [(UIImageView *)self->_externalChargingIndicator setFrame:v64, v65 + v66, v60, v107];
  v125.origin.x = v110;
  v125.origin.y = v109;
  v125.size.width = v111;
  v125.size.height = v112;
  v67 = CGRectGetMaxY(v125);
  [(_CSDoubleBatteryChargingView *)self _deviceNameBaselineOffset];
  v69 = v67 + v68;
  [_chargePercentFont descender];
  v71 = v69 - ceil(v70);
  [_chargePercentFont _bodyLeading];
  v73 = round(v71 - v72);
  [(SBUILegibilityLabel *)self->_internalChargingNameLabel sizeToFit];
  [(SBUILegibilityLabel *)self->_internalChargingNameLabel frame];
  v75 = v74;
  v77 = v76;
  v126.origin.x = v108;
  v126.size.width = v117;
  v126.origin.y = v118;
  v126.size.height = v45;
  v78 = CGRectGetMidX(v126);
  v79 = v75 * 0.5;
  [(SBUILegibilityLabel *)self->_internalChargingNameLabel setFrame:v78 - floorf(v79), v73, v75, v77];
  [(SBUILegibilityLabel *)self->_externalChargingNameLabel sizeToFit];
  [(SBUILegibilityLabel *)self->_externalChargingNameLabel frame];
  v81 = v80;
  v83 = v82;
  v127.origin.x = v115;
  v127.origin.y = v114;
  v127.size.width = rect;
  v127.size.height = v116;
  v84 = CGRectGetMidX(v127);
  v85 = v81 * 0.5;
  v86 = v84 - floorf(v85);
  [(SBUILegibilityLabel *)self->_externalChargingNameLabel setFrame:v86, v73, v81, v83];
  v128.origin.x = v86;
  v128.origin.y = v73;
  v128.size.width = v81;
  v128.size.height = v83;
  v87 = CGRectGetMaxY(v128);
  [(_CSDoubleBatteryChargingView *)self _deviceChargeBaselineOffset];
  v89 = v87 + v88;
  [_chargePercentFont descender];
  v91 = v89 - ceil(v90);
  [_chargePercentFont _bodyLeading];
  v93 = round(v91 - v92);
  [(SBUILegibilityLabel *)self->_internalChargePercentLabel sizeToFit];
  [(SBUILegibilityLabel *)self->_internalChargePercentLabel frame];
  v95 = v94;
  v97 = v96;
  v129.origin.x = v108;
  v129.size.width = v117;
  v129.origin.y = v118;
  v129.size.height = v45;
  v98 = CGRectGetMidX(v129);
  v99 = v95 * 0.5;
  [(SBUILegibilityLabel *)self->_internalChargePercentLabel setFrame:v98 - floorf(v99), v93, v95, v97];
  [(SBUILegibilityLabel *)self->_externalChargePercentLabel sizeToFit];
  [(SBUILegibilityLabel *)self->_externalChargePercentLabel frame];
  v101 = v100;
  v103 = v102;
  v130.origin.x = v115;
  v130.origin.y = v114;
  v130.size.width = rect;
  v130.size.height = v116;
  v104 = CGRectGetMidX(v130);
  v105 = v101 * 0.5;
  [(SBUILegibilityLabel *)self->_externalChargePercentLabel setFrame:v104 - floorf(v105), v93, v101, v103];
}

- (double)_spaceBetweenBatteryImages
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  result = 15.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (double)_batteryTopPadding
{
  [(CSBatteryChargingView *)self _batteryCenter];
  v4 = v3;
  [(CSBatteryChargingView *)self _batteryHeight];
  return v4 + v5 * -0.5;
}

- (double)_chargingBoltTopOffset
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  result = 5.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (double)_deviceNameBaselineOffset
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  result = 33.0;
  if (v2)
  {
    return 60.0;
  }

  return result;
}

- (id)_chargePercentFont
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [MEMORY[0x277D02CF0] fontSizeForElementType:2 isLandscapeVariant:0];
    v5 = v4;
    [MEMORY[0x277D02CF0] fontWeightForElementType:2];
    [MEMORY[0x277D74300] systemFontOfSize:v5 weight:v6];
  }

  else
  {
    [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  }
  v7 = ;

  return v7;
}

@end