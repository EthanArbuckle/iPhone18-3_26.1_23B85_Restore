@interface SYDevice
+ (NSSet)knownDevices;
+ (SYDevice)targetableDevice;
+ (id)deviceForIDSDevice:(id)a3;
+ (id)deviceForIDSDeviceID:(id)a3 fromList:(id)a4;
+ (id)deviceForNRDevice:(id)a3;
- (BOOL)isActive;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPaired;
- (BOOL)isTargetable;
- (BOOL)supportsFileTransferMessageSend;
- (NSString)debugDescription;
- (NSString)description;
- (PBCodable)stateForLogging;
- (SYDevice)init;
- (SYDevice)initWithNRDevice:(id)a3;
- (id)findMatchingIDSDeviceFromList:(id)a3;
- (int64_t)deviceCode;
- (void)_updateCachedStateForProperty:(id)a3;
- (void)_updateStateFlagsPostingNotifications:(BOOL)a3;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
@end

@implementation SYDevice

+ (SYDevice)targetableDevice
{
  v2 = +[_SYDeviceMonitor sharedInstance];
  v3 = [v2 currentTargetableDevice];

  return v3;
}

+ (NSSet)knownDevices
{
  v2 = +[_SYDeviceMonitor sharedInstance];
  v3 = [v2 allDevices];

  return v3;
}

+ (id)deviceForNRDevice:(id)a3
{
  v3 = a3;
  v4 = +[_SYDeviceMonitor sharedInstance];
  v5 = [v4 deviceForNRDevice:v3];

  return v5;
}

+ (id)deviceForIDSDevice:(id)a3
{
  v3 = MEMORY[0x1E69B36C0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 deviceForIDSDevice:v4];

  v7 = +[_SYDeviceMonitor sharedInstance];
  v8 = [v7 deviceForNRDevice:v6];

  return v8;
}

+ (id)deviceForIDSDeviceID:(id)a3 fromList:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:@"device:"])
  {
    v7 = [v5 substringFromIndex:7];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
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
          v13 = [v12 uniqueIDOverride];
          v14 = [v13 isEqualToString:v7];

          if (v14)
          {
            v15 = [MEMORY[0x1E69B36C0] sharedInstance];
            v16 = [v15 deviceForIDSDevice:v12];

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

- (SYDevice)initWithNRDevice:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = SYDevice;
  v6 = [(SYDevice *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nrDevice, a3);
    v8 = *MEMORY[0x1E69B3610];
    v9 = [v5 valueForProperty:*MEMORY[0x1E69B3610]];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pairingID = self->_pairingID;
    v6 = [v4 pairingID];
    v7 = [(NSUUID *)pairingID isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isTargetable
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (~LODWORD(v2->_state) & 0xBLL) == 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isPaired
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SYDevice *)v2 state];
  objc_sync_exit(v2);

  return v3 & 1;
}

- (BOOL)isActive
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = ([(SYDevice *)v2 state]>> 1) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)deviceCode
{
  v2 = [(SYDevice *)self deviceClass];
  v3 = [v2 isEqualToString:@"Watch"];

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
  v3 = [(SYDevice *)self deviceClass];
  v4 = [v3 isEqualToString:@"Watch"];

  v5 = [(SYDevice *)self systemBuildVersion];
  v6 = v5;
  if (v4)
  {
    v7 = @"14S190";
  }

  else
  {
    v7 = @"14A194";
  }

  v8 = [v5 compare:v7];

  return v8 != -1;
}

- (id)findMatchingIDSDeviceFromList:(id)a3
{
  v4 = MEMORY[0x1E69B36C0];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 deviceForNRDevice:self->_nrDevice fromIDSDevices:v5];

  return v7;
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 valueForProperty:v9];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543874;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "NRDevice property changed: %{public}@, %@ -> %@", &v22, 0x20u);
  }

  [(SYDevice *)self _updateCachedStateForProperty:v9];
  v13 = *MEMORY[0x1E69B3610];
  if ([v9 isEqualToString:*MEMORY[0x1E69B3610]])
  {
    v14 = [v8 valueForProperty:v13];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 copy];
      pairingID = self->_pairingID;
      self->_pairingID = v16;

      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [v18 postNotificationName:@"SYDevicePairingIDChangedNotification" object:self];
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

  if ([_StateAffectingPropertyKeys___set containsObject:v9])
  {
    [(SYDevice *)self _updateStateFlagsPostingNotifications:1];
  }

  else
  {
    if (_OSInfoAffectingPropertyKeys_onceToken != -1)
    {
      [SYDevice device:propertyDidChange:fromValue:];
    }

    if ([_OSInfoAffectingPropertyKeys___set containsObject:v9])
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

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 postNotificationName:@"SYDeviceOSInfoChangedNotification" object:self];
      goto LABEL_24;
    }
  }

