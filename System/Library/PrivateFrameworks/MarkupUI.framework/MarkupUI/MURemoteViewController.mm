@interface MURemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (void)beginDismissWithInfo:(id)info;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)serviceDidFinishwithResults:(id)results andSandboxExtension:(id)extension;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MURemoteViewController;
  [(_UIRemoteViewController *)&v4 viewWillDisappear:disappear];
  [(MURemoteViewController *)self setShouldResignFirstResponder:1];
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  if (ended != 1)
  {
    v8.receiver = self;
    v8.super_class = MURemoteViewController;
    if ([(MURemoteViewController *)&v8 respondsToSelector:sel_motionEnded_withEvent_])
    {
      v7.receiver = self;
      v7.super_class = MURemoteViewController;
      [(MURemoteViewController *)&v7 motionEnded:ended withEvent:eventCopy];
    }
  }
}

- (void)serviceDidFinishwithResults:(id)results andSandboxExtension:(id)extension
{
  resultsCopy = results;
  extensionCopy = extension;
  if ([extensionCopy length])
  {
    [extensionCopy UTF8String];
    [(MURemoteViewController *)self setSandboxExtensionHandle:sandbox_extension_consume()];
  }

  finishedWithResultsCompletionBlock = [(MURemoteViewController *)self finishedWithResultsCompletionBlock];

  if (finishedWithResultsCompletionBlock)
  {
    finishedWithResultsCompletionBlock2 = [(MURemoteViewController *)self finishedWithResultsCompletionBlock];
    (finishedWithResultsCompletionBlock2)[2](finishedWithResultsCompletionBlock2, resultsCopy);
  }
}

- (void)beginDismissWithInfo:(id)info
{
  infoCopy = info;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy animateExitWithInfo:infoCopy];

  if ([(MURemoteViewController *)self sandboxExtensionHandle])
  {
    [(MURemoteViewController *)self sandboxExtensionHandle];
    sandbox_extension_release();
    [(MURemoteViewController *)self setSandboxExtensionHandle:0];
  }
}

@end