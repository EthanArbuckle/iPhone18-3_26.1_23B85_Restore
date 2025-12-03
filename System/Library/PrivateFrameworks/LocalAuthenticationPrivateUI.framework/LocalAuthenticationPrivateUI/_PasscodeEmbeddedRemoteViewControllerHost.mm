@interface _PasscodeEmbeddedRemoteViewControllerHost
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (void)endEditing;
- (void)passcodeVerificationFinished:(id)finished;
- (void)setContext:(id)context;
- (void)startEditing;
@end

@implementation _PasscodeEmbeddedRemoteViewControllerHost

+ (id)exportedInterface
{
  if (exportedInterface_onceToken != -1)
  {
    +[_PasscodeEmbeddedRemoteViewControllerHost exportedInterface];
  }

  v3 = exportedInterface_interface;

  return v3;
}

+ (id)serviceViewControllerInterface
{
  if (serviceViewControllerInterface_onceToken != -1)
  {
    +[_PasscodeEmbeddedRemoteViewControllerHost serviceViewControllerInterface];
  }

  v3 = serviceViewControllerInterface_interface;

  return v3;
}

- (void)passcodeVerificationFinished:(id)finished
{
  v6 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[_PasscodeEmbeddedRemoteViewControllerHost passcodeVerificationFinished:]";
    _os_log_impl(&dword_2560E6000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  if (finishedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [_PasscodeEmbeddedRemoteViewControllerHost passcodeVerificationFinished:];
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_119];
  [v5 setContext:contextCopy];
}

- (void)startEditing
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_121];
  [v2 startEditing];
}

- (void)endEditing
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_123];
  [v2 endEditing];
}

@end