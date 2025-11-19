@interface _PasscodeEmbeddedRemoteViewControllerHost
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (void)endEditing;
- (void)passcodeVerificationFinished:(id)a3;
- (void)setContext:(id)a3;
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

- (void)passcodeVerificationFinished:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[_PasscodeEmbeddedRemoteViewControllerHost passcodeVerificationFinished:]";
    _os_log_impl(&dword_2560E6000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [_PasscodeEmbeddedRemoteViewControllerHost passcodeVerificationFinished:];
  }
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_119];
  [v5 setContext:v4];
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