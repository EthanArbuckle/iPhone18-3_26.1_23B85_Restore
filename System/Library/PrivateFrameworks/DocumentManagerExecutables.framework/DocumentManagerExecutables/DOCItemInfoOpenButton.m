@interface DOCItemInfoOpenButton
- (NSLayoutConstraint)progressViewHeightConstraint;
- (UIButton)downloadButton;
- (UIButton)openButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)commonInit;
- (void)setNode:(id)a3;
- (void)setNodeCanBeOpened:(BOOL)a3;
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
  v3 = [MEMORY[0x277D75230] plainGazeableConfiguration];
  [v3 setImage:v32];
  [v3 configureWithZeroInsetsIfAllowed];
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
  [v3 setPreferredSymbolConfigurationForImage:v4];
  v33 = v3;

  v5 = MEMORY[0x277D75220];
  v6 = MEMORY[0x277D750C8];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __35__DOCItemInfoOpenButton_commonInit__block_invoke;
  v36[3] = &unk_278FA1F60;
  objc_copyWeak(&v37, &location);
  v7 = [v6 actionWithHandler:v36];
  v8 = [v5 buttonWithConfiguration:v3 primaryAction:v7];

  [v8 setConfiguration:v3];
  v9 = _DocumentManagerBundle();
  v10 = [v9 localizedStringForKey:@"DOWNLOAD" value:@"DOWNLOAD" table:@"Localizable"];
  [v8 setAccessibilityLabel:v10];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:1];
  v11 = [MEMORY[0x277D75230] borderedProminentButtonConfiguration];
  v12 = _DocumentManagerBundle();
  v13 = [v12 localizedStringForKey:@"Open" value:@"Open" table:@"Localizable"];

  [v11 setTitle:v13];
  [v11 setButtonSize:0];
  [v11 setCornerStyle:4];
  v14 = MEMORY[0x277D75220];
  v15 = MEMORY[0x277D750C8];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __35__DOCItemInfoOpenButton_commonInit__block_invoke_2;
  v34[3] = &unk_278FA1F60;
  objc_copyWeak(&v35, &location);
  v16 = [v15 actionWithHandler:v34];
  v17 = [v14 buttonWithConfiguration:v11 primaryAction:v16];

  [v17 setRole:1];
  [v17 setConfiguration:v11];
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
  v24 = [MEMORY[0x277CBEB18] array];
  v25 = DOCConstraintsToResizeWithSuperview();
  [v24 addObjectsFromArray:v25];

  v26 = [(DOCDownloadProgressView *)v20 widthAnchor];
  v27 = [(DOCDownloadProgressView *)v20 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v24 addObject:v28];

  [MEMORY[0x277CCAAD0] activateConstraints:v24];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = DOCItemInfoOpenButton;
  v7 = [(DOCItemInfoOpenButton *)&v10 hitTest:a4 withEvent:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DOCItemInfoOpenButton *)self bounds];
    v12.x = x;
    v12.y = y;
    if (CGRectContainsPoint(v13, v12))
    {
      v8 = [(DOCItemInfoDownloadButton *)self underlyingButton];
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
  }

  return v7;
}

- (void)setNode:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoOpenButton;
  [(DOCItemInfoDownloadButton *)&v6 setNode:a3];
  v4 = [(DOCItemInfoDownloadButton *)self nodeCanBeOpened];
  v5 = [(DOCItemInfoOpenButton *)self openButton];
  [v5 setEnabled:v4];

  [(DOCItemInfoOpenButton *)self updateOpenWithMenu];
}

- (void)setNodeCanBeOpened:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoOpenButton;
  [(DOCItemInfoDownloadButton *)&v6 setNodeCanBeOpened:a3];
  v4 = [(DOCItemInfoDownloadButton *)self nodeCanBeOpened];
  v5 = [(DOCItemInfoOpenButton *)self openButton];
  [v5 setEnabled:v4];

  [(DOCItemInfoOpenButton *)self updateOpenWithMenu];
}

- (void)updateOpenWithMenu
{
  v3 = +[_TtC26DocumentManagerExecutables25DOCOpenWithMenuController shared];
  v4 = [(DOCItemInfoDownloadButton *)self node];
  v6 = [v3 openWithDeferredMenuFor:v4 suppressTitle:1];

  v5 = [(DOCItemInfoOpenButton *)self openButton];
  [v5 setMenu:v6];
}

- (void)updateForState
{
  v3 = [(DOCItemInfoDownloadButton *)self downloadState];
  if (v3 <= 2)
  {
    v4 = v3;
    v5 = 6u >> (v3 & 7);
    v6 = 3u >> (v3 & 7);
    v7 = [(DOCItemInfoOpenButton *)self downloadButton];
    [v7 setHidden:v5 & 1];

    v8 = [(DOCItemInfoDownloadButton *)self progressView];
    [v8 setHidden:(v4 & 1) == 0];

    v9 = [(DOCItemInfoOpenButton *)self openButton];
    [v9 setHidden:v6 & 1];
  }
}

- (void)userDidTapOpenButton
{
  v3 = [(DOCItemInfoDownloadButton *)self node];
  if (v3)
  {
    v12 = v3;
    if ([v3 isCloudItem] && (objc_msgSend(v12, "isDownloaded") & 1) == 0 && (DOCIsNetworkReachable() & 1) == 0)
    {
      v9 = [(DOCItemInfoDownloadButton *)self delegate];
      v10 = objc_opt_respondsToSelector();

      v3 = v12;
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }

      v7 = [(DOCItemInfoDownloadButton *)self delegate];
      v8 = [(DOCItemInfoDownloadButton *)self node];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1009 userInfo:0];
      [v7 nodeDownloadButton:self downloadingNode:v8 encounteredError:v11];

      goto LABEL_11;
    }

    v4 = [(DOCItemInfoDownloadButton *)self downloadState]== 2;
    v3 = v12;
    if (v4)
    {
      v5 = [(DOCItemInfoDownloadButton *)self delegate];
      v6 = objc_opt_respondsToSelector();

      v3 = v12;
      if (v6)
      {
        v7 = [(DOCItemInfoDownloadButton *)self delegate];
        v8 = [(DOCItemInfoDownloadButton *)self node];
        [v7 nodeDownloadButton:self requestedOpeningNode:v8];
LABEL_11:

        v3 = v12;
      }
    }
  }

LABEL_12:
}

- (void)updateForChangedContentSizeCategory
{
  v3 = [(DOCItemInfoOpenButton *)self openButton];
  [v3 invalidateIntrinsicContentSize];

  [(DOCItemInfoOpenButton *)self updateProgressViewSizeConstraints];
}

- (void)updateProgressViewSizeConstraints
{
  v3 = [MEMORY[0x277D75520] defaultMetrics];
  [v3 scaledValueForValue:28.0];
  v5 = v4;

  v6 = [(DOCItemInfoOpenButton *)self progressViewHeightConstraint];

  if (v6)
  {
    v7 = [(DOCItemInfoOpenButton *)self progressViewHeightConstraint];
    [v7 setConstant:v5];
  }

  else
  {
    v8 = [(DOCItemInfoDownloadButton *)self progressView];
    v9 = [v8 heightAnchor];
    v10 = [v9 constraintEqualToConstant:v5];
    [(DOCItemInfoOpenButton *)self setProgressViewHeightConstraint:v10];

    v7 = [(DOCItemInfoOpenButton *)self progressViewHeightConstraint];
    [v7 setActive:1];
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