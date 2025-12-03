@interface SFPrivacyReportBannerCell
- (SFPrivacyReportBannerCell)initWithFrame:(CGRect)frame;
- (void)_privacyProxyAvailabilityChanged:(id)changed;
- (void)_updateState;
- (void)configureUsingBanner:(id)banner;
- (void)setNumberOfTrackers:(int64_t)trackers;
- (void)setPrivateBrowsingEnabled:(BOOL)enabled;
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

  leadingLabel = [(SFInteractiveBannerCell *)self leadingLabel];
  [leadingLabel setAttributedText:v7];

  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  isPrivacyProxyActive = [mEMORY[0x1E69C9808] isPrivacyProxyActive];
  state = [mEMORY[0x1E69C9808] state];
  captionLabel = [(SFInteractiveBannerCell *)self captionLabel];
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
  [captionLabel setAccessibilityIdentifier:v19];

  if (!self->_privateBrowsingEnabled)
  {
    mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    webui_trackerProtectionEnabled = [mEMORY[0x1E696AC60] webui_trackerProtectionEnabled];

    if ((webui_trackerProtectionEnabled & 1) == 0)
    {
      v28 = _WBSLocalizedString();
      [captionLabel setText:v28];

      v29 = _WBSLocalizedString();
      [(SFPrivacyReportBannerCell *)self _setAction:0 text:v29];

      goto LABEL_39;
    }

    if (isPrivacyProxyActive)
    {
      if (state == 2)
      {
        v26 = MEMORY[0x1E696AEC0];
      }

      else if (state == 1)
      {
        v26 = MEMORY[0x1E696AEC0];
      }

      else
      {
        if (state)
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
    [captionLabel setText:v31];

    [(SFInteractiveBannerCell *)self _removeActionButton];
    goto LABEL_39;
  }

  [(SFInteractiveBannerCell *)self _removeActionButton];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v21 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:1];

  if (!v21)
  {
    goto LABEL_25;
  }

  if (state)
  {
    v22 = isPrivacyProxyActive;
  }

  else
  {
    v22 = 0;
  }

  if (!self->_numberOfTrackers)
  {
    if (v22 && state != 2 && state != 1)
    {
      goto LABEL_39;
    }

LABEL_25:
    v27 = _WBSLocalizedString();
    [captionLabel setText:v27];

    goto LABEL_39;
  }

  if (!v22)
  {
    v23 = MEMORY[0x1E696AEC0];
    goto LABEL_38;
  }

  if (state == 2)
  {
    v23 = MEMORY[0x1E696AEC0];
    goto LABEL_38;
  }

  if (state == 1)
  {
    v23 = MEMORY[0x1E696AEC0];
LABEL_38:
    v32 = _WBSLocalizedString();
    v33 = [v23 localizedStringWithFormat:v32, self->_numberOfTrackers];
    [captionLabel setText:v33];
  }

LABEL_39:
}

- (SFPrivacyReportBannerCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SFPrivacyReportBannerCell;
  v3 = [(SFInteractiveBannerCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfTrackers = -1;
    [(SFPrivacyReportBannerCell *)v3 _updateState];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69C9940];
    mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
    [defaultCenter addObserver:v4 selector:sel__privacyProxyAvailabilityChanged_ name:v6 object:mEMORY[0x1E69C9808]];

    v8 = v4;
  }

  return v4;
}

- (void)configureUsingBanner:(id)banner
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportBannerCell;
  [(SFInteractiveBannerCell *)&v4 configureUsingBanner:banner];
  [(SFPrivacyReportBannerCell *)self _updateState];
}

- (void)_privacyProxyAvailabilityChanged:(id)changed
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

- (void)setNumberOfTrackers:(int64_t)trackers
{
  if (self->_numberOfTrackers != trackers)
  {
    self->_numberOfTrackers = trackers;
    [(SFPrivacyReportBannerCell *)self _updateState];
  }
}

- (void)setPrivateBrowsingEnabled:(BOOL)enabled
{
  if (self->_privateBrowsingEnabled != enabled)
  {
    self->_privateBrowsingEnabled = enabled;
    [(SFPrivacyReportBannerCell *)self _updateState];
  }
}

@end