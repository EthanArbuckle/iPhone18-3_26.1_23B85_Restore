@interface MFMailDropBannerView
- (MFMailDropBannerDelegate)delegate;
- (MFMailDropBannerView)initWithFrame:(CGRect)frame;
- (void)_setupDownloadIcon;
- (void)_setupDownloadLabel;
- (void)_setupExpirationLabel;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)setBannerState:(unint64_t)state;
- (void)setBottomSeparatorIsHidden:(BOOL)hidden;
- (void)setDownloadProgress:(double)progress;
- (void)startDownload:(id)download;
- (void)updateConstraints;
@end

@implementation MFMailDropBannerView

- (MFMailDropBannerView)initWithFrame:(CGRect)frame
{
  v75[11] = *MEMORY[0x277D85DE8];
  v74.receiver = self;
  v74.super_class = MFMailDropBannerView;
  v3 = [(MFMessageHeaderViewBlock *)&v74 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMailDropBannerView *)v3 setClipsToBounds:0];
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    downloadLabel = v4->_downloadLabel;
    v4->_downloadLabel = v10;

    v12 = v4->_downloadLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v12 setTextColor:labelColor];

    v14 = v4->_downloadLabel;
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v14 setFont:v15];

    [(UILabel *)v4->_downloadLabel setNumberOfLines:0];
    [(UILabel *)v4->_downloadLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFMailDropBannerView *)v4 addSubview:v4->_downloadLabel];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    expirationLabel = v4->_expirationLabel;
    v4->_expirationLabel = v16;

    v18 = v4->_expirationLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v18 setTextColor:secondaryLabelColor];

    v20 = v4->_expirationLabel;
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v4->_expirationLabel setNumberOfLines:0];
    [(UILabel *)v4->_expirationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFMailDropBannerView *)v4 addSubview:v4->_expirationLabel];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    v23 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v6, v7, v8, v9}];
    downloadIcon = v4->_downloadIcon;
    v4->_downloadIcon = v23;

    LODWORD(v25) = -16.0;
    [(UIButton *)v4->_downloadIcon setCharge:v25];
    [(UIButton *)v4->_downloadIcon setTranslatesAutoresizingMaskIntoConstraints:0];
    tintColor = [(MFMailDropBannerView *)v4 tintColor];
    [(UIButton *)v4->_downloadIcon setTintColor:tintColor];

    [(MFMailDropBannerView *)v4 addSubview:v4->_downloadIcon];
    v27 = [objc_alloc(MEMORY[0x277CD68A8]) initWithProgressViewStyle:0 stroke:2.0 frame:{0.0, 0.0, 26.0, 26.0}];
    progressView = v4->_progressView;
    v4->_progressView = v27;

    [(MFProgressView *)v4->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFProgressView *)v4->_progressView setHidden:1];
    [(MFMailDropBannerView *)v4 addSubview:v4->_progressView];
    layoutMarginsGuide = [(MFMailDropBannerView *)v4 layoutMarginsGuide];
    firstBaselineAnchor = [(UILabel *)v4->_downloadLabel firstBaselineAnchor];
    topAnchor = [(MFMailDropBannerView *)v4 topAnchor];
    v31 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:0.0];
    labelFirstBaseline = v4->_labelFirstBaseline;
    v4->_labelFirstBaseline = v31;

    firstBaselineAnchor2 = [(UILabel *)v4->_expirationLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_downloadLabel lastBaselineAnchor];
    v35 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:0.0];
    expirationFirstBaseline = v4->_expirationFirstBaseline;
    v4->_expirationFirstBaseline = v35;

    bottomAnchor = [(UILabel *)v4->_expirationLabel bottomAnchor];
    bottomAnchor2 = [(MFMailDropBannerView *)v4 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    expirationBottom = v4->_expirationBottom;
    v4->_expirationBottom = v39;

    v75[0] = v4->_labelFirstBaseline;
    leadingAnchor = [(UILabel *)v4->_downloadLabel leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v66 = [leadingAnchor constraintEqualToAnchor:?];
    v75[1] = v66;
    trailingAnchor = [(UILabel *)v4->_downloadLabel trailingAnchor];
    trailingAccessoryViewLayoutGuide = [(MFMessageHeaderViewBlock *)v4 trailingAccessoryViewLayoutGuide];
    leadingAnchor3 = [trailingAccessoryViewLayoutGuide leadingAnchor];
    v63 = [trailingAnchor constraintLessThanOrEqualToAnchor:?];
    v75[2] = v63;
    v75[3] = v4->_expirationFirstBaseline;
    v75[4] = v4->_expirationBottom;
    leadingAnchor4 = [(UILabel *)v4->_expirationLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v4->_downloadLabel leadingAnchor];
    v61 = [leadingAnchor4 constraintEqualToAnchor:?];
    v75[5] = v61;
    trailingAnchor2 = [(UILabel *)v4->_expirationLabel trailingAnchor];
    trailingAccessoryViewLayoutGuide2 = [(MFMessageHeaderViewBlock *)v4 trailingAccessoryViewLayoutGuide];
    leadingAnchor6 = [trailingAccessoryViewLayoutGuide2 leadingAnchor];
    v58 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:?];
    v75[6] = v58;
    centerXAnchor = [(UIButton *)v4->_downloadIcon centerXAnchor];
    trailingAccessoryViewLayoutGuide3 = [(MFMessageHeaderViewBlock *)v4 trailingAccessoryViewLayoutGuide];
    centerXAnchor2 = [trailingAccessoryViewLayoutGuide3 centerXAnchor];
    v55 = [centerXAnchor constraintEqualToAnchor:?];
    v75[7] = v55;
    centerYAnchor = [(UIButton *)v4->_downloadIcon centerYAnchor];
    centerYAnchor2 = [(MFMailDropBannerView *)v4 centerYAnchor];
    v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v75[8] = v53;
    centerXAnchor3 = [(MFProgressView *)v4->_progressView centerXAnchor];
    trailingAccessoryViewLayoutGuide4 = [(MFMessageHeaderViewBlock *)v4 trailingAccessoryViewLayoutGuide];
    centerXAnchor4 = [trailingAccessoryViewLayoutGuide4 centerXAnchor];
    v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v75[9] = v45;
    centerYAnchor3 = [(MFProgressView *)v4->_progressView centerYAnchor];
    centerYAnchor4 = [(MFMailDropBannerView *)v4 centerYAnchor];
    v48 = centerYAnchor2;
    v49 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v75[10] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:11];

    [MEMORY[0x277CCAAD0] activateConstraints:v50];
  }

  v51 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setBannerState:(unint64_t)state
{
  if (self->_metaData)
  {
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    [mainThreadScheduler performBlock:&v4];
  }
}

