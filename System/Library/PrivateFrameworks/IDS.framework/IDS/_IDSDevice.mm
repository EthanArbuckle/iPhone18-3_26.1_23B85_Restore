@interface _IDSDevice
- (BOOL)isActive;
- (BOOL)isCloudConnected;
- (BOOL)isConnected;
- (BOOL)isDefaultPairedDevice;
- (BOOL)isHSATrusted;
- (BOOL)isLocallyPaired;
- (BOOL)isNearby;
- (BOOL)locallyPresent;
- (BOOL)supportsApplePay;
- (BOOL)supportsHandoff;
- (BOOL)supportsMMSRelay;
- (BOOL)supportsPhoneCalls;
- (BOOL)supportsSMSRelay;
- (BOOL)supportsTethering;
- (BOOL)supportsiCloudPairing;
- (NSArray)identities;
- (NSArray)linkedUserURIs;
- (NSData)pushToken;
- (NSString)description;
- (NSString)deviceColor;
- (NSString)enclosureColor;
- (NSString)modelIdentifier;
- (NSString)name;
- (NSString)productBuildVersion;
- (NSString)productName;
- (NSString)productVersion;
- (NSString)service;
- (NSString)uniqueID;
- (NSString)uniqueIDOverride;
- (NSUUID)nsuuid;
- (NSUUID)stableBluetoothIdentifier;
- (_IDSDevice)initWithDictionary:(id)dictionary;
- (id)compactDescription;
- (id)fullDescription;
- (int64_t)deviceType;
- (int64_t)relationship;
- (unint64_t)maxCompatibilityVersion;
- (unint64_t)minCompatibilityVersion;
- (unint64_t)pairingProtocolVersion;
- (unint64_t)serviceMinCompatibilityVersion;
- (void)_addIdentity:(id)identity;
- (void)_cloudConnectedStateChanged;
- (void)_connectedStateChanged;
- (void)_nearbyStateChanged;
- (void)_setAccount:(id)account;
- (void)_setService:(id)service;
- (void)_stateChanged;
- (void)cancel;
- (void)dealloc;
- (void)setNSUUID:(id)d;
- (void)stateDidChange:(unint64_t)change;
@end

@implementation _IDSDevice

- (NSString)modelIdentifier
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DB4C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4BE0]];

  return v6;
}

- (NSString)uniqueIDOverride
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D8CC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4BE8]];

  return v6;
}

- (NSUUID)nsuuid
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E72C();
    }
  }

  if ([(_IDSDevice *)self supportsHandoff]&& (v6 = *MEMORY[0x1E69A4C28], [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C28]], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [(NSDictionary *)self->_info objectForKey:v6];
    v10 = [v8 initWithUUIDString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)supportsHandoff
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E9AC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FB8]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (NSString)name
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DBEC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C30]];

  return v6;
}

- (NSString)productVersion
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DAAC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FA8]];

  return v7;
}

- (BOOL)supportsApplePay
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EA4C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FB0]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)isLocallyPaired
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E18C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4BD0]];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (NSString)uniqueID
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D82C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 _stringForKey:*MEMORY[0x1E69A4FE0]];

  return v7;
}

- (BOOL)isActive
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E22C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C00]];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (int64_t)relationship
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E2CC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C40]];
  if ([v6 integerValue] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSString)productName
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DA0C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FA0]];

  return v7;
}

- (BOOL)isDefaultPairedDevice
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E0EC();
    }
  }

  return [(_IDSDevice *)self isActive];
}

- (BOOL)isNearby
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DE6C();
    }
  }

  return self->_nearby;
}

- (BOOL)supportsTethering
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E90C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FD8]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsiCloudPairing
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E86C();
    }
  }

  if ([(_IDSDevice *)self isDefaultPairedDevice])
  {
    return 0;
  }

  if ([(_IDSDevice *)self supportsTethering])
  {
    return 1;
  }

  return [(_IDSDevice *)self supportsHandoff];
}

