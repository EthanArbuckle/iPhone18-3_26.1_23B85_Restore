@interface MLRExtensionRemoteContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (MLRExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d plugin:(id)plugin;
@end

@implementation MLRExtensionRemoteContext

- (MLRExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d plugin:(id)plugin
{
  v28.receiver = self;
  v28.super_class = MLRExtensionRemoteContext;
  plugin = [(MLRExtensionRemoteContext *)&v28 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d, plugin];
  if (plugin)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = [v7 stringWithFormat:@"%@.%@.execution", v9, bundleIdentifier];

    v13 = [v12 cStringUsingEncoding:4];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    taskExecutionQueue = plugin->_taskExecutionQueue;
    plugin->_taskExecutionQueue = v15;

    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v22 = [v17 stringWithFormat:@"%@.%@.stop", v19, bundleIdentifier2];

    v23 = [v22 cStringUsingEncoding:4];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(v23, v24);
    stopQueue = plugin->_stopQueue;
    plugin->_stopQueue = v25;
  }

  return plugin;
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[MLRExtensionRemoteContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __60__MLRExtensionRemoteContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868BF618];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[MLRExtensionRemoteContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

uint64_t __62__MLRExtensionRemoteContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868BDA08];

  return MEMORY[0x2821F96F8]();
}

@end