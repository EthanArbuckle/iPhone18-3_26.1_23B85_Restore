@interface CCDevice
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (CCDevice)init;
- (CCDevice)initWithCoder:(id)coder;
- (CCDevice)initWithDeviceUUID:(id)d idsDeviceId:(id)id platform:(int64_t)platform options:(unsigned __int8)options;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (CCDevice)initWithDeviceUUID:(id)d idsDeviceId:(id)id platform:(int64_t)platform options:(unsigned __int8)options
{
  dCopy = d;
  idCopy = id;
  v21.receiver = self;
  v21.super_class = CCDevice;
  v13 = [(CCDevice *)&v21 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v13->_deviceUUID, d);
  deviceUUID = v14->_deviceUUID;
  if (deviceUUID)
  {
    uUIDString = [(NSUUID *)deviceUUID UUIDString];
    identifier = v14->_identifier;
    v14->_identifier = uUIDString;

    objc_storeStrong(&v14->_idsDeviceIdentifier, id);
    v14->_platform = platform;
    v14->_options = options;
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
  identifier = [(CCDevice *)self identifier];
  idsDeviceIdentifier = [(CCDevice *)self idsDeviceIdentifier];
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
  v11 = [v3 initWithFormat:@"<%@> identifier: %@ idsIdentifier: %@ isLocal: %@ platform: %@", v5, identifier, idsDeviceIdentifier, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDevice *)self isEqualToDevice:v5];
  }

  return v6;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  deviceUUID = self->_deviceUUID;
  deviceUUID = [deviceCopy deviceUUID];
  if ([(NSUUID *)deviceUUID isEqual:deviceUUID])
  {
    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    v8 = idsDeviceIdentifier;
    if (!idsDeviceIdentifier)
    {
      idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
      if (!idsDeviceIdentifier)
      {
        options = self->_options;
        if (options == [deviceCopy options])
        {
          platform = self->_platform;
          deviceUUID = 0;
          v13 = platform == [deviceCopy platform];
        }

        else
        {
          deviceUUID = 0;
          v13 = 0;
        }

LABEL_11:

        goto LABEL_12;
      }

      deviceUUID = idsDeviceIdentifier;
      v8 = self->_idsDeviceIdentifier;
    }

    idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
    if (-[NSString isEqual:](v8, "isEqual:", idsDeviceIdentifier2) && (v11 = self->_options, v11 == [deviceCopy options]))
    {
      v12 = self->_platform;
      v13 = v12 == [deviceCopy platform];
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

- (void)encodeWithCoder:(id)coder
{
  deviceUUID = self->_deviceUUID;
  coderCopy = coder;
  [coderCopy encodeObject:deviceUUID forKey:@"deviceUUID"];
  [coderCopy encodeObject:self->_idsDeviceIdentifier forKey:@"idsDeviceId"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_platform];
  [coderCopy encodeObject:v6 forKey:@"devicePlatform"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_options];
  [coderCopy encodeObject:v7 forKey:@"deviceOptions"];
}

- (CCDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUUID"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceOptions"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceId"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePlatform"];
      integerValue = [v8 integerValue];

      self = -[CCDevice initWithDeviceUUID:idsDeviceId:platform:options:](self, "initWithDeviceUUID:idsDeviceId:platform:options:", v5, v7, integerValue, [v6 unsignedIntValue]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"idsDeviceId"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"devicePlatform"];

  integerValue = [v7 integerValue];
  v9 = [(CCDevice *)self initWithDeviceUUID:v5 idsDeviceId:v6 platform:integerValue options:0];

  return v9;
}

- (id)dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  deviceUUID = [(CCDevice *)self deviceUUID];
  v12[0] = deviceUUID;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CCDevice platform](self, "platform")}];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v3 initWithObjects:v6 forKeys:&unk_1F2EC96A8];

  idsDeviceIdentifier = [(CCDevice *)self idsDeviceIdentifier];

  if (idsDeviceIdentifier)
  {
    idsDeviceIdentifier2 = [(CCDevice *)self idsDeviceIdentifier];
    [v7 setObject:idsDeviceIdentifier2 forKeyedSubscript:@"idsDeviceId"];
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