@interface DOCItemInfoDownloadButton
- (DOCDownloadProgressView)progressView;
- (DOCItemInfoDownloadButton)initWithCoder:(id)coder;
- (DOCItemInfoDownloadButton)initWithFrame:(CGRect)frame;
- (DOCItemInfoDownloadButtonDelegate)delegate;
- (void)applyTintColorToViews;
- (void)commonInit;
- (void)setDownloadState:(unint64_t)state;
- (void)setNode:(id)node;
- (void)setProgressView:(id)view;
- (void)tintColorDidChange;
- (void)updateDownloadState;
- (void)updateForState;
- (void)userDidTapDownloadButton;
@end

@implementation DOCItemInfoDownloadButton

- (DOCItemInfoDownloadButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoDownloadButton;
  v3 = [(DOCItemInfoDownloadButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCItemInfoDownloadButton *)v3 commonInit];
  }

  return v4;
}

- (DOCItemInfoDownloadButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoDownloadButton;
  v3 = [(DOCItemInfoDownloadButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DOCItemInfoDownloadButton *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  objc_initWeak(&location, self);
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  clearColor = [MEMORY[0x277D75348] clearColor];
  background = [plainButtonConfiguration background];
  [background setBackgroundColor:clearColor];

  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C8];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __39__DOCItemInfoDownloadButton_commonInit__block_invoke;
  v19 = &unk_278FA1F60;
  objc_copyWeak(&v20, &location);
  v8 = [v7 actionWithHandler:&v16];
  v9 = [v6 buttonWithConfiguration:plainButtonConfiguration primaryAction:{v8, v16, v17, v18, v19}];
  [(DOCItemInfoDownloadButton *)self setUnderlyingButton:v9];

  underlyingButton = [(DOCItemInfoDownloadButton *)self underlyingButton];
  [(DOCItemInfoDownloadButton *)self addSubview:underlyingButton];

  v11 = MEMORY[0x277CCAAD0];
  underlyingButton2 = [(DOCItemInfoDownloadButton *)self underlyingButton];
  v13 = DOCConstraintsToResizeWithSuperview();
  [v11 activateConstraints:v13];

  [(DOCItemInfoDownloadButton *)self updateForState];
  v14 = [MEMORY[0x277D755A8] doc_circleWithInset:-8.0];
  underlyingButton3 = [(DOCItemInfoDownloadButton *)self underlyingButton];
  [underlyingButton3 setHoverStyle:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __39__DOCItemInfoDownloadButton_commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userDidTapDownloadButton];
}

- (void)setProgressView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_progressView);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_progressView, obj);
    [obj setCanShowStopButton:1];

    [(DOCItemInfoDownloadButton *)self applyTintColorToViews];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = DOCItemInfoDownloadButton;
  [(DOCItemInfoDownloadButton *)&v3 tintColorDidChange];
  [(DOCItemInfoDownloadButton *)self applyTintColorToViews];
}

- (void)applyTintColorToViews
{
  tintColor = [(DOCItemInfoDownloadButton *)self tintColor];
  progressView = [(DOCItemInfoDownloadButton *)self progressView];
  [progressView setActiveStrokeColor:tintColor];
}

- (void)setDownloadState:(unint64_t)state
{
  if (self->_downloadState != state)
  {
    self->_downloadState = state;
    [(DOCItemInfoDownloadButton *)self updateForState];
  }
}

- (void)updateDownloadState
{
  node = self->_node;
  if (!node)
  {
    progressView = [(DOCItemInfoDownloadButton *)self progressView];
    [progressView setObservedProgress:0];

LABEL_5:
    v6 = 0;
    goto LABEL_9;
  }

  downloadingProgress = [(DOCNode *)node downloadingProgress];
  progressView2 = [(DOCItemInfoDownloadButton *)self progressView];
  [progressView2 setObservedProgress:downloadingProgress];

  if (([(DOCNode *)self->_node isDownloading]& 1) != 0)
  {
    v6 = 1;
    goto LABEL_9;
  }

  if ([(DOCNode *)self->_node isCloudItem]&& ![(DOCNode *)self->_node isDownloaded])
  {
    goto LABEL_5;
  }

  v6 = 2;
LABEL_9:

  [(DOCItemInfoDownloadButton *)self setDownloadState:v6];
}

