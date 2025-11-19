@interface MURemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (void)beginDismissWithInfo:(id)a3;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)serviceDidFinishwithResults:(id)a3 andSandboxExtension:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MURemoteViewController

+ (id)serviceViewControllerInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286993F20];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_animateExitWithInfo_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)exportedInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28697F498];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_serviceDidFinishwithResults_andSandboxExtension_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_serviceDidFinishwithResults_andSandboxExtension_ argumentIndex:1 ofReply:0];

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MURemoteViewController;
  [(MURemoteViewController *)&v3 viewDidLoad];
  [(MURemoteViewController *)self setShouldResignFirstResponder:0];
  [(MURemoteViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MURemoteViewController;
  [(_UIRemoteViewController *)&v4 viewWillDisappear:a3];
  [(MURemoteViewController *)self setShouldResignFirstResponder:1];
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  if (a3 != 1)
  {
    v8.receiver = self;
    v8.super_class = MURemoteViewController;
    if ([(MURemoteViewController *)&v8 respondsToSelector:sel_motionEnded_withEvent_])
    {
      v7.receiver = self;
      v7.super_class = MURemoteViewController;
      [(MURemoteViewController *)&v7 motionEnded:a3 withEvent:v6];
    }
  }
}

- (void)serviceDidFinishwithResults:(id)a3 andSandboxExtension:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [v6 UTF8String];
    [(MURemoteViewController *)self setSandboxExtensionHandle:sandbox_extension_consume()];
  }

  v7 = [(MURemoteViewController *)self finishedWithResultsCompletionBlock];

  if (v7)
  {
    v8 = [(MURemoteViewController *)self finishedWithResultsCompletionBlock];
    (v8)[2](v8, v9);
  }
}

- (void)beginDismissWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 animateExitWithInfo:v4];

  if ([(MURemoteViewController *)self sandboxExtensionHandle])
  {
    [(MURemoteViewController *)self sandboxExtensionHandle];
    sandbox_extension_release();
    [(MURemoteViewController *)self setSandboxExtensionHandle:0];
  }
}

@end