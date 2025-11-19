@interface MFBlockedSenderBannerView
- (MFBlockedSenderBannerView)initWithFrame:(CGRect)a3;
- (MFBlockedSenderBannerViewDelegate)delegate;
- (void)_bannerDismissed:(id)a3;
- (void)_titleControlTapped:(id)a3;
- (void)dismissAction;
- (void)primaryAction;
@end

@implementation MFBlockedSenderBannerView

- (MFBlockedSenderBannerView)initWithFrame:(CGRect)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = MFBlockedSenderBannerView;
  v3 = [(MFSuggestionBannerView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = objc_alloc(MEMORY[0x277CCA898]);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"MESSAGE_FROM_BLOCKED_SENDER" value:&stru_2826D1AD8 table:@"Main"];
    v29 = *MEMORY[0x277D740C0];
    v8 = [MEMORY[0x277D75348] secondaryLabelColor];
    v30[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v10 = [v5 initWithString:v7 attributes:v9];
    [v4 setAttributedTitle:v10];

    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"BLOCKED_SENDER_SETTINGS" value:&stru_2826D1AD8 table:@"Main"];
    [v4 setActionTitle:v12];

    [v4 setAccessoryType:1];
    [v4 setActionButtonType:0];
    v13 = [MEMORY[0x277D75348] systemRedColor];
    v14 = [MFSuggestionBannerView bannerIconViewForSymbol:*MEMORY[0x277CD6838] tintColor:v13];
    v28 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    [v4 setImageSGViews:v15];

    objc_initWeak(&location, v3);
    v16 = MEMORY[0x277D025D8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__MFBlockedSenderBannerView_initWithFrame___block_invoke;
    v24[3] = &unk_2781819F8;
    objc_copyWeak(&v25, &location);
    v17 = [v16 actionWithTitle:&stru_2826D1AD8 handler:v24];
    [v4 setPrimaryAction:v17];

    v18 = MEMORY[0x277D025D8];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__MFBlockedSenderBannerView_initWithFrame___block_invoke_2;
    v22[3] = &unk_2781819F8;
    objc_copyWeak(&v23, &location);
    v19 = [v18 actionWithTitle:&stru_2826D1AD8 handler:v22];
    [v4 setDismissAction:v19];

    [(MFSuggestionBannerView *)v3 setBanner:v4];
    [v4 reload];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

void __43__MFBlockedSenderBannerView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained primaryAction];
}

void __43__MFBlockedSenderBannerView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAction];
}

- (void)primaryAction
{
  v3 = [(MFBlockedSenderBannerView *)self delegate];
  [v3 didTapBlockedSenderBannerView:self];
}

- (void)dismissAction
{
  v3 = [(MFBlockedSenderBannerView *)self delegate];
  [v3 didDismissBlockedSenderBannerView:self];
}

- (void)_titleControlTapped:(id)a3
{
  v4 = [(MFBlockedSenderBannerView *)self delegate];
  [v4 didTapBlockedSenderBannerView:self];
}

- (void)_bannerDismissed:(id)a3
{
  v4 = [(MFBlockedSenderBannerView *)self delegate];
  [v4 didDismissBlockedSenderBannerView:self];
}

- (MFBlockedSenderBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end