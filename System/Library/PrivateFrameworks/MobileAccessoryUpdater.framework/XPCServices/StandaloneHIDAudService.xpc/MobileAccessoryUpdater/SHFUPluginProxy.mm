@interface SHFUPluginProxy
- (SHFUPluginProxy)init;
- (SHFUPluginProxy)initWithCoder:(id)coder;
- (SHFUPluginProxy)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
- (void)applyFirmwareWithOptions:(id)options;
- (void)bootstrapWithOptions:(id)options;
- (void)dealloc;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)finishWithOptions:(id)options;
- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status;
- (void)prepareFirmwareWithOptions:(id)options;
- (void)setDelegate:(id)delegate;
@end

@implementation SHFUPluginProxy

- (SHFUPluginProxy)initWithCoder:(id)coder
{
  [NSException raise:NSInternalInconsistencyException format:@"NSCoding protocol unused by fud"];

  return [(SHFUPluginProxy *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0];
}

- (SHFUPluginProxy)init
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceClass:delegate:info:options:"];

  return [(SHFUPluginProxy *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0];
}

- (SHFUPluginProxy)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  classCopy = class;
  delegateCopy = delegate;
  optionsCopy = options;
  v48.receiver = self;
  v48.super_class = SHFUPluginProxy;
  v13 = [(SHFUPluginProxy *)&v48 init];
  if (!v13)
  {
    goto LABEL_28;
  }

  infoCopy = info;
  v43 = delegateCopy;
  v42 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/StandaloneHIDAudService.xpc"];
  infoDictionary = [v42 infoDictionary];
  v15 = [infoDictionary objectForKeyedSubscript:@"MobileAccessoryUpdaterProperties"];

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
  v40 = optionsCopy;
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
      v23 = [classCopy isEqualToString:v22];

      if (v23)
      {
        v24 = [v21 objectForKeyedSubscript:@"Policy"];
        v25 = [v24 objectForKeyedSubscript:@"FWSource"];
        intValue = [v25 intValue];

        v27 = +[NSUserDefaults standardUserDefaults];
        v28 = [v27 objectForKey:@"FWSource"];

        if (v28)
        {
          intValue = [v27 integerForKey:@"FWSource"];
        }

        optionsCopy = v40;
        if (intValue == 1)
        {
          v29 = SHFUPluginPreloaded;
        }

        else
        {
          if (intValue)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000151CC(intValue);
            }

            goto LABEL_20;
          }

          v29 = SHFUPluginMobileAsset;
        }

        v30 = [[v29 alloc] initWithDeviceClass:classCopy delegate:v43 info:infoCopy options:v40 deviceProperties:v21];
        plugin = v13->_plugin;
        v13->_plugin = v30;

LABEL_20:
        goto LABEL_21;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v44 objects:v51 count:16];
    optionsCopy = v40;
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
    logHandle = [(SHFUPlugin *)v32 logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_10001524C(optionsCopy, logHandle);
    }

    v34 = v13->_plugin;
    v35 = [optionsCopy objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
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

  delegateCopy = v43;
LABEL_28:

  return v13;
}

- (void)dealloc
{
  logHandle = [(SHFUPlugin *)self->_plugin logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000152C4(logHandle);
  }

  plugin = self->_plugin;
  self->_plugin = 0;

  v5.receiver = self;
  v5.super_class = SHFUPluginProxy;
  [(SHFUPluginProxy *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin setDelegate:delegateCopy];
}

- (void)bootstrapWithOptions:(id)options
{
  optionsCopy = options;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin bootstrapWithOptions:optionsCopy];
}

- (void)downloadFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin downloadFirmwareWithOptions:optionsCopy];
}

- (void)prepareFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin prepareFirmwareWithOptions:optionsCopy];
}

- (void)applyFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin applyFirmwareWithOptions:optionsCopy];
}

- (void)finishWithOptions:(id)options
{
  optionsCopy = options;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin finishWithOptions:optionsCopy];
}

- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status
{
  statusCopy = status;
  v9 = a4;
  responseCopy = response;
  plugin = [(SHFUPluginProxy *)self plugin];
  [plugin personalizationResponse:responseCopy response:v9 status:statusCopy];
}

@end