void __39__MFMailDropBannerView_setBannerState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 592) == v2)
  {
    return;
  }

  *(v1 + 592) = v2;
  v4 = [*(*(a1 + 32) + 584) isInvalid];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = 5;
LABEL_6:
    *(v5 + 592) = v6;
    goto LABEL_7;
  }

  if ([*(v5 + 584) isExpired])
  {
    v5 = *(a1 + 32);
    v6 = 4;
    goto LABEL_6;
  }

LABEL_7:
  [*(a1 + 32) _setupDownloadLabel];
  [*(a1 + 32) _setupExpirationLabel];
  [*(a1 + 32) _setupDownloadIcon];
  if (*(a1 + 40) == 3)
  {
    [*(*(a1 + 32) + 544) progressDidFinish];
  }

  v7 = [*(a1 + 32) superview];
  [v7 setNeedsLayout];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  displayMetrics = [(MFMessageHeaderViewBlock *)self displayMetrics];
  [displayMetrics avatarDiameterForCurrentContentSize];
  [(NSLayoutConstraint *)self->_iconWrapperWidth setConstant:?];

  [v3 _bodyLeading];
  [(NSLayoutConstraint *)self->_labelFirstBaseline setConstant:v6 * 1.11111111];
  [v4 _bodyLeading];
  [(NSLayoutConstraint *)self->_expirationFirstBaseline setConstant:v7 * 1.125];
  [v3 _bodyLeading];
  [(NSLayoutConstraint *)self->_expirationBottom setConstant:v8 * -0.666666667];
  v9.receiver = self;
  v9.super_class = MFMailDropBannerView;
  [(MFMessageHeaderViewBlock *)&v9 updateConstraints];
}

