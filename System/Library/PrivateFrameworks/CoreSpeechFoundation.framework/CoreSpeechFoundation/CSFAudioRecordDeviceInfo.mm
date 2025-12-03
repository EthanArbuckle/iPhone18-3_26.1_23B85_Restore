@interface CSFAudioRecordDeviceInfo
- (CSFAudioRecordDeviceInfo)initWithAVVCRecordDeviceInfo:(id)info;
- (CSFAudioRecordDeviceInfo)initWithCoder:(id)coder;
- (CSFAudioRecordDeviceInfo)initWithRoute:(id)route isRemoteDevice:(BOOL)device remoteDeviceUID:(id)d remoteDeviceProductIdentifier:(id)identifier remoteDeviceUIDString:(id)string isNarrowBand:(BOOL)band;
- (CSFAudioRecordDeviceInfo)initWithXPCObject:(id)object;
- (id)description;
- (id)xpcObject;
- (void)encodeWithCoder:(id)coder;
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
    uUIDString = [(NSUUID *)remoteDeviceUID UUIDString];
    v8 = uUIDString;
    xpc_dictionary_set_string(v3, v6, [uUIDString UTF8String]);
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

- (CSFAudioRecordDeviceInfo)initWithAVVCRecordDeviceInfo:(id)info
{
  infoCopy = info;
  recordRoute = [infoCopy recordRoute];
  isRemoteDevice = [infoCopy isRemoteDevice];
  remoteDeviceUID = [infoCopy remoteDeviceUID];
  remoteProductIdentifier = [infoCopy remoteProductIdentifier];
  remoteDeviceUIDString = [infoCopy remoteDeviceUIDString];
  isUpsamplingSourceAudio = [infoCopy isUpsamplingSourceAudio];

  v11 = [(CSFAudioRecordDeviceInfo *)self initWithRoute:recordRoute isRemoteDevice:isRemoteDevice remoteDeviceUID:remoteDeviceUID remoteDeviceProductIdentifier:remoteProductIdentifier remoteDeviceUIDString:remoteDeviceUIDString isNarrowBand:isUpsamplingSourceAudio];
  return v11;
}

- (CSFAudioRecordDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRemoteDevice"];
  bOOLValue = [v6 BOOLValue];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceUID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceProductIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceUIDString"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isNarrowBand"];

  v12 = -[CSFAudioRecordDeviceInfo initWithRoute:isRemoteDevice:remoteDeviceUID:remoteDeviceProductIdentifier:remoteDeviceUIDString:isNarrowBand:](self, "initWithRoute:isRemoteDevice:remoteDeviceUID:remoteDeviceProductIdentifier:remoteDeviceUIDString:isNarrowBand:", v5, bOOLValue, v8, v9, v10, [v11 BOOLValue]);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  route = self->_route;
  coderCopy = coder;
  [coderCopy encodeObject:route forKey:@"route"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteDevice];
  [coderCopy encodeObject:v6 forKey:@"isRemoteDevice"];

  [coderCopy encodeObject:self->_remoteDeviceUID forKey:@"remoteDeviceUID"];
  [coderCopy encodeObject:self->_remoteDeviceProductIdentifier forKey:@"remoteDeviceProductIdentifier"];
  [coderCopy encodeObject:self->_remoteDeviceUIDString forKey:@"remoteDeviceUIDString"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNarrowBand];
  [coderCopy encodeObject:v7 forKey:@"isNarrowBand"];
}

- (CSFAudioRecordDeviceInfo)initWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = xpc_dictionary_get_BOOL(objectCopy, kXPCEncodeKeyIsRemoteDevice);
  v6 = xpc_dictionary_get_BOOL(objectCopy, kXPCEncodeKeyIsNarrowBand);
  v7 = xpc_dictionary_get_value(objectCopy, kXPCEncodeKeyRoute);

  if (v7)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(objectCopy, kXPCEncodeKeyRoute)}];
  }

  v8 = xpc_dictionary_get_value(objectCopy, kXPCEncodeKeyRemoteDeviceUID);

  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(objectCopy, kXPCEncodeKeyRemoteDeviceUID)}];
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
  }

  v10 = xpc_dictionary_get_value(objectCopy, kXPCEncodeKeyRemoteDeviceProductIdentifier);

  if (v10)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(objectCopy, kXPCEncodeKeyRemoteDeviceProductIdentifier)}];
  }

  v11 = xpc_dictionary_get_value(objectCopy, kXPCEncodeKeyRemoteDeviceUIDString);

  if (v11)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(objectCopy, kXPCEncodeKeyRemoteDeviceUIDString)}];
  }

  v12 = [(CSFAudioRecordDeviceInfo *)self initWithRoute:v7 isRemoteDevice:v5 remoteDeviceUID:v8 remoteDeviceProductIdentifier:v10 remoteDeviceUIDString:v11 isNarrowBand:v6];

  return v12;
}

- (CSFAudioRecordDeviceInfo)initWithRoute:(id)route isRemoteDevice:(BOOL)device remoteDeviceUID:(id)d remoteDeviceProductIdentifier:(id)identifier remoteDeviceUIDString:(id)string isNarrowBand:(BOOL)band
{
  routeCopy = route;
  dCopy = d;
  identifierCopy = identifier;
  stringCopy = string;
  v28.receiver = self;
  v28.super_class = CSFAudioRecordDeviceInfo;
  v18 = [(CSFAudioRecordDeviceInfo *)&v28 init];
  if (v18)
  {
    v19 = [routeCopy copy];
    route = v18->_route;
    v18->_route = v19;

    v18->_isRemoteDevice = device;
    v21 = [dCopy copy];
    remoteDeviceUID = v18->_remoteDeviceUID;
    v18->_remoteDeviceUID = v21;

    v23 = [identifierCopy copy];
    remoteDeviceProductIdentifier = v18->_remoteDeviceProductIdentifier;
    v18->_remoteDeviceProductIdentifier = v23;

    v25 = [stringCopy copy];
    remoteDeviceUIDString = v18->_remoteDeviceUIDString;
    v18->_remoteDeviceUIDString = v25;

    v18->_isNarrowBand = band;
  }

  return v18;
}

@end