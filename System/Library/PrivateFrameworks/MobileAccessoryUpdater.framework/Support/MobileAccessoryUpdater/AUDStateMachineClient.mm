@interface AUDStateMachineClient
- (AUDStateMachineClient)init;
- (AUDStateMachineDelegate)delegate;
- (BOOL)areAllUpdatesRequired;
- (id)copyNotificationOptions;
- (void)dealloc;
- (void)deviceClassAttached:(id)attached;
- (void)deviceClassDetached:(id)detached error:(id)error;
- (void)shouldInstallUpdateForAccessory:(id)accessory deviceClass:(id)class nextStep:(id)step withOptions:(id)options handler:(id)handler;
- (void)stepComplete:(id)complete deviceClass:(id)class successful:(BOOL)successful info:(id)info error:(id)error;
- (void)stepRunning:(id)running deviceClass:(id)class progress:(double)progress overallProgress:(double)overallProgress info:(id)info;
- (void)storeDeclinedAccessoryatURL:(id)l serialNumber:(id)number;
@end

@implementation AUDStateMachineClient

- (AUDStateMachineClient)init
{
  v13.receiver = self;
  v13.super_class = AUDStateMachineClient;
  v2 = [(AUDStateMachineClient *)&v13 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "legacy");
    v4 = *(v2 + 12);
    *(v2 + 12) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 10);
    *(v2 + 10) = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("audstatemachineclient.queue", v7);
    v9 = *(v2 + 6);
    *(v2 + 6) = v8;

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = *(v2 + 4);
    *(v2 + 4) = v10;

    if (*(v2 + 4))
    {
      if (os_log_type_enabled(*(v2 + 12), OS_LOG_TYPE_ERROR))
      {
        sub_100053B20();
      }
    }

    else if (([0 isLoaded] & 1) == 0)
    {
      [*(v2 + 4) load];
    }
  }

  return v2;
}

- (void)deviceClassAttached:(id)attached
{
  attachedCopy = attached;
  processingQueue = self->_processingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038A40;
  v7[3] = &unk_100081438;
  v7[4] = self;
  v8 = attachedCopy;
  v6 = attachedCopy;
  dispatch_async(processingQueue, v7);
}

- (void)deviceClassDetached:(id)detached error:(id)error
{
  detachedCopy = detached;
  errorCopy = error;
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038CB4;
  block[3] = &unk_1000814D8;
  block[4] = self;
  v12 = detachedCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = detachedCopy;
  dispatch_async(processingQueue, block);
}

- (void)stepRunning:(id)running deviceClass:(id)class progress:(double)progress overallProgress:(double)overallProgress info:(id)info
{
  runningCopy = running;
  classCopy = class;
  infoCopy = info;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138544386;
    v18 = runningCopy;
    v19 = 2114;
    v20 = classCopy;
    v21 = 2050;
    progressCopy = progress;
    v23 = 2050;
    overallProgressCopy = overallProgress;
    v25 = 2114;
    v26 = infoCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "StepRunning - step:%{public}@  device:%{public}@ progress:%{public}f overall-progress:%{public}f stepInfo=%{public}@", &v17, 0x34u);
  }

  v16 = [infoCopy objectForKey:@"SilentUpdateNoUI"];
  [v16 BOOLValue];
}

