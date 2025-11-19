@interface CCDevice
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (CCDevice)init;
- (CCDevice)initWithCoder:(id)a3;
- (CCDevice)initWithDeviceUUID:(id)a3 idsDeviceId:(id)a4 platform:(int64_t)a5 options:(unsigned __int8)a6;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCDevice

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_deviceUUID hash];
  v4 = [(NSString *)self->_idsDeviceIdentifier hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_options];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_platform];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (CCDevice)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDevice)initWithDeviceUUID:(id)a3 idsDeviceId:(id)a4 platform:(int64_t)a5 options:(unsigned __int8)a6
{
  v11 = a3;
  v12 = a4;
  v21.receiver = self;
  v21.super_class = CCDevice;
  v13 = [(CCDevice *)&v21 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v13->_deviceUUID, a3);
  deviceUUID = v14->_deviceUUID;
  if (deviceUUID)
  {
    v16 = [(NSUUID *)deviceUUID UUIDString];
    identifier = v14->_identifier;
    v14->_identifier = v16;

    objc_storeStrong(&v14->_idsDeviceIdentifier, a4);
    v14->_platform = a5;
    v14->_options = a6;
LABEL_4:
    v18 = v14;
    goto LABEL_8;
  }

  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [CCDevice initWithDeviceUUID:v19 idsDeviceId:? platform:? options:?];
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CCDevice *)self identifier];
  v7 = [(CCDevice *)self idsDeviceIdentifier];
  if ([(CCDevice *)self isLocal])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  platform = self->_platform;
  v10 = BMDevicePlatformToString();
  v11 = [v3 initWithFormat:@"<%@> identifier: %@ idsIdentifier: %@ isLocal: %@ platform: %@", v5, v6, v7, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDevice *)self isEqualToDevice:v5];
  }

  return v6;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  deviceUUID = self->_deviceUUID;
  v6 = [v4 deviceUUID];
  if ([(NSUUID *)deviceUUID isEqual:v6])
  {
    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    v8 = idsDeviceIdentifier;
    if (!idsDeviceIdentifier)
    {
      v9 = [v4 idsDeviceIdentifier];
      if (!v9)
      {
        options = self->_options;
        if (options == [v4 options])
        {
          platform = self->_platform;
          deviceUUID = 0;
          v13 = platform == [v4 platform];
        }

        else
        {
          deviceUUID = 0;
          v13 = 0;
        }

LABEL_11:

        goto LABEL_12;
      }

      deviceUUID = v9;
      v8 = self->_idsDeviceIdentifier;
    }

    v10 = [v4 idsDeviceIdentifier];
    if (-[NSString isEqual:](v8, "isEqual:", v10) && (v11 = self->_options, v11 == [v4 options]))
    {
      v12 = self->_platform;
      v13 = v12 == [v4 platform];
    }

    else
    {
      v13 = 0;
    }

    if (!idsDeviceIdentifier)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  deviceUUID = self->_deviceUUID;
  v5 = a3;
  [v5 encodeObject:deviceUUID forKey:@"deviceUUID"];
  [v5 encodeObject:self->_idsDeviceIdentifier forKey:@"idsDeviceId"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_platform];
  [v5 encodeObject:v6 forKey:@"devicePlatform"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_options];
  [v5 encodeObject:v7 forKey:@"deviceOptions"];
}

- (CCDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUUID"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceOptions"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceId"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePlatform"];
      v9 = [v8 integerValue];

      self = -[CCDevice initWithDeviceUUID:idsDeviceId:platform:options:](self, "initWithDeviceUUID:idsDeviceId:platform:options:", v5, v7, v9, [v6 unsignedIntValue]);
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"deviceUUID"];
  v6 = [v4 objectForKeyedSubscript:@"idsDeviceId"];
  v7 = [v4 objectForKeyedSubscript:@"devicePlatform"];

  v8 = [v7 integerValue];
  v9 = [(CCDevice *)self initWithDeviceUUID:v5 idsDeviceId:v6 platform:v8 options:0];

  return v9;
}

- (id)dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [(CCDevice *)self deviceUUID];
  v12[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CCDevice platform](self, "platform")}];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v3 initWithObjects:v6 forKeys:&unk_1F2EC96A8];

  v8 = [(CCDevice *)self idsDeviceIdentifier];

  if (v8)
  {
    v9 = [(CCDevice *)self idsDeviceIdentifier];
    [v7 setObject:v9 forKeyedSubscript:@"idsDeviceId"];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)initWithDeviceUUID:(os_log_t)log idsDeviceId:platform:options:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[CCDevice initWithDeviceUUID:idsDeviceId:platform:options:]";
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "%s nil deviceUUID", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end