- (void)cancel
{
  monitor = self->_monitor;
  if (monitor)
  {
    [(IDSDeviceStateMonitoring *)monitor unRegisterForStateUpdates:self];
    v4 = self->_monitor;
    self->_monitor = 0;
  }
}

- (void)dealloc
{
  [(_IDSDevice *)self cancel];
  v3.receiver = self;
  v3.super_class = _IDSDevice;
  [(_IDSDevice *)&v3 dealloc];
}

- (NSData)pushToken
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EF4C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C50]];

  return v6;
}

- (NSArray)identities
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EFEC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4BF0]];

  return v6;
}

- (NSString)description
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DDCC();
    }
  }

  isLocallyPaired = [(_IDSDevice *)self isLocallyPaired];
  v24 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  name = [(_IDSDevice *)self name];
  [(_IDSDevice *)self modelIdentifier];
  v9 = @"NO";
  v27 = isLocallyPaired;
  v25 = v28 = v8;
  if (isLocallyPaired)
  {
    uniqueID = @"all 0s";
    v22 = @"YES";
  }

  else
  {
    uniqueID = [(_IDSDevice *)self uniqueID];
    v22 = @"NO";
  }

  uniqueIDOverride = [(_IDSDevice *)self uniqueIDOverride];
  pushToken = [(_IDSDevice *)self pushToken];
  nsuuid = [(_IDSDevice *)self nsuuid];
  uUIDString = [nsuuid UUIDString];
  if ([(_IDSDevice *)self locallyPresent])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(_IDSDevice *)self isDefaultPairedDevice])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(_IDSDevice *)self isNearby])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(_IDSDevice *)self isConnected])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(_IDSDevice *)self isActive])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if ([(_IDSDevice *)self isHSATrusted])
  {
    v9 = @"YES";
  }

  productBuildVersion = [(_IDSDevice *)self productBuildVersion];
  v18 = [v24 stringWithFormat:@"[%@ %p:   Name: %@    Model: %@   UniqueID: %@   UniqueID Override: %@   Push Token: %@ nsuuid: %@ local: %@  defaultPairedDevice: %@   isNearby: %@  isConnected: %@  isActive: %@  isLocallyPaired: %@  isHSATrusted: %@  build: %@]", v28, self, name, v25, uniqueID, uniqueIDOverride, pushToken, uUIDString, v12, v13, v14, v15, v16, v22, v9, productBuildVersion];

  if (!v27)
  {
  }

  return v18;
}

- (BOOL)locallyPresent
{
  v2 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v2 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E04C();
    }
  }

  return 1;
}

- (BOOL)isConnected
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DF0C();
    }
  }

  return self->_connected;
}

- (BOOL)isHSATrusted
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EEAC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C08]];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (NSString)productBuildVersion
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D96C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4F98]];

  return v7;
}

- (NSString)service
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DC8C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C58]];

  return v6;
}

- (int64_t)deviceType
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3ECCC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4F88]];
  unsignedIntValue = [v7 unsignedIntValue];

  if (unsignedIntValue)
  {
    v9 = unsignedIntValue;
  }

  else
  {
    productName = [(_IDSDevice *)self productName];
    v9 = IDSDeviceTypeFromProductName();
  }

  return v9;
}

