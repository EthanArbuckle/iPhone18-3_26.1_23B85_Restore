@interface TabLimitCleanupWizard
- (id)_cleanupGroupForRange:(int64_t)range;
- (id)_smallCleanupGroup;
- (id)initForPrivateBrowsing:(BOOL)browsing withBrowserController:(id)controller resultHandler:(id)handler;
- (id)makeViewController;
@end

@implementation TabLimitCleanupWizard

- (id)initForPrivateBrowsing:(BOOL)browsing withBrowserController:(id)controller resultHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = TabLimitCleanupWizard;
  v10 = [(TabLimitCleanupWizard *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_privateBrowsing = browsing;
    objc_storeWeak(&v10->_browserController, controllerCopy);
    v12 = _Block_copy(handlerCopy);
    resultHandler = v11->_resultHandler;
    v11->_resultHandler = v12;

    v14 = v11;
  }

  return v11;
}

- (id)makeViewController
{
  _smallCleanupGroup = [(TabLimitCleanupWizard *)self _smallCleanupGroup];
  v4 = [(TabLimitCleanupWizard *)self _cleanupGroupForRange:4];
  v5 = _WBSLocalizedString();
  v6 = MEMORY[0x277D75110];
  message = [_smallCleanupGroup message];
  v8 = [v6 alertControllerWithTitle:v5 message:message preferredStyle:1];

  action = [_smallCleanupGroup action];
  [v8 addAction:action];

  action2 = [v4 action];
  [v8 addAction:action2];

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

- (id)_cleanupGroupForRange:(int64_t)range
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v7 = tabController;
  if (self->_privateBrowsing)
  {
    [tabController privateUnpinnedTabs];
  }

  else
  {
    [tabController normalUnpinnedTabs];
  }
  v29 = ;
  v8 = [v29 count];
  v9 = 0;
  if (range <= 1)
  {
    if (range)
    {
      v10 = 0;
      v11 = 0;
      if (range != 1)
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

  if (range == 2)
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

  if (range == 3)
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
  if (range == 4)
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