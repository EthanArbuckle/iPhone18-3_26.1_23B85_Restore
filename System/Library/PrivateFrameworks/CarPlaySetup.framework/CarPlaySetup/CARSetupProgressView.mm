@interface CARSetupProgressView
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedProgress:(id)a3 animated:(BOOL)a4;
@end

@implementation CARSetupProgressView

- (void)dealloc
{
  v3 = [(CARSetupProgressView *)self animatedObservedProgress];
  if (v3)
  {
    v4 = NSStringFromSelector(sel_fractionCompleted);
    [v3 removeObserver:self forKeyPath:v4 context:0];
  }

  v5.receiver = self;
  v5.super_class = CARSetupProgressView;
  [(CARSetupProgressView *)&v5 dealloc];
}

- (void)setObservedProgress:(id)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = NSStringFromSelector(sel_fractionCompleted);
    [v5 addObserver:self forKeyPath:v6 options:0 context:0];

    [(CARSetupProgressView *)self setAnimatedObservedProgress:v5];
  }

  else
  {
    [(CARSetupProgressView *)self setObservedProgress:a3];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CARSetupProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_278D8F530;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __71__CARSetupProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animatedObservedProgress];
  v3 = v2;
  if (v2 && [v2 isEqual:*(a1 + 40)])
  {
    [v3 fractionCompleted];
    v5 = v4;
    v6 = CARSetupLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __71__CARSetupProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(v6, v5);
    }

    *&v7 = v5;
    [*(a1 + 32) setProgress:1 animated:v7];
  }
}

void __71__CARSetupProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(os_log_t log, float a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_242FD5000, log, OS_LOG_TYPE_DEBUG, "setting progress view to %f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end