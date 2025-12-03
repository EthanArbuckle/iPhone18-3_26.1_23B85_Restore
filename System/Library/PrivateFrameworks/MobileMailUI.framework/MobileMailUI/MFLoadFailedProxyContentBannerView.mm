@interface MFLoadFailedProxyContentBannerView
- (MFLoadFailedProxyContentBannerView)initWithFrame:(CGRect)frame failureReason:(int64_t)reason;
- (MFLoadFailedProxyContentBannerViewDelegate)delegate;
- (void)dismissAction;
- (void)primaryAction;
@end

@implementation MFLoadFailedProxyContentBannerView

- (MFLoadFailedProxyContentBannerView)initWithFrame:(CGRect)frame failureReason:(int64_t)reason
{
  v31[1] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = MFLoadFailedProxyContentBannerView;
  v5 = [(MFSuggestionBannerView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = @"FAILED_TO_PROXY_REMOTE_CONTENT_NETWORK_INCOMPATIBLE";
    v7 = @"FAILED_TO_PROXY_REMOTE_CONTENT_OTHER";
    if (reason)
    {
      v7 = 0;
    }

    if (reason != 1)
    {
      v6 = v7;
    }

    v8 = reason == 2;
    if (reason == 2)
    {
      v9 = @"FAILED_TO_PROXY_REMOTE_CONTENT_VPN";
    }

    else
    {
      v9 = v6;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:v9 value:&stru_2826D1AD8 table:@"Main"];

    v12 = objc_alloc_init(MEMORY[0x277D025D0]);
    [v12 setTitle:v11];
    [v12 setActionButtonType:0];
    if (v8)
    {
      [v12 setActionTitle:0];
      v13 = 1;
    }

    else
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [mainBundle2 localizedStringForKey:@"LOAD_FAILED_PROXY_CONTENT" value:&stru_2826D1AD8 table:@"Main"];
      [v12 setActionTitle:v15];

      v13 = 0;
    }

    [v12 setAccessoryType:v13];
    mailInteractiveColor = [MEMORY[0x277D75348] mailInteractiveColor];
    v17 = [MFSuggestionBannerView bannerIconViewForSymbol:*MEMORY[0x277D259C8] tintColor:mailInteractiveColor];
    v31[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v12 setImageSGViews:v18];

    objc_initWeak(&location, v5);
    v19 = MEMORY[0x277D025D8];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __66__MFLoadFailedProxyContentBannerView_initWithFrame_failureReason___block_invoke;
    v27[3] = &unk_2781819F8;
    objc_copyWeak(&v28, &location);
    v20 = [v19 actionWithTitle:&stru_2826D1AD8 handler:v27];
    [v12 setPrimaryAction:v20];

    v21 = MEMORY[0x277D025D8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __66__MFLoadFailedProxyContentBannerView_initWithFrame_failureReason___block_invoke_2;
    v25[3] = &unk_2781819F8;
    objc_copyWeak(&v26, &location);
    v22 = [v21 actionWithTitle:&stru_2826D1AD8 handler:v25];
    [v12 setDismissAction:v22];

    [(MFSuggestionBannerView *)v5 setBanner:v12];
    [v12 reload];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

void __66__MFLoadFailedProxyContentBannerView_initWithFrame_failureReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained primaryAction];
}

void __66__MFLoadFailedProxyContentBannerView_initWithFrame_failureReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAction];
}

- (void)primaryAction
{
  delegate = [(MFLoadFailedProxyContentBannerView *)self delegate];
  [delegate loadFailedProxyContentBannerDidTriggerLoad:self];
}

- (void)dismissAction
{
  delegate = [(MFLoadFailedProxyContentBannerView *)self delegate];
  [delegate loadFailedProxyContentBannerWasDismissed:self];
}

- (MFLoadFailedProxyContentBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end