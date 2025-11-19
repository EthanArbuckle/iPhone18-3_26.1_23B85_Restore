@interface MFBannerView
- (MFBannerView)initWithType:(int64_t)a3 itemID:(id)a4 delegate:(id)a5;
- (MFBannerViewDelegate)delegate;
- (id)_readLaterStringForDate:(id)a3;
- (id)_subtitleWithViewModel:(id)a3;
- (void)_configureWithType:(void *)a1;
- (void)displayMessageUsingViewModel:(id)a3;
- (void)setBottomSeparatorIsHidden:(BOOL)a3;
@end

@implementation MFBannerView

- (MFBannerView)initWithType:(int64_t)a3 itemID:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MFBannerView;
  v11 = [(MFSuggestionBannerView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_itemID, a4);
    objc_storeWeak(&v12->_delegate, v10);
    v13 = objc_alloc_init(MEMORY[0x277D025D0]);
    [v13 setActionButtonType:0];
    [(MFSuggestionBannerView *)v12 setBanner:v13];
    [MFBannerView _configureWithType:v12];
  }

  return v12;
}

- (void)_configureWithType:(void *)a1
{
  v41[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 type];
    if (v2)
    {
      if (v2 == 1)
      {
        v32 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277D259D0]];
        v6 = [a1 viewModel];
        v7 = [v6 readLaterDate];
        v5 = [a1 _readLaterStringForDate:v7];

        _EFLocalizedString();
        [a1 viewModel];
      }

      else if (v2 == 2)
      {
        v32 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277D28198]];
        v3 = MEMORY[0x277CCACA8];
        v4 = _EFLocalizedString();
        v5 = [v3 stringWithFormat:v4];

        _EFLocalizedString();
        [a1 viewModel];
      }

      else
      {
        v32 = 0;
        v5 = 0;
        [a1 viewModel];
      }
    }

    else
    {
      v32 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277D259D8]];
      v8 = MEMORY[0x277CCACA8];
      v9 = _EFLocalizedString();
      v5 = [v8 stringWithFormat:v9];

      _EFLocalizedString();
      [a1 viewModel];
    }
    v10 = ;
    v33 = [a1 _subtitleWithViewModel:v10];

    v11 = [a1 banner];
    [v11 setTitle:v5];
    v12 = [v5 length];
    v13 = MEMORY[0x277D740A8];
    v14 = MEMORY[0x277D740C0];
    if (v12)
    {
      v15 = objc_alloc(MEMORY[0x277CCA898]);
      v40[0] = *v13;
      v16 = [a1 titleFont];
      v41[0] = v16;
      v40[1] = *v14;
      v17 = [MEMORY[0x277D75348] secondaryLabelColor];
      v41[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v19 = [v15 initWithString:v5 attributes:v18];
      [v11 setAttributedTitle:v19];
    }

    [v11 setSubtitle:v33];
    if ([v33 length])
    {
      v20 = objc_alloc(MEMORY[0x277CCA898]);
      v38[0] = *v13;
      v21 = [a1 subtitleFont];
      v38[1] = *v14;
      v39[0] = v21;
      v22 = [MEMORY[0x277D75348] labelColor];
      v39[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v24 = [v20 initWithString:v33 attributes:v23];
      [v11 setAttributedSubtitle:v24];
    }

    [v11 setActionTitle:v31];
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      v25 = [MEMORY[0x277D75348] tertiarySystemFillColor];
      [v11 setBackgroundColor:v25];
    }

    v26 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v32];
    [v26 setContentMode:1];
    v37 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [v11 setImageSGViews:v27];

    objc_initWeak(&location, a1);
    v28 = MEMORY[0x277D025D8];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __35__MFBannerView__configureWithType___block_invoke;
    v34[3] = &unk_2781819F8;
    objc_copyWeak(&v35, &location);
    v29 = [v28 actionWithTitle:&stru_2826D1AD8 handler:v34];
    [v11 setPrimaryAction:v29];

    [v11 reload];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __35__MFBannerView__configureWithType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained itemID];
  [v1 bannerViewDidSelectEditButton:WeakRetained itemID:v2];
}

- (id)_readLaterStringForDate:(id)a3
{
  v3 = a3;
  [v3 ef_isEarlierThanNow];
  v4 = _EFLocalizedString();

  return v4;
}

- (id)_subtitleWithViewModel:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v5 = [(MFBannerView *)self type];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [v4 readLaterDate];
    }

    else
    {
      if (v5 != 2)
      {
        v8 = 0;
        goto LABEL_11;
      }

      v6 = [v4 dateSent];
    }
  }

  else
  {
    v6 = [v4 sendLaterDate];
  }

  v8 = v6;
LABEL_11:
  v7 = [MEMORY[0x277CCA968] ef_formatDate:v8 style:2];

LABEL_12:

  return v7;
}

- (void)displayMessageUsingViewModel:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFBannerView;
  [(MFMessageHeaderViewBlock *)&v6 displayMessageUsingViewModel:v4];
  v5 = [v4 itemID];
  [(MFBannerView *)self setItemID:v5];

  [(MFBannerView *)self type];
  [MFBannerView _configureWithType:?];
}

- (void)setBottomSeparatorIsHidden:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MFBannerView;
  [(MFSuggestionBannerView *)&v3 setBottomSeparatorIsHidden:0];
}

- (MFBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end