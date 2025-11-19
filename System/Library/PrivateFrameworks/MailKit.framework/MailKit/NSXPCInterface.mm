@interface NSXPCInterface
@end

@implementation NSXPCInterface

void __56__NSXPCInterface_Extension__MERemoteExtensiontInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286939A80];
  v1 = MERemoteExtensiontInterface_remoteInterface;
  MERemoteExtensiontInterface_remoteInterface = v0;

  v2 = MERemoteExtensiontInterface_remoteInterface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:? forSelector:? argumentIndex:? ofReply:?];
}

void __59__NSXPCInterface_Extension__MEExtensionRemoteHostInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28692F068];
  v1 = MEExtensionRemoteHostInterface_interface;
  MEExtensionRemoteHostInterface_interface = v0;
}

@end