@interface MLRExtensionRemoteContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (MLRExtensionRemoteContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5 plugin:(id)a6;
@end

@implementation MLRExtensionRemoteContext

- (MLRExtensionRemoteContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5 plugin:(id)a6
{
  v28.receiver = self;
  v28.super_class = MLRExtensionRemoteContext;
  v6 = [(MLRExtensionRemoteContext *)&v28 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5, a6];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v7 stringWithFormat:@"%@.%@.execution", v9, v11];

    v13 = [v12 cStringUsingEncoding:4];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    taskExecutionQueue = v6->_taskExecutionQueue;
    v6->_taskExecutionQueue = v15;

    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v21 = [v20 bundleIdentifier];
    v22 = [v17 stringWithFormat:@"%@.%@.stop", v19, v21];

    v23 = [v22 cStringUsingEncoding:4];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(v23, v24);
    stopQueue = v6->_stopQueue;
    v6->_stopQueue = v25;
  }

  return v6;
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