@interface BRProgressProxy
- (BRProgressProxy)initWithURL:(id)a3;
- (BRProgressProxyDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)start;
- (void)stop;
@end

@implementation BRProgressProxy

- (BRProgressProxy)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRProgressProxy;
  v6 = [(BRProgressProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BRProgressProxy dealloc]", 34);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _globalProgressSubscriber == nil%@", &v7, 0xCu);
  }

  if (*a1)
  {
    [a2 stop];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  [(BRProgressProxy *)self setTotalUnitCount:-1];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = _BRLocalizedStringWithFormat(@"PROGRESS_PROXY_INIT", @"Localizable", v3, v4, v5, v6, v7, v8, v13);
  [(BRProgressProxy *)self setLocalizedDescription:v9];

  [(BRProgressProxy *)self setLocalizedAdditionalDescription:0];
  [(BRProgressProxy *)self setCancellable:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __24__BRProgressProxy_start__block_invoke;
  v14[3] = &unk_1E7A15C28;
  v14[4] = self;
  v10 = MEMORY[0x1B26FEA90](v14);
  v11 = [MEMORY[0x1E696AE38] _addSubscriberForFileURL:self->_url withPublishingHandler:v10];
  globalProgressSubscriber = self->_globalProgressSubscriber;
  self->_globalProgressSubscriber = v11;
}

id __24__BRProgressProxy_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v4 progressProxy:*(a1 + 32) shouldProxyProgress:v3])
  {
    v11 = 0;
  }

  else
  {
    [v3 addObserver:*(a1 + 32) forKeyPath:@"localizedDescription" options:4 context:0];
    [v3 addObserver:*(a1 + 32) forKeyPath:@"localizedAdditionalDescription" options:4 context:0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __24__BRProgressProxy_start__block_invoke_2;
    v13[3] = &unk_1E7A14A08;
    v5 = v3;
    v6 = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    v7 = MEMORY[0x1B26FEA90](v13);
    v11 = MEMORY[0x1B26FEA90](v7, v8, v9, v10);
  }

  return v11;
}

uint64_t __24__BRProgressProxy_start__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"localizedDescription"];
  [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"localizedAdditionalDescription"];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"PROGRESS_PROXY_FINAL", @"Localizable", v2, v3, v4, v5, v6, v7, v11);
  [*(a1 + 40) setLocalizedDescription:v8];

  [*(a1 + 40) setLocalizedAdditionalDescription:0];
  [*(a1 + 40) setTotalUnitCount:-1];
  [*(a1 + 40) setLocalizedDescription:0];
  v9 = *(a1 + 40);

  return [v9 setLocalizedAdditionalDescription:0];
}

- (void)stop
{
  [MEMORY[0x1E696AE38] _removeSubscriber:self->_globalProgressSubscriber];
  globalProgressSubscriber = self->_globalProgressSubscriber;
  self->_globalProgressSubscriber = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
    v14 = [(BRProgressProxy *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v14 progressProxy:self localizedDescriptionForProgress:v13], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = [v13 localizedDescription];
    }

    v16 = v15;
    [(BRProgressProxy *)self setLocalizedDescription:v15];

    v17 = [v13 localizedAdditionalDescription];
    [(BRProgressProxy *)self setLocalizedAdditionalDescription:v17];

    -[BRProgressProxy setTotalUnitCount:](self, "setTotalUnitCount:", [v13 totalUnitCount]);
    -[BRProgressProxy setCompletedUnitCount:](self, "setCompletedUnitCount:", [v13 completedUnitCount]);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = BRProgressProxy;
    [(BRProgressProxy *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (BRProgressProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end