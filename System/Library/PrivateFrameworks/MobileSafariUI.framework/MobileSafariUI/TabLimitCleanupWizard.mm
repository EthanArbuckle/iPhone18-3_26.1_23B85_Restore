@interface TabLimitCleanupWizard
- (id)_cleanupGroupForRange:(int64_t)a3;
- (id)_smallCleanupGroup;
- (id)initForPrivateBrowsing:(BOOL)a3 withBrowserController:(id)a4 resultHandler:(id)a5;
- (id)makeViewController;
@end

@implementation TabLimitCleanupWizard

- (id)initForPrivateBrowsing:(BOOL)a3 withBrowserController:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = TabLimitCleanupWizard;
  v10 = [(TabLimitCleanupWizard *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_privateBrowsing = a3;
    objc_storeWeak(&v10->_browserController, v8);
    v12 = _Block_copy(v9);
    resultHandler = v11->_resultHandler;
    v11->_resultHandler = v12;

    v14 = v11;
  }

  return v11;
}

- (id)makeViewController
{
  v3 = [(TabLimitCleanupWizard *)self _smallCleanupGroup];
  v4 = [(TabLimitCleanupWizard *)self _cleanupGroupForRange:4];
  v5 = _WBSLocalizedString();
  v6 = MEMORY[0x277D75110];
  v7 = [v3 message];
  v8 = [v6 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = [v3 action];
  [v8 addAction:v9];

  v10 = [v4 action];
  [v8 addAction:v10];

  v11 = MEMORY[0x277D750F8];
  v12 = _WBSLocalizedString();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__TabLimitCleanupWizard_makeViewController__block_invoke;
  v15[3] = &unk_2781D6158;
  v15[4] = self;
  v13 = [v11 actionWithTitle:v12 style:1 handler:v15];
  [v8 addAction:v13];

  return v8;
}

- (id)_smallCleanupGroup
{
  v3 = 0;
  while (1)
  {
    v4 = [(TabLimitCleanupWizard *)self _cleanupGroupForRange:qword_215A95E78[v3]];
    if (v4)
    {
      break;
    }

    if (++v3 == 3)
    {
      v4 = [(TabLimitCleanupWizard *)self _cleanupGroupForRange:3];
      break;
    }
  }

  return v4;
}

- (id)_cleanupGroupForRange:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained tabController];
  v7 = v6;
  if (self->_privateBrowsing)
  {
    [v6 privateUnpinnedTabs];
  }

  else
  {
    [v6 normalUnpinnedTabs];
  }
  v29 = ;
  v8 = [v29 count];
  v9 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      v10 = 0;
      v11 = 0;
      if (a3 != 1)
      {
        goto LABEL_17;
      }

      v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v13 setWeekOfYear:-2];
      v11 = [v7 tabsOlderThan:v13 inPrivateBrowsing:self->_privateBrowsing];

      v14 = MEMORY[0x277CCACA8];
      v15 = _WBSLocalizedString();
      v9 = [v14 localizedStringWithFormat:v15, v8, objc_msgSend(v11, "count")];

      v12 = _WBSLocalizedString();
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v22 setMonth:-1];
      v11 = [v7 tabsOlderThan:v22 inPrivateBrowsing:self->_privateBrowsing];

      v23 = MEMORY[0x277CCACA8];
      v24 = _WBSLocalizedString();
      v9 = [v23 localizedStringWithFormat:v24, v8, objc_msgSend(v11, "count")];

      v12 = _WBSLocalizedString();
    }

    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v16 setWeekOfYear:-1];
    v11 = [v7 tabsOlderThan:v16 inPrivateBrowsing:self->_privateBrowsing];

    v17 = MEMORY[0x277CCACA8];
    v18 = _WBSLocalizedString();
    v9 = [v17 localizedStringWithFormat:v18, v8, objc_msgSend(v11, "count")];

    v12 = _WBSLocalizedString();
    goto LABEL_16;
  }

  if (a3 == 3)
  {
    v19 = [v7 oldestTabsWithLimit:100 inPrivateBrowsing:self->_privateBrowsing];
    v20 = MEMORY[0x277CCACA8];
    v21 = _WBSLocalizedString();
    v9 = [v20 localizedStringWithFormat:v21, v8];

    if ([v19 count] == 1)
    {
      v10 = _WBSLocalizedString();
    }

    else
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = _WBSLocalizedString();
      v10 = [v27 localizedStringWithFormat:v28, objc_msgSend(v19, "count")];
    }

    v11 = v19;
    goto LABEL_17;
  }

  v10 = 0;
  v11 = 0;
  if (a3 == 4)
  {
    v11 = v29;
    v9 = 0;
    v12 = _WBSLocalizedString();
LABEL_16:
    v10 = v12;
  }

LABEL_17:
  v25 = [[TabLimitCleanupGroup alloc] initWithAlertMesssage:v9 actionTitle:v10 tabs:v11 browserController:WeakRetained resultHandler:self->_resultHandler];

  return v25;
}

@end