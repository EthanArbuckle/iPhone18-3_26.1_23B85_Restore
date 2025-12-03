@interface SYDevice
+ (NSSet)knownDevices;
+ (SYDevice)targetableDevice;
+ (id)deviceForIDSDevice:(id)device;
+ (id)deviceForIDSDeviceID:(id)d fromList:(id)list;
+ (id)deviceForNRDevice:(id)device;
- (BOOL)isActive;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaired;
- (BOOL)isTargetable;
- (BOOL)supportsFileTransferMessageSend;
- (NSString)debugDescription;
- (NSString)description;
- (PBCodable)stateForLogging;
- (SYDevice)init;
- (SYDevice)initWithNRDevice:(id)device;
- (id)findMatchingIDSDeviceFromList:(id)list;
- (int64_t)deviceCode;
- (void)_updateCachedStateForProperty:(id)property;
- (void)_updateStateFlagsPostingNotifications:(BOOL)notifications;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
@end

@implementation SYDevice

+ (SYDevice)targetableDevice
{
  v2 = +[_SYDeviceMonitor sharedInstance];
  currentTargetableDevice = [v2 currentTargetableDevice];

  return currentTargetableDevice;
}

+ (NSSet)knownDevices
{
  v2 = +[_SYDeviceMonitor sharedInstance];
  allDevices = [v2 allDevices];

  return allDevices;
}

+ (id)deviceForNRDevice:(id)device
{
  deviceCopy = device;
  v4 = +[_SYDeviceMonitor sharedInstance];
  v5 = [v4 deviceForNRDevice:deviceCopy];

  return v5;
}

+ (id)deviceForIDSDevice:(id)device
{
  v3 = MEMORY[0x1E69B36C0];
  deviceCopy = device;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance deviceForIDSDevice:deviceCopy];

  v7 = +[_SYDeviceMonitor sharedInstance];
  v8 = [v7 deviceForNRDevice:v6];

  return v8;
}

