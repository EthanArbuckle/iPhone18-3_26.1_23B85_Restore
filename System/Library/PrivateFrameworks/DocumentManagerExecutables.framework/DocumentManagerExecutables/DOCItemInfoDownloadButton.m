@interface DOCItemInfoDownloadButton
- (DOCDownloadProgressView)progressView;
- (DOCItemInfoDownloadButton)initWithCoder:(id)a3;
- (DOCItemInfoDownloadButton)initWithFrame:(CGRect)a3;
- (DOCItemInfoDownloadButtonDelegate)delegate;
- (void)applyTintColorToViews;
- (void)commonInit;
- (void)setDownloadState:(unint64_t)a3;
- (void)setNode:(id)a3;
- (void)setProgressView:(id)a3;
- (void)tintColorDidChange;
- (void)updateDownloadState;
- (void)updateForState;
- (void)userDidTapDownloadButton;
@end

@implementation DOCItemInfoDownloadButton

- (DOCItemInfoDownloadButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoDownloadButton;
  v3 = [(DOCItemInfoDownloadButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCItemInfoDownloadButton *)v3 commonInit];
  }

  return v4;
}

- (DOCItemInfoDownloadButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCItemInfoDownloadButton;
  v3 = [(DOCItemInfoDownloadButton *)&v6 initWithCoder:a3];
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
  v3 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [v3 background];
  [v5 setBackgroundColor:v4];

  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C8];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __39__DOCItemInfoDownloadButton_commonInit__block_invoke;
  v19 = &unk_278FA1F60;
  objc_copyWeak(&v20, &location);
  v8 = [v7 actionWithHandler:&v16];
  v9 = [v6 buttonWithConfiguration:v3 primaryAction:{v8, v16, v17, v18, v19}];
  [(DOCItemInfoDownloadButton *)self setUnderlyingButton:v9];

  v10 = [(DOCItemInfoDownloadButton *)self underlyingButton];
  [(DOCItemInfoDownloadButton *)self addSubview:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = [(DOCItemInfoDownloadButton *)self underlyingButton];
  v13 = DOCConstraintsToResizeWithSuperview();
  [v11 activateConstraints:v13];

  [(DOCItemInfoDownloadButton *)self updateForState];
  v14 = [MEMORY[0x277D755A8] doc_circleWithInset:-8.0];
  v15 = [(DOCItemInfoDownloadButton *)self underlyingButton];
  [v15 setHoverStyle:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __39__DOCItemInfoDownloadButton_commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userDidTapDownloadButton];
}

- (void)setProgressView:(id)a3
{
  obj = a3;
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
  v4 = [(DOCItemInfoDownloadButton *)self tintColor];
  v3 = [(DOCItemInfoDownloadButton *)self progressView];
  [v3 setActiveStrokeColor:v4];
}

- (void)setDownloadState:(unint64_t)a3
{
  if (self->_downloadState != a3)
  {
    self->_downloadState = a3;
    [(DOCItemInfoDownloadButton *)self updateForState];
  }
}

- (void)updateDownloadState
{
  node = self->_node;
  if (!node)
  {
    v7 = [(DOCItemInfoDownloadButton *)self progressView];
    [v7 setObservedProgress:0];

LABEL_5:
    v6 = 0;
    goto LABEL_9;
  }

  v4 = [(DOCNode *)node downloadingProgress];
  v5 = [(DOCItemInfoDownloadButton *)self progressView];
  [v5 setObservedProgress:v4];

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

- (void)setNode:(id)a3
{
  v5 = a3;
  if (self->_node != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_node, a3);
    [(DOCItemInfoDownloadButton *)self updateDownloadState];
    v5 = v6;
  }
}

- (void)updateForState
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DOCItemInfoOpenButton.m" lineNumber:120 description:@"Subclasses must override this method"];
}

- (void)userDidTapDownloadButton
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [(DOCItemInfoDownloadButton *)self node];
  v4 = v3;
  if (v3)
  {
    if ([v3 isCloudItem] && (objc_msgSend(v4, "isDownloaded") & 1) == 0 && (DOCIsNetworkReachable() & 1) == 0)
    {
      v17 = [(DOCItemInfoDownloadButton *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }

      v9 = [(DOCItemInfoDownloadButton *)self delegate];
      v19 = [(DOCItemInfoDownloadButton *)self node];
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1009 userInfo:0];
      [v9 nodeDownloadButton:self downloadingNode:v19 encounteredError:v20];

      goto LABEL_8;
    }

    v5 = [(DOCItemInfoDownloadButton *)self downloadState];
    if (v5 == 1)
    {
      v11 = [v4 downloadingProgress];
      [v11 cancel];

      v12 = objc_alloc(MEMORY[0x277CC63D0]);
      v13 = [v4 fpfs_fpItem];
      v29 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v15 = [v12 initWithItems:v14];

      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke_25;
      v24 = &unk_278FA1C30;
      v25 = v4;
      [v15 setCompletionBlock:&v21];
      v16 = [MEMORY[0x277CC6408] defaultManager];
      [v16 scheduleAction:v15];

      goto LABEL_10;
    }

    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x277CC63C0]);
      v7 = [v4 fpfs_fpItem];
      v30[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      v9 = [v6 initWithItems:v8];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __53__DOCItemInfoDownloadButton_userDidTapDownloadButton__block_invoke;
      v26[3] = &unk_278FA1F88;
      v27 = v4;
      v28 = self;
      [v9 setDownloadCompletionBlock:v26];
      v10 = [MEMORY[0x277CC6408] defaultManager];
      [v10 scheduleAction:v9];

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