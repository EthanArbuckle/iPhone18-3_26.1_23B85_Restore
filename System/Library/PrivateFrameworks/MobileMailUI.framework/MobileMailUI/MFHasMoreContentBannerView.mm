@interface MFHasMoreContentBannerView
+ (id)bannerWithFrame:(CGRect)frame isPlainText:(BOOL)text remainingBytes:(unint64_t)bytes;
- (MFHasMoreContentBannerView)initWithFrame:(CGRect)frame;
- (MFHasMoreContentBannerViewDelegate)delegate;
- (void)_titleControlTapped:(id)tapped;
- (void)reloadData;
@end

@implementation MFHasMoreContentBannerView

+ (id)bannerWithFrame:(CGRect)frame isPlainText:(BOOL)text remainingBytes:(unint64_t)bytes
{
  if (text)
  {
    v5 = [[_MFPlainTextBannerView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  else
  {
    v5 = [[_MFPartiallyDownloadedBannerView alloc] initWithFrame:bytes remainingBytes:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  return v5;
}

- (MFHasMoreContentBannerView)initWithFrame:(CGRect)frame
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = MFHasMoreContentBannerView;
  v3 = [(MFSuggestionBannerView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setAccessoryType:0];
    [v4 setActionButtonType:0];
    objc_initWeak(&location, v3);
    v5 = MEMORY[0x277D025D8];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __44__MFHasMoreContentBannerView_initWithFrame___block_invoke;
    v15 = &unk_2781819F8;
    objc_copyWeak(&v16, &location);
    v6 = [v5 actionWithTitle:&stru_2826D1AD8 handler:&v12];
    [v4 setPrimaryAction:{v6, v12, v13, v14, v15}];

    mailInteractiveColor = [MEMORY[0x277D75348] mailInteractiveColor];
    v8 = [MFSuggestionBannerView bannerIconViewForSymbol:*MEMORY[0x277D259C8] tintColor:mailInteractiveColor];
    v19[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v4 setImageSGViews:v9];

    [(MFSuggestionBannerView *)v3 setBanner:v4];
    [v4 reload];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void __44__MFHasMoreContentBannerView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained primaryAction];
}

- (void)_titleControlTapped:(id)tapped
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__MFHasMoreContentBannerView__titleControlTapped___block_invoke;
  v6[3] = &unk_2781816C0;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.35];
  banner = [(MFSuggestionBannerView *)self banner];
  [banner setUserInteractionEnabled:0];

  delegate = [(MFHasMoreContentBannerView *)self delegate];
  [delegate didTapHasMoreContentBannerView:self];
}

void __50__MFHasMoreContentBannerView__titleControlTapped___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) banner];
  v2 = [*(a1 + 32) actionStringIsDownloading:1];
  [v4 setActionTitle:v2];

  [v4 setActionButtonType:0];
  [*(a1 + 32) setBanner:v4];
  v3 = [*(a1 + 32) banner];
  [v3 setTintAdjustmentMode:2];
}

- (void)reloadData
{
  banner = [(MFSuggestionBannerView *)self banner];
  v3 = [(MFHasMoreContentBannerView *)self actionStringIsDownloading:0];
  [banner setActionTitle:v3];

  [banner setActionButtonType:0];
  [(MFSuggestionBannerView *)self setBanner:banner];
  banner2 = [(MFSuggestionBannerView *)self banner];
  [banner2 setTintAdjustmentMode:0];

  banner3 = [(MFSuggestionBannerView *)self banner];
  [banner3 setUserInteractionEnabled:1];
}

- (MFHasMoreContentBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end