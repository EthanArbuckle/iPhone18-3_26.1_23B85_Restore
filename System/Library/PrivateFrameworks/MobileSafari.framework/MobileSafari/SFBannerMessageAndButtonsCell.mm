@interface SFBannerMessageAndButtonsCell
- (SFBannerMessageAndButtonsCell)initWithFrame:(CGRect)frame;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_primaryButtonSelected;
- (void)_secondaryButtonSelected;
- (void)configureUsingBanner:(id)banner;
@end

@implementation SFBannerMessageAndButtonsCell

- (SFBannerMessageAndButtonsCell)initWithFrame:(CGRect)frame
{
  v37[1] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = SFBannerMessageAndButtonsCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v3 defaultBackgroundConfiguration];
    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFBannerMessageAndButtonsCell *)v4 setBackgroundConfiguration:defaultBackgroundConfiguration];
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_messageTextView setBackgroundColor:clearColor];

    v36 = *MEMORY[0x1E69DB650];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    v37[0] = linkColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [(UITextView *)v4->_messageTextView setLinkTextAttributes:v12];

    borderedProminentButtonConfiguration = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    [borderedProminentButtonConfiguration setCornerStyle:3];
    v14 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderedProminentButtonConfiguration primaryAction:0];
    primaryButton = v4->_primaryButton;
    v4->_primaryButton = v14;

    borderedButtonConfiguration = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [borderedButtonConfiguration setBaseForegroundColor:labelColor];

    [borderedButtonConfiguration setCornerStyle:3];
    v18 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderedButtonConfiguration primaryAction:0];
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
    contentView = [(SFBannerMessageAndButtonsCell *)v4 contentView];
    [contentView addSubview:v25];

    v27 = MEMORY[0x1E696ACD8];
    contentView2 = [(SFBannerMessageAndButtonsCell *)v4 contentView];
    v29 = [v27 safari_constraintsMatchingFrameOfView:v25 withFrameOfView:contentView2 edgeInsets:{10.0, 10.0, 10.0, 10.0}];
    [v27 activateConstraints:v29];

    v30 = v4;
  }

  return v4;
}

- (void)configureUsingBanner:(id)banner
{
  objc_storeStrong(&self->_banner, banner);
  bannerCopy = banner;
  title = [bannerCopy title];
  [(UILabel *)self->_titleLabel setText:title];

  attributedMessage = [bannerCopy attributedMessage];
  [(UITextView *)self->_messageTextView setAttributedText:attributedMessage];

  primaryButton = self->_primaryButton;
  primaryButtonTitle = [bannerCopy primaryButtonTitle];
  [(UIButton *)primaryButton setTitle:primaryButtonTitle forState:0];

  secondaryButton = self->_secondaryButton;
  secondaryButtonTitle = [bannerCopy secondaryButtonTitle];
  [(UIButton *)secondaryButton setTitle:secondaryButtonTitle forState:0];

  [(UIButton *)self->_primaryButton addTarget:self action:sel__primaryButtonSelected forControlEvents:64];
  [(UIButton *)self->_secondaryButton addTarget:self action:sel__secondaryButtonSelected forControlEvents:64];
}

- (void)_primaryButtonSelected
{
  primaryButtonHandler = [(WBSStartPageBanner *)self->_banner primaryButtonHandler];
  primaryButtonHandler[2]();
}

- (void)_secondaryButtonSelected
{
  secondaryButtonHandler = [(WBSStartPageBanner *)self->_banner secondaryButtonHandler];
  secondaryButtonHandler[2]();
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  banner = self->_banner;
  actionCopy = action;
  itemCopy = item;
  messageTextItemHandler = [(WBSStartPageBanner *)banner messageTextItemHandler];
  v10 = (messageTextItemHandler)[2](messageTextItemHandler, itemCopy);

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = actionCopy;
  }

  v12 = v11;

  return v11;
}

@end