- (void)_setupDownloadLabel
{
  flags = [(EMMailDropMetadata *)self->_metaData flags];
  bannerState = self->_bannerState;
  if (bannerState <= 2)
  {
    if (bannerState == 1)
    {
      if (([(EMMailDropMetadata *)self->_metaData flags]& 2) != 0)
      {
        if (([(EMMailDropMetadata *)self->_metaData flags]& 4) != 0)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_SAVE_MIXED" value:&stru_2826D1AD8 table:@"Main"];
        }

        else
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_SAVE_IMAGE" value:&stru_2826D1AD8 table:@"Main"];
        }
      }

      else
      {
        [MEMORY[0x277CCA8D8] mainBundle];
        if ((flags & 0x10) != 0)
          mainBundle = {;
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_SAVE_NONIMAGE_PLURAL" value:&stru_2826D1AD8 table:@"Main"];
        }

        else
          mainBundle = {;
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_SAVE_NONIMAGE" value:&stru_2826D1AD8 table:@"Main"];
        }
      }
    }

    else
    {
      if (bannerState != 2)
      {
LABEL_19:
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v6 = [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_ERROR" value:&stru_2826D1AD8 table:@"Main"];
        goto LABEL_20;
      }

      if (([(EMMailDropMetadata *)self->_metaData flags]& 2) != 0)
      {
        if (([(EMMailDropMetadata *)self->_metaData flags]& 4) == 0)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          v6 = [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADING_IMAGES" value:&stru_2826D1AD8 table:@"Main"];
          goto LABEL_20;
        }

        [MEMORY[0x277CCA8D8] mainBundle];
        if ((flags & 0x10) != 0)
          mainBundle = {;
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADING_MIXED_PLURAL" value:&stru_2826D1AD8 table:@"Main"];
        }

        else
          mainBundle = {;
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADING_MIXED" value:&stru_2826D1AD8 table:@"Main"];
        }
      }

      else
      {
        [MEMORY[0x277CCA8D8] mainBundle];
        if ((flags & 0x10) != 0)
          mainBundle = {;
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADING_NONIMAGE_PLURAL" value:&stru_2826D1AD8 table:@"Main"];
        }

        else
          mainBundle = {;
          [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADING_NONIMAGE" value:&stru_2826D1AD8 table:@"Main"];
        }
      }
    }
  }

  else if (bannerState == 3)
  {
    if (([(EMMailDropMetadata *)self->_metaData flags]& 2) != 0)
    {
      if (([(EMMailDropMetadata *)self->_metaData flags]& 4) != 0)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADED_MIXED" value:&stru_2826D1AD8 table:@"Main"];
      }

      else
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADED_IMAGE" value:&stru_2826D1AD8 table:@"Main"];
      }
    }

    else
    {
      [MEMORY[0x277CCA8D8] mainBundle];
      if ((flags & 0x10) != 0)
        mainBundle = {;
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADED_PLURAL" value:&stru_2826D1AD8 table:@"Main"];
      }

      else
        mainBundle = {;
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_DOWNLOADED" value:&stru_2826D1AD8 table:@"Main"];
      }
    }
  }

  else
  {
    if (bannerState != 4)
    {
      goto LABEL_19;
    }

    if (([(EMMailDropMetadata *)self->_metaData flags]& 2) != 0)
    {
      if (([(EMMailDropMetadata *)self->_metaData flags]& 4) != 0)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_ATTACHMENT" value:&stru_2826D1AD8 table:@"Main"];
      }

      else
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_FULL_RES" value:&stru_2826D1AD8 table:@"Main"];
      }
    }

    else
    {
      [MEMORY[0x277CCA8D8] mainBundle];
      if ((flags & 0x10) != 0)
        mainBundle = {;
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_ATTACHMENT_PLURAL" value:&stru_2826D1AD8 table:@"Main"];
      }

      else
        mainBundle = {;
        [mainBundle localizedStringForKey:@"MAIL_DROP_BANNER_ATTACHMENT" value:&stru_2826D1AD8 table:@"Main"];
      }
    }
  }
  v6 = ;
