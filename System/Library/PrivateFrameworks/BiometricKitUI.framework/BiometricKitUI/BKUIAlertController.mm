@interface BKUIAlertController
- (BKUIAlertControllerListener)alertListener;
- (void)addAction:(id)action;
- (void)bkui_addPreferredAction:(id)action;
@end

@implementation BKUIAlertController

- (void)addAction:(id)action
{
  actionCopy = action;
  handler = [actionCopy handler];
  v6 = [handler copy];

  v7 = MEMORY[0x277D750F8];
  title = [actionCopy title];
  style = [actionCopy style];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__BKUIAlertController_addAction___block_invoke;
  v13[3] = &unk_278D09AD8;
  v13[4] = self;
  v14 = v6;
  v10 = v6;
  v11 = [v7 actionWithTitle:title style:style handler:v13];

  v12.receiver = self;
  v12.super_class = BKUIAlertController;
  [(BKUIAlertController *)&v12 addAction:v11];
}

void __33__BKUIAlertController_addAction___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) alertListener];
  [v3 alertActionTappedFromAlert];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)bkui_addPreferredAction:(id)action
{
  actionCopy = action;
  handler = [actionCopy handler];
  v6 = [handler copy];

  v7 = MEMORY[0x277D750F8];
  title = [actionCopy title];
  style = [actionCopy style];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__BKUIAlertController_bkui_addPreferredAction___block_invoke;
  v14[3] = &unk_278D09AD8;
  v14[4] = self;
  v15 = v6;
  v10 = v6;
  v11 = [v7 actionWithTitle:title style:style handler:v14];

  v13.receiver = self;
  v13.super_class = BKUIAlertController;
  [(BKUIAlertController *)&v13 addAction:v11];
  v12.receiver = self;
  v12.super_class = BKUIAlertController;
  [(BKUIAlertController *)&v12 setPreferredAction:v11];
}

void __47__BKUIAlertController_bkui_addPreferredAction___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) alertListener];
  [v3 alertActionTappedFromAlert];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (BKUIAlertControllerListener)alertListener
{
  WeakRetained = objc_loadWeakRetained(&self->_alertListener);

  return WeakRetained;
}

@end