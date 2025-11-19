@interface SHFUPluginProxy
- (SHFUPluginProxy)init;
- (SHFUPluginProxy)initWithCoder:(id)a3;
- (SHFUPluginProxy)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)dealloc;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)finishWithOptions:(id)a3;
- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5;
- (void)prepareFirmwareWithOptions:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SHFUPluginProxy

- (SHFUPluginProxy)initWithCoder:(id)a3
{
  [NSException raise:NSInternalInconsistencyException format:@"NSCoding protocol unused by fud"];

  return [(SHFUPluginProxy *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0];
}

- (SHFUPluginProxy)init
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceClass:delegate:info:options:"];

  return [(SHFUPluginProxy *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0];
}

- (SHFUPluginProxy)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v48.receiver = self;
  v48.super_class = SHFUPluginProxy;
  v13 = [(SHFUPluginProxy *)&v48 init];
  if (!v13)
  {
    goto LABEL_28;
  }

  v39 = a5;
  v43 = v11;
  v42 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/StandaloneHIDAudService.xpc"];
  v14 = [v42 infoDictionary];
  v15 = [v14 objectForKeyedSubscript:@"MobileAccessoryUpdaterProperties"];

  v41 = v15;
  [v15 objectForKeyedSubscript:@"MatchingDevices"];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = v47 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = *v45;
  v40 = v12;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v45 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v44 + 1) + 8 * i);
      v22 = [v21 objectForKeyedSubscript:@"DeviceClass"];
      v23 = [v10 isEqualToString:v22];

      if (v23)
      {
        v24 = [v21 objectForKeyedSubscript:@"Policy"];
        v25 = [v24 objectForKeyedSubscript:@"FWSource"];
        v26 = [v25 intValue];

        v27 = +[NSUserDefaults standardUserDefaults];
        v28 = [v27 objectForKey:@"FWSource"];

        if (v28)
        {
          v26 = [v27 integerForKey:@"FWSource"];
        }

        v12 = v40;
        if (v26 == 1)
        {
          v29 = SHFUPluginPreloaded;
        }

        else
        {
          if (v26)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000151CC(v26);
            }

            goto LABEL_20;
          }

          v29 = SHFUPluginMobileAsset;
        }

        v30 = [[v29 alloc] initWithDeviceClass:v10 delegate:v43 info:v39 options:v40 deviceProperties:v21];
        plugin = v13->_plugin;
        v13->_plugin = v30;

LABEL_20:
        goto LABEL_21;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v44 objects:v51 count:16];
    v12 = v40;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v32 = v13->_plugin;
  if (v32)
  {
    v33 = [(SHFUPlugin *)v32 logHandle];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10001524C(v12, v33);
    }

    v34 = v13->_plugin;
    v35 = [v12 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
    [(SHFUPlugin *)v34 logIORegistryEntry:v35];

    p_super = [(SHFUPlugin *)v13->_plugin logHandle];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v13->_plugin;
      *buf = 138412290;
      v50 = v37;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  else
  {
    p_super = &v13->super;
    v13 = 0;
  }

  v11 = v43;
LABEL_28:

  return v13;
}

- (void)dealloc
{
  v3 = [(SHFUPlugin *)self->_plugin logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000152C4(v3);
  }

  plugin = self->_plugin;
  self->_plugin = 0;

  v5.receiver = self;
  v5.super_class = SHFUPluginProxy;
  [(SHFUPluginProxy *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPluginProxy *)self plugin];
  [v5 setDelegate:v4];
}

- (void)bootstrapWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPluginProxy *)self plugin];
  [v5 bootstrapWithOptions:v4];
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPluginProxy *)self plugin];
  [v5 downloadFirmwareWithOptions:v4];
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPluginProxy *)self plugin];
  [v5 prepareFirmwareWithOptions:v4];
}

- (void)applyFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPluginProxy *)self plugin];
  [v5 applyFirmwareWithOptions:v4];
}

- (void)finishWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPluginProxy *)self plugin];
  [v5 finishWithOptions:v4];
}

- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SHFUPluginProxy *)self plugin];
  [v11 personalizationResponse:v10 response:v9 status:v8];
}

@end