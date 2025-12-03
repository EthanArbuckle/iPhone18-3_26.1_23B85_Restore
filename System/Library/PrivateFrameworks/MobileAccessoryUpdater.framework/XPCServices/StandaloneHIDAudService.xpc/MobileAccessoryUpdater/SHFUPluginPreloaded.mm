@interface SHFUPluginPreloaded
- (SHFUPluginPreloaded)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options deviceProperties:(id)properties;
- (void)findFirmwareWithOptions:(id)options remote:(BOOL)remote;
@end

@implementation SHFUPluginPreloaded

- (SHFUPluginPreloaded)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options deviceProperties:(id)properties
{
  v8.receiver = self;
  v8.super_class = SHFUPluginPreloaded;
  return [(SHFUPlugin *)&v8 initWithDeviceClass:class delegate:delegate info:info options:options deviceProperties:properties];
}

- (void)findFirmwareWithOptions:(id)options remote:(BOOL)remote
{
  optionsCopy = options;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100015D94(optionsCopy, remote, logHandle);
  }

  v40 = 0;
  v8 = [(SHFUPlugin *)self getPreloadedFWVersions:&v40];
  v9 = v40;
  [(SHFUPlugin *)self setLatestFirmwareVersions:v8];

  if (v9)
  {
    v10 = 0;
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  delegate = [(SHFUPlugin *)self delegate];
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [batteryCheckDevice BOOLValue];
  logHandle2 = [(SHFUPlugin *)self logHandle];
  options = [(SHFUPlugin *)self options];
  v16 = [options objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  errorDomain = [(SHFUPlugin *)self errorDomain];
  v39 = 0;
  v10 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle2 registryEntryID:v16 errorDomain:errorDomain error:&v39];
  v9 = v39;

  if (v9)
  {
    goto LABEL_6;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v10;
  v24 = [v10 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    while (2)
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v10);
        }

        v28 = *(*(&v35 + 1) + 8 * i);
        if ([(SHFUPlugin *)self deviceNeedsUpdate:v28])
        {
          v9 = 0;
          v18 = 1;
          goto LABEL_28;
        }

        latestFirmwareVersions = [(SHFUPlugin *)self latestFirmwareVersions];
        v30 = [v28 hardwareVersionSupportedBy:latestFirmwareVersions];

        if ((v30 & 1) == 0)
        {
          v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Device has HW revision ID %u which does not match FW files", [v28 hardwareVersion]);
          v32 = [NSError alloc];
          errorDomain2 = [(SHFUPlugin *)self errorDomain];
          v51 = NSLocalizedDescriptionKey;
          v52 = v31;
          v34 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v9 = [v32 initWithDomain:errorDomain2 code:44 userInfo:v34];

          v18 = 0;
          goto LABEL_28;
        }
      }

      v25 = [v10 countByEnumeratingWithState:&v35 objects:v53 count:16];
      v18 = 0;
      v9 = 0;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
    v9 = 0;
  }

LABEL_28:

LABEL_7:
  logHandle3 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    targetDevice = [(SHFUPlugin *)self targetDevice];
    *buf = 138413314;
    v42 = targetDevice;
    v43 = 1024;
    v44 = v9 == 0;
    v45 = 1024;
    v46 = v18;
    v47 = 1024;
    v48 = 0;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "findFirmware: target device %@ successful %d updateAvailable %d needsDownload %d error %@", buf, 0x28u);
  }

  delegate2 = [(SHFUPlugin *)self delegate];
  pluginInfo = [(SHFUPlugin *)self pluginInfo];
  if (v9)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18;
  }

  [delegate2 didFind:v9 == 0 info:pluginInfo updateAvailable:v18 needsDownload:0 error:v9];

  if ((v23 & 1) == 0)
  {
    [(SHFUPlugin *)self setError:v9];
    [(SHFUPlugin *)self setTransaction:0];
    [(SHFUPlugin *)self setSerialQueue:0];
  }
}

@end