@interface CHSRemoteDevice
- (BOOL)isEqual:(id)equal;
- (CHSRemoteDevice)initWithCoder:(id)coder;
- (CHSRemoteDevice)initWithName:(id)name relationshipID:(id)d deviceID:(id)iD currentSupportedVersion:(int64_t)version minSupportedVersion:(int64_t)supportedVersion isPossibleSource:(BOOL)source pairingState:(int64_t)state lastConnectionDate:(id)self0 deviceType:(int64_t)self1;
- (id)_initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSRemoteDevice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_relationshipID forKey:@"relationshipID"];
  [coderCopy encodeObject:self->_deviceID forKey:@"deviceID"];
  [coderCopy encodeInt32:LODWORD(self->_currentSupportedVersion) forKey:@"currentSupportedVersion"];
  [coderCopy encodeInt32:LODWORD(self->_minSupportedVersion) forKey:@"minSupportedVersion"];
  [coderCopy encodeBool:self->_isPossibleSource forKey:@"isPossibleSource"];
  [coderCopy encodeInt32:LODWORD(self->_pairingState) forKey:@"pairingState"];
  [coderCopy encodeObject:self->_lastConnectionDate forKey:@"lastConnectionDate"];
  [coderCopy encodeInt32:LODWORD(self->_deviceType) forKey:@"deviceType"];
}

- (CHSRemoteDevice)initWithName:(id)name relationshipID:(id)d deviceID:(id)iD currentSupportedVersion:(int64_t)version minSupportedVersion:(int64_t)supportedVersion isPossibleSource:(BOOL)source pairingState:(int64_t)state lastConnectionDate:(id)self0 deviceType:(int64_t)self1
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  v31.receiver = self;
  v31.super_class = CHSRemoteDevice;
  v21 = [(CHSRemoteDevice *)&v31 init];
  if (v21)
  {
    v22 = [nameCopy copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [dCopy copy];
    relationshipID = v21->_relationshipID;
    v21->_relationshipID = v24;

    v26 = [iDCopy copy];
    deviceID = v21->_deviceID;
    v21->_deviceID = v26;

    v21->_currentSupportedVersion = version;
    v21->_minSupportedVersion = supportedVersion;
    v21->_isPossibleSource = source;
    v21->_pairingState = state;
    v28 = [dateCopy copy];
    lastConnectionDate = v21->_lastConnectionDate;
    v21->_lastConnectionDate = v28;

    v21->_deviceType = type;
  }

  return v21;
}