- (_IDSDevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D6EC();
    }
  }

  if (_IDSRunningInDaemon())
  {
    v9 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v33.receiver = self;
    v33.super_class = _IDSDevice;
    v11 = [(_IDSDevice *)&v33 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_info, dictionary);
      uniqueIDOverride = [(_IDSDevice *)v12 uniqueIDOverride];
      if (![uniqueIDOverride length])
      {
        uniqueID = [(_IDSDevice *)v12 uniqueID];

        uniqueIDOverride = uniqueID;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", *MEMORY[0x1E69A4C70], uniqueIDOverride];
      v16 = [IDSDeviceStateMonitoring sharedInstanceForNotificationName:v15];
      monitor = v12->_monitor;
      v12->_monitor = v16;

      v18 = v12->_monitor;
      v19 = +[IDSInternalQueueController sharedInstance];
      queue = [v19 queue];
      [(IDSDeviceStateMonitoring *)v18 registerForStateUpdates:v12 queue:queue];

      currentState = [(IDSDeviceStateMonitoring *)v12->_monitor currentState];
      v12->_nearby = (*MEMORY[0x1E69A5458] & currentState) != 0;
      v12->_connected = (*MEMORY[0x1E69A5450] & currentState) != 0;
      v22 = (*MEMORY[0x1E69A5448] & currentState) != 0;
      v12->_immutableCloudConnected = v22;
      v12->_cloudConnected = v22;
      v23 = *MEMORY[0x1E69A4BC8];
      v24 = [(NSDictionary *)v12->_info objectForKey:*MEMORY[0x1E69A4BC8]];
      objc_opt_class();
      LOBYTE(queue) = objc_opt_isKindOfClass();
      v25 = objc_alloc(MEMORY[0x1E69A5250]);
      if (queue)
      {
        v26 = v24;
      }

      else
      {
        v26 = MEMORY[0x1E695E0F8];
      }

      v27 = [v25 initWithCapabilitiesMap:v26];
      capabilities = v12->_capabilities;
      v12->_capabilities = v27;

      v29 = [(NSDictionary *)v12->_info mutableCopy];
      [v29 removeObjectForKey:v23];
      v30 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v29];
      info = v12->_info;
      v12->_info = v30;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)stateDidChange:(unint64_t)change
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D78C();
    }
  }

  nearby = self->_nearby;
  connected = self->_connected;
  cloudConnected = self->_cloudConnected;
  v11 = (*MEMORY[0x1E69A5458] & change) != 0;
  self->_nearby = v11;
  v12 = (*MEMORY[0x1E69A5450] & change) != 0;
  self->_connected = v12;
  v13 = (*MEMORY[0x1E69A5448] & change) != 0;
  self->_cloudConnected = v13;
  v14 = nearby == v11 && connected == v12;
  v15 = !v14;
  if (!v14)
  {
    [(_IDSDevice *)self _nearbyStateChanged];
  }

  if (connected != v12)
  {
    [(_IDSDevice *)self _connectedStateChanged];
    if (cloudConnected == v13)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (cloudConnected != v13)
  {
LABEL_19:
    [(_IDSDevice *)self _cloudConnectedStateChanged];
    goto LABEL_20;
  }

  if (v15)
  {
LABEL_20:
    [(_IDSDevice *)self _stateChanged];
  }

  v16 = +[IDSLogging IDSDevice];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = self->_nearby;
    v19 = self->_connected;
    v20 = self->_cloudConnected;
    v21[0] = 67110400;
    v21[1] = nearby;
    v22 = 1024;
    v23 = connected;
    v24 = 1024;
    v25 = cloudConnected;
    v26 = 1024;
    v27 = v18;
    v28 = 1024;
    v29 = v19;
    v30 = 1024;
    v31 = v20;
    _os_log_debug_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEBUG, "Device note -- old: {isNearby: %d, isConnected: %d, isCloudConnected: %d} new: {isNearby: %d, isConnected: %d, isCloudConnected: %d}", v21, 0x26u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)fullDescription
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DD2C();
    }
  }

  v35 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v34 = NSStringFromClass(v6);
  name = [(_IDSDevice *)self name];
  modelIdentifier = [(_IDSDevice *)self modelIdentifier];
  uniqueID = [(_IDSDevice *)self uniqueID];
  uniqueIDOverride = [(_IDSDevice *)self uniqueIDOverride];
  pushToken = [(_IDSDevice *)self pushToken];
  service = [(_IDSDevice *)self service];
  identities = [(_IDSDevice *)self identities];
  linkedUserURIs = [(_IDSDevice *)self linkedUserURIs];
  nsuuid = [(_IDSDevice *)self nsuuid];
  uUIDString = [nsuuid UUIDString];
  relationship = [(_IDSDevice *)self relationship];
  if ([(_IDSDevice *)self supportsSMSRelay])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v25 = v7;
  if ([(_IDSDevice *)self supportsMMSRelay])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v24 = v8;
  if ([(_IDSDevice *)self supportsPhoneCalls])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v23 = v9;
  deviceColor = [(_IDSDevice *)self deviceColor];
  enclosureColor = [(_IDSDevice *)self enclosureColor];
  if ([(_IDSDevice *)self locallyPresent])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v21 = v11;
  if ([(_IDSDevice *)self isDefaultPairedDevice])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v20 = v12;
  if ([(_IDSDevice *)self isNearby])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(_IDSDevice *)self isConnected])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(_IDSDevice *)self isCloudConnected])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(_IDSDevice *)self isActive])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if ([(_IDSDevice *)self isLocallyPaired])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  productBuildVersion = [(_IDSDevice *)self productBuildVersion];
  v36 = [v35 stringWithFormat:@"[%@ %p:   Name: %@   Model: %@   UniqueID: %@   UniqueID Override: %@   Push Token: %@   Service: %@   Handles: %@   linkedUserURIs: %@   nsuuid: %@   relationship: %lu   supportsSMSRelay: %@   supportsMMSRelay: %@   supportsPhoneCalls: %@   deviceColor: %@   enclosureColor: %@  local: %@   defaultPairedDevice: %@   isNearby: %@  isConnected: %@  isCloudConnected: %@  isActive: %@  isLocallyPaired: %@  build: %@   pairing protocol: %lu   min compatibility version: %lu   max compatibility version: %lu]", v34, self, name, modelIdentifier, uniqueID, uniqueIDOverride, pushToken, service, identities, linkedUserURIs, uUIDString, relationship, v25, v24, v23, deviceColor, enclosureColor, v21, v20, v13, v14, v15, v16, v17, productBuildVersion, -[_IDSDevice pairingProtocolVersion](self, "pairingProtocolVersion"), -[_IDSDevice minCompatibilityVersion](self, "minCompatibilityVersion"), -[_IDSDevice maxCompatibilityVersion](self, "maxCompatibilityVersion")];

  return v36;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  uniqueIDOverride = [(_IDSDevice *)self uniqueIDOverride];
  pushToken = [(_IDSDevice *)self pushToken];
  v6 = @"NO";
  if ([(_IDSDevice *)self isNearby])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(_IDSDevice *)self isConnected])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(_IDSDevice *)self isActive])
  {
    v6 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"[%p uid: %@, tok: %@, near: %@, conn: %@, active: %@, rel: %lu]", self, uniqueIDOverride, pushToken, v7, v8, v6, -[_IDSDevice relationship](self, "relationship")];

  return v9;
}

