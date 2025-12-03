@interface DDMoreActionsAction
- (id)alertActions;
- (id)viewController;
- (void)alertActions;
@end

@implementation DDMoreActionsAction

- (id)alertActions
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDMoreActionsAction alertActions];
  }

  return 0;
}

- (id)viewController
{
  viewController = self->super._viewController;
  if (!viewController)
  {
    v4 = +[DDDetectionController sharedController];
    v5 = [v4 titleForResult:self->super._result subResult:0 withURL:self->super._url context:self->super._context];

    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:0 preferredStyle:0];
    v7 = MEMORY[0x277D750F8];
    v8 = DDLocalizedString(@"Cancel");
    v9 = [v7 actionWithTitle:v8 style:1 handler:0];

    alertActions = [(DDMoreActionsAction *)self alertActions];
    v11 = [alertActions arrayByAddingObject:v9];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37__DDMoreActionsAction_viewController__block_invoke;
    v16[3] = &unk_278291450;
    v12 = v6;
    v17 = v12;
    [v11 enumerateObjectsUsingBlock:v16];

    v13 = self->super._viewController;
    self->super._viewController = v12;
    v14 = v12;

    viewController = self->super._viewController;
  }

  return viewController;
}

- (void)alertActions
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end