LABEL_20:
  v7 = v6;

  [(UILabel *)self->_downloadLabel setText:v7];
}

- (void)_setupExpirationLabel
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "#Attachments nil date string result for meta data [%@] expiration [%@]", buf, 0x16u);
}

- (void)_setupDownloadIcon
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__MFMailDropBannerView__setupDownloadIcon__block_invoke;
  aBlock[3] = &unk_278181BB8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MFMailDropBannerView__setupDownloadIcon__block_invoke_2;
  v6[3] = &unk_278181BE0;
  v6[4] = self;
  v4 = v3;
  v7 = v4;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:v6];
}

void __42__MFMailDropBannerView__setupDownloadIcon__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 536);
  v9 = v5;
  v7 = [MEMORY[0x277D755B8] mf_systemImageNamed:? forView:?];
  [v6 setImage:v7 forState:0];

  v8 = *(*(a1 + 32) + 536);
  if (a3)
  {
    [v8 addTarget:? action:? forControlEvents:?];
  }

  else
  {
    [v8 removeTarget:? action:? forControlEvents:?];
  }
}

uint64_t __42__MFMailDropBannerView__setupDownloadIcon__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 544) setHidden:1];
  [*(*(a1 + 32) + 536) setHidden:0];
  v2 = [*(a1 + 32) bannerState];
  if (v2 > 3)
  {
    if (v2 == 5 || v2 == 4)
    {
      v3 = *(a1 + 40);
      v4 = MEMORY[0x277CD67D0];
      goto LABEL_8;
    }

LABEL_9:
    v7 = *MEMORY[0x277CD67C0];
    v6 = *(*(a1 + 40) + 16);
    goto LABEL_10;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v3 = *(a1 + 40);
      v4 = MEMORY[0x277CD67C8];
LABEL_8:
      v5 = *v4;
      v6 = *(v3 + 16);
LABEL_10:
      v6();
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  [*(*(a1 + 32) + 544) setHidden:0];
  [*(*(a1 + 32) + 536) setHidden:1];
  [*(*(a1 + 32) + 544) sizeToFit];
  [*(a1 + 32) bringSubviewToFront:*(*(a1 + 32) + 544)];
  [*(*(a1 + 32) + 544) setNeedsDisplay];
  [*(*(a1 + 32) + 536) removeTarget:*(a1 + 32) action:sel_startDownload_ forControlEvents:64];
LABEL_11:
  [*(*(a1 + 32) + 536) sizeToFit];
  [*(a1 + 32) bringSubviewToFront:*(*(a1 + 32) + 536)];
  v8 = *(*(a1 + 32) + 536);

  return [v8 setNeedsDisplay];
}

- (void)startDownload:(id)download
{
  [(MFMailDropBannerView *)self setBannerState:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mailDropBannerDidTriggerDownload:self];
}

- (void)setDownloadProgress:(double)progress
{
  self->_downloadProgress = progress;
  if ([(MFMailDropBannerView *)self _shouldDisplayProgress])
  {
    progressView = self->_progressView;

    [(MFProgressView *)progressView setProgress:progress];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  downloadLabel = self->_downloadLabel;
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)downloadLabel setFont:v5];

  expirationLabel = self->_expirationLabel;
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)expirationLabel setFont:v7];

  [(MFMailDropBannerView *)self setNeedsUpdateConstraints];

  [(MFMailDropBannerView *)self invalidateIntrinsicContentSize];
}

- (void)setBottomSeparatorIsHidden:(BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = MFMailDropBannerView;
  [(MFMessageHeaderViewBlock *)&v3 setBottomSeparatorIsHidden:0];
}

- (MFMailDropBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end