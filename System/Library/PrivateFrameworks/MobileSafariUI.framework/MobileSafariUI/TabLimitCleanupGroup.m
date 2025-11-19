@interface TabLimitCleanupGroup
- (TabLimitCleanupGroup)initWithAlertMesssage:(id)a3 actionTitle:(id)a4 tabs:(id)a5 browserController:(id)a6 resultHandler:(id)a7;
@end

@implementation TabLimitCleanupGroup

- (TabLimitCleanupGroup)initWithAlertMesssage:(id)a3 actionTitle:(id)a4 tabs:(id)a5 browserController:(id)a6 resultHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 count])
  {
    v28.receiver = self;
    v28.super_class = TabLimitCleanupGroup;
    v17 = [(TabLimitCleanupGroup *)&v28 init];
    if (v17)
    {
      v18 = MEMORY[0x277D750F8];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __95__TabLimitCleanupGroup_initWithAlertMesssage_actionTitle_tabs_browserController_resultHandler___block_invoke;
      v24[3] = &unk_2781DB650;
      v25 = v15;
      v26 = v14;
      v27 = v16;
      v19 = [v18 actionWithTitle:v13 style:2 handler:v24];
      action = v17->_action;
      v17->_action = v19;

      v21 = [v12 copy];
      message = v17->_message;
      v17->_message = v21;

      self = v17;
      v17 = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __95__TabLimitCleanupGroup_initWithAlertMesssage_actionTitle_tabs_browserController_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabController];
  v3 = [*(a1 + 32) isSuspendedOrSuspending] ^ 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __95__TabLimitCleanupGroup_initWithAlertMesssage_actionTitle_tabs_browserController_resultHandler___block_invoke_2;
  v5[3] = &unk_2781D63D0;
  v4 = v2;
  v6 = v4;
  v7 = *(a1 + 40);
  v8 = v3;
  [v4 registerUndoWithType:2 actions:v5];
  (*(*(a1 + 48) + 16))();
}

@end