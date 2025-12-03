@interface HAPBLEPeripheralInfo
- (BOOL)isEqual:(id)equal;
- (HAPBLEPeripheralInfo)initWithCoder:(id)coder;
- (HAPBLEPeripheralInfo)initWithPeripheralInfo:(id)info advertisedProtocolVersion:(unint64_t)version previousProtocolVersion:(int64_t)protocolVersion resumeSessionId:(unint64_t)id lastSeen:(double)seen statusFlags:(id)flags stateNumber:(id)number configNumber:(id)self0 categoryIdentifier:(id)self1 accessoryName:(id)self2;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)resetBroadcastKeyConfig;
- (void)saveBroadcastKey:(id)key keyUpdatedStateNumber:(id)number updatedTime:(double)time;
- (void)updateAccessoryName:(id)name;
- (void)updateBroadcastKey:(id)key;
- (void)updateProtocolVersion:(unint64_t)version;
@end

@implementation HAPBLEPeripheralInfo

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  peripheralUUID = [(HAPBLEPeripheralInfo *)self peripheralUUID];
  advertisedProtocolVersion = [(HAPBLEPeripheralInfo *)self advertisedProtocolVersion];
  previousProtocolVersion = [(HAPBLEPeripheralInfo *)self previousProtocolVersion];
  resumeSessionId = [(HAPBLEPeripheralInfo *)self resumeSessionId];
  v3 = MEMORY[0x277CBEAA8];
  [(HAPBLEPeripheralInfo *)self lastSeen];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  statusFlags = [(HAPBLEPeripheralInfo *)self statusFlags];
  stateNumber = [(HAPBLEPeripheralInfo *)self stateNumber];
  configNumber = [(HAPBLEPeripheralInfo *)self configNumber];
  categoryIdentifier = [(HAPBLEPeripheralInfo *)self categoryIdentifier];
  v9 = HAPIsInternalBuild();
  if (v9)
  {
    accessoryName = [(HAPBLEPeripheralInfo *)self accessoryName];
  }

  else
  {
    accessoryName = @"<private>";
  }

  v11 = MEMORY[0x277CBEAA8];
  [(HAPBLEPeripheralInfo *)self keyUpdatedTime];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  keyUpdatedStateNumber = [(HAPBLEPeripheralInfo *)self keyUpdatedStateNumber];
  v14 = [v19 stringWithFormat:@"\nPeripheral Info:\n\tPeripheral UUID: %@, \n\tProtocol Version: %tu, \n\tPrevious Version: %tu, \n\tResume Id: %llu, \n\tLast Seen:%@, \n\tStatus Flags: %@, \n\tState Number:%@, \n\tConfig Number: %@, \n\tCategory Id: %@, \n\tName: %@, \n\tKeyUpdatedTime: %@, \n\tKeyUpdated State Number: %@", peripheralUUID, advertisedProtocolVersion, previousProtocolVersion, resumeSessionId, v4, statusFlags, stateNumber, configNumber, categoryIdentifier, accessoryName, v12, keyUpdatedStateNumber];

  if (v9)
  {
  }

  return v14;
}