- (BOOL)isCloudConnected
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3DFAC();
    }
  }

  return self->_immutableCloudConnected;
}

- (unint64_t)pairingProtocolVersion
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E36C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C38]];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)minCompatibilityVersion
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E40C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C20]];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)maxCompatibilityVersion
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E4AC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C18]];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)serviceMinCompatibilityVersion
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E54C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C68]];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (NSArray)linkedUserURIs
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E5EC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C10]];

  return v6;
}

- (void)setNSUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E68C();
    }
  }

  v8 = +[IDSLogging IDSDevice];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = dCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Client request to set uuid %@ on device %@", &v14, 0x16u);
  }

  if ([(_IDSDevice *)self supportsiCloudPairing])
  {
    v9 = +[IDSDaemonController sharedInstance];
    uUIDString = [dCopy UUIDString];
    uniqueID = [(_IDSDevice *)self uniqueID];
    service = [(_IDSDevice *)self service];
    [v9 setNSUUID:uUIDString onDeviceWithUniqueID:uniqueID forService:service];
  }

  else
  {
    v9 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "=> Device doesn't support it, ignoring", &v14, 2u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSUUID)stableBluetoothIdentifier
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3E7CC();
    }
  }

  v6 = *MEMORY[0x1E69A4C60];
  v7 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C60]];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [(NSDictionary *)self->_info objectForKey:v6];
    v10 = [v8 initWithUUIDString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)supportsSMSRelay
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EAEC();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FD0]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMMSRelay
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EB8C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FC0]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsPhoneCalls
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EC2C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4FC8]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (NSString)deviceColor
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3ED6C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4F80]];

  return v7;
}

