@interface DownloadTableViewCell
+ (id)tableViewCellForSizeEstimation;
- (DownloadTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (DownloadTableViewCellDelegate)delegate;
- (id)_busyStatus;
- (id)_buttonWithSymbolName:(id)a3;
- (void)_buttonPressed:(id)a3;
- (void)_downloadChanged:(id)a3;
- (void)_downloadURLChanged:(id)a3;
- (void)_updateCellContents;
- (void)_updateCellContentsForSizing;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)downloadIconCache:(id)a3 didGenerateNewIcon:(id)a4 forSource:(id)a5;
- (void)setDownload:(id)a3;
- (void)setIconCache:(id)a3;
@end

@implementation DownloadTableViewCell

+ (id)tableViewCellForSizeEstimation
{
  v2 = [[a1 alloc] initWithStyle:0 reuseIdentifier:0];
  [v2 _updateCellContentsForSizing];

  return v2;
}

- (DownloadTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v80[3] = *MEMORY[0x277D85DE8];
  v77.receiver = self;
  v77.super_class = DownloadTableViewCell;
  v4 = [(DownloadTableViewCell *)&v77 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v76 = [(DownloadTableViewCell *)v4 contentView];
    v6 = [(DownloadTableViewCell *)v5 layoutManager];
    [v76 setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
    v75 = v6;
    v7 = [v6 textLabelForCell:v5];
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v7;

    [(UILabel *)v5->_nameLabel setAdjustsFontForContentSizeCategory:1];
    v9 = [v6 detailTextLabelForCell:v5];
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v9;

    [(UILabel *)v5->_statusLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x277D74300] safari_monospacedDigitFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v5->_statusLabel setFont:v11];

    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_statusLabel setTextColor:v12];

    v13 = [(DownloadTableViewCell *)v5 _buttonWithSymbolName:@"xmark"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v13;

    v15 = [(DownloadTableViewCell *)v5 _buttonWithSymbolName:@"magnifyingglass"];
    revealButton = v5->_revealButton;
    v5->_revealButton = v15;

    v17 = [(DownloadTableViewCell *)v5 _buttonWithSymbolName:@"arrow.clockwise"];
    resumeButton = v5->_resumeButton;
    v5->_resumeButton = v17;

    [(UILabel *)v5->_nameLabel setAccessibilityIdentifier:@"DownloadName"];
    [(UILabel *)v5->_statusLabel setAccessibilityIdentifier:@"DownloadStatus"];
    [(UIButton *)v5->_cancelButton setAccessibilityIdentifier:@"CancelDownloadButton"];
    [(UIButton *)v5->_revealButton setAccessibilityIdentifier:@"RevealDownloadButton"];
    [(UIButton *)v5->_resumeButton setAccessibilityIdentifier:@"ResumeDownloadButton"];
    v19 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    progressView = v5->_progressView;
    v5->_progressView = v19;

    [(UIProgressView *)v5->_progressView setAccessibilityIdentifier:@"DownloadProgress"];
    v21 = objc_alloc(MEMORY[0x277D75A68]);
    v80[0] = v5->_nameLabel;
    v80[1] = v5->_progressView;
    v80[2] = v5->_statusLabel;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
    v23 = [v21 initWithArrangedSubviews:v22];

    [v23 setAxis:1];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setSpacing:4.0];
    LODWORD(v24) = 1144750080;
    [v23 setContentCompressionResistancePriority:1 forAxis:v24];
    v25 = objc_alloc(MEMORY[0x277D75A68]);
    v79[0] = v5->_cancelButton;
    v79[1] = v5->_resumeButton;
    v79[2] = v5->_revealButton;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
    v27 = [v25 initWithArrangedSubviews:v26];

    [v27 setAxis:0];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setSpacing:24.0];
    LODWORD(v28) = 1144750080;
    [v27 setContentHuggingPriority:0 forAxis:v28];
    [v27 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
    v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(UIImageView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v29 setContentMode:4];
    iconView = v5->_iconView;
    v5->_iconView = v29;
    v31 = v29;

    [v76 addSubview:v23];
    [v76 addSubview:v27];
    [v76 addSubview:v31];
    v61 = MEMORY[0x277CCAAD0];
    v74 = [(UIImageView *)v31 leadingAnchor];
    v73 = [v76 leadingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:16.0];
    v78[0] = v72;
    v71 = [(UIImageView *)v31 widthAnchor];
    v70 = [v71 constraintEqualToConstant:48.0];
    v78[1] = v70;
    v69 = [(UIImageView *)v31 heightAnchor];
    v68 = [v69 constraintEqualToConstant:48.0];
    v78[2] = v68;
    v67 = [(UIImageView *)v31 centerYAnchor];
    v66 = [v76 centerYAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v78[3] = v65;
    v64 = [(UIImageView *)v31 topAnchor];
    v63 = [v76 topAnchor];
    v62 = [v64 constraintGreaterThanOrEqualToAnchor:v63 constant:14.0];
    v78[4] = v62;
    v32 = [(UIImageView *)v31 topAnchor];
    v33 = [(UILabel *)v5->_nameLabel topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    v60 = v34;
    LODWORD(v35) = 1144750080;
    [v34 setPriority:v35];
    v78[5] = v34;
    v58 = [(UILabel *)v5->_nameLabel topAnchor];
    v57 = [v76 topAnchor];
    v56 = [v58 constraintLessThanOrEqualToAnchor:v57 constant:40.0];
    v78[6] = v56;
    v54 = [v23 leadingAnchor];
    v53 = [(UIImageView *)v5->_iconView trailingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:12.0];
    v78[7] = v52;
    v51 = [v76 bottomAnchor];
    v59 = v23;
    v50 = [v23 bottomAnchor];
    v49 = [v51 constraintGreaterThanOrEqualToAnchor:v50 constant:16.0];
    v78[8] = v49;
    v36 = v27;
    v48 = [v27 leadingAnchor];
    v47 = [v23 trailingAnchor];
    v37 = [v48 constraintEqualToAnchor:v47 constant:24.0];
    v78[9] = v37;
    v55 = v27;
    v38 = [v27 trailingAnchor];
    v39 = [v76 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:-16.0];
    v78[10] = v40;
    v41 = [v36 centerYAnchor];
    v42 = [v76 centerYAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v78[11] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:12];
    [v61 activateConstraints:v44];

    v45 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(_SFDownloadIconCache *)self->_iconCache removeCacheObserver:self];
  v3.receiver = self;
  v3.super_class = DownloadTableViewCell;
  [(DownloadTableViewCell *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = DownloadTableViewCell;
  [(DownloadTableViewCell *)&v2 didMoveToWindow];
  SFDeferrableUpdateViewDidMoveToWindow();
}

- (id)_buttonWithSymbolName:(id)a3
{
  v4 = MEMORY[0x277D755D0];
  v5 = a3;
  v6 = [v4 configurationWithPointSize:15.0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:v5 withConfiguration:v6];

  v8 = [MEMORY[0x277D75220] buttonWithType:1];
  [v8 setImage:v7 forState:0];
  [v8 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
  [v8 addTarget:self action:sel__buttonPressed_ forControlEvents:0x2000];
  LODWORD(v9) = 1144750080;
  [v8 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v10];

  return v8;
}

- (void)_buttonPressed:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_cancelButton == v5)
  {
    [WeakRetained cancelDownload:self->_download];
  }

  else if (self->_resumeButton == v5)
  {
    [WeakRetained resumeDownload:self->_download];
  }

  else if (self->_revealButton == v5)
  {
    [WeakRetained revealDownload:self->_download];
  }
}

- (void)setIconCache:(id)a3
{
  objc_storeStrong(&self->_iconCache, a3);
  v5 = a3;
  [v5 addCacheObserver:self];
}

- (void)setDownload:(id)a3
{
  v5 = a3;
  download = self->_download;
  if (download != v5)
  {
    v10 = v5;
    if (download)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 removeObserver:self name:0 object:self->_download];
    }

    objc_storeStrong(&self->_download, a3);
    v8 = [(_SFDownloadIconCache *)self->_iconCache iconForSource:v10];
    [(UIImageView *)self->_iconView setImage:v8];

    v5 = v10;
    if (v10)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:self selector:sel__downloadChanged_ name:*MEMORY[0x277CDB990] object:v10];
      [v9 addObserver:self selector:sel__downloadURLChanged_ name:*MEMORY[0x277CDB988] object:v10];
      [(DownloadTableViewCell *)self _updateCellContents];

      v5 = v10;
    }
  }
}

