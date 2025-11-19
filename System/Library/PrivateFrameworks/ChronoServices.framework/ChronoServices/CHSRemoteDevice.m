@interface CHSRemoteDevice
- (BOOL)isEqual:(id)a3;
- (CHSRemoteDevice)initWithCoder:(id)a3;
- (CHSRemoteDevice)initWithName:(id)a3 relationshipID:(id)a4 deviceID:(id)a5 currentSupportedVersion:(int64_t)a6 minSupportedVersion:(int64_t)a7 isPossibleSource:(BOOL)a8 pairingState:(int64_t)a9 lastConnectionDate:(id)a10 deviceType:(int64_t)a11;
- (id)_initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSRemoteDevice

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeObject:self->_relationshipID forKey:@"relationshipID"];
  [v4 encodeObject:self->_deviceID forKey:@"deviceID"];
  [v4 encodeInt32:LODWORD(self->_currentSupportedVersion) forKey:@"currentSupportedVersion"];
  [v4 encodeInt32:LODWORD(self->_minSupportedVersion) forKey:@"minSupportedVersion"];
  [v4 encodeBool:self->_isPossibleSource forKey:@"isPossibleSource"];
  [v4 encodeInt32:LODWORD(self->_pairingState) forKey:@"pairingState"];
  [v4 encodeObject:self->_lastConnectionDate forKey:@"lastConnectionDate"];
  [v4 encodeInt32:LODWORD(self->_deviceType) forKey:@"deviceType"];
}

- (CHSRemoteDevice)initWithName:(id)a3 relationshipID:(id)a4 deviceID:(id)a5 currentSupportedVersion:(int64_t)a6 minSupportedVersion:(int64_t)a7 isPossibleSource:(BOOL)a8 pairingState:(int64_t)a9 lastConnectionDate:(id)a10 deviceType:(int64_t)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a10;
  v31.receiver = self;
  v31.super_class = CHSRemoteDevice;
  v21 = [(CHSRemoteDevice *)&v31 init];
  if (v21)
  {
    v22 = [v17 copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [v18 copy];
    relationshipID = v21->_relationshipID;
    v21->_relationshipID = v24;

    v26 = [v19 copy];
    deviceID = v21->_deviceID;
    v21->_deviceID = v26;

    v21->_currentSupportedVersion = a6;
    v21->_minSupportedVersion = a7;
    v21->_isPossibleSource = a8;
    v21->_pairingState = a9;
    v28 = [v20 copy];
    lastConnectionDate = v21->_lastConnectionDate;
    v21->_lastConnectionDate = v28;

    v21->_deviceType = a11;
  }

  return v21;
}

- (CHSRemoteDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CHSRemoteDevice;
  v5 = [(CHSRemoteDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relationshipID"];
    relationshipID = v5->_relationshipID;
    v5->_relationshipID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v10;

    v5->_currentSupportedVersion = [v4 decodeInt32ForKey:@"currentSupportedVersion"];
    v5->_minSupportedVersion = [v4 decodeInt32ForKey:@"minSupportedVersion"];
    v5->_isPossibleSource = [v4 decodeBoolForKey:@"isPossibleSource"];
    v5->_pairingState = [v4 decodeInt32ForKey:@"pairingState"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastConnectionDate"];
    lastConnectionDate = v5->_lastConnectionDate;
    v5->_lastConnectionDate = v12;

    v5->_deviceType = [v4 decodeInt32ForKey:@"deviceType"];
  }

  return v5;
}

- (id)_initWithDevice:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHSRemoteDevice;
  v5 = [(CHSRemoteDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_name, v4[1]);
    objc_storeStrong(&v6->_relationshipID, v4[2]);
    objc_storeStrong(&v6->_deviceID, v4[3]);
    v6->_currentSupportedVersion = v4[4];
    v6->_minSupportedVersion = v4[5];
    v6->_isPossibleSource = *(v4 + 48);
    v6->_pairingState = v4[7];
    objc_storeStrong(&v6->_lastConnectionDate, v4[8]);
    v6->_deviceType = v4[9];
  }

  return v6;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(CHSRemoteDevice *)self name];
  v3 = [(CHSRemoteDevice *)self relationshipID];
  v4 = [v3 UUIDString];
  v5 = [(CHSRemoteDevice *)self deviceID];
  v6 = [(CHSRemoteDevice *)self currentSupportedVersion];
  v7 = [(CHSRemoteDevice *)self minSupportedVersion];
  v8 = [(CHSRemoteDevice *)self isPossibleSource];
  v9 = [(CHSRemoteDevice *)self pairingState];
  v10 = [(CHSRemoteDevice *)self lastConnectionDate];
  v11 = [v10 description];
  v12 = [v14 stringWithFormat:@"name: %@, relationshipID: %@, deviceID: %@, currentSupportedVersion: %lu, minSupportedVersion: %lu, isPossibleSource: %u, pairingState: %lu, lastConnectionDate: %@, deviceType: %lu", v15, v4, v5, v6, v7, v8, v9, v11, -[CHSRemoteDevice deviceType](self, "deviceType")];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSRemoteDevice allocWithZone:a3];

  return [(CHSRemoteDevice *)v4 _initWithDevice:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableRemoteDevice allocWithZone:a3];

  return [(CHSRemoteDevice *)v4 _initWithDevice:self];
}

@end