- (void)shouldInstallUpdateForAccessory:(id)accessory deviceClass:(id)class nextStep:(id)step withOptions:(id)options handler:(id)handler
{
  accessoryCopy = accessory;
  classCopy = class;
  stepCopy = step;
  optionsCopy = options;
  handlerCopy = handler;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 1;
  v15 = [optionsCopy objectForKey:@"UpdateRequired"];
  v16 = [optionsCopy objectForKey:@"OptionsDict"];
  v49 = stepCopy;
  v17 = [optionsCopy objectForKey:@"SeedConsentRequired"];
  v48 = v17 != 0;

  v18 = [optionsCopy objectForKey:@"AccessoryName"];
  if (!v18)
  {
    v18 = accessoryCopy;
  }

  v19 = [optionsCopy objectForKey:@"SeedUpdateDeclinedPath"];
  if (v19)
  {
    v51 = [NSURL fileURLWithPath:v19];
  }

  else
  {
    v51 = 0;
  }

  v50 = [optionsCopy objectForKey:@"SerialNumber"];
  if (v16)
  {
    v20 = [v16 objectForKey:@"CurrentFirmwareVersionOnAccessory"];
    v21 = v20 != 0;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if ([v15 BOOLValue])
  {
    goto LABEL_12;
  }

LABEL_11:
  if ([(AUDStateMachineClient *)self areAllUpdatesRequired])
  {
LABEL_12:
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "This update is required, skipping UI.", buf, 2u);
    }

    goto LABEL_15;
  }

  if (self->_notification)
  {
LABEL_15:
    [(AUDStateMachineClient *)self cleanupInstallUpdateForAccessory:*(v62 + 24) handler:handlerCopy];
    goto LABEL_16;
  }

  v46 = handlerCopy;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100053C1C();
  }

  dictionary = [(AUDStateMachineClient *)self copyNotificationOptions];
  if (dictionary)
  {
    v23 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework"];
    if (v23)
    {
      p_info = AULegacyCommand.info;
      v45 = v23;
      v44 = [FudUtilities getLocalizedString:accessoryCopy withBundle:v23 defaultValue:accessoryCopy];
      if (v44)
      {
        if (v17)
        {
          v25 = [FudUtilities getLocalizedString:@"Install Pre-Release Firmware Title" withBundle:v45 defaultValue:@"Install Pre-Release Firmware Title"];
          v42 = [NSString stringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@" error:0, v44, v18];

          p_info = (AULegacyCommand + 32);
        }

        else
        {
          v42 = [FudUtilities getLocalizedString:@"Accessory Update Available" withBundle:v45 defaultValue:@"Accessory Update Available"];
        }

        [(__CFDictionary *)dictionary setObject:v42 forKey:kCFUserNotificationAlertHeaderKey];
        if (v17)
        {
          v30 = @"Install Pre-Release Firmware Body";
        }

        else
        {
          v30 = @"Update Optional Prompt";
        }

        v41 = [p_info + 181 getLocalizedString:v30 withBundle:v45 defaultValue:v30];
        v43 = [NSMutableString stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:0, v44];
        if (v21)
        {
          v40 = [p_info + 181 getLocalizedString:@"Current Firmware Version" withBundle:v45 defaultValue:@"Current Firmware Version"];
          v31 = [NSString stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:0, v20];
          [v43 appendString:v31];
        }

        if (v43)
        {
          [(__CFDictionary *)dictionary setObject:v43 forKey:kCFUserNotificationAlertMessageKey];
          v32 = p_info + 181;
          if (v17)
          {
            v33 = [v32 getLocalizedString:@"Install" withBundle:v45 defaultValue:@"Install"];
            v34 = [p_info + 181 getLocalizedString:@"Not Now" withBundle:v45 defaultValue:@"Not Now"];
            [(__CFDictionary *)dictionary setObject:v34 forKey:kCFUserNotificationDefaultButtonTitleKey];
            [(__CFDictionary *)dictionary setObject:v33 forKey:kCFUserNotificationAlternateButtonTitleKey];
          }

          else
          {
            v33 = [v32 getLocalizedString:@"Update" withBundle:v45 defaultValue:@"Update"];
            v34 = [p_info + 181 getLocalizedString:@"Later" withBundle:v45 defaultValue:@"Later"];
            [(__CFDictionary *)dictionary setObject:v33 forKey:kCFUserNotificationDefaultButtonTitleKey];
            [(__CFDictionary *)dictionary setObject:v34 forKey:kCFUserNotificationAlternateButtonTitleKey];
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100053C50();
          }

          v35 = [classCopy copy];
          modalDeviceClass = self->_modalDeviceClass;
          self->_modalDeviceClass = v35;

          *buf = 0;
          v37 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, buf, dictionary);
          self->_notification = v37;
          if (v37)
          {
            v38 = qword_10009A9D8;
            v39 = dispatch_get_global_queue(0, 0);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10003998C;
            block[3] = &unk_100081F68;
            block[4] = self;
            v58 = &v61;
            v57 = v46;
            v59 = v48;
            v55 = v51;
            v56 = v50;
            dispatch_group_async(v38, v39, block);
          }

          else
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              sub_100053C84();
            }

            [(AUDStateMachineClient *)self cleanupInstallUpdateForAccessory:*(v62 + 24) handler:v46];
          }
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100053CB8();
          }

          [(AUDStateMachineClient *)self cleanupInstallUpdateForAccessory:*(v62 + 24) handler:v46];
        }

        v29 = v44;
      }

      else
      {
        v28 = self->_log;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100053CEC(accessoryCopy, v28);
        }

        [(AUDStateMachineClient *)self cleanupInstallUpdateForAccessory:*(v62 + 24) handler:v46];
        v29 = 0;
      }

      v27 = v45;
      handlerCopy = v46;
    }

    else
    {
      v27 = 0;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100053D64();
      }

      [(AUDStateMachineClient *)self cleanupInstallUpdateForAccessory:*(v62 + 24) handler:handlerCopy];
    }

    v26 = dictionary;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100053D98();
    }

    [(AUDStateMachineClient *)self cleanupInstallUpdateForAccessory:*(v62 + 24) handler:handlerCopy];
    v26 = 0;
  }