- (CHSRemoteDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CHSRemoteDevice;
  v5 = [(CHSRemoteDevice *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relationshipID"];
    relationshipID = v5->_relationshipID;
    v5->_relationshipID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v10;

    v5->_currentSupportedVersion = [coderCopy decodeInt32ForKey:@"currentSupportedVersion"];
    v5->_minSupportedVersion = [coderCopy decodeInt32ForKey:@"minSupportedVersion"];
    v5->_isPossibleSource = [coderCopy decodeBoolForKey:@"isPossibleSource"];
    v5->_pairingState = [coderCopy decodeInt32ForKey:@"pairingState"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastConnectionDate"];
    lastConnectionDate = v5->_lastConnectionDate;
    v5->_lastConnectionDate = v12;

    v5->_deviceType = [coderCopy decodeInt32ForKey:@"deviceType"];
  }

  return v5;
}

- (id)_initWithDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = CHSRemoteDevice;
  v5 = [(CHSRemoteDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_name, deviceCopy[1]);
    objc_storeStrong(&v6->_relationshipID, deviceCopy[2]);
    objc_storeStrong(&v6->_deviceID, deviceCopy[3]);
    v6->_currentSupportedVersion = deviceCopy[4];
    v6->_minSupportedVersion = deviceCopy[5];
    v6->_isPossibleSource = *(deviceCopy + 48);
    v6->_pairingState = deviceCopy[7];
    objc_storeStrong(&v6->_lastConnectionDate, deviceCopy[8]);
    v6->_deviceType = deviceCopy[9];
  }

  return v6;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  name = [(CHSRemoteDevice *)self name];
  relationshipID = [(CHSRemoteDevice *)self relationshipID];
  uUIDString = [relationshipID UUIDString];
  deviceID = [(CHSRemoteDevice *)self deviceID];
  currentSupportedVersion = [(CHSRemoteDevice *)self currentSupportedVersion];
  minSupportedVersion = [(CHSRemoteDevice *)self minSupportedVersion];
  isPossibleSource = [(CHSRemoteDevice *)self isPossibleSource];
  pairingState = [(CHSRemoteDevice *)self pairingState];
  lastConnectionDate = [(CHSRemoteDevice *)self lastConnectionDate];
  v11 = [lastConnectionDate description];
  v12 = [v14 stringWithFormat:@"name: %@, relationshipID: %@, deviceID: %@, currentSupportedVersion: %lu, minSupportedVersion: %lu, isPossibleSource: %u, pairingState: %lu, lastConnectionDate: %@, deviceType: %lu", name, uUIDString, deviceID, currentSupportedVersion, minSupportedVersion, isPossibleSource, pairingState, v11, -[CHSRemoteDevice deviceType](self, "deviceType")];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  name = self->_name;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __27__CHSRemoteDevice_isEqual___block_invoke;
  v54[3] = &unk_1E7452FD8;
  v11 = v9;
  v55 = v11;
  v12 = [v5 appendObject:name counterpart:v54];
  relationshipID = self->_relationshipID;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __27__CHSRemoteDevice_isEqual___block_invoke_2;
  v52[3] = &unk_1E7453EA0;
  v14 = v11;
  v53 = v14;
  v15 = [v5 appendObject:relationshipID counterpart:v52];
  deviceID = self->_deviceID;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __27__CHSRemoteDevice_isEqual___block_invoke_3;
  v50[3] = &unk_1E7452FD8;
  v17 = v14;
  v51 = v17;
  v18 = [v5 appendObject:deviceID counterpart:v50];
  currentSupportedVersion = self->_currentSupportedVersion;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __27__CHSRemoteDevice_isEqual___block_invoke_4;
  v48[3] = &unk_1E7453368;
  v20 = v17;
  v49 = v20;
  v21 = [v5 appendInteger:currentSupportedVersion counterpart:v48];
  minSupportedVersion = self->_minSupportedVersion;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __27__CHSRemoteDevice_isEqual___block_invoke_5;
  v46[3] = &unk_1E7453368;
  v23 = v20;
  v47 = v23;
  v24 = [v5 appendInteger:minSupportedVersion counterpart:v46];
  isPossibleSource = self->_isPossibleSource;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __27__CHSRemoteDevice_isEqual___block_invoke_6;
  v44[3] = &unk_1E7452FB0;
  v26 = v23;
  v45 = v26;
  v27 = [v5 appendBool:isPossibleSource counterpart:v44];
  pairingState = self->_pairingState;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __27__CHSRemoteDevice_isEqual___block_invoke_7;
  v42[3] = &unk_1E7453368;
  v29 = v26;
  v43 = v29;
  v30 = [v5 appendInteger:pairingState counterpart:v42];
  lastConnectionDate = self->_lastConnectionDate;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __27__CHSRemoteDevice_isEqual___block_invoke_8;
  v40[3] = &unk_1E7453EC8;
  v32 = v29;
  v41 = v32;
  v33 = [v5 appendObject:lastConnectionDate counterpart:v40];
  deviceType = self->_deviceType;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __27__CHSRemoteDevice_isEqual___block_invoke_9;
  v38[3] = &unk_1E7453368;
  v35 = v32;
  v39 = v35;
  v36 = [v5 appendInteger:deviceType counterpart:v38];
  LOBYTE(v32) = [v5 isEqual];

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSRemoteDevice allocWithZone:zone];

  return [(CHSRemoteDevice *)v4 _initWithDevice:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableRemoteDevice allocWithZone:zone];

  return [(CHSRemoteDevice *)v4 _initWithDevice:self];
}

@end