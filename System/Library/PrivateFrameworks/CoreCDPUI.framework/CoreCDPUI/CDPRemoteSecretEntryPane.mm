@interface CDPRemoteSecretEntryPane
- (CDPRemoteSecretEntryPane)initWithFrame:(CGRect)a3;
- (double)_scaledFooterPadding;
- (double)keyboardHeightOffset;
- (id)_createFooterButton;
- (id)_headerStringForDevice:(id)a3 localDeviceClass:(id)a4;
- (void)didFinishResizingHeaderView;
- (void)didFinishResizingPinView;
- (void)setDevice:(id)a3;
- (void)setEscapeOffer:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CDPRemoteSecretEntryPane

- (CDPRemoteSecretEntryPane)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CDPRemoteSecretEntryPane;
  v3 = [(CDPPassphraseEntryPane *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    containerView = v3->super._containerView;
    v6 = [(CDPRemoteSecretEntryPane *)v3 _createFooterButton];
    [(UIScrollView *)containerView addSubview:v6];
  }

  return v4;
}

- (double)keyboardHeightOffset
{
  v3 = MEMORY[0x277D75658];
  v4 = [(PSEditingPane *)self viewController];
  [v3 sizeForInterfaceOrientation:{objc_msgSend(v4, "interfaceOrientation")}];
  v29 = v5;

  v6 = [(PSEditingPane *)self viewController];
  v7 = [v6 view];
  v8 = [(PSEditingPane *)self viewController];
  v9 = [v8 view];
  [v9 bounds];
  [v7 convertRect:0 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 bounds];
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

  v5 = [(UIButton *)self->_footerButton titleLabel];
  [v5 setNumberOfLines:0];

  v6 = [(UIButton *)self->_footerButton titleLabel];
  [v6 setTextAlignment:1];

  v7 = [(UIButton *)self->_footerButton titleLabel];
  v8 = MEMORY[0x277D74300];
  v9 = *MEMORY[0x277D76918];
  v10 = [MEMORY[0x277D759A0] mainScreen];
  v11 = [v10 traitCollection];
  v12 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v11];
  [v7 setFont:v12];

  [(UIButton *)self->_footerButton setAutoresizingMask:12];
  v13 = self->_footerButton;

  return v13;
}

- (void)setEscapeOffer:(id)a3
{
  v7 = a3;
  [(UIButton *)self->_footerButton removeTarget:self->_escapeOffer action:sel_handleEscapeAction_ forControlEvents:64];
  if (v7)
  {
    objc_storeStrong(&self->_escapeOffer, a3);
    [(UIButton *)self->_footerButton addTarget:self->_escapeOffer action:sel_handleEscapeAction_ forControlEvents:64];
    footerButton = self->_footerButton;
    v6 = [(CDPRemoteValidationEscapeOffer *)self->_escapeOffer escapeOfferName];
    [(UIButton *)footerButton setTitle:v6 forState:0];
  }

  else
  {
    [(UIButton *)self->_footerButton removeFromSuperview];
  }
}

- (void)setTitle:(id)a3
{
  headerView = self->super._headerView;
  v4 = a3;
  v5 = [(CDPPaneHeaderView *)headerView detailTextLabel];
  [v5 setText:v4];
}

- (void)didFinishResizingHeaderView
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 552) bounds];
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
  v7 = [(UIButton *)self->_footerButton titleLabel];
  [(CDPRemoteSecretEntryPane *)self frame];
  [v7 sizeThatFits:{CGRectGetWidth(v45), 1.79769313e308}];
  v40 = v9;
  v41 = v8;
  v10 = v9;

  v11 = *MEMORY[0x277D3FBD0];
  v12 = [*(&self->super.super.super.super.super.super.isa + v11) superview];
  [v12 frame];
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
  v24 = [*(&self->super.super.super.super.super.super.isa + v11) superview];
  v25 = v24;
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
  [v24 setFrame:{v14, v16, v39, v27}];

  v29 = *(&self->super.super.super.super.super.super.isa + v11);
  v30 = [v29 superview];
  [v30 bounds];
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
  v35 = [(UIButton *)self->_footerButton superview];

  if (v35)
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

- (void)setDevice:(id)a3
{
  v24 = a3;
  objc_storeStrong(&self->_device, a3);
  v5 = [v24 modelClass];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [MEMORY[0x277CFD4F8] sharedInstance];
    v8 = [v7 deviceClass];

    v9 = [(CDPRemoteSecretEntryPane *)self _headerStringForDevice:v24 localDeviceClass:v8];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v24 modelClass];
    v12 = [v10 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v11];

    if (v12)
    {
      v13 = [(CDPPaneHeaderView *)self->super._headerView textLabel];
      [v13 setText:v12];

      v14 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SUBTITLE_REBRAND"];
      v15 = [v14 addSecretType:{objc_msgSend(v24, "localSecretType")}];
      v16 = [v15 localizedString];
      v17 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
      [v17 setText:v16];

      v18 = MEMORY[0x277D74300];
      v19 = *MEMORY[0x277D76918];
      v20 = [MEMORY[0x277D759A0] mainScreen];
      v21 = [v20 traitCollection];
      v22 = [v18 preferredFontForTextStyle:v19 compatibleWithTraitCollection:v21];
      v23 = [(CDPPaneHeaderView *)self->super._headerView subLabel];
      [v23 setFont:v22];

      [(CDPPaneHeaderView *)self->super._headerView makeAllTheTextFits];
    }

    [(CDPPaneHeaderView *)self->super._headerView layoutSubviews];
  }
}

- (id)_headerStringForDevice:(id)a3 localDeviceClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isCurrentDevice])
  {
    v12 = [v6 modelClass];
    v13 = v12;
    if (v7 && v12)
    {
      v14 = [v6 modelClass];
      v15 = [v14 isEqualToString:v7];

      if (v15)
      {
        v16 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_TITLE_SPECIFIC_OTHER"];
        v17 = [v16 addSecretType:{objc_msgSend(v6, "localSecretType")}];
        v18 = [v17 addUnqualifiedDeviceClass:v7];
        v19 = [v18 localizedString];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v20 = [v6 modelClass];

    v10 = MEMORY[0x277CFD508];
    if (!v20)
    {
      v11 = @"REMOTE_SECRET_ENTRY_TITLE_GENERIC_OTHER";
      goto LABEL_16;
    }

    v16 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_TITLE_SPECIFIC"];
    v17 = [v6 modelClass];
    v18 = [v16 addUnqualifiedDeviceClass:v17];
    v21 = [v18 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v19 = [v21 localizedString];

LABEL_12:
    goto LABEL_17;
  }

  v8 = [MEMORY[0x277CFD4F8] sharedInstance];
  if (![v8 hasLocalSecret])
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
  v17 = [v16 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v19 = [v17 localizedString];
LABEL_17:

  return v19;
}

@end