@interface CSFAudioRecordDeviceInfo
- (CSFAudioRecordDeviceInfo)initWithAVVCRecordDeviceInfo:(id)a3;
- (CSFAudioRecordDeviceInfo)initWithCoder:(id)a3;
- (CSFAudioRecordDeviceInfo)initWithRoute:(id)a3 isRemoteDevice:(BOOL)a4 remoteDeviceUID:(id)a5 remoteDeviceProductIdentifier:(id)a6 remoteDeviceUIDString:(id)a7 isNarrowBand:(BOOL)a8;
- (CSFAudioRecordDeviceInfo)initWithXPCObject:(id)a3;
- (id)description;
- (id)xpcObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSFAudioRecordDeviceInfo

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = CSFAudioRecordDeviceInfo;
  v4 = [(CSFAudioRecordDeviceInfo *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {route = %@, isRemoteDevice = %d, remoteDeviceUID = %@, remoteDeviceProductIdentifier = %@, remoteDeviceUIDString = %@, isNarrowBand = %d}", v4, self->_route, self->_isRemoteDevice, self->_remoteDeviceUID, self->_remoteDeviceProductIdentifier, self->_remoteDeviceUIDString, self->_isNarrowBand];

  return v5;
}

- (id)xpcObject
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = kXPCEncodeKeyIsRemoteDevice;
  keys[1] = kXPCEncodeKeyIsNarrowBand;
  values[0] = xpc_BOOL_create(self->_isRemoteDevice);
  values[1] = xpc_BOOL_create(self->_isNarrowBand);
  v3 = xpc_dictionary_create(keys, values, 2uLL);
  route = self->_route;
  if (route)
  {
    xpc_dictionary_set_string(v3, kXPCEncodeKeyRoute, [(NSString *)route UTF8String]);
  }

  remoteDeviceUID = self->_remoteDeviceUID;
  if (remoteDeviceUID)
  {
    v6 = kXPCEncodeKeyRemoteDeviceUID;
    v7 = [(NSUUID *)remoteDeviceUID UUIDString];
    v8 = v7;
    xpc_dictionary_set_string(v3, v6, [v7 UTF8String]);
  }

  remoteDeviceProductIdentifier = self->_remoteDeviceProductIdentifier;
  if (remoteDeviceProductIdentifier)
  {
    xpc_dictionary_set_string(v3, kXPCEncodeKeyRemoteDeviceProductIdentifier, [(NSString *)remoteDeviceProductIdentifier UTF8String]);
  }

  remoteDeviceUIDString = self->_remoteDeviceUIDString;
  if (remoteDeviceUIDString)
  {
    xpc_dictionary_set_string(v3, kXPCEncodeKeyRemoteDeviceUIDString, [(NSString *)remoteDeviceUIDString UTF8String]);
  }

  for (i = 1; i != -1; --i)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSFAudioRecordDeviceInfo)initWithAVVCRecordDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 recordRoute];
  v6 = [v4 isRemoteDevice];
  v7 = [v4 remoteDeviceUID];
  v8 = [v4 remoteProductIdentifier];
  v9 = [v4 remoteDeviceUIDString];
  v10 = [v4 isUpsamplingSourceAudio];

  v11 = [(CSFAudioRecordDeviceInfo *)self initWithRoute:v5 isRemoteDevice:v6 remoteDeviceUID:v7 remoteDeviceProductIdentifier:v8 remoteDeviceUIDString:v9 isNarrowBand:v10];
  return v11;
}

- (CSFAudioRecordDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"route"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRemoteDevice"];
  v7 = [v6 BOOLValue];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceUID"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceProductIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceUIDString"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isNarrowBand"];

  v12 = -[CSFAudioRecordDeviceInfo initWithRoute:isRemoteDevice:remoteDeviceUID:remoteDeviceProductIdentifier:remoteDeviceUIDString:isNarrowBand:](self, "initWithRoute:isRemoteDevice:remoteDeviceUID:remoteDeviceProductIdentifier:remoteDeviceUIDString:isNarrowBand:", v5, v7, v8, v9, v10, [v11 BOOLValue]);
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  route = self->_route;
  v5 = a3;
  [v5 encodeObject:route forKey:@"route"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteDevice];
  [v5 encodeObject:v6 forKey:@"isRemoteDevice"];

  [v5 encodeObject:self->_remoteDeviceUID forKey:@"remoteDeviceUID"];
  [v5 encodeObject:self->_remoteDeviceProductIdentifier forKey:@"remoteDeviceProductIdentifier"];
  [v5 encodeObject:self->_remoteDeviceUIDString forKey:@"remoteDeviceUIDString"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNarrowBand];
  [v5 encodeObject:v7 forKey:@"isNarrowBand"];
}

- (CSFAudioRecordDeviceInfo)initWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_BOOL(v4, kXPCEncodeKeyIsRemoteDevice);
  v6 = xpc_dictionary_get_BOOL(v4, kXPCEncodeKeyIsNarrowBand);
  v7 = xpc_dictionary_get_value(v4, kXPCEncodeKeyRoute);

  if (v7)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v4, kXPCEncodeKeyRoute)}];
  }

  v8 = xpc_dictionary_get_value(v4, kXPCEncodeKeyRemoteDeviceUID);

  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v4, kXPCEncodeKeyRemoteDeviceUID)}];
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
  }

  v10 = xpc_dictionary_get_value(v4, kXPCEncodeKeyRemoteDeviceProductIdentifier);

  if (v10)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v4, kXPCEncodeKeyRemoteDeviceProductIdentifier)}];
  }

  v11 = xpc_dictionary_get_value(v4, kXPCEncodeKeyRemoteDeviceUIDString);

  if (v11)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v4, kXPCEncodeKeyRemoteDeviceUIDString)}];
  }

  v12 = [(CSFAudioRecordDeviceInfo *)self initWithRoute:v7 isRemoteDevice:v5 remoteDeviceUID:v8 remoteDeviceProductIdentifier:v10 remoteDeviceUIDString:v11 isNarrowBand:v6];

  return v12;
}

- (CSFAudioRecordDeviceInfo)initWithRoute:(id)a3 isRemoteDevice:(BOOL)a4 remoteDeviceUID:(id)a5 remoteDeviceProductIdentifier:(id)a6 remoteDeviceUIDString:(id)a7 isNarrowBand:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = CSFAudioRecordDeviceInfo;
  v18 = [(CSFAudioRecordDeviceInfo *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    route = v18->_route;
    v18->_route = v19;

    v18->_isRemoteDevice = a4;
    v21 = [v15 copy];
    remoteDeviceUID = v18->_remoteDeviceUID;
    v18->_remoteDeviceUID = v21;

    v23 = [v16 copy];
    remoteDeviceProductIdentifier = v18->_remoteDeviceProductIdentifier;
    v18->_remoteDeviceProductIdentifier = v23;

    v25 = [v17 copy];
    remoteDeviceUIDString = v18->_remoteDeviceUIDString;
    v18->_remoteDeviceUIDString = v25;

    v18->_isNarrowBand = a8;
  }

  return v18;
}

@end