- (void)setNode:(id)node
{
  nodeCopy = node;
  if (self->_node != nodeCopy)
  {
    v6 = nodeCopy;
    objc_storeStrong(&self->_node, node);
    [(DOCItemInfoDownloadButton *)self updateDownloadState];
    nodeCopy = v6;
  }
}

- (void)updateForState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DOCItemInfoOpenButton.m" lineNumber:120 description:@"Subclasses must override this method"];
}

- (void)userDidTapDownloadButton
{
  v30[1] = *MEMORY[0x277D85DE8];
  node = [(DOCItemInfoDownloadButton *)self node];
  v4 = node;
  if (node)
  {
    if ([node isCloudItem] && (objc_msgSend(v4, "isDownloaded") & 1) == 0 && (DOCIsNetworkReachable() & 1) == 0)
    {
      delegate = [(DOCItemInfoDownloadButton *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }

      delegate2 = [(DOCItemInfoDownloadButton *)self delegate];
      node2 = [(DOCItemInfoDownloadButton *)self node];
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1009 userInfo:0];
      [delegate2 nodeDownloadButton:self downloadingNode:node2 encounteredError:v20];

      goto LABEL_8;
    }

    downloadState = [(DOCItemInfoDownloadButton *)self downloadState];
    if (downloadState == 1)
    {
      downloadingProgress = [v4 downloadingProgress];
      [downloadingProgress cancel];

      v12 = objc_alloc(MEMORY[0x277CC63D0]);
      fpfs_fpItem = [v4 fpfs_fpItem];
      v29 = fpfs_fpItem;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v15 = [v12 initWithItems:v14];

      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_25;
      v24 = &unk_278FA1C30;
      v25 = v4;
      [v15 setCompletionBlock:&v21];
      defaultManager = [MEMORY[0x277CC6408] defaultManager];
      [defaultManager scheduleAction:v15];

      goto LABEL_10;
    }

    if (!downloadState)
    {
      v6 = objc_alloc(MEMORY[0x277CC63C0]);
      fpfs_fpItem2 = [v4 fpfs_fpItem];
      v30[0] = fpfs_fpItem2;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      delegate2 = [v6 initWithItems:v8];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke;
      v26[3] = &unk_278FA1F88;
      v27 = v4;
      selfCopy = self;
      [delegate2 setDownloadCompletionBlock:v26];
      defaultManager2 = [MEMORY[0x277CC6408] defaultManager];
      [defaultManager2 scheduleAction:delegate2];

LABEL_8:
    }
  }

LABEL_10:
}

void __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D062B8];
  v8 = *MEMORY[0x277D062B8];
  if (v6)
  {
    if (!v8)
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_cold_1(a1, v8, v6);
    }

    v9 = [v6 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v10 = [v6 code];

      if (v10 == 3072)
      {
        v11 = *v7;
        if (!*v7)
        {
          DOCInitLogging();
          v11 = *v7;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v13 = v11;
          v14 = [v12 displayName];
          *buf = 138412290;
          v19 = v14;
          _os_log_impl(&dword_2493AC000, v13, OS_LOG_TYPE_INFO, "Download operation canceled for item: %@", buf, 0xCu);
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v15 = [*(a1 + 40) delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = v6;
      DOCRunInMainThread();
    }
  }

  else
  {
    if (!v8)
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_cold_2(a1, v8);
    }
  }

LABEL_19:
}

void __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_20(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 node];
  [v4 nodeDownloadButton:v2 downloadingNode:v3 encounteredError:*(a1 + 40)];
}

void __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_25(uint64_t a1)
{
  v2 = MEMORY[0x277D062B8];
  v3 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_25_cold_1(a1, v3);
  }
}

- (DOCItemInfoDownloadButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DOCDownloadProgressView)progressView
{
  WeakRetained = objc_loadWeakRetained(&self->_progressView);

  return WeakRetained;
}

void __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 displayName];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_2493AC000, v5, OS_LOG_TYPE_ERROR, "Error downloading item %@: %@", &v7, 0x16u);
}

void __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_cold_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayName];
  OUTLINED_FUNCTION_0_0(&dword_2493AC000, v5, v6, "user did download node %@", v7, v8, v9, v10, 2u);
}

void __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_25_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayName];
  OUTLINED_FUNCTION_0_0(&dword_2493AC000, v5, v6, "user did evict node %@", v7, v8, v9, v10, 2u);
}

@end