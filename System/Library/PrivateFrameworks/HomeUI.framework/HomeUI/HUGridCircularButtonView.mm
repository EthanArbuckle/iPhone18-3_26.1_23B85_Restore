@interface HUGridCircularButtonView
- (HUGridCircularButtonView)initWithCoder:(id)a3;
- (HUGridCircularButtonView)initWithFrame:(CGRect)a3;
- (HUGridCircularButtonView)initWithImage:(id)a3 title:(id)a4;
@end

@implementation HUGridCircularButtonView

- (HUGridCircularButtonView)initWithImage:(id)a3 title:(id)a4
{
  v70[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v69.receiver = self;
  v69.super_class = HUGridCircularButtonView;
  v8 = [(HUGridCircularButtonView *)&v69 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    v9 = [MEMORY[0x277D75230] plainButtonConfiguration];
    v65 = [MEMORY[0x277D751C0] clearConfiguration];
    v10 = [MEMORY[0x277D75348] blackColor];
    v11 = [v10 colorWithAlphaComponent:0.2];
    [v65 setBackgroundColor:v11];

    [v65 setCornerRadius:30.0];
    v12 = v9;
    [v9 setBackground:v65];
    [v9 setCornerStyle:-1];
    [v9 setButtonSize:3];
    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:18.0];
    [v9 setPreferredSymbolConfigurationForImage:v13];

    [v9 setImage:v6];
    v14 = [MEMORY[0x277D75348] whiteColor];
    v64 = v9;
    [v9 setBaseForegroundColor:v14];

    v15 = MEMORY[0x277D750C8];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __48__HUGridCircularButtonView_initWithImage_title___block_invoke;
    v67[3] = &unk_277DB8C50;
    v16 = v8;
    v68 = v16;
    v63 = [v15 actionWithHandler:v67];
    v17 = [MEMORY[0x277D75220] buttonWithConfiguration:v12 primaryAction:v63];
    [(HUGridCircularButtonView *)v16 setButton:v17];

    v18 = [(HUGridCircularButtonView *)v16 button];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(HUGridCircularButtonView *)v16 button];
    [(HUGridCircularButtonView *)v16 addSubview:v19];

    v20 = [MEMORY[0x277D756E0] plainFooterConfiguration];
    v21 = [MEMORY[0x277D75348] systemWhiteColor];
    v22 = [v20 textProperties];
    [v22 setColor:v21];

    v62 = v20;
    [v20 setText:v7];
    v23 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:v20];
    [(HUGridCircularButtonView *)v16 setLabel:v23];

    v24 = [(HUGridCircularButtonView *)v16 label];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(HUGridCircularButtonView *)v16 label];
    [(HUGridCircularButtonView *)v16 addSubview:v25];

    v49 = MEMORY[0x277CCAAD0];
    v61 = [(HUGridCircularButtonView *)v16 button];
    v60 = [v61 topAnchor];
    v59 = [(HUGridCircularButtonView *)v16 topAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v70[0] = v58;
    v57 = [(HUGridCircularButtonView *)v16 button];
    v56 = [v57 heightAnchor];
    v55 = [v56 constraintEqualToConstant:60.0];
    v70[1] = v55;
    v54 = [(HUGridCircularButtonView *)v16 button];
    v53 = [v54 widthAnchor];
    v52 = [v53 constraintEqualToConstant:60.0];
    v70[2] = v52;
    v51 = [(HUGridCircularButtonView *)v16 button];
    v50 = [v51 centerXAnchor];
    v48 = [(HUGridCircularButtonView *)v16 centerXAnchor];
    v47 = [v50 constraintEqualToAnchor:v48];
    v70[3] = v47;
    v46 = [(HUGridCircularButtonView *)v16 label];
    v45 = [v46 textLayoutGuide];
    v43 = [v45 topAnchor];
    v44 = [(HUGridCircularButtonView *)v16 button];
    v42 = [v44 bottomAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:8.0];
    v70[4] = v41;
    v40 = [(HUGridCircularButtonView *)v16 label];
    v39 = [v40 textLayoutGuide];
    v38 = [v39 centerXAnchor];
    v26 = [(HUGridCircularButtonView *)v16 centerXAnchor];
    v27 = [v38 constraintEqualToAnchor:v26];
    v70[5] = v27;
    v28 = [(HUGridCircularButtonView *)v16 label];
    [v28 bottomAnchor];
    v29 = v66 = v8;
    v30 = [(HUGridCircularButtonView *)v16 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v70[6] = v31;
    [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:7];
    v32 = v7;
    v34 = v33 = v6;
    [v49 activateConstraints:v34];

    v6 = v33;
    v7 = v32;

    v8 = v66;
    v35 = [(HUGridCircularButtonView *)v16 button];
    LODWORD(v36) = 1132134400;
    [v35 setContentHuggingPriority:1 forAxis:v36];
  }

  return v8;
}

void __48__HUGridCircularButtonView_initWithImage_title___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 button];
    [v6 buttonView:v4 buttonWasTapped:v5];
  }
}

- (HUGridCircularButtonView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithImage_title_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUGridCircularButtonView.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HUGridCircularButtonView initWithFrame:]", v6}];

  return 0;
}

- (HUGridCircularButtonView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithImage_title_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUGridCircularButtonView.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HUGridCircularButtonView initWithCoder:]", v6}];

  return 0;
}

@end