@interface UARPHIDAccessory
- (BOOL)corePropertiesQueried;
- (UARPHIDAccessory)initWithHIDDeviceRef:(__IOHIDDevice *)ref;
- (id)getPropertiesToQuery;
- (void)handleHIDDisconnect;
- (void)internalQueryStartWithCompletionCallback:(id)callback;
- (void)proceedWithUpdate;
- (void)updateProperty:(unint64_t)property value:(id)value;
- (void)waitForInternalQueryToComplete;
@end

@implementation UARPHIDAccessory

- (UARPHIDAccessory)initWithHIDDeviceRef:(__IOHIDDevice *)ref
{
  v11.receiver = self;
  v11.super_class = UARPHIDAccessory;
  v4 = [(UARPHIDAccessory *)&v11 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 9) = ref;
    *(v4 + 54) = 1;
    v6 = +[NSDate distantPast];
    lastReportedStagingTime = v5->_lastReportedStagingTime;
    v5->_lastReportedStagingTime = v6;

    v8 = os_log_create("com.apple.accessoryupdater.uarp", "hidUpdater");
    log = v5->_log;
    v5->_log = v8;
  }

  return v5;
}

- (void)internalQueryStartWithCompletionCallback:(id)callback
{
  callbackCopy = callback;
  getPropertiesToQuery = [(UARPHIDAccessory *)self getPropertiesToQuery];
  v5 = [NSMutableSet setWithArray:getPropertiesToQuery];
  propertiesToQuery = self->_propertiesToQuery;
  self->_propertiesToQuery = v5;

  v7 = [callbackCopy copy];
  completion = self->_completion;
  self->_completion = v7;
}

- (void)waitForInternalQueryToComplete
{
  v3 = dispatch_semaphore_create(0);
  querySemaphore = self->_querySemaphore;
  self->_querySemaphore = v3;

  v5 = self->_querySemaphore;
  v6 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10001E1C0(self, log);
    }
  }
}

- (void)updateProperty:(unint64_t)property value:(id)value
{
  valueCopy = value;
  if (property <= 4)
  {
    if (property > 1)
    {
      if (property == 2)
      {
        [(UARPAccessoryID *)self->_uarpAccessoryID setSerialNumber:valueCopy];
      }

      else if (property == 4)
      {
        [(UARPAccessoryID *)self->_uarpAccessoryID setFirmwareVersion:valueCopy];
      }
    }

    else if (property)
    {
      if (property == 1)
      {
        [(UARPAccessoryID *)self->_uarpAccessoryID setModelName:valueCopy];
      }
    }

    else
    {
      [(UARPAccessoryID *)self->_uarpAccessoryID setManufacturer:valueCopy];
    }
  }

  else if (property <= 7)
  {
    if (property == 5)
    {
      [(UARPAccessoryID *)self->_uarpAccessoryID setStagedFirmwareVersion:valueCopy];
    }

    else if (property == 7)
    {
      [(UARPAccessoryID *)self->_uarpAccessoryID setProductGroup:valueCopy];
    }
  }

  else
  {
    switch(property)
    {
      case 8uLL:
        [(UARPAccessoryID *)self->_uarpAccessoryID setProductNumber:valueCopy];
        break;
      case 0xCuLL:
        [(UARPAccessoryID *)self->_uarpAccessoryID setHwFusingType:valueCopy];
        break;
      case 0xDuLL:
        [(UARPAccessoryID *)self->_uarpAccessoryID setFriendlyName:valueCopy];
        break;
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    *buf = 136315394;
    v35 = "[UARPHIDAccessory updateProperty:value:]";
    v36 = 2080;
    v37 = UARPAccessoryPropertyToString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Got property: %s", buf, 0x16u);
  }

  propertyCopy = property;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_propertiesToQuery;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = self->_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = v14;
          [v15 intValue];
          v17 = UARPAccessoryPropertyToString();
          *buf = 136315394;
          v35 = "[UARPHIDAccessory updateProperty:value:]";
          v36 = 2080;
          v37 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Property to query: %s", buf, 0x16u);
        }
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  propertiesToQuery = self->_propertiesToQuery;
  v19 = [NSNumber numberWithUnsignedInteger:propertyCopy];
  LODWORD(propertiesToQuery) = [(NSMutableSet *)propertiesToQuery containsObject:v19];

  if (propertiesToQuery)
  {
    v20 = self->_propertiesToQuery;
    v21 = [NSNumber numberWithUnsignedInteger:propertyCopy];
    [(NSMutableSet *)v20 removeObject:v21];
  }

  v22 = self->_log;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = self->_propertiesToQuery;
    v24 = v22;
    v25 = [(NSMutableSet *)v23 count];
    *buf = 136315394;
    v35 = "[UARPHIDAccessory updateProperty:value:]";
    v36 = 2048;
    v37 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Properties left to get: %lu", buf, 0x16u);
  }

  if (![(NSMutableSet *)self->_propertiesToQuery count]&& [(UARPHIDAccessory *)self corePropertiesQueried])
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      uarpAccessoryID = self->_uarpAccessoryID;
      *buf = 136315394;
      v35 = "[UARPHIDAccessory updateProperty:value:]";
      v36 = 2112;
      v37 = uarpAccessoryID;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s: All properties queried for accessory %@", buf, 0x16u);
    }

    [(UARPHIDAccessory *)self proceedWithUpdate];
  }
}

- (BOOL)corePropertiesQueried
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uarpAccessoryID = self->_uarpAccessoryID;
    v5 = log;
    serialNumber = [(UARPAccessoryID *)uarpAccessoryID serialNumber];
    firmwareVersion = [(UARPAccessoryID *)self->_uarpAccessoryID firmwareVersion];
    stagedFirmwareVersion = [(UARPAccessoryID *)self->_uarpAccessoryID stagedFirmwareVersion];
    v14 = 136315906;
    v15 = "[UARPHIDAccessory corePropertiesQueried]";
    v16 = 2112;
    v17 = serialNumber;
    v18 = 2112;
    v19 = firmwareVersion;
    v20 = 2112;
    v21 = stagedFirmwareVersion;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Serial Number <%@>, Firmware Version <%@>, Staged FW Version <%@> ", &v14, 0x2Au);
  }

  serialNumber2 = [(UARPAccessoryID *)self->_uarpAccessoryID serialNumber];
  if (serialNumber2)
  {
    firmwareVersion2 = [(UARPAccessoryID *)self->_uarpAccessoryID firmwareVersion];
    if (firmwareVersion2)
    {
      stagedFirmwareVersion2 = [(UARPAccessoryID *)self->_uarpAccessoryID stagedFirmwareVersion];
      v12 = stagedFirmwareVersion2 != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)proceedWithUpdate
{
  querySemaphore = self->_querySemaphore;
  if (querySemaphore)
  {
    dispatch_semaphore_signal(querySemaphore);
    v4 = self->_querySemaphore;
    self->_querySemaphore = 0;
  }

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self->_uarpAccessoryID);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

- (void)handleHIDDisconnect
{
  querySemaphore = self->_querySemaphore;
  if (querySemaphore)
  {
    dispatch_semaphore_signal(querySemaphore);
  }

  else
  {
    completion = self->_completion;
    if (completion)
    {
      completion[2](completion, self->_uarpAccessoryID);
    }
  }

  self->_hidDeviceRef = 0;
}

- (id)getPropertiesToQuery
{
  v2 = [NSMutableArray arrayWithArray:&off_10002D4B0];
  v3 = [NSArray arrayWithArray:v2];

  return v3;
}

@end