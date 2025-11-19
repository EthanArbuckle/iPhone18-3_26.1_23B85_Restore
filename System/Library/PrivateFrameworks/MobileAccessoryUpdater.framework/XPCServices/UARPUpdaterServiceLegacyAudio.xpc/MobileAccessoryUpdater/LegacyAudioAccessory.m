@interface LegacyAudioAccessory
- (BOOL)showPersonalizationRequiredDialogAndGetResponse;
- (BOOL)startFirmwareUpdateStates;
- (LegacyAudioAccessory)initWithCoder:(id)a3;
- (LegacyAudioAccessory)initWithDelegate:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deviceClassesForEAIdentifier:(id)a3;
- (id)getMatchingEntryForEAIdentifier:(id)a3;
- (void)didApply:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didBootstrap:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didDownload:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didFind:(BOOL)a3 info:(id)a4 updateAvailable:(BOOL)a5 needsDownload:(BOOL)a6 error:(id)a7;
- (void)didFinish:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didPrepare:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)handleConnect:(id)a3 options:(id)a4;
- (void)log:(int)a3 format:(id)a4;
- (void)personalizationDone:(id)a3 response:(id)a4 error:(id)a5;
- (void)personalizationRequest:(id)a3;
- (void)progress:(double)a3;
- (void)updateCompleteForActiveDeviceClass;
@end

@implementation LegacyAudioAccessory

- (LegacyAudioAccessory)initWithDelegate:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = LegacyAudioAccessory;
  v6 = [(LegacyAudioAccessory *)&v17 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "legacyAudioUpdater");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_delegate, a3);
    v9 = objc_alloc_init(NSMutableArray);
    deviceClasses = v6->_deviceClasses;
    v6->_deviceClasses = v9;

    v11 = dispatch_queue_create("com.apple.legacyAudioAccessory.queue", 0);
    queue = v6->_queue;
    v6->_queue = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    updateFirmwareAnalyticsEvents = v6->_updateFirmwareAnalyticsEvents;
    v6->_updateFirmwareAnalyticsEvents = v13;

    v15 = v6;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[LegacyAudioAccessory alloc] initWithDelegate:self->_delegate];
  objc_storeStrong(&v4->_serialNumber, self->_serialNumber);
  objc_storeStrong(&v4->_activeFirmwareVersion, self->_activeFirmwareVersion);
  objc_storeStrong(&v4->_activeANCVersion, self->_activeANCVersion);
  objc_storeStrong(&v4->_modelName, self->_modelName);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  serialNumber = self->_serialNumber;
  v5 = a3;
  [v5 encodeObject:serialNumber forKey:@"serialNumber"];
  [v5 encodeObject:self->_activeFirmwareVersion forKey:@"activeFirmwareVersion"];
  [v5 encodeObject:self->_activeANCVersion forKey:@"activeANCVersion"];
  [v5 encodeObject:self->_modelName forKey:@"modelName"];
}

- (LegacyAudioAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LegacyAudioAccessory *)self initWithDelegate:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeFirmwareVersion"];
    activeFirmwareVersion = v5->_activeFirmwareVersion;
    v5->_activeFirmwareVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeANCVersion"];
    activeANCVersion = v5->_activeANCVersion;
    v5->_activeANCVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v12;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  serialNumber = self->_serialNumber;
  activeFirmwareVersion = self->_activeFirmwareVersion;
  v7 = [NSString stringWithFormat:@"<%@ serialNumber=%@, _modelName=%@, activeFirmwareVersion=%@, activeANCVersion=%@", v4, serialNumber, self->_modelName, activeFirmwareVersion, self->_activeANCVersion];

  return v7;
}