LABEL_25:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateCachedStateForProperty:(id)a3
{
  v8 = a3;
  if ([v8 isEqualToString:*MEMORY[0x1E69B35F8]])
  {
    v4 = v8;
    v5 = 24;
  }

  else if ([v8 isEqualToString:*MEMORY[0x1E69B35F0]])
  {
    v4 = v8;
    v5 = 56;
  }

  else if ([v8 isEqualToString:*MEMORY[0x1E69B3598]])
  {
    v4 = v8;
    v5 = 32;
  }

  else if ([v8 isEqualToString:*MEMORY[0x1E69B3640]])
  {
    v4 = v8;
    v5 = 40;
  }

  else
  {
    if (![v8 isEqualToString:*MEMORY[0x1E69B3628]])
    {
      goto LABEL_12;
    }

    v4 = v8;
    v5 = 48;
  }

  v6 = [(NRDevice *)self->_nrDevice valueForProperty:v4];
  v7 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v6;

LABEL_12:
}

- (void)_updateStateFlagsPostingNotifications:(BOOL)a3
{
  v3 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  state = v4->_state;
  v6 = [(NRDevice *)v4->_nrDevice valueForProperty:*MEMORY[0x1E69B35E8]];
  v7 = [v6 BOOLValue];

  v4->_state = v4->_state & 0xFFFFFFFFFFFFFFFELL | v7;
  v8 = [(NRDevice *)v4->_nrDevice valueForProperty:*MEMORY[0x1E69B35D0]];
  v9 = [v8 BOOLValue];

  v10 = 2;
  if (!v9)
  {
    v10 = 0;
  }

  v4->_state = v4->_state & 0xFFFFFFFFFFFFFFFDLL | v10;
  v11 = [(NRDevice *)v4->_nrDevice valueForProperty:*MEMORY[0x1E69B35F8]];
  v12 = [v11 length] != 0;

  v13 = v4->_state & 0xFFFFFFFFFFFFFFF7 | (8 * v12);
  v4->_state = v13;
  objc_sync_exit(v4);

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v14 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = v4->_pairingID;
    v16 = v14;
    v17 = [(NSUUID *)pairingID UUIDString];
    v18 = v4->_state;
    v31 = 138543618;
    v32 = v17;
    v33 = 1024;
    LODWORD(v34) = v18;
    _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Device %{public}@ state changed: %{companionsync:SYDeviceState}d", &v31, 0x12u);
  }

  if (v3)
  {
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 postNotificationName:@"SYDeviceStateChangedNotification" object:v4];
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
      v23 = v4->_pairingID;
      v24 = v22;
      v25 = [(NSUUID *)v23 UUIDString];
      v26 = v25;
      v27 = "un";
      if (v21 == 11)
      {
        v27 = "";
      }

      v31 = 138543618;
      v32 = v25;
      v33 = 2080;
      v34 = v27;
      _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "Device %{public}@ became %stargetable", &v31, 0x16u);
    }

    if (v3)
    {
      v28 = [MEMORY[0x1E696AD88] defaultCenter];
      [v28 postNotificationName:@"SYDeviceTargetabilityChangedNotification" object:v4];

      if (v21 == 11)
      {
        v29 = +[_SYDeviceMonitor sharedInstance];
        [v29 deviceBecameTargetable:v4];
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
  v5 = [(NSUUID *)self->_pairingID UUIDString];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = SYDevice;
  v4 = [(SYDevice *)&v14 debugDescription];
  v5 = [(NSUUID *)self->_pairingID UUIDString];
  v6 = [(SYDevice *)self pairingStorePath];
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

  v9 = [(SYDevice *)self deviceClass];
  v10 = [(SYDevice *)self systemVersion];
  v11 = [(SYDevice *)self systemBuildVersion];
  v12 = [v3 stringWithFormat:@"%@: %@ (%@). Paired=%s, Active=%s. Class='%@', Version='%@', Build='%@'.", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (PBCodable)stateForLogging
{
  v3 = objc_opt_new();
  v4 = [(SYDevice *)self pairingID];
  v5 = [v4 UUIDString];
  [v3 setIdentifier:v5];

  [v3 setState:{-[SYDevice state](self, "state")}];
  v6 = [(SYDevice *)self deviceClass];
  [v3 setDeviceClass:v6];

  v7 = [(SYDevice *)self systemBuildVersion];
  [v3 setBuildVersion:v7];

  return v3;
}

@end