@interface MFBannerView
- (MFBannerView)initWithType:(int64_t)type itemID:(id)d delegate:(id)delegate;
- (MFBannerViewDelegate)delegate;
- (id)_readLaterStringForDate:(id)date;
- (id)_subtitleWithViewModel:(id)model;
- (void)_configureWithType:(void *)type;
- (void)displayMessageUsingViewModel:(id)model;
- (void)setBottomSeparatorIsHidden:(BOOL)hidden;
@end

@implementation MFBannerView

- (MFBannerView)initWithType:(int64_t)type itemID:(id)d delegate:(id)delegate
{
  dCopy = d;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = MFBannerView;
  v11 = [(MFSuggestionBannerView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_itemID, d);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = objc_alloc_init(MEMORY[0x277D025D0]);
    [v13 setActionButtonType:0];
    [(MFSuggestionBannerView *)v12 setBanner:v13];
    [MFBannerView _configureWithType:v12];
  }

  return v12;
}

- (void)_configureWithType:(void *)type
{
  v41[2] = *MEMORY[0x277D85DE8];
  if (type)
  {
    type = [type type];
    if (type)
    {
      if (type == 1)
      {
        v32 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277D259D0]];
        viewModel = [type viewModel];
        readLaterDate = [viewModel readLaterDate];
        v5 = [type _readLaterStringForDate:readLaterDate];

        _EFLocalizedString();
        [type viewModel];
      }

      else if (type == 2)
      {
        v32 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277D28198]];
        v3 = MEMORY[0x277CCACA8];
        v4 = _EFLocalizedString();
        v5 = [v3 stringWithFormat:v4];

        _EFLocalizedString();
        [type viewModel];
      }

      else
      {
        v32 = 0;
        v5 = 0;
        [type viewModel];
      }
    }

    else
    {
      v32 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277D259D8]];
      v8 = MEMORY[0x277CCACA8];
      v9 = _EFLocalizedString();
      v5 = [v8 stringWithFormat:v9];

      _EFLocalizedString();
      [type viewModel];
    }
    v10 = ;
    v33 = [type _subtitleWithViewModel:v10];

    banner = [type banner];
    [banner setTitle:v5];
    v12 = [v5 length];
    v13 = MEMORY[0x277D740A8];
    v14 = MEMORY[0x277D740C0];
    if (v12)
    {
      v15 = objc_alloc(MEMORY[0x277CCA898]);
      v40[0] = *v13;
      titleFont = [type titleFont];
      v41[0] = titleFont;
      v40[1] = *v14;
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      v41[1] = secondaryLabelColor;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v19 = [v15 initWithString:v5 attributes:v18];
      [banner setAttributedTitle:v19];
    }

    [banner setSubtitle:v33];
    if ([v33 length])
    {
      v20 = objc_alloc(MEMORY[0x277CCA898]);
      v38[0] = *v13;
      subtitleFont = [type subtitleFont];
      v38[1] = *v14;
      v39[0] = subtitleFont;
      labelColor = [MEMORY[0x277D75348] labelColor];
      v39[1] = labelColor;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v24 = [v20 initWithString:v33 attributes:v23];
      [banner setAttributedSubtitle:v24];
    }

    [banner setActionTitle:v31];
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
      [banner setBackgroundColor:tertiarySystemFillColor];
    }

    v26 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v32];
    [v26 setContentMode:1];
    v37 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [banner setImageSGViews:v27];

    objc_initWeak(&location, type);
    v28 = MEMORY[0x277D025D8];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __35__MFBannerView__configureWithType___block_invoke;
    v34[3] = &unk_2781819F8;
    objc_copyWeak(&v35, &location);
    v29 = [v28 actionWithTitle:&stru_2826D1AD8 handler:v34];
    [banner setPrimaryAction:v29];

    [banner reload];
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

- (id)_readLaterStringForDate:(id)date
{
  dateCopy = date;
  [dateCopy ef_isEarlierThanNow];
  v4 = _EFLocalizedString();

  return v4;
}

- (id)_subtitleWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    v7 = 0;
    goto LABEL_12;
  }

  type = [(MFBannerView *)self type];
  if (type)
  {
    if (type == 1)
    {
      readLaterDate = [modelCopy readLaterDate];
    }

    else
    {
      if (type != 2)
      {
        v8 = 0;
        goto LABEL_11;
      }

      readLaterDate = [modelCopy dateSent];
    }
  }

  else
  {
    readLaterDate = [modelCopy sendLaterDate];
  }

  v8 = readLaterDate;
LABEL_11:
  v7 = [MEMORY[0x277CCA968] ef_formatDate:v8 style:2];

LABEL_12:

  return v7;
}

- (void)displayMessageUsingViewModel:(id)model
{
  modelCopy = model;
  v6.receiver = self;
  v6.super_class = MFBannerView;
  [(MFMessageHeaderViewBlock *)&v6 displayMessageUsingViewModel:modelCopy];
  itemID = [modelCopy itemID];
  [(MFBannerView *)self setItemID:itemID];

  [(MFBannerView *)self type];
  [MFBannerView _configureWithType:?];
}

- (void)setBottomSeparatorIsHidden:(BOOL)hidden
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