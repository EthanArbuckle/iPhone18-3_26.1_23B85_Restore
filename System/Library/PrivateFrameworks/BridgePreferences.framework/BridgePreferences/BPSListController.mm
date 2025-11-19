@interface BPSListController
- (BOOL)_readyToReloadSpecifiers;
- (int64_t)tableViewStyle;
- (void)prepareSpecifiersMetadata;
- (void)reloadSpecifiers;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BPSListController

- (int64_t)tableViewStyle
{
  v2 = [MEMORY[0x277D75DA0] keyWindow];
  v3 = PSShouldInsetListView();

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)prepareSpecifiersMetadata
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = BPSListController;
  [(BPSListController *)&v16 prepareSpecifiersMetadata];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      v8 = *MEMORY[0x277D3FD80];
      v9 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 cellType] != 1)
          {
            [v11 setProperty:v9 forKey:v8];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BPSListController;
  [(BPSListController *)&v4 viewDidLayoutSubviews];
  if ([(BPSListController *)self deferringReloadSpecifiers])
  {
    NSLog(&cfstr_Bpslistcontrol_0.isa, "[BPSListController viewDidLayoutSubviews]");
    v3.receiver = self;
    v3.super_class = BPSListController;
    [(BPSListController *)&v3 reloadSpecifiers];
    [(BPSListController *)self setDeferringReloadSpecifiers:0];
  }
}

- (BOOL)_readyToReloadSpecifiers
{
  if (![(BPSListController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [(BPSListController *)self view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (void)reloadSpecifiers
{
  if ([(BPSListController *)self _readyToReloadSpecifiers])
  {
    v5.receiver = self;
    v5.super_class = BPSListController;
    [(BPSListController *)&v5 reloadSpecifiers];
  }

  else
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    NSLog(&cfstr_Bpslistcontrol.isa, v4);

    [(BPSListController *)self setDeferringReloadSpecifiers:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BPSListController;
  [(BPSListController *)&v6 viewWillAppear:a3];
  if ([(BPSListController *)self deferringReloadSpecifiers])
  {
    v4 = dispatch_time(0, 20000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__BPSListController_viewWillAppear___block_invoke;
    block[3] = &unk_278D23168;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __36__BPSListController_viewWillAppear___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deferringReloadSpecifiers];
  if (result)
  {
    result = [*(a1 + 32) _readyToReloadSpecifiers];
    if (result)
    {
      NSLog(&cfstr_Bpslistcontrol_0.isa, "[BPSListController viewWillAppear:]_block_invoke");
      v3.receiver = *(a1 + 32);
      v3.super_class = BPSListController;
      objc_msgSendSuper2(&v3, sel_reloadSpecifiers);
      return [*(a1 + 32) setDeferringReloadSpecifiers:0];
    }
  }

  return result;
}

@end