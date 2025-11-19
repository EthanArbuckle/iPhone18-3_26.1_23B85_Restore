@interface SFBannerMessageAndButtonsCell
- (SFBannerMessageAndButtonsCell)initWithFrame:(CGRect)a3;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_primaryButtonSelected;
- (void)_secondaryButtonSelected;
- (void)configureUsingBanner:(id)a3;
@end

@implementation SFBannerMessageAndButtonsCell

- (SFBannerMessageAndButtonsCell)initWithFrame:(CGRect)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = SFBannerMessageAndButtonsCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFStartPageFilledBackgroundCell *)v3 defaultBackgroundConfiguration];
    [v5 setCornerRadius:20.0];
    [(SFBannerMessageAndButtonsCell *)v4 setBackgroundConfiguration:v5];
    v32 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB980]];
    v6 = [MEMORY[0x1E69DCC10] sf_startPageBannerTitleLabelWithFont:v32];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DD168]);
    messageTextView = v4->_messageTextView;
    v4->_messageTextView = v8;

    [(UITextView *)v4->_messageTextView setDelegate:v4];
    [(UITextView *)v4->_messageTextView setScrollEnabled:0];
    [(UITextView *)v4->_messageTextView setEditable:0];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_messageTextView setBackgroundColor:v10];

    v36 = *MEMORY[0x1E69DB650];
    v11 = [MEMORY[0x1E69DC888] linkColor];
    v37[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [(UITextView *)v4->_messageTextView setLinkTextAttributes:v12];

    v13 = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    [v13 setCornerStyle:3];
    v14 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v13 primaryAction:0];
    primaryButton = v4->_primaryButton;
    v4->_primaryButton = v14;

    v16 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v16 setBaseForegroundColor:v17];

    [v16 setCornerStyle:3];
    v18 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v16 primaryAction:0];
    secondaryButton = v4->_secondaryButton;
    v4->_secondaryButton = v18;

    v20 = objc_alloc(MEMORY[0x1E69DCF90]);
    v35[0] = v4->_secondaryButton;
    v35[1] = v4->_primaryButton;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v22 = [v20 initWithArrangedSubviews:v21];

    [v22 setSpacing:10.0];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 setAlignment:3];
    v23 = objc_alloc(MEMORY[0x1E69DCF90]);
    v34[0] = v4->_titleLabel;
    v34[1] = v4->_messageTextView;
    v34[2] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
    v25 = [v23 initWithArrangedSubviews:v24];

    [v25 setSpacing:10.0];
    [v25 setAxis:1];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAlignment:3];
    v26 = [(SFBannerMessageAndButtonsCell *)v4 contentView];
    [v26 addSubview:v25];

    v27 = MEMORY[0x1E696ACD8];
    v28 = [(SFBannerMessageAndButtonsCell *)v4 contentView];
    v29 = [v27 safari_constraintsMatchingFrameOfView:v25 withFrameOfView:v28 edgeInsets:{10.0, 10.0, 10.0, 10.0}];
    [v27 activateConstraints:v29];

    v30 = v4;
  }

  return v4;
}

- (void)configureUsingBanner:(id)a3
{
  objc_storeStrong(&self->_banner, a3);
  v11 = a3;
  v5 = [v11 title];
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = [v11 attributedMessage];
  [(UITextView *)self->_messageTextView setAttributedText:v6];

  primaryButton = self->_primaryButton;
  v8 = [v11 primaryButtonTitle];
  [(UIButton *)primaryButton setTitle:v8 forState:0];

  secondaryButton = self->_secondaryButton;
  v10 = [v11 secondaryButtonTitle];
  [(UIButton *)secondaryButton setTitle:v10 forState:0];

  [(UIButton *)self->_primaryButton addTarget:self action:sel__primaryButtonSelected forControlEvents:64];
  [(UIButton *)self->_secondaryButton addTarget:self action:sel__secondaryButtonSelected forControlEvents:64];
}

- (void)_primaryButtonSelected
{
  v2 = [(WBSStartPageBanner *)self->_banner primaryButtonHandler];
  v2[2]();
}

- (void)_secondaryButtonSelected
{
  v2 = [(WBSStartPageBanner *)self->_banner secondaryButtonHandler];
  v2[2]();
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  banner = self->_banner;
  v7 = a5;
  v8 = a4;
  v9 = [(WBSStartPageBanner *)banner messageTextItemHandler];
  v10 = (v9)[2](v9, v8);

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

@end