- (NSString)enclosureColor
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3EE0C();
    }
  }

  v6 = [(NSDictionary *)self->_info objectForKey:*MEMORY[0x1E69A4C48]];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A4F90]];

  return v7;
}

- (void)_addIdentity:(id)identity
{
  v28 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3F08C();
    }
  }

  if (identityCopy)
  {
    v8 = [identityCopy objectForKey:@"uri"];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    identities = [(_IDSDevice *)self identities];
    v10 = [identities countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(identities);
        }

        v14 = [*(*(&v23 + 1) + 8 * v13) objectForKey:@"uri"];
        v15 = [v14 isEqualToIgnoringCase:v8];

        if (v15)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [identities countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      identities2 = [(_IDSDevice *)self identities];
      identities = [identities2 mutableCopy];

      if (identities)
      {
        [identities addObject:identityCopy];
        info = self->_info;
        p_info = &self->_info;
        v19 = [(NSDictionary *)info mutableCopy];
        [(NSDictionary *)v19 setObject:identities forKey:*MEMORY[0x1E69A4BF0]];
      }

      else
      {
        v20 = self->_info;
        p_info = &self->_info;
        v19 = [(NSDictionary *)v20 mutableCopy];
        [(NSDictionary *)v19 removeObjectForKey:*MEMORY[0x1E69A4BF0]];
      }

      v21 = *p_info;
      *p_info = v19;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_nearbyStateChanged
{
  if (![(_IDSDevice *)self isTinker])
  {
    object = [(CUTWeakReference *)self->_account object];
    v4 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3F12C(object, self);
    }

    _internal = [object _internal];
    [_internal _callNearbyDevicesChanged];
  }
}

- (void)_connectedStateChanged
{
  if (![(_IDSDevice *)self isTinker])
  {
    object = [(CUTWeakReference *)self->_account object];
    v4 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3F1D4(object, self);
    }

    _internal = [object _internal];
    [_internal _callConnectedDevicesChanged];
  }
}

- (void)_cloudConnectedStateChanged
{
  if (![(_IDSDevice *)self isTinker])
  {
    object = [(CUTWeakReference *)self->_account object];
    v4 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3F27C(object, self);
    }

    _internal = [object _internal];
    [_internal _callCloudConnectedDevicesChanged];
  }
}

- (void)_stateChanged
{
  if ([(_IDSDevice *)self isTinker])
  {
    object = [(CUTWeakReference *)self->_serviceReference object];
    v4 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3F324(object, self);
    }

    _internal = [object _internal];
    [_internal _callLinkedDevicesChanged];
  }
}

- (void)_setAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3F3F4();
    }
  }

  if (accountCopy)
  {
    v8 = [MEMORY[0x1E6995700] weakRefWithObject:accountCopy];
    account = self->_account;
    self->_account = v8;
  }
}

- (void)_setService:(id)service
{
  serviceCopy = service;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3F494();
    }
  }

  if (serviceCopy)
  {
    v8 = [MEMORY[0x1E6995700] weakRefWithObject:serviceCopy];
    serviceReference = self->_serviceReference;
    self->_serviceReference = v8;
  }
}

@end