LABEL_16:
  _Block_object_dispose(&v61, 8);
}

- (void)storeDeclinedAccessoryatURL:(id)l serialNumber:(id)number
{
  lCopy = l;
  numberCopy = number;
  v8 = numberCopy;
  if (lCopy && numberCopy)
  {
    if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v9 = +[NSFileManager defaultManager];
      [v9 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:0];
    }

    v10 = [lCopy URLByAppendingPathComponent:v8];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100053E6C(v10, log);
    }

    v12 = +[NSFileManager defaultManager];
    path = [v10 path];
    v14 = [v8 dataUsingEncoding:4];
    v15 = [v12 createFileAtPath:path contents:v14 attributes:0];

    if ((v15 & 1) == 0)
    {
      v16 = self->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100053EE4(v10, v16);
      }
    }
  }
}

- (void)stepComplete:(id)complete deviceClass:(id)class successful:(BOOL)successful info:(id)info error:(id)error
{
  completeCopy = complete;
  classCopy = class;
  infoCopy = info;
  errorCopy = error;
  processingQueue = self->_processingQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100039EE0;
  v21[3] = &unk_100081FB8;
  v21[4] = self;
  v22 = classCopy;
  v23 = infoCopy;
  v24 = completeCopy;
  successfulCopy = successful;
  v25 = errorCopy;
  v17 = errorCopy;
  v18 = completeCopy;
  v19 = infoCopy;
  v20 = classCopy;
  dispatch_async(processingQueue, v21);
}

- (BOOL)areAllUpdatesRequired
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.MobileAccessoryUpdater"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"AllUpdatesRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)copyNotificationOptions
{
  v2 = objc_opt_new();
  [v2 setObject:kCFBooleanFalse forKey:@"DismissOnLock"];
  [v2 setObject:kCFBooleanTrue forKey:@"SBUserNotificationDontDismissOnUnlock"];
  return v2;
}

- (void)dealloc
{
  notification = self->_notification;
  if (notification)
  {
    CFRelease(notification);
    self->_notification = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = AUDStateMachineClient;
  [(AUDStateMachineClient *)&v4 dealloc];
}

- (AUDStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end