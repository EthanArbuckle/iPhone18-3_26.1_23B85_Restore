@interface HRElectrocardiogramSessionScreenView
- (HRElectrocardiogramSessionScreenView)initWithLargeDevice:(BOOL)device;
- (void)_setUpUI;
@end

@implementation HRElectrocardiogramSessionScreenView

- (HRElectrocardiogramSessionScreenView)initWithLargeDevice:(BOOL)device
{
  if (device)
  {
    v4 = 181.0;
  }

  else
  {
    v4 = 161.0;
  }

  if (device)
  {
    v5 = 224.0;
  }

  else
  {
    v5 = 197.0;
  }

  v17.receiver = self;
  v17.super_class = HRElectrocardiogramSessionScreenView;
  v6 = [(HRElectrocardiogramSessionScreenView *)&v17 initWithFrame:0.0, 0.0, v4, v5];
  v7 = v6;
  if (v6)
  {
    v6->_isLargeDevice = device;
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    hrui_waveformImage = [MEMORY[0x277D755B8] hrui_waveformImage];
    v10 = [v8 initWithImage:hrui_waveformImage];
    waveformView = v7->_waveformView;
    v7->_waveformView = v10;

    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    countdownValueLabel = v7->_countdownValueLabel;
    v7->_countdownValueLabel = v12;

    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    countdownUnitLabel = v7->_countdownUnitLabel;
    v7->_countdownUnitLabel = v14;

    [(HRElectrocardiogramSessionScreenView *)v7 _setUpUI];
  }

  return v7;
}

- (void)_setUpUI
{
  v81[10] = *MEMORY[0x277D85DE8];
  [(HRElectrocardiogramSessionScreenView *)self setAutoresizingMask:0];
  [(HRElectrocardiogramSessionScreenView *)self setLayoutMargins:8.5, 8.5, 8.5, 8.5];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(HRElectrocardiogramSessionScreenView *)self setBackgroundColor:blackColor];

  waveformView = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  [waveformView setTranslatesAutoresizingMaskIntoConstraints:0];

  countdownValueLabel = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [countdownValueLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = MEMORY[0x277D74300];
  isLargeDevice = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v8 = 41.0;
  if (isLargeDevice)
  {
    v8 = 42.0;
  }

  v9 = *MEMORY[0x277D74410];
  v10 = [v6 hk_compactRoundedFontOfSize:v8 weight:*MEMORY[0x277D74410]];
  hk_monospacedFont = [v10 hk_monospacedFont];
  countdownValueLabel2 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [countdownValueLabel2 setFont:hk_monospacedFont];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  countdownValueLabel3 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [countdownValueLabel3 setTextColor:whiteColor];

  countdownValueLabel4 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [countdownValueLabel4 setMinimumScaleFactor:0.85];

  countdownUnitLabel = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [countdownUnitLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = MEMORY[0x277D74300];
  isLargeDevice2 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v19 = 31.5;
  if (isLargeDevice2)
  {
    v19 = 32.5;
  }

  v20 = [v17 hk_compactRoundedFontOfSize:v19 weight:v9];
  countdownUnitLabel2 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [countdownUnitLabel2 setFont:v20];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  countdownUnitLabel3 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [countdownUnitLabel3 setTextColor:whiteColor2];

  countdownUnitLabel4 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [countdownUnitLabel4 setMinimumScaleFactor:0.85];

  waveformView2 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  [(HRElectrocardiogramSessionScreenView *)self addSubview:waveformView2];

  countdownValueLabel5 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [(HRElectrocardiogramSessionScreenView *)self addSubview:countdownValueLabel5];

  countdownUnitLabel5 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [(HRElectrocardiogramSessionScreenView *)self addSubview:countdownUnitLabel5];

  v64 = MEMORY[0x277CCAAD0];
  waveformView3 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  leadingAnchor = [waveformView3 leadingAnchor];
  leadingAnchor2 = [(HRElectrocardiogramSessionScreenView *)self leadingAnchor];
  v77 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v81[0] = v77;
  trailingAnchor = [(HRElectrocardiogramSessionScreenView *)self trailingAnchor];
  waveformView4 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  trailingAnchor2 = [waveformView4 trailingAnchor];
  v73 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v81[1] = v73;
  waveformView5 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  topAnchor = [waveformView5 topAnchor];
  topAnchor2 = [(HRElectrocardiogramSessionScreenView *)self topAnchor];
  v69 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:29.0];
  v81[2] = v69;
  waveformView6 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  heightAnchor = [waveformView6 heightAnchor];
  v67 = heightAnchor;
  isLargeDevice3 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v30 = 52.0;
  if (isLargeDevice3)
  {
    v30 = 62.0;
  }

  v66 = [heightAnchor constraintEqualToConstant:v30];
  v81[3] = v66;
  countdownValueLabel6 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  leadingAnchor3 = [countdownValueLabel6 leadingAnchor];
  layoutMarginsGuide = [(HRElectrocardiogramSessionScreenView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v81[4] = v60;
  countdownValueLabel7 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  firstBaselineAnchor = [countdownValueLabel7 firstBaselineAnchor];
  v57 = firstBaselineAnchor;
  waveformView7 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  bottomAnchor = [waveformView7 bottomAnchor];
  v56 = bottomAnchor;
  isLargeDevice4 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v34 = 48.0;
  if (isLargeDevice4)
  {
    v34 = 58.0;
  }

  v55 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:v34];
  v81[5] = v55;
  bottomAnchor2 = [(HRElectrocardiogramSessionScreenView *)self bottomAnchor];
  countdownValueLabel8 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  firstBaselineAnchor2 = [countdownValueLabel8 firstBaselineAnchor];
  v51 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:firstBaselineAnchor2];
  v81[6] = v51;
  countdownUnitLabel6 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  leadingAnchor5 = [countdownUnitLabel6 leadingAnchor];
  countdownValueLabel9 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  trailingAnchor3 = [countdownValueLabel9 trailingAnchor];
  v46 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:2.5];
  v81[7] = v46;
  layoutMarginsGuide2 = [(HRElectrocardiogramSessionScreenView *)self layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
  countdownUnitLabel7 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  trailingAnchor5 = [countdownUnitLabel7 trailingAnchor];
  v38 = [trailingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
  v81[8] = v38;
  countdownUnitLabel8 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  firstBaselineAnchor3 = [countdownUnitLabel8 firstBaselineAnchor];
  countdownValueLabel10 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  firstBaselineAnchor4 = [countdownValueLabel10 firstBaselineAnchor];
  v43 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
  v81[9] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:10];
  [v64 activateConstraints:v44];
}

@end