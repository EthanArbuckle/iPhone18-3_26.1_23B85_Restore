@interface PurpleFlowManagedPageLoadTestRunner
- (PurpleFlowManagedPageLoadTestRunner)initWithTestName:(id)a3 browserController:(id)a4;
- (void)dealloc;
@end

@implementation PurpleFlowManagedPageLoadTestRunner

- (PurpleFlowManagedPageLoadTestRunner)initWithTestName:(id)a3 browserController:(id)a4
{
  v9.receiver = self;
  v9.super_class = PurpleFlowManagedPageLoadTestRunner;
  v4 = [(PurplePageLoadTestRunner *)&v9 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__PurpleFlowManagedPageLoadTestRunner_initWithTestName_browserController___block_invoke;
    handler[3] = &unk_2781D8258;
    v8 = v4;
    notify_register_dispatch("com.apple.mobilesafari.pageload.proceed", (&v5->super._showRenderFps + 1), MEMORY[0x277D85CD0], handler);
  }

  return v5;
}

id __74__PurpleFlowManagedPageLoadTestRunner_initWithTestName_browserController___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PurpleFlowManagedPageLoadTestRunner;
  return objc_msgSendSuper2(&v2, sel_startNextPage);
}

- (void)dealloc
{
  notify_cancel(*(&self->super._showRenderFps + 1));
  v3.receiver = self;
  v3.super_class = PurpleFlowManagedPageLoadTestRunner;
  [(PageLoadTestRunner *)&v3 dealloc];
}

@end