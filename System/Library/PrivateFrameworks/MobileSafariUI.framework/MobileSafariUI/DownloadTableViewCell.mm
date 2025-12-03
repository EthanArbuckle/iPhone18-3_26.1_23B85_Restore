@interface DownloadTableViewCell
+ (id)tableViewCellForSizeEstimation;
- (DownloadTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (DownloadTableViewCellDelegate)delegate;
- (id)_busyStatus;
- (id)_buttonWithSymbolName:(id)name;
- (void)_buttonPressed:(id)pressed;
- (void)_downloadChanged:(id)changed;
- (void)_downloadURLChanged:(id)changed;
- (void)_updateCellContents;
- (void)_updateCellContentsForSizing;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)downloadIconCache:(id)cache didGenerateNewIcon:(id)icon forSource:(id)source;
- (void)setDownload:(id)download;
- (void)setIconCache:(id)cache;
@end

@implementation DownloadTableViewCell

+ (id)tableViewCellForSizeEstimation
{
  v2 = [[self alloc] initWithStyle:0 reuseIdentifier:0];
  [v2 _updateCellContentsForSizing];

  return v2;
}

- (DownloadTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v80[3] = *MEMORY[0x277D85DE8];
  v77.receiver = self;
  v77.super_class = DownloadTableViewCell;
  v4 = [(DownloadTableViewCell *)&v77 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(DownloadTableViewCell *)v4 contentView];
    layoutManager = [(DownloadTableViewCell *)v5 layoutManager];
    [contentView setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
    v75 = layoutManager;
    v7 = [layoutManager textLabelForCell:v5];
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v7;

    [(UILabel *)v5->_nameLabel setAdjustsFontForContentSizeCategory:1];
    v9 = [layoutManager detailTextLabelForCell:v5];
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v9;

    [(UILabel *)v5->_statusLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x277D74300] safari_monospacedDigitFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v5->_statusLabel setFont:v11];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_statusLabel setTextColor:secondaryLabelColor];

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

    [contentView addSubview:v23];
    [contentView addSubview:v27];
    [contentView addSubview:v31];
    v61 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIImageView *)v31 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v78[0] = v72;
    widthAnchor = [(UIImageView *)v31 widthAnchor];
    v70 = [widthAnchor constraintEqualToConstant:48.0];
    v78[1] = v70;
    heightAnchor = [(UIImageView *)v31 heightAnchor];
    v68 = [heightAnchor constraintEqualToConstant:48.0];
    v78[2] = v68;
    centerYAnchor = [(UIImageView *)v31 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v78[3] = v65;
    topAnchor = [(UIImageView *)v31 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v62 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:14.0];
    v78[4] = v62;
    topAnchor3 = [(UIImageView *)v31 topAnchor];
    topAnchor4 = [(UILabel *)v5->_nameLabel topAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];

    v60 = v34;
    LODWORD(v35) = 1144750080;
    [v34 setPriority:v35];
    v78[5] = v34;
    topAnchor5 = [(UILabel *)v5->_nameLabel topAnchor];
    topAnchor6 = [contentView topAnchor];
    v56 = [topAnchor5 constraintLessThanOrEqualToAnchor:topAnchor6 constant:40.0];
    v78[6] = v56;
    leadingAnchor3 = [v23 leadingAnchor];
    trailingAnchor = [(UIImageView *)v5->_iconView trailingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
    v78[7] = v52;
    bottomAnchor = [contentView bottomAnchor];
    v59 = v23;
    bottomAnchor2 = [v23 bottomAnchor];
    v49 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
    v78[8] = v49;
    v36 = v27;
    leadingAnchor4 = [v27 leadingAnchor];
    trailingAnchor2 = [v23 trailingAnchor];
    v37 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:24.0];
    v78[9] = v37;
    v55 = v27;
    trailingAnchor3 = [v27 trailingAnchor];
    trailingAnchor4 = [contentView trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v78[10] = v40;
    centerYAnchor3 = [v36 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v43 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
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

- (id)_buttonWithSymbolName:(id)name
{
  v4 = MEMORY[0x277D755D0];
  nameCopy = name;
  v6 = [v4 configurationWithPointSize:15.0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy withConfiguration:v6];

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

- (void)_buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_cancelButton == pressedCopy)
  {
    [WeakRetained cancelDownload:self->_download];
  }

  else if (self->_resumeButton == pressedCopy)
  {
    [WeakRetained resumeDownload:self->_download];
  }

  else if (self->_revealButton == pressedCopy)
  {
    [WeakRetained revealDownload:self->_download];
  }
}

- (void)setIconCache:(id)cache
{
  objc_storeStrong(&self->_iconCache, cache);
  cacheCopy = cache;
  [cacheCopy addCacheObserver:self];
}

- (void)setDownload:(id)download
{
  downloadCopy = download;
  download = self->_download;
  if (download != downloadCopy)
  {
    v10 = downloadCopy;
    if (download)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:0 object:self->_download];
    }

    objc_storeStrong(&self->_download, download);
    v8 = [(_SFDownloadIconCache *)self->_iconCache iconForSource:v10];
    [(UIImageView *)self->_iconView setImage:v8];

    downloadCopy = v10;
    if (v10)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__downloadChanged_ name:*MEMORY[0x277CDB990] object:v10];
      [defaultCenter2 addObserver:self selector:sel__downloadURLChanged_ name:*MEMORY[0x277CDB988] object:v10];
      [(DownloadTableViewCell *)self _updateCellContents];

      downloadCopy = v10;
    }
  }
}

- (void)_downloadChanged:(id)changed
{
  if (SFDeferrableUpdateViewShouldAttemptToUpdateContents())
  {

    [(DownloadTableViewCell *)self _updateCellContents];
  }
}

- (void)_downloadURLChanged:(id)changed
{
  filenameWithoutExtension = [(_SFDownload *)self->_download filenameWithoutExtension];
  [(UILabel *)self->_nameLabel setText:filenameWithoutExtension];
}

- (void)_updateCellContents
{
  v23[5] = *MEMORY[0x277D85DE8];
  filenameWithoutExtension = [(_SFDownload *)self->_download filenameWithoutExtension];
  [(UILabel *)self->_nameLabel setText:filenameWithoutExtension];

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
  identifier = [(_SFDownload *)self->_download identifier];
  uUIDString = [identifier UUIDString];
  v18 = uUIDString;
  v19 = &stru_2827BF158;
  if (uUIDString)
  {
    v19 = uUIDString;
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
  bytesExpected = [(_SFDownload *)self->_download bytesExpected];
  [(_SFDownload *)self->_download bytesLoaded];
  v4 = MEMORY[0x277CCACA8];
  v5 = _WBSLocalizedString();
  v6 = NSLocalizedFileSizeDescription();
  if (bytesExpected < 0)
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

- (void)downloadIconCache:(id)cache didGenerateNewIcon:(id)icon forSource:(id)source
{
  if (self->_download == source)
  {
    [(UIImageView *)self->_iconView setImage:icon];
  }
}

- (DownloadTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end