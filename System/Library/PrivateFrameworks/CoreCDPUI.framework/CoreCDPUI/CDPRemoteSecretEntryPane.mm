@interface CDPRemoteSecretEntryPane
- (CDPRemoteSecretEntryPane)initWithFrame:(CGRect)frame;
- (double)_scaledFooterPadding;
- (double)keyboardHeightOffset;
- (id)_createFooterButton;
- (id)_headerStringForDevice:(id)device localDeviceClass:(id)class;
- (void)didFinishResizingHeaderView;
- (void)didFinishResizingPinView;
- (void)setDevice:(id)device;
- (void)setEscapeOffer:(id)offer;
- (void)setTitle:(id)title;
@end

@implementation CDPRemoteSecretEntryPane

- (CDPRemoteSecretEntryPane)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CDPRemoteSecretEntryPane;
  v3 = [(CDPPassphraseEntryPane *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    containerView = v3->super._containerView;
    _createFooterButton = [(CDPRemoteSecretEntryPane *)v3 _createFooterButton];
    [(UIScrollView *)containerView addSubview:_createFooterButton];
  }

  return v4;
}

- (double)keyboardHeightOffset
{
  v3 = MEMORY[0x277D75658];
  viewController = [(PSEditingPane *)self viewController];
  [v3 sizeForInterfaceOrientation:{objc_msgSend(viewController, "interfaceOrientation")}];
  v29 = v5;

  viewController2 = [(PSEditingPane *)self viewController];
  view = [viewController2 view];
  viewController3 = [(PSEditingPane *)self viewController];
  view2 = [viewController3 view];
  [view2 bounds];
  [view convertRect:0 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v30.origin.x = v20;
  v30.origin.y = v22;
  v30.size.width = v24;
  v30.size.height = v26;
  MaxY = CGRectGetMaxY(v30);
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  return fmax(v29 - (MaxY - CGRectGetMaxY(v31)), 0.0);
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

  titleLabel3 = [(UIButton *)self->_footerButton titleLabel];
  v8 = MEMORY[0x277D74300];
  v9 = *MEMORY[0x277D76918];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v12 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:traitCollection];
  [titleLabel3 setFont:v12];

  [(UIButton *)self->_footerButton setAutoresizingMask:12];
  v13 = self->_footerButton;

  return v13;
}

- (void)setEscapeOffer:(id)offer
{
  offerCopy = offer;
  [(UIButton *)self->_footerButton removeTarget:self->_escapeOffer action:sel_handleEscapeAction_ forControlEvents:64];
  if (offerCopy)
  {
    objc_storeStrong(&self->_escapeOffer, offer);
    [(UIButton *)self->_footerButton addTarget:self->_escapeOffer action:sel_handleEscapeAction_ forControlEvents:64];
    footerButton = self->_footerButton;
    escapeOfferName = [(CDPRemoteValidationEscapeOffer *)self->_escapeOffer escapeOfferName];
    [(UIButton *)footerButton setTitle:escapeOfferName forState:0];
  }

  else
  {
    [(UIButton *)self->_footerButton removeFromSuperview];
  }
}

- (void)setTitle:(id)title
{
  headerView = self->super._headerView;
  titleCopy = title;
  detailTextLabel = [(CDPPaneHeaderView *)headerView detailTextLabel];
  [detailTextLabel setText:titleCopy];
}

- (void)didFinishResizingHeaderView
{
  v6 = *MEMORY[0x277D85DE8];
  [*(self + 552) bounds];
  v3 = NSStringFromCGRect(v7);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2451DB000, a2, OS_LOG_TYPE_DEBUG, "Available frame for remote secret view: %@", &v4, 0xCu);
}

