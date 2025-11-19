@interface HRElectrocardiogramSessionScreenView
- (HRElectrocardiogramSessionScreenView)initWithLargeDevice:(BOOL)a3;
- (void)_setUpUI;
@end

@implementation HRElectrocardiogramSessionScreenView

- (HRElectrocardiogramSessionScreenView)initWithLargeDevice:(BOOL)a3
{
  if (a3)
  {
    v4 = 181.0;
  }

  else
  {
    v4 = 161.0;
  }

  if (a3)
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
    v6->_isLargeDevice = a3;
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = [MEMORY[0x277D755B8] hrui_waveformImage];
    v10 = [v8 initWithImage:v9];
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
  v3 = [MEMORY[0x277D75348] blackColor];
  [(HRElectrocardiogramSessionScreenView *)self setBackgroundColor:v3];

  v4 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = MEMORY[0x277D74300];
  v7 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v8 = 41.0;
  if (v7)
  {
    v8 = 42.0;
  }

  v9 = *MEMORY[0x277D74410];
  v10 = [v6 hk_compactRoundedFontOfSize:v8 weight:*MEMORY[0x277D74410]];
  v11 = [v10 hk_monospacedFont];
  v12 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [v12 setFont:v11];

  v13 = [MEMORY[0x277D75348] whiteColor];
  v14 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [v14 setTextColor:v13];

  v15 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [v15 setMinimumScaleFactor:0.85];

  v16 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = MEMORY[0x277D74300];
  v18 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v19 = 31.5;
  if (v18)
  {
    v19 = 32.5;
  }

  v20 = [v17 hk_compactRoundedFontOfSize:v19 weight:v9];
  v21 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [v21 setFont:v20];

  v22 = [MEMORY[0x277D75348] whiteColor];
  v23 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [v23 setTextColor:v22];

  v24 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [v24 setMinimumScaleFactor:0.85];

  v25 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  [(HRElectrocardiogramSessionScreenView *)self addSubview:v25];

  v26 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  [(HRElectrocardiogramSessionScreenView *)self addSubview:v26];

  v27 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  [(HRElectrocardiogramSessionScreenView *)self addSubview:v27];

  v64 = MEMORY[0x277CCAAD0];
  v80 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  v79 = [v80 leadingAnchor];
  v78 = [(HRElectrocardiogramSessionScreenView *)self leadingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v81[0] = v77;
  v75 = [(HRElectrocardiogramSessionScreenView *)self trailingAnchor];
  v76 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  v74 = [v76 trailingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v81[1] = v73;
  v72 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  v71 = [v72 topAnchor];
  v70 = [(HRElectrocardiogramSessionScreenView *)self topAnchor];
  v69 = [v71 constraintEqualToAnchor:v70 constant:29.0];
  v81[2] = v69;
  v68 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  v28 = [v68 heightAnchor];
  v67 = v28;
  v29 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v30 = 52.0;
  if (v29)
  {
    v30 = 62.0;
  }

  v66 = [v28 constraintEqualToConstant:v30];
  v81[3] = v66;
  v65 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  v62 = [v65 leadingAnchor];
  v63 = [(HRElectrocardiogramSessionScreenView *)self layoutMarginsGuide];
  v61 = [v63 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v81[4] = v60;
  v59 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  v31 = [v59 firstBaselineAnchor];
  v57 = v31;
  v58 = [(HRElectrocardiogramSessionScreenView *)self waveformView];
  v32 = [v58 bottomAnchor];
  v56 = v32;
  v33 = [(HRElectrocardiogramSessionScreenView *)self isLargeDevice];
  v34 = 48.0;
  if (v33)
  {
    v34 = 58.0;
  }

  v55 = [v31 constraintEqualToAnchor:v32 constant:v34];
  v81[5] = v55;
  v53 = [(HRElectrocardiogramSessionScreenView *)self bottomAnchor];
  v54 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  v52 = [v54 firstBaselineAnchor];
  v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52];
  v81[6] = v51;
  v50 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  v48 = [v50 leadingAnchor];
  v49 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  v47 = [v49 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:2.5];
  v81[7] = v46;
  v45 = [(HRElectrocardiogramSessionScreenView *)self layoutMarginsGuide];
  v35 = [v45 trailingAnchor];
  v36 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintGreaterThanOrEqualToAnchor:v37];
  v81[8] = v38;
  v39 = [(HRElectrocardiogramSessionScreenView *)self countdownUnitLabel];
  v40 = [v39 firstBaselineAnchor];
  v41 = [(HRElectrocardiogramSessionScreenView *)self countdownValueLabel];
  v42 = [v41 firstBaselineAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v81[9] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:10];
  [v64 activateConstraints:v44];
}

@end