- (void)_downloadChanged:(id)a3
{
  if (SFDeferrableUpdateViewShouldAttemptToUpdateContents())
  {

    [(DownloadTableViewCell *)self _updateCellContents];
  }
}

- (void)_downloadURLChanged:(id)a3
{
  v4 = [(_SFDownload *)self->_download filenameWithoutExtension];
  [(UILabel *)self->_nameLabel setText:v4];
}

- (void)_updateCellContents
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = [(_SFDownload *)self->_download filenameWithoutExtension];
  [(UILabel *)self->_nameLabel setText:v3];

  [(UIButton *)self->_cancelButton setHidden:[(_SFDownload *)self->_download isIdle]];
  [(UIButton *)self->_resumeButton setHidden:[(_SFDownload *)self->_download canResume]^ 1];
  [(UIButton *)self->_revealButton setHidden:[(_SFDownload *)self->_download canReveal]^ 1];
  if ([(_SFDownload *)self->_download isIdle])
  {
    [(_SFDownload *)self->_download progress];
    v5 = v4 >= 1.0;
  }

  else
  {
    v5 = 0;
  }

  [(UIProgressView *)self->_progressView setHidden:v5];
  if (([(UIProgressView *)self->_progressView isHidden]& 1) == 0)
  {
    [(_SFDownload *)self->_download progress];
    *&v6 = v6;
    [(UIProgressView *)self->_progressView setProgress:v6];
    if ([(_SFDownload *)self->_download isIdle])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [(UIProgressView *)self->_progressView setTintAdjustmentMode:v7];
  }

  if ([(_SFDownload *)self->_download state]== 4)
  {
    [(_SFDownload *)self->_download bytesLoaded];
    NSLocalizedFileSizeDescription();
  }

  else
  {
    [(DownloadTableViewCell *)self _busyStatus];
  }
  v8 = ;
  [(UILabel *)self->_statusLabel setText:v8];

  if ([(UIButton *)self->_cancelButton isHidden])
  {
    v9 = @"ResumeDownloadButton";
  }

  else
  {
    v9 = @"CancelDownloadButton";
  }

  [(UIButton *)self->_resumeButton setAccessibilityIdentifier:v9];
  [(UIButton *)self->_cancelButton setAccessibilityIdentifier:v9];
  v22[0] = @"complete";
  if ([(_SFDownload *)self->_download state]== 4)
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  v23[0] = v10;
  v22[1] = @"progress";
  v11 = MEMORY[0x277CCACA8];
  [(_SFDownload *)self->_download progress];
  v13 = [v11 stringWithFormat:@"%f", v12];
  v23[1] = v13;
  v22[2] = @"canResume";
  if ([(_SFDownload *)self->_download canResume])
  {
    v14 = @"true";
  }

  else
  {
    v14 = @"false";
  }

  v23[2] = v14;
  v22[3] = @"idle";
  if ([(_SFDownload *)self->_download isIdle])
  {
    v15 = @"true";
  }

  else
  {
    v15 = @"false";
  }

  v23[3] = v15;
  v22[4] = @"uuid";
  v16 = [(_SFDownload *)self->_download identifier];
  v17 = [v16 UUIDString];
  v18 = v17;
  v19 = &stru_2827BF158;
  if (v17)
  {
    v19 = v17;
  }

  v23[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v21 = WBSMakeAccessibilityIdentifier();
  [(DownloadTableViewCell *)self setAccessibilityIdentifier:v21];
}

- (void)_updateCellContentsForSizing
{
  [(UILabel *)self->_nameLabel setText:@"A"];
  statusLabel = self->_statusLabel;

  [(UILabel *)statusLabel setText:@"A"];
}

- (id)_busyStatus
{
  v3 = [(_SFDownload *)self->_download bytesExpected];
  [(_SFDownload *)self->_download bytesLoaded];
  v4 = MEMORY[0x277CCACA8];
  v5 = _WBSLocalizedString();
  v6 = NSLocalizedFileSizeDescription();
  if (v3 < 0)
  {
    v8 = [v4 stringWithFormat:v5, v6];
  }

  else
  {
    v7 = NSLocalizedFileSizeDescription();
    v8 = [v4 localizedStringWithFormat:v5, v6, v7];
  }

  return v8;
}

- (void)downloadIconCache:(id)a3 didGenerateNewIcon:(id)a4 forSource:(id)a5
{
  if (self->_download == a5)
  {
    [(UIImageView *)self->_iconView setImage:a4];
  }
}

- (DownloadTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end