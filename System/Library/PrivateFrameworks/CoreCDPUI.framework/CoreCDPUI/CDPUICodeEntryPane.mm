@interface CDPUICodeEntryPane
- (CDPUICodeEntryPane)initWithFrame:(CGRect)frame;
- (CGSize)preferredContentSize;
- (id)_createFooterButton;
- (void)didFinishResizingHeaderView;
- (void)didFinishResizingPinView;
- (void)setViewModel:(id)model;
@end

@implementation CDPUICodeEntryPane

- (CDPUICodeEntryPane)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CDPUICodeEntryPane;
  v3 = [(CDPPassphraseEntryPane *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    containerView = v3->super._containerView;
    _createFooterButton = [(CDPUICodeEntryPane *)v3 _createFooterButton];
    [(UIScrollView *)containerView addSubview:_createFooterButton];
  }

  return v4;
}

- (id)_createFooterButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  footerButton = self->_footerButton;
  self->_footerButton = v3;

  titleLabel = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel setNumberOfLines:0];

  titleLabel2 = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel2 setTextAlignment:1];

  [(UIButton *)self->_footerButton setAutoresizingMask:12];
  v7 = self->_footerButton;

  return v7;
}

- (void)didFinishResizingHeaderView
{
  v3.receiver = self;
  v3.super_class = CDPUICodeEntryPane;
  [(CDPPassphraseEntryPane *)&v3 didFinishResizingHeaderView];
  [(CDPUICodeEntryPane *)self setViewModel:self->_viewModel];
}

- (void)didFinishResizingPinView
{
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBD8]) frame];
  v3 = CGRectGetMaxY(v57) + self->super._keyboardOffset;
  [(UIScrollView *)self->super._containerView setContentSize:0.0, v3];
  containerView = self->super._containerView;
  [(UIScrollView *)containerView frame];
  v49 = v3;
  [(UIScrollView *)containerView setContentOffset:0.0, fmax(v3 - CGRectGetHeight(v58), 0.0)];
  if ([(CDPPassphraseEntryPane *)self isSmallScreen])
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 24.0;
  }

  v6 = *MEMORY[0x277D76918];
  v7 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v7 scaledValueForValue:v5];
  v9 = v8;

  v10 = MEMORY[0x277D74300];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v13 = [v10 preferredFontForTextStyle:v6 compatibleWithTraitCollection:traitCollection];
  titleLabel = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel setFont:v13];

  [(UIButton *)self->_footerButton frame];
  v53 = v16;
  v54 = v15;
  titleLabel2 = [(UIButton *)self->_footerButton titleLabel];
  [(CDPUICodeEntryPane *)self frame];
  [titleLabel2 sizeThatFits:{CGRectGetWidth(v59), 1.79769313e308}];
  v19 = v18;
  v21 = v20;

  v22 = *MEMORY[0x277D3FBD0];
  superview = [*(&self->super.super.super.super.super.super.isa + v22) superview];
  [superview frame];
  v25 = v24;
  v27 = v26;
  v51 = v28;
  v52 = v26;
  v29 = v28;
  v31 = v30;

  v60.origin.x = v25;
  v60.origin.y = v27;
  v60.size.width = v29;
  v60.size.height = v31;
  Height = CGRectGetHeight(v60);
  [(CDPPassphraseEntryPane *)self desiredMinPinHeight];
  v33 = v32;
  v34 = v9 + v21;
  v35 = v9;
  [(CDPUICodeEntryPane *)self bounds];
  MidX = CGRectGetMidX(v61);
  v62.origin.y = v53;
  v62.origin.x = v54;
  v62.size.width = v19;
  v62.size.height = v21;
  Width = CGRectGetWidth(v62);
  v38 = 0.0;
  if (Height > v33)
  {
    v38 = v34;
  }

  v39 = v31 - v38;
  v40 = MidX + Width * -0.5;
  v41 = 8.0;
  if (Height > v33)
  {
    v41 = v35;
  }

  v55 = v41;
  v63.origin.x = v25;
  v63.origin.y = v52;
  v63.size.width = v51;
  v63.size.height = v39;
  MaxY = CGRectGetMaxY(v63);
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v25 = -44.0;
    v40 = 22.0;
  }

  [(UIButton *)self->_footerButton setFrame:v40, MaxY, v19, v21];
  superview2 = [*(&self->super.super.super.super.super.super.isa + v22) superview];
  [superview2 setFrame:{v25, v52, v51, v39}];

  v44 = *(&self->super.super.super.super.super.super.isa + v22);
  superview3 = [v44 superview];
  [superview3 bounds];
  [v44 setFrame:?];

  v64.origin.x = v40;
  v64.origin.y = MaxY;
  v64.size.width = v19;
  v64.size.height = v21;
  [(UIScrollView *)self->super._containerView setContentSize:0.0, v55 + CGRectGetMaxY(v64) + self->super._keyboardOffset];
  superview4 = [(UIButton *)self->_footerButton superview];

  if (superview4)
  {
    v47 = self->super._containerView;
    [(UIScrollView *)v47 frame];
    v48 = v49 - CGRectGetHeight(v65);

    [(UIScrollView *)v47 setContentOffset:0.0, v48];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  objc_storeStrong(&self->_viewModel, model);
  headerView = self->super._headerView;
  promptTitle = [(CDPUICodeEntryViewModel *)self->_viewModel promptTitle];
  [(CDPPaneHeaderView *)headerView setTitleText:promptTitle];

  promptMessage = [(CDPUICodeEntryViewModel *)self->_viewModel promptMessage];
  subLabel = [(CDPPaneHeaderView *)self->super._headerView subLabel];
  [subLabel setText:promptMessage];

  v9 = MEMORY[0x277D74300];
  v10 = *MEMORY[0x277D76918];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v13 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:traitCollection];
  subLabel2 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
  [subLabel2 setFont:v13];

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    textLabel = [(CDPPaneHeaderView *)self->super._headerView textLabel];
    [textLabel setTextAlignment:4];

    subLabel3 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
    [subLabel3 setTextAlignment:4];

    v17 = MEMORY[0x277D74310];
    v18 = *MEMORY[0x277D76A20];
    traitCollection2 = [(CDPUICodeEntryPane *)self traitCollection];
    v20 = [v17 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:traitCollection2];

    v21 = MEMORY[0x277D74300];
    v22 = [v20 fontDescriptorWithSymbolicTraits:2];
    v23 = [v21 fontWithDescriptor:v22 size:0.0];
    textLabel2 = [(CDPPaneHeaderView *)self->super._headerView textLabel];
    [textLabel2 setFont:v23];

    v25 = [MEMORY[0x277D74300] fontWithDescriptor:v20 size:0.0];
    subLabel4 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
    [subLabel4 setFont:v25];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    subLabel5 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
    [subLabel5 setTextColor:secondaryLabelColor];
  }

  [(CDPPaneHeaderView *)self->super._headerView makeAllTheTextFits];
  escapeOffer = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];

  footerButton = self->_footerButton;
  if (escapeOffer)
  {
    escapeOffer2 = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];
    [(UIButton *)footerButton addTarget:escapeOffer2 action:sel_handleEscapeAction_ forControlEvents:64];

    v32 = self->_footerButton;
    escapeOffer3 = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];
    title = [escapeOffer3 title];
    [(UIButton *)v32 setTitle:title forState:0];
  }

  else
  {
    [(UIButton *)self->_footerButton removeFromSuperview];
  }
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end