- (void)didFinishResizingPinView
{
  [(CDPRemoteSecretEntryPane *)self _scaledFooterPadding];
  v4 = v3;
  [(UIButton *)self->_footerButton frame];
  v42 = v6;
  v43 = v5;
  titleLabel = [(UIButton *)self->_footerButton titleLabel];
  [(CDPRemoteSecretEntryPane *)self frame];
  [titleLabel sizeThatFits:{CGRectGetWidth(v45), 1.79769313e308}];
  v40 = v9;
  v41 = v8;
  v10 = v9;

  v11 = *MEMORY[0x277D3FBD0];
  superview = [*(&self->super.super.super.super.super.super.isa + v11) superview];
  [superview frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v39 = v17;
  v20 = v19;

  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  Height = CGRectGetHeight(v46);
  [(CDPPassphraseEntryPane *)self desiredMinPinHeight];
  v23 = v22;
  superview2 = [*(&self->super.super.super.super.super.super.isa + v11) superview];
  v25 = superview2;
  v26 = 0.0;
  if (Height > v23)
  {
    v26 = v4 + v10;
  }

  v27 = v20 - v26;
  if (Height <= v23)
  {
    v4 = 8.0;
  }

  v28 = v14;
  [superview2 setFrame:{v14, v16, v39, v27}];

  v29 = *(&self->super.super.super.super.super.super.isa + v11);
  superview3 = [v29 superview];
  [superview3 bounds];
  [v29 setFrame:?];

  [(UIScrollView *)self->super._containerView bounds];
  MidX = CGRectGetMidX(v47);
  v48.origin.y = v42;
  v48.origin.x = v43;
  v48.size.width = v41;
  v48.size.height = v40;
  v32 = MidX + CGRectGetWidth(v48) * -0.5;
  [(CDPRemoteSecretEntryPane *)self _footerRectY:v28, v16, v39, v27];
  v34 = v33;
  [(UIButton *)self->_footerButton setFrame:v32, v33, v41, v40];
  v49.origin.x = v32;
  v49.origin.y = v34;
  v49.size.width = v41;
  v49.size.height = v40;
  [(UIScrollView *)self->super._containerView setContentSize:0.0, v4 + CGRectGetMaxY(v49) + self->super._keyboardOffset];
  superview4 = [(UIButton *)self->_footerButton superview];

  if (superview4)
  {
    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBD8]) frame];
    v36 = CGRectGetMaxY(v50) + self->super._keyboardOffset;
    containerView = self->super._containerView;
    [(UIScrollView *)containerView frame];
    v38 = fmax(v36 - CGRectGetHeight(v51), 0.0);

    [(UIScrollView *)containerView setContentOffset:0.0, v38];
  }
}

- (double)_scaledFooterPadding
{
  if ([(CDPPassphraseEntryPane *)self isSmallScreen])
  {
    v2 = 8.0;
  }

  else
  {
    v2 = 24.0;
  }

  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v3 scaledValueForValue:v2];
  v5 = v4;

  return v5;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_device, device);
  modelClass = [deviceCopy modelClass];
  v6 = [modelClass length];

  if (v6)
  {
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];

    v9 = [(CDPRemoteSecretEntryPane *)self _headerStringForDevice:deviceCopy localDeviceClass:deviceClass];
    v10 = MEMORY[0x277CCACA8];
    modelClass2 = [deviceCopy modelClass];
    v12 = [v10 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, modelClass2];

    if (v12)
    {
      textLabel = [(CDPPaneHeaderView *)self->super._headerView textLabel];
      [textLabel setText:v12];

      v14 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SUBTITLE_REBRAND"];
      v15 = [v14 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
      localizedString = [v15 localizedString];
      subLabel = [(CDPPaneHeaderView *)self->super._headerView subLabel];
      [subLabel setText:localizedString];

      v18 = MEMORY[0x277D74300];
      v19 = *MEMORY[0x277D76918];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      v22 = [v18 preferredFontForTextStyle:v19 compatibleWithTraitCollection:traitCollection];
      subLabel2 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
      [subLabel2 setFont:v22];

      [(CDPPaneHeaderView *)self->super._headerView makeAllTheTextFits];
    }

    [(CDPPaneHeaderView *)self->super._headerView layoutSubviews];
  }
}

- (id)_headerStringForDevice:(id)device localDeviceClass:(id)class
{
  deviceCopy = device;
  classCopy = class;
  if (![deviceCopy isCurrentDevice])
  {
    modelClass = [deviceCopy modelClass];
    v13 = modelClass;
    if (classCopy && modelClass)
    {
      modelClass2 = [deviceCopy modelClass];
      v15 = [modelClass2 isEqualToString:classCopy];

      if (v15)
      {
        v16 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_TITLE_SPECIFIC_OTHER"];
        modelClass4 = [v16 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
        v18 = [modelClass4 addUnqualifiedDeviceClass:classCopy];
        localizedString = [v18 localizedString];
        goto LABEL_12;
      }
    }

    else
    {
    }

    modelClass3 = [deviceCopy modelClass];

    v10 = MEMORY[0x277CFD508];
    if (!modelClass3)
    {
      v11 = @"REMOTE_SECRET_ENTRY_TITLE_GENERIC_OTHER";
      goto LABEL_16;
    }

    v16 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_TITLE_SPECIFIC"];
    modelClass4 = [deviceCopy modelClass];
    v18 = [v16 addUnqualifiedDeviceClass:modelClass4];
    v21 = [v18 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [v21 localizedString];

LABEL_12:
    goto LABEL_17;
  }

  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  if (![mEMORY[0x277CFD4F8] hasLocalSecret])
  {

    goto LABEL_14;
  }

  remoteAccountRecovery = self->_remoteAccountRecovery;

  if (!remoteAccountRecovery)
  {
LABEL_14:
    v10 = MEMORY[0x277CFD508];
    v11 = @"REMOTE_SECRET_ENTRY_TITLE_OLD";
    goto LABEL_16;
  }

  v10 = MEMORY[0x277CFD508];
  v11 = @"ACCOUNT_RECOVERY_CURRENT_DEVICE_REMOTE_SECRET_TITLE";
LABEL_16:
  v16 = [v10 builderForKey:v11];
  modelClass4 = [v16 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [modelClass4 localizedString];
LABEL_17:

  return localizedString;
}

@end