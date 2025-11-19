@interface FGKUPlugin
- (FGKUPlugin)initWithCoder:(id)a3;
- (FGKUPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6;
- (FudPluginDelegate)delegate;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)dealloc;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finishWithOptions:(id)a3;
- (void)prepareFirmwareWithOptions:(id)a3;
@end

@implementation FGKUPlugin

- (FGKUPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v12 log:7 format:{@"Initializing %@ version %s for DeviceClass %@ with options %@", v15, &unk_100002119, v11, v13}];

  v26.receiver = self;
  v26.super_class = FGKUPlugin;
  v16 = [(FGKUPlugin *)&v26 init];
  v17 = v16;
  if (!v12)
  {
    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_6;
  }

  if (!v16)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v16->_deviceClass, a3);
  v18 = objc_alloc_init(NSMutableDictionary);
  pluginInfo = v17->_pluginInfo;
  v17->_pluginInfo = v18;

  objc_storeWeak(&v17->_delegate, v12);
  v20 = [AppleFirmwareUpdateController alloc];
  v21 = [v13 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  v22 = [v13 objectForKeyedSubscript:@"FWDirectory"];
  v23 = [v20 initWithRegistryEntryID:v21 fwAssetDirectory:v22];
  controller = v17->_controller;
  v17->_controller = v23;

  [(NSMutableDictionary *)v17->_pluginInfo setObject:&off_100004580 forKeyedSubscript:@"PrepareWeight"];
  [(NSMutableDictionary *)v17->_pluginInfo setObject:&off_100004590 forKeyedSubscript:@"ApplyWeight"];
  [(NSMutableDictionary *)v17->_pluginInfo setObject:&off_1000045A0 forKeyedSubscript:@"FinishWeight"];
  *a5 = v17->_pluginInfo;
  if (([(AppleFirmwareUpdateController *)v17->_controller createFWAssetInfo]& 1) == 0)
  {
LABEL_6:
    sub_100001794(v12);

    v17 = 0;
  }

  return v17;
}

- (void)bootstrapWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FGKUPlugin *)self delegate];
  [v5 log:7 format:{@"%s options %@", "-[FGKUPlugin bootstrapWithOptions:]", v4}];

  v7 = [(AppleFirmwareUpdateController *)self->_controller updateFirmwareWithOptions:v4];

  v6 = [(FGKUPlugin *)self delegate];
  [v6 didBootstrap:v7 == 0 info:0 error:?];
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FGKUPlugin *)self delegate];
  [v5 log:7 format:{@"%s options %@", "-[FGKUPlugin downloadFirmwareWithOptions:]", v4}];

  v6 = [(FGKUPlugin *)self delegate];
  [v6 didDownload:1 info:0 error:0];
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FGKUPlugin *)self delegate];
  [v5 log:7 format:{@"%s options %@", "-[FGKUPlugin prepareFirmwareWithOptions:]", v4}];

  v6 = [(FGKUPlugin *)self delegate];
  [v6 didPrepare:1 info:0 error:0];
}

- (void)applyFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FGKUPlugin *)self delegate];
  [v5 log:7 format:{@"%s options %@", "-[FGKUPlugin applyFirmwareWithOptions:]", v4}];

  v6 = [(FGKUPlugin *)self delegate];
  [v6 didApply:1 info:0 error:0];
}

- (void)finishWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FGKUPlugin *)self delegate];
  [v5 log:7 format:{@"%s options %@", "-[FGKUPlugin finishWithOptions:]", v4}];

  v6 = [(FGKUPlugin *)self delegate];
  [v6 didFinish:1 info:0 error:0];
}

- (void)dealloc
{
  v3 = [(FGKUPlugin *)self delegate];
  v4 = [(FGKUPlugin *)self deviceClass];
  [v3 log:7 format:{@"%s() deviceClass=%@", "-[FGKUPlugin dealloc]", v4}];

  v5.receiver = self;
  v5.super_class = FGKUPlugin;
  [(FGKUPlugin *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FGKUPlugin *)self delegate];
  [v5 log:7 format:{@"%s", "-[FGKUPlugin encodeWithCoder:]"}];

  v6 = [(FGKUPlugin *)self deviceClass];
  [v4 encodeObject:v6 forKey:@"DeviceClass"];

  v7 = [(FGKUPlugin *)self pluginInfo];
  [v4 encodeObject:v7 forKey:@"PluginInfo"];
}

- (FGKUPlugin)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FGKUPlugin;
  v5 = [(FGKUPlugin *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, 0);
    v7 = [v4 decodeObjectForKey:@"DeviceClass"];
    deviceClass = v6->_deviceClass;
    v6->_deviceClass = v7;

    v9 = [v4 decodeObjectForKey:@"PluginInfo"];
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