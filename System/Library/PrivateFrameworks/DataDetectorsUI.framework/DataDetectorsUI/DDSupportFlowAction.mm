@interface DDSupportFlowAction
- (id)localizedName;
- (void)prepareViewControllerForActionController:(id)a3;
@end

@implementation DDSupportFlowAction

- (id)localizedName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = DDLocalizedString(@"Get Step-by-Step Help");
  v4 = [v2 localizedStringWithFormat:v3];

  return v4;
}

- (void)prepareViewControllerForActionController:(id)a3
{
  v4 = a3;
  v5 = [_TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__DDSupportFlowAction_prepareViewControllerForActionController___block_invoke;
  v13[3] = &unk_278290B50;
  v13[4] = self;
  v6 = [(DDSupportFlowViewControllerContainer *)v5 init:v13];
  v7 = [(DDSupportFlowViewControllerContainer *)v6 controller];
  container = self->_container;
  self->_container = v6;
  v9 = v6;

  viewController = self->_viewController;
  self->_viewController = v7;
  v11 = v7;

  v12.receiver = self;
  v12.super_class = DDSupportFlowAction;
  [(DDAction *)&v12 prepareViewControllerForActionController:v4];
}

void __64__DDSupportFlowAction_prepareViewControllerForActionController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32) shouldDismiss:0];
}

@end