+ (id)deviceForIDSDeviceID:(id)d fromList:(id)list
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  listCopy = list;
  if ([dCopy hasPrefix:@"device:"])
  {
    v7 = [dCopy substringFromIndex:7];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = listCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          uniqueIDOverride = [v12 uniqueIDOverride];
          v14 = [uniqueIDOverride isEqualToString:v7];

          if (v14)
          {
            mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
            v16 = [mEMORY[0x1E69B36C0] deviceForIDSDevice:v12];

            v17 = +[_SYDeviceMonitor sharedInstance];
            v9 = [v17 deviceForNRDevice:v16];

            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (SYDevice)init
{
  [(SYDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SYDevice)initWithNRDevice:(id)device
{
  v38 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = SYDevice;
  v6 = [(SYDevice *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nrDevice, device);
    v8 = *MEMORY[0x1E69B3610];
    v9 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
    pairingID = v7->_pairingID;
    v7->_pairingID = v9;

    nrDevice = v7->_nrDevice;
    v12 = *MEMORY[0x1E69B35F8];
    v33[0] = v8;
    v33[1] = v12;
    v13 = *MEMORY[0x1E69B35D0];
    v33[2] = *MEMORY[0x1E69B35E8];
    v33[3] = v13;
    v15 = *MEMORY[0x1E69B3640];
    v34 = *MEMORY[0x1E69B3598];
    v14 = v34;
    v35 = v15;
    v17 = *MEMORY[0x1E69B35F0];
    v36 = *MEMORY[0x1E69B3628];
    v16 = v36;
    v37 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:8];
    [(NRDevice *)nrDevice addPropertyObserver:v7 forPropertyChanges:v18];

    [(SYDevice *)v7 _updateStateFlagsPostingNotifications:0];
    v19 = [(NRDevice *)v7->_nrDevice valueForProperty:v12];
    pairingStorePath = v7->_pairingStorePath;
    v7->_pairingStorePath = v19;

    v21 = [(NRDevice *)v7->_nrDevice valueForProperty:v17];
    lastActiveDate = v7->_lastActiveDate;
    v7->_lastActiveDate = v21;

    v23 = [(NRDevice *)v7->_nrDevice valueForProperty:v14];
    deviceClass = v7->_deviceClass;
    v7->_deviceClass = v23;

    v25 = [(NRDevice *)v7->_nrDevice valueForProperty:v15];
    systemVersion = v7->_systemVersion;
    v7->_systemVersion = v25;

    v27 = [(NRDevice *)v7->_nrDevice valueForProperty:v16];
    systemBuildVersion = v7->_systemBuildVersion;
    v7->_systemBuildVersion = v27;

    v29 = v7;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pairingID = self->_pairingID;
    pairingID = [equalCopy pairingID];
    v7 = [(NSUUID *)pairingID isEqual:pairingID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isTargetable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (~LODWORD(selfCopy->_state) & 0xBLL) == 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isPaired
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = [(SYDevice *)selfCopy state];
  objc_sync_exit(selfCopy);

  return state & 1;
}

- (BOOL)isActive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = ([(SYDevice *)selfCopy state]>> 1) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)deviceCode
{
  deviceClass = [(SYDevice *)self deviceClass];
  v3 = [deviceClass isEqualToString:@"Watch"];

  if (v3)
  {
    return 5;
  }

  else
  {
    return 2;
  }
}

- (BOOL)supportsFileTransferMessageSend
{
  deviceClass = [(SYDevice *)self deviceClass];
  v4 = [deviceClass isEqualToString:@"Watch"];

  systemBuildVersion = [(SYDevice *)self systemBuildVersion];
  v6 = systemBuildVersion;
  if (v4)
  {
    v7 = @"14S190";
  }

  else
  {
    v7 = @"14A194";
  }

  v8 = [systemBuildVersion compare:v7];

  return v8 != -1;
}

- (id)findMatchingIDSDeviceFromList:(id)list
{
  v4 = MEMORY[0x1E69B36C0];
  listCopy = list;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance deviceForNRDevice:self->_nrDevice fromIDSDevices:listCopy];

  return v7;
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  changeCopy = change;
  valueCopy = value;
  v11 = [deviceCopy valueForProperty:changeCopy];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543874;
    v23 = changeCopy;
    v24 = 2112;
    v25 = valueCopy;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "NRDevice property changed: %{public}@, %@ -> %@", &v22, 0x20u);
  }

  [(SYDevice *)self _updateCachedStateForProperty:changeCopy];
  v13 = *MEMORY[0x1E69B3610];
  if ([changeCopy isEqualToString:*MEMORY[0x1E69B3610]])
  {
    v14 = [deviceCopy valueForProperty:v13];
    defaultCenter2 = v14;
    if (v14)
    {
      v16 = [v14 copy];
      pairingID = self->_pairingID;
      self->_pairingID = v16;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"SYDevicePairingIDChangedNotification" object:self];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v20 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1DF835000, v20, OS_LOG_TYPE_DEFAULT, "Disregarding NR attempt to zap pairing ID", &v22, 2u);
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (_StateAffectingPropertyKeys_onceToken != -1)
  {
    [SYDevice device:propertyDidChange:fromValue:];
  }

  if ([_StateAffectingPropertyKeys___set containsObject:changeCopy])
  {
    [(SYDevice *)self _updateStateFlagsPostingNotifications:1];
  }

  else
  {
    if (_OSInfoAffectingPropertyKeys_onceToken != -1)
    {
      [SYDevice device:propertyDidChange:fromValue:];
    }

    if ([_OSInfoAffectingPropertyKeys___set containsObject:changeCopy])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v19 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "Posting SYDeviceOSInfoChangedNotification", &v22, 2u);
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"SYDeviceOSInfoChangedNotification" object:self];
      goto LABEL_24;
    }
  }

LABEL_25:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateCachedStateForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69B35F8]])
  {
    v4 = propertyCopy;
    v5 = 24;
  }

  else if ([propertyCopy isEqualToString:*MEMORY[0x1E69B35F0]])
  {
    v4 = propertyCopy;
    v5 = 56;
  }

  else if ([propertyCopy isEqualToString:*MEMORY[0x1E69B3598]])
  {
    v4 = propertyCopy;
    v5 = 32;
  }

  else if ([propertyCopy isEqualToString:*MEMORY[0x1E69B3640]])
  {
    v4 = propertyCopy;
    v5 = 40;
  }

  else
  {
    if (![propertyCopy isEqualToString:*MEMORY[0x1E69B3628]])
    {
      goto LABEL_12;
    }

    v4 = propertyCopy;
    v5 = 48;
  }

  v6 = [(NRDevice *)self->_nrDevice valueForProperty:v4];
  v7 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v6;

