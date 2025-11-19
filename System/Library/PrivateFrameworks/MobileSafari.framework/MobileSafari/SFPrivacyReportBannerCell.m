@interface SFPrivacyReportBannerCell
- (SFPrivacyReportBannerCell)initWithFrame:(CGRect)a3;
- (void)_privacyProxyAvailabilityChanged:(id)a3;
- (void)_updateState;
- (void)configureUsingBanner:(id)a3;
- (void)setNumberOfTrackers:(int64_t)a3;
- (void)setPrivateBrowsingEnabled:(BOOL)a3;
@end

@implementation SFPrivacyReportBannerCell

- (void)_updateState
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7F0];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shield.lefthalf.fill"];
  v5 = [v3 textAttachmentWithImage:v4];

  v6 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v7 appendAttributedString:v6];
  if (self->_numberOfTrackers >= 1)
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%zd", self->_numberOfTrackers];
    v10 = [v8 initWithString:v9];

    if ([(UIView *)self _sf_usesLeftToRightLayout])
    {
      [v7 appendAttributedString:v10];
    }

    else
    {
      [v7 insertAttributedString:v10 atIndex:0];
    }
  }

  v11 = [(SFInteractiveBannerCell *)self leadingLabel];
  [v11 setAttributedText:v7];

  v12 = [MEMORY[0x1E69C9808] sharedManager];
  v13 = [v12 isPrivacyProxyActive];
  v14 = [v12 state];
  v15 = [(SFInteractiveBannerCell *)self captionLabel];
  numberOfTrackers = self->_numberOfTrackers;
  v34 = @"TrackingPreventionDataExists";
  if (numberOfTrackers)
  {
    v17 = @"true";
  }

  else
  {
    v17 = @"false";
  }

  v35[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v19 = WBSMakeAccessibilityIdentifier();
  [v15 setAccessibilityIdentifier:v19];

  if (!self->_privateBrowsingEnabled)
  {
    v24 = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    v25 = [v24 webui_trackerProtectionEnabled];

    if ((v25 & 1) == 0)
    {
      v28 = _WBSLocalizedString();
      [v15 setText:v28];

      v29 = _WBSLocalizedString();
      [(SFPrivacyReportBannerCell *)self _setAction:0 text:v29];

      goto LABEL_39;
    }

    if (v13)
    {
      if (v14 == 2)
      {
        v26 = MEMORY[0x1E696AEC0];
      }

      else if (v14 == 1)
      {
        v26 = MEMORY[0x1E696AEC0];
      }

      else
      {
        if (v14)
        {
          goto LABEL_39;
        }

        v26 = MEMORY[0x1E696AEC0];
      }
    }

    else
    {
      v26 = MEMORY[0x1E696AEC0];
    }

    v30 = _WBSLocalizedString();
    v31 = [v26 localizedStringWithFormat:v30, self->_numberOfTrackers];
    [v15 setText:v31];

    [(SFInteractiveBannerCell *)self _removeActionButton];
    goto LABEL_39;
  }

  [(SFInteractiveBannerCell *)self _removeActionButton];
  v20 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v21 = [v20 safari_enableAdvancedPrivacyProtections:1];

  if (!v21)
  {
    goto LABEL_25;
  }

  if (v14)
  {
    v22 = v13;
  }

  else
  {
    v22 = 0;
  }

  if (!self->_numberOfTrackers)
  {
    if (v22 && v14 != 2 && v14 != 1)
    {
      goto LABEL_39;
    }

LABEL_25:
    v27 = _WBSLocalizedString();
    [v15 setText:v27];

    goto LABEL_39;
  }

  if (!v22)
  {
    v23 = MEMORY[0x1E696AEC0];
    goto LABEL_38;
  }

  if (v14 == 2)
  {
    v23 = MEMORY[0x1E696AEC0];
    goto LABEL_38;
  }

  if (v14 == 1)
  {
    v23 = MEMORY[0x1E696AEC0];
LABEL_38:
    v32 = _WBSLocalizedString();
    v33 = [v23 localizedStringWithFormat:v32, self->_numberOfTrackers];
    [v15 setText:v33];
  }

LABEL_39:
}

- (SFPrivacyReportBannerCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SFPrivacyReportBannerCell;
  v3 = [(SFInteractiveBannerCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfTrackers = -1;
    [(SFPrivacyReportBannerCell *)v3 _updateState];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69C9940];
    v7 = [MEMORY[0x1E69C9808] sharedManager];
    [v5 addObserver:v4 selector:sel__privacyProxyAvailabilityChanged_ name:v6 object:v7];

    v8 = v4;
  }

  return v4;
}

- (void)configureUsingBanner:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportBannerCell;
  [(SFInteractiveBannerCell *)&v4 configureUsingBanner:a3];
  [(SFPrivacyReportBannerCell *)self _updateState];
}

- (void)_privacyProxyAvailabilityChanged:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__SFPrivacyReportBannerCell__privacyProxyAvailabilityChanged___block_invoke;
  v3[3] = &unk_1E721B360;
  v3[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v3 completion:0];
}

void __62__SFPrivacyReportBannerCell__privacyProxyAvailabilityChanged___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateState];
  v3 = [*(a1 + 32) superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v3 collectionViewLayout];
    [v2 invalidateLayout];
  }

  [*(a1 + 32) layoutIfNeeded];
}

- (void)setNumberOfTrackers:(int64_t)a3
{
  if (self->_numberOfTrackers != a3)
  {
    self->_numberOfTrackers = a3;
    [(SFPrivacyReportBannerCell *)self _updateState];
  }
}

- (void)setPrivateBrowsingEnabled:(BOOL)a3
{
  if (self->_privateBrowsingEnabled != a3)
  {
    self->_privateBrowsingEnabled = a3;
    [(SFPrivacyReportBannerCell *)self _updateState];
  }
}

@end