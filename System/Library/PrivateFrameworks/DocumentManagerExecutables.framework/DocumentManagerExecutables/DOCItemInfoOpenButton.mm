@interface DOCItemInfoOpenButton
- (NSLayoutConstraint)progressViewHeightConstraint;
- (UIButton)downloadButton;
- (UIButton)openButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)commonInit;
- (void)setNode:(id)node;
- (void)setNodeCanBeOpened:(BOOL)opened;
- (void)updateForChangedContentSizeCategory;
- (void)updateForState;
- (void)updateOpenWithMenu;
- (void)updateProgressViewSizeConstraints;
- (void)userDidTapOpenButton;
@end

@implementation DOCItemInfoOpenButton

- (void)commonInit
{
  v41[3] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = DOCItemInfoOpenButton;
  [(DOCItemInfoDownloadButton *)&v39 commonInit];
  objc_initWeak(&location, self);
  v32 = [MEMORY[0x277D755B8] systemImageNamed:@"icloud.and.arrow.down"];
  plainGazeableConfiguration = [MEMORY[0x277D75230] plainGazeableConfiguration];
  [plainGazeableConfiguration setImage:v32];
  [plainGazeableConfiguration configureWithZeroInsetsIfAllowed];
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
  [plainGazeableConfiguration setPreferredSymbolConfigurationForImage:v4];
  v33 = plainGazeableConfiguration;

  v5 = MEMORY[0x277D75220];
  v6 = MEMORY[0x277D750C8];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __35__DOCItemInfoOpenButton_commonInit__block_invoke;
  v36[3] = &unk_278FA1F60;
  objc_copyWeak(&v37, &location);
  v7 = [v6 actionWithHandler:v36];
  v8 = [v5 buttonWithConfiguration:plainGazeableConfiguration primaryAction:v7];

  [v8 setConfiguration:plainGazeableConfiguration];
  v9 = _DocumentManagerBundle();
  v10 = [v9 localizedStringForKey:@"DOWNLOAD" value:@"DOWNLOAD" table:@"Localizable"];
  [v8 setAccessibilityLabel:v10];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:1];
  borderedProminentButtonConfiguration = [MEMORY[0x277D75230] borderedProminentButtonConfiguration];
  v12 = _DocumentManagerBundle();
  v13 = [v12 localizedStringForKey:@"Open" value:@"Open" table:@"Localizable"];

  [borderedProminentButtonConfiguration setTitle:v13];
  [borderedProminentButtonConfiguration setButtonSize:0];
  [borderedProminentButtonConfiguration setCornerStyle:4];
  v14 = MEMORY[0x277D75220];
  v15 = MEMORY[0x277D750C8];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __35__DOCItemInfoOpenButton_commonInit__block_invoke_2;
  v34[3] = &unk_278FA1F60;
  objc_copyWeak(&v35, &location);
  v16 = [v15 actionWithHandler:v34];
  v17 = [v14 buttonWithConfiguration:borderedProminentButtonConfiguration primaryAction:v16];

  [v17 setRole:1];
  [v17 setConfiguration:borderedProminentButtonConfiguration];
  [(DOCItemInfoOpenButton *)self bounds];
  [v17 setFrame:?];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:1];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = [DOCDownloadProgressView alloc];
  [(DOCItemInfoOpenButton *)self bounds];
  v20 = [(DOCDownloadProgressView *)v19 initWithFrame:?];
  [(DOCDownloadProgressView *)v20 setTranslatesAutoresizingMaskIntoConstraints:1];
  [(DOCDownloadProgressView *)v20 setUserInteractionEnabled:0];
  v21 = objc_alloc(MEMORY[0x277D75A68]);
  v41[0] = v8;
  v41[1] = v17;
  v41[2] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v23 = [v21 initWithArrangedSubviews:v22];

  [v23 setAxis:0];
  [v23 setDistribution:0];
  [v23 setAlignment:3];
  [v23 setSpacing:6.0];
  [(DOCItemInfoOpenButton *)self addSubview:v23];
  array = [MEMORY[0x277CBEB18] array];
  v25 = DOCConstraintsToResizeWithSuperview();
  [array addObjectsFromArray:v25];

  widthAnchor = [(DOCDownloadProgressView *)v20 widthAnchor];
  heightAnchor = [(DOCDownloadProgressView *)v20 heightAnchor];
  v28 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  [array addObject:v28];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(DOCItemInfoDownloadButton *)self setProgressView:v20];
  [(DOCItemInfoOpenButton *)self setDownloadButton:v8];
  [(DOCItemInfoOpenButton *)self setOpenButton:v17];
  [(DOCItemInfoOpenButton *)self updateProgressViewSizeConstraints];
  [(DOCItemInfoOpenButton *)self updateForState];
  v29 = objc_opt_self();
  v40 = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v31 = [(DOCItemInfoOpenButton *)self registerForTraitChanges:v30 withAction:sel_updateForChangedContentSizeCategory];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&location);
}

void __35__DOCItemInfoOpenButton_commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userDidTapDownloadButton];
}