LABEL_12:
}

- (void)_updateStateFlagsPostingNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v35 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  v6 = [(NRDevice *)selfCopy->_nrDevice valueForProperty:*MEMORY[0x1E69B35E8]];
  bOOLValue = [v6 BOOLValue];

  selfCopy->_state = selfCopy->_state & 0xFFFFFFFFFFFFFFFELL | bOOLValue;
  v8 = [(NRDevice *)selfCopy->_nrDevice valueForProperty:*MEMORY[0x1E69B35D0]];
  bOOLValue2 = [v8 BOOLValue];

  v10 = 2;
  if (!bOOLValue2)
  {
    v10 = 0;
  }

  selfCopy->_state = selfCopy->_state & 0xFFFFFFFFFFFFFFFDLL | v10;
  v11 = [(NRDevice *)selfCopy->_nrDevice valueForProperty:*MEMORY[0x1E69B35F8]];
  v12 = [v11 length] != 0;

  v13 = selfCopy->_state & 0xFFFFFFFFFFFFFFF7 | (8 * v12);
  selfCopy->_state = v13;
  objc_sync_exit(selfCopy);

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v14 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = selfCopy->_pairingID;
    v16 = v14;
    uUIDString = [(NSUUID *)pairingID UUIDString];
    v18 = selfCopy->_state;
    v31 = 138543618;
    v32 = uUIDString;
    v33 = 1024;
    LODWORD(v34) = v18;
    _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Device %{public}@ state changed: %{companionsync:SYDeviceState}d", &v31, 0x12u);
  }

  if (notificationsCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SYDeviceStateChangedNotification" object:selfCopy];
  }

  v20 = state & 0xB;
  v21 = v13 & 0xB;
  if ((v20 != 11) == (v21 == 11))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v22 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      v23 = selfCopy->_pairingID;
      v24 = v22;
      uUIDString2 = [(NSUUID *)v23 UUIDString];
      v26 = uUIDString2;
      v27 = "un";
      if (v21 == 11)
      {
        v27 = "";
      }

      v31 = 138543618;
      v32 = uUIDString2;
      v33 = 2080;
      v34 = v27;
      _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "Device %{public}@ became %stargetable", &v31, 0x16u);
    }

    if (notificationsCopy)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"SYDeviceTargetabilityChangedNotification" object:selfCopy];

      if (v21 == 11)
      {
        v29 = +[_SYDeviceMonitor sharedInstance];
        [v29 deviceBecameTargetable:selfCopy];
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYDevice;
  v4 = [(SYDevice *)&v8 description];
  uUIDString = [(NSUUID *)self->_pairingID UUIDString];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, uUIDString];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = SYDevice;
  v4 = [(SYDevice *)&v14 debugDescription];
  uUIDString = [(NSUUID *)self->_pairingID UUIDString];
  pairingStorePath = [(SYDevice *)self pairingStorePath];
  if ([(SYDevice *)self isPaired])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if ([(SYDevice *)self isActive])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  deviceClass = [(SYDevice *)self deviceClass];
  systemVersion = [(SYDevice *)self systemVersion];
  systemBuildVersion = [(SYDevice *)self systemBuildVersion];
  v12 = [v3 stringWithFormat:@"%@: %@ (%@). Paired=%s, Active=%s. Class='%@', Version='%@', Build='%@'.", v4, uUIDString, pairingStorePath, v7, v8, deviceClass, systemVersion, systemBuildVersion];

  return v12;
}

- (PBCodable)stateForLogging
{
  v3 = objc_opt_new();
  pairingID = [(SYDevice *)self pairingID];
  uUIDString = [pairingID UUIDString];
  [v3 setIdentifier:uUIDString];

  [v3 setState:{-[SYDevice state](self, "state")}];
  deviceClass = [(SYDevice *)self deviceClass];
  [v3 setDeviceClass:deviceClass];

  systemBuildVersion = [(SYDevice *)self systemBuildVersion];
  [v3 setBuildVersion:systemBuildVersion];

  return v3;
}

@end