- (void)handleConnect:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003004;
  block[3] = &unk_10002C858;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (BOOL)startFirmwareUpdateStates
{
  v3 = [(NSDictionary *)self->_updateOptions objectForKeyedSubscript:@"SerialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v3;

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    v7 = self->_serialNumber;
    *buf = 136315650;
    v22 = "[LegacyAudioAccessory startFirmwareUpdateStates]";
    v23 = 2112;
    v24 = activeDeviceClass;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Starting update states for %@, serialNumber %@ ", buf, 0x20u);
  }

  v8 = [EAAccessoryUpdater alloc];
  p_activeDeviceClass = &self->_activeDeviceClass;
  v9 = self->_activeDeviceClass;
  v20 = 0;
  v11 = [(EAAccessoryUpdater *)v8 initWithDeviceClass:v9 delegate:self info:&v20 options:self->_updateOptions];
  v12 = v20;
  updater = self->_updater;
  self->_updater = v11;

  v14 = self->_updater;
  if (v14)
  {
    v15 = [v12 objectForKeyedSubscript:@"AccessoryIdentifier"];
    modelName = self->_modelName;
    self->_modelName = v15;

    if (![(EAAccessoryUpdater *)self->_updater isMultiAssetSession])
    {
      v17 = objc_alloc_init(UARPUpdateFirmwareAnalyticsEvent);
      [(UARPUpdateFirmwareAnalyticsEvent *)v17 setModelName:self->_modelName];
      [(NSMutableDictionary *)self->_updateFirmwareAnalyticsEvents setObject:v17 forKeyedSubscript:self->_activeDeviceClass];
    }

    [(EAAccessoryUpdater *)self->_updater bootstrapWithOptions:self->_updateOptions];
  }

  else
  {
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000136F8(p_activeDeviceClass, v18);
    }
  }

  return v14 != 0;
}

- (id)deviceClassesForEAIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(LegacyAudioAccessory *)self getMatchingEntryForEAIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:@"DeviceClasses"];
  if (!v6)
  {
    v6 = [NSArray arrayWithObjects:v4, 0];
  }

  return v6;
}

- (id)getMatchingEntryForEAIdentifier:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[LegacyAudioController sharedInstance];
  v5 = [v4 matchingAccessoriesList];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"DeviceClass"];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)updateCompleteForActiveDeviceClass
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    serialNumber = self->_serialNumber;
    v18 = 136315650;
    v19 = "[LegacyAudioAccessory updateCompleteForActiveDeviceClass]";
    v20 = 2112;
    v21 = activeDeviceClass;
    v22 = 2112;
    v23 = serialNumber;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Update states complete for %@, serialNumber %@ ", &v18, 0x20u);
  }

  personalizer = self->_personalizer;
  if (personalizer)
  {
    [(FudPersonalizer *)personalizer setDelegate:0];
  }

  v7 = +[LegacyAudioController sharedInstance];
  [v7 addActiveFirmwareAnalytics:self];

  v8 = [(NSMutableDictionary *)self->_updateFirmwareAnalyticsEvents objectForKeyedSubscript:self->_activeDeviceClass];
  v9 = v8;
  if (v8 && [v8 stagingStatus])
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_activeDeviceClass;
      v12 = self->_serialNumber;
      v18 = 136315650;
      v19 = "[LegacyAudioAccessory updateCompleteForActiveDeviceClass]";
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Posting analytics for %@, serialNumber %@ ", &v18, 0x20u);
    }

    [v9 send];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_activeDeviceClass;
      v15 = self->_serialNumber;
      v18 = 136315650;
      v19 = "[LegacyAudioAccessory updateCompleteForActiveDeviceClass]";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Analytics event invalid, not posting for %@, serialNumber %@ ", &v18, 0x20u);
    }
  }

  [(NSMutableDictionary *)self->_updateFirmwareAnalyticsEvents removeObjectForKey:self->_activeDeviceClass];
  [(NSMutableArray *)self->_deviceClasses removeObject:self->_activeDeviceClass];
  [(EAAccessoryUpdater *)self->_updater setDelegate:0];
  if ([(NSMutableArray *)self->_deviceClasses count])
  {
    v16 = [(NSMutableArray *)self->_deviceClasses firstObject];
    v17 = self->_activeDeviceClass;
    self->_activeDeviceClass = v16;

    if (![(LegacyAudioAccessory *)self startFirmwareUpdateStates])
    {
      [(LegacyAudioAccessory *)self updateCompleteForActiveDeviceClass];
    }
  }

  else
  {
    [(LegacyAudioAccessoryDelegate *)self->_delegate updateCompleteForAccessory:self];
  }
}

- (void)didBootstrap:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    *buf = 136316162;
    v16 = "[LegacyAudioAccessory didBootstrap:info:error:]";
    v17 = 2112;
    v18 = activeDeviceClass;
    v19 = 1024;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, successful=%d, info=%@, error=%@", buf, 0x30u);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003864;
  v13[3] = &unk_10002C880;
  v14 = v6;
  v13[4] = self;
  dispatch_async(queue, v13);
}