void __35__DOCItemInfoOpenButton_commonInit__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userDidTapOpenButton];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v10.receiver = self;
  v10.super_class = DOCItemInfoOpenButton;
  v7 = [(DOCItemInfoOpenButton *)&v10 hitTest:event withEvent:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DOCItemInfoOpenButton *)self bounds];
    v12.x = x;
    v12.y = y;
    if (CGRectContainsPoint(v13, v12))
    {
      underlyingButton = [(DOCItemInfoDownloadButton *)self underlyingButton];
    }

    else
    {
      underlyingButton = 0;
    }

    v7 = underlyingButton;
  }

  return v7;
}

- (void)setNode:(id)node
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoOpenButton;
  [(DOCItemInfoDownloadButton *)&v6 setNode:node];
  nodeCanBeOpened = [(DOCItemInfoDownloadButton *)self nodeCanBeOpened];
  openButton = [(DOCItemInfoOpenButton *)self openButton];
  [openButton setEnabled:nodeCanBeOpened];

  [(DOCItemInfoOpenButton *)self updateOpenWithMenu];
}

- (void)setNodeCanBeOpened:(BOOL)opened
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoOpenButton;
  [(DOCItemInfoDownloadButton *)&v6 setNodeCanBeOpened:opened];
  nodeCanBeOpened = [(DOCItemInfoDownloadButton *)self nodeCanBeOpened];
  openButton = [(DOCItemInfoOpenButton *)self openButton];
  [openButton setEnabled:nodeCanBeOpened];

  [(DOCItemInfoOpenButton *)self updateOpenWithMenu];
}

- (void)updateOpenWithMenu
{
  v3 = +[_TtC26DocumentManagerExecutables25DOCOpenWithMenuController shared];
  node = [(DOCItemInfoDownloadButton *)self node];
  v6 = [v3 openWithDeferredMenuFor:node suppressTitle:1];

  openButton = [(DOCItemInfoOpenButton *)self openButton];
  [openButton setMenu:v6];
}

- (void)updateForState
{
  downloadState = [(DOCItemInfoDownloadButton *)self downloadState];
  if (downloadState <= 2)
  {
    v4 = downloadState;
    v5 = 6u >> (downloadState & 7);
    v6 = 3u >> (downloadState & 7);
    downloadButton = [(DOCItemInfoOpenButton *)self downloadButton];
    [downloadButton setHidden:v5 & 1];

    progressView = [(DOCItemInfoDownloadButton *)self progressView];
    [progressView setHidden:(v4 & 1) == 0];

    openButton = [(DOCItemInfoOpenButton *)self openButton];
    [openButton setHidden:v6 & 1];
  }
}

- (void)userDidTapOpenButton
{
  node = [(DOCItemInfoDownloadButton *)self node];
  if (node)
  {
    v12 = node;
    if ([node isCloudItem] && (objc_msgSend(v12, "isDownloaded") & 1) == 0 && (DOCIsNetworkReachable() & 1) == 0)
    {
      delegate = [(DOCItemInfoDownloadButton *)self delegate];
      v10 = objc_opt_respondsToSelector();

      node = v12;
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }

      delegate2 = [(DOCItemInfoDownloadButton *)self delegate];
      node2 = [(DOCItemInfoDownloadButton *)self node];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1009 userInfo:0];
      [delegate2 nodeDownloadButton:self downloadingNode:node2 encounteredError:v11];

      goto LABEL_11;
    }

    v4 = [(DOCItemInfoDownloadButton *)self downloadState]== 2;
    node = v12;
    if (v4)
    {
      delegate3 = [(DOCItemInfoDownloadButton *)self delegate];
      v6 = objc_opt_respondsToSelector();

      node = v12;
      if (v6)
      {
        delegate2 = [(DOCItemInfoDownloadButton *)self delegate];
        node2 = [(DOCItemInfoDownloadButton *)self node];
        [delegate2 nodeDownloadButton:self requestedOpeningNode:node2];
LABEL_11:

        node = v12;
      }
    }
  }

LABEL_12:
}

- (void)updateForChangedContentSizeCategory
{
  openButton = [(DOCItemInfoOpenButton *)self openButton];
  [openButton invalidateIntrinsicContentSize];

  [(DOCItemInfoOpenButton *)self updateProgressViewSizeConstraints];
}

- (void)updateProgressViewSizeConstraints
{
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:28.0];
  v5 = v4;

  progressViewHeightConstraint = [(DOCItemInfoOpenButton *)self progressViewHeightConstraint];

  if (progressViewHeightConstraint)
  {
    progressViewHeightConstraint2 = [(DOCItemInfoOpenButton *)self progressViewHeightConstraint];
    [progressViewHeightConstraint2 setConstant:v5];
  }

  else
  {
    progressView = [(DOCItemInfoDownloadButton *)self progressView];
    heightAnchor = [progressView heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:v5];
    [(DOCItemInfoOpenButton *)self setProgressViewHeightConstraint:v10];

    progressViewHeightConstraint2 = [(DOCItemInfoOpenButton *)self progressViewHeightConstraint];
    [progressViewHeightConstraint2 setActive:1];
  }

  [(DOCItemInfoOpenButton *)self invalidateIntrinsicContentSize];
}

- (UIButton)openButton
{
  WeakRetained = objc_loadWeakRetained(&self->_openButton);

  return WeakRetained;
}

- (UIButton)downloadButton
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadButton);

  return WeakRetained;
}

- (NSLayoutConstraint)progressViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_progressViewHeightConstraint);

  return WeakRetained;
}

@end