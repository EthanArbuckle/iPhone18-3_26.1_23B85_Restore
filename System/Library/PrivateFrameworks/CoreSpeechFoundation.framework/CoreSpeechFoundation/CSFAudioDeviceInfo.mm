@interface CSFAudioDeviceInfo
- (CSFAudioDeviceInfo)initWithCoder:(id)a3;
- (CSFAudioDeviceInfo)initWithRecordDeviceInfo:(id)a3 playbackRoute:(id)a4 playbackDeviceTypeList:(id)a5;
- (CSFAudioDeviceInfo)initWithXPCObject:(id)a3;
- (id)description;
- (id)xpcObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSFAudioDeviceInfo

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = CSFAudioDeviceInfo;
  v4 = [(CSFAudioDeviceInfo *)&v8 description];
  v5 = [(CSFAudioRecordDeviceInfo *)self->_recordDeviceInfo description];
  v6 = [v3 initWithFormat:@"%@ {recordDeviceInfo = %@, playbackRoute = %@, playbackDevices = %@", v4, v5, self->_playbackRoute, self->_playbackDeviceTypeList];

  return v6;
}

- (id)xpcObject
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = kXPCEncodeKeyRecordDeviceInfo;
  keys[1] = kXPCEncodeKeyPlaybackDeviceType;
  values[0] = [(CSFAudioRecordDeviceInfo *)self->_recordDeviceInfo xpcObject];
  values[1] = [(NSArray *)self->_playbackDeviceTypeList _cs_xpcObject];
  v3 = xpc_dictionary_create(keys, values, 2uLL);
  playbackRoute = self->_playbackRoute;
  if (playbackRoute)
  {
    xpc_dictionary_set_string(v3, kXPCEncodeKeyPlaybackRoute, [(NSString *)playbackRoute UTF8String]);
  }

  for (i = 1; i != -1; --i)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSFAudioDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordDeviceInfo"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playbackRoute"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playbackDeviceTypeList"];

  v8 = [(CSFAudioDeviceInfo *)self initWithRecordDeviceInfo:v5 playbackRoute:v6 playbackDeviceTypeList:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  recordDeviceInfo = self->_recordDeviceInfo;
  v5 = a3;
  [v5 encodeObject:recordDeviceInfo forKey:@"recordDeviceInfo"];
  [v5 encodeObject:self->_playbackRoute forKey:@"playbackRoute"];
  [v5 encodeObject:self->_playbackDeviceTypeList forKey:@"playbackDeviceTypeList"];
}

- (CSFAudioDeviceInfo)initWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_value(v4, kXPCEncodeKeyRecordDeviceInfo);
  if (v5)
  {
    v6 = [[CSFAudioRecordDeviceInfo alloc] initWithXPCObject:v5];
  }

  else
  {
    v6 = 0;
  }

  string = xpc_dictionary_get_string(v4, kXPCEncodeKeyPlaybackRoute);
  if (string)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v8 = 0;
  }

  v9 = xpc_dictionary_get_array(v4, kXPCEncodeKeyPlaybackDeviceType);
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = [v10 _cs_initWithXPCObject:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CSFAudioDeviceInfo *)self initWithRecordDeviceInfo:v6 playbackRoute:v8 playbackDeviceTypeList:v11];

  return v12;
}

- (CSFAudioDeviceInfo)initWithRecordDeviceInfo:(id)a3 playbackRoute:(id)a4 playbackDeviceTypeList:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CSFAudioDeviceInfo;
  v11 = [(CSFAudioDeviceInfo *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    recordDeviceInfo = v11->_recordDeviceInfo;
    v11->_recordDeviceInfo = v12;

    v14 = [v9 copy];
    playbackRoute = v11->_playbackRoute;
    v11->_playbackRoute = v14;

    v16 = [v10 copy];
    playbackDeviceTypeList = v11->_playbackDeviceTypeList;
    v11->_playbackDeviceTypeList = v16;
  }

  return v11;
}

@end