- (void)didFind:(BOOL)a3 info:(id)a4 updateAvailable:(BOOL)a5 needsDownload:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v12 = a4;
  v13 = a7;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    *buf = 136316674;
    v24 = "[LegacyAudioAccessory didFind:info:updateAvailable:needsDownload:error:]";
    v25 = 2112;
    v26 = activeDeviceClass;
    v27 = 1024;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v8;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, successful=%d, info=%@, updateAvailable=%d, needsDownload=%d, error=%@", buf, 0x3Cu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A4C;
  block[3] = &unk_10002C8A8;
  block[4] = self;
  v19 = v12;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v17 = v12;
  dispatch_async(queue, block);
}

- (void)didDownload:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    *buf = 136316162;
    v16 = "[LegacyAudioAccessory didDownload:info:error:]";
    v17 = 2112;
    v18 = activeDeviceClass;
    v19 = 1024;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, successful=%d, info=%@, error=%@", buf, 0x30u);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003DE4;
  v13[3] = &unk_10002C880;
  v13[4] = self;
  v14 = v6;
  dispatch_async(queue, v13);
}

- (void)didPrepare:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    *buf = 136316162;
    v16 = "[LegacyAudioAccessory didPrepare:info:error:]";
    v17 = 2112;
    v18 = activeDeviceClass;
    v19 = 1024;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, successful=%d, info=%@, error=%@", buf, 0x30u);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003FFC;
  v13[3] = &unk_10002C880;
  v14 = v6;
  v13[4] = self;
  dispatch_async(queue, v13);
}

- (void)didApply:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    *buf = 136316162;
    v18 = "[LegacyAudioAccessory didApply:info:error:]";
    v19 = 2112;
    v20 = activeDeviceClass;
    v21 = 1024;
    v22 = v6;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, successful=%d, info=%@, error=%@", buf, 0x30u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004184;
  block[3] = &unk_10002C8D0;
  block[4] = self;
  v15 = v8;
  v16 = v6;
  v13 = v8;
  dispatch_async(queue, block);
}

- (void)progress:(double)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    v7 = 136315650;
    v8 = "[LegacyAudioAccessory progress:]";
    v9 = 2112;
    v10 = activeDeviceClass;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, progress=%f", &v7, 0x20u);
  }
}

- (void)didFinish:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceClass = self->_activeDeviceClass;
    *buf = 136316162;
    v15 = "[LegacyAudioAccessory didFinish:info:error:]";
    v16 = 2112;
    v17 = activeDeviceClass;
    v18 = 1024;
    v19 = v6;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: deviceClass=%@, successful=%d, info=%@, error=%@", buf, 0x30u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004484;
  block[3] = &unk_10002C8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)personalizationRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004524;
  v7[3] = &unk_10002C920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)personalizationDone:(id)a3 response:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[LegacyAudioAccessory personalizationDone:response:error:]";
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Error during personalization %@.", &v14, 0x16u);
  }

  if (v10)
  {
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v12 = v9;
    v13 = 0;
  }

  [(EAAccessoryUpdater *)self->_updater personalizationResponse:v8 response:v12 status:v13];
}

- (BOOL)showPersonalizationRequiredDialogAndGetResponse
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  v3 = [(LegacyAudioAccessory *)self getMatchingEntryForEAIdentifier:self->_activeDeviceClass];
  v4 = [v3 objectForKeyedSubscript:@"DeviceClassName"];
  v5 = @"your accessory";
  if (v4)
  {
    v5 = v4;
  }

  v6 = [NSString stringWithValidatedFormat:@"New Firmware available for %@. This requires Personalization validFormatSpecifiers:you will be prompted for your credentials." error:@"%@", 0, v5];
  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:@"*** INTERNAL ONLY ***" forKey:kCFUserNotificationAlertHeaderKey];
  [v7 setObject:v6 forKey:kCFUserNotificationAlertMessageKey];
  [v7 setObject:@"OK" forKey:kCFUserNotificationDefaultButtonTitleKey];
  [v7 setObject:@"Cancel" forKey:kCFUserNotificationAlternateButtonTitleKey];
  error = 0;
  v8 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x21uLL, &error, v7);
  if (v8)
  {
    v9 = v8;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v8, 0.0, &responseFlags);
    v10 = responseFlags == 0;
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)log:(int)a3 format:(id)a4
{
  v5 = a4;
  v6 = [[NSString alloc] initWithFormat:v5 arguments:&v10];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

@end