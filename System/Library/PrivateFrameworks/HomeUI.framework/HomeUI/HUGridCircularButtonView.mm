@interface HUGridCircularButtonView
- (HUGridCircularButtonView)initWithCoder:(id)coder;
- (HUGridCircularButtonView)initWithFrame:(CGRect)frame;
- (HUGridCircularButtonView)initWithImage:(id)image title:(id)title;
@end

@implementation HUGridCircularButtonView

- (HUGridCircularButtonView)initWithImage:(id)image title:(id)title
{
  v70[7] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  titleCopy = title;
  v69.receiver = self;
  v69.super_class = HUGridCircularButtonView;
  v8 = [(HUGridCircularButtonView *)&v69 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v11 = [blackColor colorWithAlphaComponent:0.2];
    [clearConfiguration setBackgroundColor:v11];

    [clearConfiguration setCornerRadius:30.0];
    v12 = plainButtonConfiguration;
    [plainButtonConfiguration setBackground:clearConfiguration];
    [plainButtonConfiguration setCornerStyle:-1];
    [plainButtonConfiguration setButtonSize:3];
    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:18.0];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v13];

    [plainButtonConfiguration setImage:imageCopy];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v64 = plainButtonConfiguration;
    [plainButtonConfiguration setBaseForegroundColor:whiteColor];

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

    button = [(HUGridCircularButtonView *)v16 button];
    [button setTranslatesAutoresizingMaskIntoConstraints:0];

    button2 = [(HUGridCircularButtonView *)v16 button];
    [(HUGridCircularButtonView *)v16 addSubview:button2];

    plainFooterConfiguration = [MEMORY[0x277D756E0] plainFooterConfiguration];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    textProperties = [plainFooterConfiguration textProperties];
    [textProperties setColor:systemWhiteColor];

    v62 = plainFooterConfiguration;
    [plainFooterConfiguration setText:titleCopy];
    v23 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:plainFooterConfiguration];
    [(HUGridCircularButtonView *)v16 setLabel:v23];

    label = [(HUGridCircularButtonView *)v16 label];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];

    label2 = [(HUGridCircularButtonView *)v16 label];
    [(HUGridCircularButtonView *)v16 addSubview:label2];

    v49 = MEMORY[0x277CCAAD0];
    button3 = [(HUGridCircularButtonView *)v16 button];
    topAnchor = [button3 topAnchor];
    topAnchor2 = [(HUGridCircularButtonView *)v16 topAnchor];
    v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v70[0] = v58;
    button4 = [(HUGridCircularButtonView *)v16 button];
    heightAnchor = [button4 heightAnchor];
    v55 = [heightAnchor constraintEqualToConstant:60.0];
    v70[1] = v55;
    button5 = [(HUGridCircularButtonView *)v16 button];
    widthAnchor = [button5 widthAnchor];
    v52 = [widthAnchor constraintEqualToConstant:60.0];
    v70[2] = v52;
    button6 = [(HUGridCircularButtonView *)v16 button];
    centerXAnchor = [button6 centerXAnchor];
    centerXAnchor2 = [(HUGridCircularButtonView *)v16 centerXAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v70[3] = v47;
    label3 = [(HUGridCircularButtonView *)v16 label];
    textLayoutGuide = [label3 textLayoutGuide];
    topAnchor3 = [textLayoutGuide topAnchor];
    button7 = [(HUGridCircularButtonView *)v16 button];
    bottomAnchor = [button7 bottomAnchor];
    v41 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    v70[4] = v41;
    label4 = [(HUGridCircularButtonView *)v16 label];
    textLayoutGuide2 = [label4 textLayoutGuide];
    centerXAnchor3 = [textLayoutGuide2 centerXAnchor];
    centerXAnchor4 = [(HUGridCircularButtonView *)v16 centerXAnchor];
    v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v70[5] = v27;
    label5 = [(HUGridCircularButtonView *)v16 label];
    [label5 bottomAnchor];
    v29 = v66 = v8;
    bottomAnchor2 = [(HUGridCircularButtonView *)v16 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:bottomAnchor2];
    v70[6] = v31;
    [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:7];
    v32 = titleCopy;
    v34 = v33 = imageCopy;
    [v49 activateConstraints:v34];

    imageCopy = v33;
    titleCopy = v32;

    v8 = v66;
    button8 = [(HUGridCircularButtonView *)v16 button];
    LODWORD(v36) = 1132134400;
    [button8 setContentHuggingPriority:1 forAxis:v36];
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

- (HUGridCircularButtonView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithImage_title_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUGridCircularButtonView.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HUGridCircularButtonView initWithFrame:]", v6}];

  return 0;
}

- (HUGridCircularButtonView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithImage_title_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUGridCircularButtonView.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HUGridCircularButtonView initWithCoder:]", v6}];

  return 0;
}

@end