- (unint64_t)hash
{
  peripheralUUID = [(HAPBLEPeripheralInfo *)self peripheralUUID];
  v3 = [peripheralUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      peripheralUUID = [(HAPBLEPeripheralInfo *)self peripheralUUID];
      peripheralUUID2 = [(HAPBLEPeripheralInfo *)v5 peripheralUUID];

      v8 = [peripheralUUID isEqual:peripheralUUID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HAPBLEPeripheralInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HAPBLEPeripheralInfo;
  v5 = [(HAPBLEPeripheralInfo *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PUUI"];
    peripheralUUID = v5->_peripheralUUID;
    v5->_peripheralUUID = v6;

    v5->_advertisedProtocolVersion = [coderCopy decodeIntegerForKey:@"PV"];
    v5->_previousProtocolVersion = [coderCopy decodeIntegerForKey:@"PPV"];
    v5->_resumeSessionId = [coderCopy decodeInt64ForKey:@"RSI"];
    [coderCopy decodeDoubleForKey:@"LS"];
    v5->_lastSeen = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SF"];
    statusFlags = v5->_statusFlags;
    v5->_statusFlags = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SN"];
    stateNumber = v5->_stateNumber;
    v5->_stateNumber = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CF"];
    configNumber = v5->_configNumber;
    v5->_configNumber = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AN"];
    accessoryName = v5->_accessoryName;
    v5->_accessoryName = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BK"];
    broadcastKey = v5->_broadcastKey;
    v5->_broadcastKey = v19;

    [coderCopy decodeDoubleForKey:@"BKUT"];
    v5->_keyUpdatedTime = v21;
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKUSN"];
    keyUpdatedStateNumber = v5->_keyUpdatedStateNumber;
    v5->_keyUpdatedStateNumber = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peripheralUUID = [(HAPBLEPeripheralInfo *)self peripheralUUID];
  [coderCopy encodeObject:peripheralUUID forKey:@"PUUI"];

  [coderCopy encodeInteger:-[HAPBLEPeripheralInfo advertisedProtocolVersion](self forKey:{"advertisedProtocolVersion"), @"PV"}];
  [coderCopy encodeInteger:-[HAPBLEPeripheralInfo previousProtocolVersion](self forKey:{"previousProtocolVersion"), @"PPV"}];
  [coderCopy encodeInt64:-[HAPBLEPeripheralInfo resumeSessionId](self forKey:{"resumeSessionId"), @"RSI"}];
  [(HAPBLEPeripheralInfo *)self lastSeen];
  [coderCopy encodeDouble:@"LS" forKey:?];
  statusFlags = [(HAPBLEPeripheralInfo *)self statusFlags];
  [coderCopy encodeObject:statusFlags forKey:@"SF"];

  stateNumber = [(HAPBLEPeripheralInfo *)self stateNumber];
  [coderCopy encodeObject:stateNumber forKey:@"SN"];

  configNumber = [(HAPBLEPeripheralInfo *)self configNumber];
  [coderCopy encodeObject:configNumber forKey:@"CF"];

  categoryIdentifier = [(HAPBLEPeripheralInfo *)self categoryIdentifier];
  [coderCopy encodeObject:categoryIdentifier forKey:@"CI"];

  accessoryName = [(HAPBLEPeripheralInfo *)self accessoryName];
  [coderCopy encodeObject:accessoryName forKey:@"AN"];

  broadcastKey = [(HAPBLEPeripheralInfo *)self broadcastKey];
  [coderCopy encodeObject:broadcastKey forKey:@"BK"];

  [(HAPBLEPeripheralInfo *)self keyUpdatedTime];
  [coderCopy encodeDouble:@"BKUT" forKey:?];
  keyUpdatedStateNumber = [(HAPBLEPeripheralInfo *)self keyUpdatedStateNumber];
  [coderCopy encodeObject:keyUpdatedStateNumber forKey:@"BKUSN"];
}

- (void)resetBroadcastKeyConfig
{
  [(HAPBLEPeripheralInfo *)self setKeyUpdatedStateNumber:0];
  [(HAPBLEPeripheralInfo *)self setBroadcastKey:0];

  [(HAPBLEPeripheralInfo *)self setKeyUpdatedTime:0.0];
}

- (void)updateAccessoryName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy length];
  accessoryName = [(HAPBLEPeripheralInfo *)self accessoryName];
  v6 = [accessoryName length];

  if (v4 > v6)
  {
    [(HAPBLEPeripheralInfo *)self setAccessoryName:nameCopy];
  }
}

- (void)updateBroadcastKey:(id)key
{
  keyCopy = key;
  broadcastKey = [(HAPBLEPeripheralInfo *)self broadcastKey];
  v5 = [keyCopy isEqualToData:broadcastKey];

  if ((v5 & 1) == 0)
  {
    [(HAPBLEPeripheralInfo *)self setBroadcastKey:keyCopy];
    [(HAPBLEPeripheralInfo *)self setKeyUpdatedTime:CFAbsoluteTimeGetCurrent()];
  }
}

- (void)saveBroadcastKey:(id)key keyUpdatedStateNumber:(id)number updatedTime:(double)time
{
  keyCopy = key;
  numberCopy = number;
  broadcastKey = [(HAPBLEPeripheralInfo *)self broadcastKey];
  v10 = [keyCopy isEqualToData:broadcastKey];

  if ((v10 & 1) == 0)
  {
    [(HAPBLEPeripheralInfo *)self setBroadcastKey:keyCopy];
    if (time > 0.0)
    {
      [(HAPBLEPeripheralInfo *)self setKeyUpdatedTime:time];
    }

    [(HAPBLEPeripheralInfo *)self setKeyUpdatedStateNumber:numberCopy];
  }
}

- (void)updateProtocolVersion:(unint64_t)version
{
  if ([(HAPBLEPeripheralInfo *)self advertisedProtocolVersion]!= version)
  {
    [(HAPBLEPeripheralInfo *)self setPreviousProtocolVersion:[(HAPBLEPeripheralInfo *)self advertisedProtocolVersion]];

    [(HAPBLEPeripheralInfo *)self setAdvertisedProtocolVersion:version];
  }
}

- (HAPBLEPeripheralInfo)initWithPeripheralInfo:(id)info advertisedProtocolVersion:(unint64_t)version previousProtocolVersion:(int64_t)protocolVersion resumeSessionId:(unint64_t)id lastSeen:(double)seen statusFlags:(id)flags stateNumber:(id)number configNumber:(id)self0 categoryIdentifier:(id)self1 accessoryName:(id)self2
{
  infoCopy = info;
  flagsCopy = flags;
  numberCopy = number;
  configNumberCopy = configNumber;
  identifierCopy = identifier;
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = HAPBLEPeripheralInfo;
  v20 = [(HAPBLEPeripheralInfo *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_peripheralUUID, info);
    v21->_advertisedProtocolVersion = version;
    v21->_previousProtocolVersion = protocolVersion;
    v21->_resumeSessionId = id;
    v21->_lastSeen = seen;
    objc_storeStrong(&v21->_statusFlags, flags);
    objc_storeStrong(&v21->_stateNumber, number);
    objc_storeStrong(&v21->_configNumber, configNumber);
    objc_storeStrong(&v21->_categoryIdentifier, identifier);
    objc_storeStrong(&v21->_accessoryName, name);
  }

  return v21;
}

@end