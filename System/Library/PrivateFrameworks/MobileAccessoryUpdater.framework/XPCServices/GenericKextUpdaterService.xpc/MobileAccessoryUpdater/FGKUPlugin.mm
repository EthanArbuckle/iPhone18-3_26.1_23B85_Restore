@interface FGKUPlugin
- (FGKUPlugin)initWithCoder:(id)coder;
- (FGKUPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
- (FudPluginDelegate)delegate;
- (void)applyFirmwareWithOptions:(id)options;
- (void)bootstrapWithOptions:(id)options;
- (void)dealloc;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)finishWithOptions:(id)options;
- (void)prepareFirmwareWithOptions:(id)options;
@end

@implementation FGKUPlugin

- (FGKUPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  classCopy = class;
  delegateCopy = delegate;
  optionsCopy = options;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [delegateCopy log:7 format:{@"Initializing %@ version %s for DeviceClass %@ with options %@", v15, &unk_100002119, classCopy, optionsCopy}];

  v26.receiver = self;
  v26.super_class = FGKUPlugin;
  v16 = [(FGKUPlugin *)&v26 init];
  v17 = v16;
  if (!delegateCopy)
  {
    goto LABEL_6;
  }

  if (!classCopy)
  {
    goto LABEL_6;
  }

  if (!v16)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v16->_deviceClass, class);
  v18 = objc_alloc_init(NSMutableDictionary);
  pluginInfo = v17->_pluginInfo;
  v17->_pluginInfo = v18;

  objc_storeWeak(&v17->_delegate, delegateCopy);
  v20 = [AppleFirmwareUpdateController alloc];
  v21 = [optionsCopy objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  v22 = [optionsCopy objectForKeyedSubscript:@"FWDirectory"];
  v23 = [v20 initWithRegistryEntryID:v21 fwAssetDirectory:v22];
  controller = v17->_controller;
  v17->_controller = v23;

  [(NSMutableDictionary *)v17->_pluginInfo setObject:&off_100004580 forKeyedSubscript:@"PrepareWeight"];
  [(NSMutableDictionary *)v17->_pluginInfo setObject:&off_100004590 forKeyedSubscript:@"ApplyWeight"];
  [(NSMutableDictionary *)v17->_pluginInfo setObject:&off_1000045A0 forKeyedSubscript:@"FinishWeight"];
  *info = v17->_pluginInfo;
  if (([(AppleFirmwareUpdateController *)v17->_controller createFWAssetInfo]& 1) == 0)
  {
LABEL_6:
    sub_100001794(delegateCopy);

    v17 = 0;
  }

  return v17;
}

- (void)bootstrapWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(FGKUPlugin *)self delegate];
  [delegate log:7 format:{@"%s options %@", "-[FGKUPlugin bootstrapWithOptions:]", optionsCopy}];

  v7 = [(AppleFirmwareUpdateController *)self->_controller updateFirmwareWithOptions:optionsCopy];

  delegate2 = [(FGKUPlugin *)self delegate];
  [delegate2 didBootstrap:v7 == 0 info:0 error:?];
}

- (void)downloadFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(FGKUPlugin *)self delegate];
  [delegate log:7 format:{@"%s options %@", "-[FGKUPlugin downloadFirmwareWithOptions:]", optionsCopy}];

  delegate2 = [(FGKUPlugin *)self delegate];
  [delegate2 didDownload:1 info:0 error:0];
}

- (void)prepareFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(FGKUPlugin *)self delegate];
  [delegate log:7 format:{@"%s options %@", "-[FGKUPlugin prepareFirmwareWithOptions:]", optionsCopy}];

  delegate2 = [(FGKUPlugin *)self delegate];
  [delegate2 didPrepare:1 info:0 error:0];
}

- (void)applyFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(FGKUPlugin *)self delegate];
  [delegate log:7 format:{@"%s options %@", "-[FGKUPlugin applyFirmwareWithOptions:]", optionsCopy}];

  delegate2 = [(FGKUPlugin *)self delegate];
  [delegate2 didApply:1 info:0 error:0];
}

- (void)finishWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(FGKUPlugin *)self delegate];
  [delegate log:7 format:{@"%s options %@", "-[FGKUPlugin finishWithOptions:]", optionsCopy}];

  delegate2 = [(FGKUPlugin *)self delegate];
  [delegate2 didFinish:1 info:0 error:0];
}

- (void)dealloc
{
  delegate = [(FGKUPlugin *)self delegate];
  deviceClass = [(FGKUPlugin *)self deviceClass];
  [delegate log:7 format:{@"%s() deviceClass=%@", "-[FGKUPlugin dealloc]", deviceClass}];

  v5.receiver = self;
  v5.super_class = FGKUPlugin;
  [(FGKUPlugin *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  delegate = [(FGKUPlugin *)self delegate];
  [delegate log:7 format:{@"%s", "-[FGKUPlugin encodeWithCoder:]"}];

  deviceClass = [(FGKUPlugin *)self deviceClass];
  [coderCopy encodeObject:deviceClass forKey:@"DeviceClass"];

  pluginInfo = [(FGKUPlugin *)self pluginInfo];
  [coderCopy encodeObject:pluginInfo forKey:@"PluginInfo"];
}

- (FGKUPlugin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = FGKUPlugin;
  v5 = [(FGKUPlugin *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, 0);
    v7 = [coderCopy decodeObjectForKey:@"DeviceClass"];
    deviceClass = v6->_deviceClass;
    v6->_deviceClass = v7;

    v9 = [coderCopy decodeObjectForKey:@"PluginInfo"];
    pluginInfo = v6->_pluginInfo;
    v6->_pluginInfo = v9;
  }

  return v6;
}

- (FudPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end