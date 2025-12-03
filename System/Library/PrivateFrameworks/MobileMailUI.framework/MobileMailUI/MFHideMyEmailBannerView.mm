@interface MFHideMyEmailBannerView
- (MFHideMyEmailBannerView)initWithFrame:(CGRect)frame;
- (MFHideMyEmailBannerViewDelegate)delegate;
- (void)dismissAction;
- (void)primaryAction;
@end

@implementation MFHideMyEmailBannerView

- (MFHideMyEmailBannerView)initWithFrame:(CGRect)frame
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = MFHideMyEmailBannerView;
  v3 = [(MFSuggestionBannerView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D025D0]);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_2826D1AD8 table:@"Main"];
    [v4 setTitle:v6];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"HME_BANNER_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
    [v4 setSubtitle:v8];

    [v4 setAccessoryType:1];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SETTINGS" value:&stru_2826D1AD8 table:@"Main"];
    [v4 setActionTitle:v10];

    [v4 setActionButtonType:0];
    mailInteractiveColor = [MEMORY[0x277D75348] mailInteractiveColor];
    v12 = [MFSuggestionBannerView bannerIconViewForSymbol:*MEMORY[0x277D259C0] tintColor:mailInteractiveColor];
    v26[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v4 setImageSGViews:v13];

    objc_initWeak(&location, v3);
    v14 = MEMORY[0x277D025D8];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __41__MFHideMyEmailBannerView_initWithFrame___block_invoke;
    v22[3] = &unk_2781819F8;
    objc_copyWeak(&v23, &location);
    v15 = [v14 actionWithTitle:&stru_2826D1AD8 handler:v22];
    [v4 setPrimaryAction:v15];

    v16 = MEMORY[0x277D025D8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__MFHideMyEmailBannerView_initWithFrame___block_invoke_2;
    v20[3] = &unk_2781819F8;
    objc_copyWeak(&v21, &location);
    v17 = [v16 actionWithTitle:&stru_2826D1AD8 handler:v20];
    [v4 setDismissAction:v17];

    [(MFSuggestionBannerView *)v3 setBanner:v4];
    [v4 reload];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

void __41__MFHideMyEmailBannerView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained primaryAction];
}

void __41__MFHideMyEmailBannerView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAction];
}

- (void)primaryAction
{
  delegate = [(MFHideMyEmailBannerView *)self delegate];
  [delegate didTapHideMyEmailBannerView:self];
}

- (void)dismissAction
{
  delegate = [(MFHideMyEmailBannerView *)self delegate];
  [delegate didDismissHideMyEmailBannerView:self];
}

- (MFHideMyEmailBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end