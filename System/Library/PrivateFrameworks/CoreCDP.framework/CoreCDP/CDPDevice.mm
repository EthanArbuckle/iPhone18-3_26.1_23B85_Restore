@interface CDPDevice
- (CDPDevice)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)localSecretType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDPDevice

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CDPDevice);
  v5 = [(NSString *)self->_localizedName copy];
  localizedName = v4->_localizedName;
  v4->_localizedName = v5;

  v7 = [(NSString *)self->_model copy];
  model = v4->_model;
  v4->_model = v7;

  v9 = [(NSString *)self->_modelVersion copy];
  modelVersion = v4->_modelVersion;
  v4->_modelVersion = v9;

  v11 = [(NSString *)self->_modelClass copy];
  modelClass = v4->_modelClass;
  v4->_modelClass = v11;

  v4->_platform = self->_platform;
  v13 = [(NSString *)self->_recordID copy];
  recordID = v4->_recordID;
  v4->_recordID = v13;

  v15 = [(NSString *)self->_machineID copy];
  machineID = v4->_machineID;
  v4->_machineID = v15;

  v17 = [(NSData *)self->_simplePublicKey copy];
  simplePublicKey = v4->_simplePublicKey;
  v4->_simplePublicKey = v17;

  v19 = [(NSDictionary *)self->_recordInfo copy];
  recordInfo = v4->_recordInfo;
  v4->_recordInfo = v19;

  v21 = [(OTEscrowRecord *)self->_record copy];
  record = v4->_record;
  v4->_record = v21;

  v23 = [(NSDate *)self->_recordDate copy];
  recordDate = v4->_recordDate;
  v4->_recordDate = v23;

  v4->_hasRandomSecret = self->_hasRandomSecret;
  v4->_hasNumericSecret = self->_hasNumericSecret;
  v25 = [(NSNumber *)self->_numericSecretLength copy];
  numericSecretLength = v4->_numericSecretLength;
  v4->_numericSecretLength = v25;

  v4->_isUsingMultipleiCSC = self->_isUsingMultipleiCSC;
  v4->_remainingAttempts = self->_remainingAttempts;
  v27 = [(NSString *)self->_serialNumber copy];
  serialNumber = v4->_serialNumber;
  v4->_serialNumber = v27;

  v4->_isCurrentDevice = self->_isCurrentDevice;
  objc_storeStrong(&v4->_deviceColor, self->_deviceColor);
  objc_storeStrong(&v4->_enclosureColor, self->_enclosureColor);
  return v4;
}

- (NSString)description
{
  platform = self->_platform;
  v4 = @"Unknown";
  if (platform == 2)
  {
    v4 = @"OSX";
  }

  if (platform == 1)
  {
    v5 = @"iOS";
  }

  else
  {
    v5 = v4;
  }

  v18 = v5;
  v19 = MEMORY[0x1E696AEC0];
  v6 = [objc_opt_class() description];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_machineID != 0];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_simplePublicKey != 0];
  recordID = self->_recordID;
  localizedName = self->_localizedName;
  model = self->_model;
  v12 = MEMORY[0x1E696AD98];
  recordDate = self->_recordDate;
  v14 = [(NSDictionary *)self->_recordInfo objectForKeyedSubscript:@"encodedMetadata"];
  v15 = [v12 numberWithInt:v14 != 0];
  v16 = [v19 stringWithFormat:@"<%@: %p - hasMID=%@ isBottled=%@ recordID=%@ name=%@ model=%@ platform=%@ date=%@ encodedMetadata=%@>", v6, self, v7, v8, recordID, localizedName, model, v18, recordDate, v15];

  return v16;
}

- (CDPDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CDPDevice *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_model"];
    model = v5->_model;
    v5->_model = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelVersion"];
    modelVersion = v5->_modelVersion;
    v5->_modelVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelClass"];
    modelClass = v5->_modelClass;
    v5->_modelClass = v12;

    v5->_platform = [v4 decodeIntegerForKey:@"_platform"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordID"];
    recordID = v5->_recordID;
    v5->_recordID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_machineID"];
    machineID = v5->_machineID;
    v5->_machineID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordDate"];
    recordDate = v5->_recordDate;
    v5->_recordDate = v18;

    v5->_hasRandomSecret = [v4 decodeBoolForKey:@"_hasRandomSecret"];
    v5->_hasNumericSecret = [v4 decodeBoolForKey:@"_hasNumericSecret"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_numericSecretLength"];
    numericSecretLength = v5->_numericSecretLength;
    v5->_numericSecretLength = v20;

    v5->_isUsingMultipleiCSC = [v4 decodeBoolForKey:@"_isUsingMultipleiCSC"];
    v5->_remainingAttempts = [v4 decodeIntegerForKey:@"_remainingAttempts"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v22;

    v5->_isCurrentDevice = [v4 decodeBoolForKey:@"_isCurrentDevice"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v24 setWithObjects:{v25, v26, v27, v28, v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"recordInfo"];
    recordInfo = v5->_recordInfo;
    v5->_recordInfo = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceColor"];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_enclosureColor"];
    enclosureColor = v5->_enclosureColor;
    v5->_enclosureColor = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localizedName = self->_localizedName;
  v5 = a3;
  [v5 encodeObject:localizedName forKey:@"_localizedName"];
  [v5 encodeObject:self->_model forKey:@"_model"];
  [v5 encodeObject:self->_modelVersion forKey:@"_modelVersion"];
  [v5 encodeObject:self->_modelClass forKey:@"_modelClass"];
  [v5 encodeInteger:self->_platform forKey:@"_platform"];
  [v5 encodeObject:self->_recordID forKey:@"_recordID"];
  [v5 encodeObject:self->_machineID forKey:@"_machineID"];
  [v5 encodeObject:self->_recordDate forKey:@"_recordDate"];
  [v5 encodeBool:self->_hasRandomSecret forKey:@"_hasRandomSecret"];
  [v5 encodeBool:self->_hasNumericSecret forKey:@"_hasNumericSecret"];
  [v5 encodeObject:self->_numericSecretLength forKey:@"_numericSecretLength"];
  [v5 encodeBool:self->_isUsingMultipleiCSC forKey:@"_isUsingMultipleiCSC"];
  [v5 encodeInteger:self->_remainingAttempts forKey:@"_remainingAttempts"];
  [v5 encodeObject:self->_serialNumber forKey:@"_serialNumber"];
  [v5 encodeBool:self->_isCurrentDevice forKey:@"_isCurrentDevice"];
  [v5 encodeObject:self->_recordInfo forKey:@"recordInfo"];
  [v5 encodeObject:self->_deviceColor forKey:@"_deviceColor"];
  [v5 encodeObject:self->_enclosureColor forKey:@"_enclosureColor"];
}

- (unint64_t)localSecretType
{
  platform = self->_platform;
  if (platform == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (platform == 2);
  }
}

@end