@interface PasscodeEmbeddedRemoteViewControllerHost
@end

@implementation PasscodeEmbeddedRemoteViewControllerHost

void __62___PasscodeEmbeddedRemoteViewControllerHost_exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x277D24138] interfaceForXPCProtocol:&unk_286840D80];
  v1 = exportedInterface_interface;
  exportedInterface_interface = v0;
}

void __75___PasscodeEmbeddedRemoteViewControllerHost_serviceViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x277D24138] interfaceForXPCProtocol:&unk_286840E98];
  v1 = serviceViewControllerInterface_interface;
  serviceViewControllerInterface_interface = v0;
}

void __56___PasscodeEmbeddedRemoteViewControllerHost_setContext___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __56___PasscodeEmbeddedRemoteViewControllerHost_setContext___block_invoke_cold_1();
  }
}

void __57___PasscodeEmbeddedRemoteViewControllerHost_startEditing__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __56___PasscodeEmbeddedRemoteViewControllerHost_setContext___block_invoke_cold_1();
  }
}

void __55___PasscodeEmbeddedRemoteViewControllerHost_endEditing__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __56___PasscodeEmbeddedRemoteViewControllerHost_setContext___block_invoke_cold_1();
  }
}

@end