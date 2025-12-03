@interface TabLimitCleanupGroup
- (TabLimitCleanupGroup)initWithAlertMesssage:(id)messsage actionTitle:(id)title tabs:(id)tabs browserController:(id)controller resultHandler:(id)handler;
@end

@implementation TabLimitCleanupGroup

- (TabLimitCleanupGroup)initWithAlertMesssage:(id)messsage actionTitle:(id)title tabs:(id)tabs browserController:(id)controller resultHandler:(id)handler
{
  messsageCopy = messsage;
  titleCopy = title;
  tabsCopy = tabs;
  controllerCopy = controller;
  handlerCopy = handler;
  if ([tabsCopy count])
  {
    v28.receiver = self;
    v28.super_class = TabLimitCleanupGroup;
    selfCopy = [(TabLimitCleanupGroup *)&v28 init];
    if (selfCopy)
    {
      v18 = MEMORY[0x277D750F8];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __95__TabLimitCleanupGroup_initWithAlertMesssage_actionTitle_tabs_browserController_resultHandler___block_invoke;
      v24[3] = &unk_2781DB650;
      v25 = controllerCopy;
      v26 = tabsCopy;
      v27 = handlerCopy;
      v19 = [v18 actionWithTitle:titleCopy style:2 handler:v24];
      action = selfCopy->_action;
      selfCopy->_action = v19;

      v21 = [messsageCopy copy];
      message = selfCopy->_message;
      selfCopy->_message = v21;

      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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