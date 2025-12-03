@interface SUUISettingsFamilyViewStateCoordinator
- (void)_checkSubscriptionStatus:(id)status isFinal:(BOOL)final error:(id)error;
- (void)_getSubscriptionStatus;
- (void)checkSettingsFamilyViewStateWithBlock:(id)block;
@end

@implementation SUUISettingsFamilyViewStateCoordinator

- (void)checkSettingsFamilyViewStateWithBlock:(id)block
{
  blockCopy = block;
  v8 = blockCopy;
  if (!blockCopy)
  {
    [(SUUISettingsFamilyViewStateCoordinator *)a2 checkSettingsFamilyViewStateWithBlock:?];
    blockCopy = 0;
  }

  v6 = [blockCopy copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v6;

  [(SUUISettingsFamilyViewStateCoordinator *)self _getSubscriptionStatus];
}

- (void)_checkSubscriptionStatus:(id)status isFinal:(BOOL)final error:(id)error
{
  statusCopy = status;
  if ([statusCopy accountStatus] != 3 || !objc_msgSend(statusCopy, "isFamilySubscription"))
  {
    goto LABEL_8;
  }

  if (![statusCopy hasFamily])
  {
    v6 = 1;
    goto LABEL_9;
  }

  if (![statusCopy isFamilyOrganizer])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ([statusCopy hasFamilyMembers])
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

LABEL_9:
  [(SUUISettingsFamilyViewStateCoordinator *)self _returnFamilyViewState:v6];
}

- (void)_getSubscriptionStatus
{
  mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SUUISettingsFamilyViewStateCoordinator__getSubscriptionStatus__block_invoke;
  v4[3] = &unk_2798F60D0;
  v4[4] = self;
  [mEMORY[0x277D69D18] getStatusWithOptions:0 statusBlock:v4];
}

void __64__SUUISettingsFamilyViewStateCoordinator__getSubscriptionStatus__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SUUISettingsFamilyViewStateCoordinator__getSubscriptionStatus__block_invoke_2;
  v11[3] = &unk_2798F60A8;
  v11[4] = *(a1 + 32);
  v12 = v7;
  v14 = a3;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)checkSettingsFamilyViewStateWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUISettingsFamilyViewStateCoordinator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end