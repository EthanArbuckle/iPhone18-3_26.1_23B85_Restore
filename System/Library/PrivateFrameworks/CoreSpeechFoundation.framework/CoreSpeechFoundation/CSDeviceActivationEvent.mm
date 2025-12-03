@interface CSDeviceActivationEvent
+ (id)builtInMicVoiceTriggerEvent:(id)event hostTime:(unint64_t)time;
+ (id)jarvisVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time;
+ (id)mediaserverdLaunchedEvent:(unint64_t)event;
+ (id)remoraVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time;
+ (id)remoraVoiceTriggerEvent:(id)event hostTime:(unint64_t)time;
+ (id)remoteMicVADEvent:(id)event vadScore:(float)score hostTime:(unint64_t)time;
+ (id)remoteMicVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time;
- (CSDeviceActivationEvent)initWithType:(unint64_t)type deviceId:(id)id activationInfo:(id)info vadScore:(float)score hosttime:(unint64_t)hosttime;
- (CSDeviceActivationEvent)initWithXPCObject:(id)object;
- (NSString)localizedDescription;
- (id)_activationTypeString;
- (id)xpcObject;
@end

@implementation CSDeviceActivationEvent

- (id)_activationTypeString
{
  v2 = self->_type - 1;
  if (v2 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E865B928[v2];
  }
}

- (NSString)localizedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"[%@]", self->_UUID];
  _activationTypeString = [(CSDeviceActivationEvent *)self _activationTypeString];
  [v3 appendFormat:@"[%@]", _activationTypeString];

  [v3 appendFormat:@"[%@]", self->_deviceId];
  [v3 appendFormat:@"[%llu]", self->_hosttime];
  [v3 appendFormat:@"[%f]", self->_vadScore];
  [v3 appendFormat:@"[%@]", self->_activationInfo];

  return v3;
}

- (id)xpcObject
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = "uuid";
  keys[1] = "type";
  keys[2] = "vadScore";
  keys[3] = "hosttime";
  values[0] = xpc_string_create([(NSString *)self->_UUID UTF8String]);
  values[1] = xpc_uint64_create(self->_type);
  values[2] = xpc_double_create(self->_vadScore);
  values[3] = xpc_uint64_create(self->_hosttime);
  v3 = xpc_dictionary_create(keys, values, 4uLL);
  deviceId = self->_deviceId;
  if (deviceId)
  {
    xpc_dictionary_set_string(v3, "deviceId", [(NSString *)deviceId UTF8String]);
  }

  activationInfo = self->_activationInfo;
  if (activationInfo)
  {
    _cs_xpcObject = [(NSDictionary *)activationInfo _cs_xpcObject];
    xpc_dictionary_set_value(v3, "activationInfo", _cs_xpcObject);
  }

  for (i = 3; i != -1; --i)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSDeviceActivationEvent)initWithXPCObject:(id)object
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = CSDeviceActivationEvent;
  v5 = [(CSDeviceActivationEvent *)&v21 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(objectCopy, "uuid");

    if (v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(objectCopy, "uuid")}];
      UUID = v5->_UUID;
      v5->_UUID = v7;
    }

    else
    {
      UUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [UUID UUIDString];
      v10 = v5->_UUID;
      v5->_UUID = uUIDString;
    }

    v5->_type = xpc_dictionary_get_uint64(objectCopy, "type");
    v11 = xpc_dictionary_get_value(objectCopy, "deviceId");

    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(objectCopy, "deviceId")}];
      deviceId = v5->_deviceId;
      v5->_deviceId = v12;
    }

    v14 = xpc_dictionary_get_value(objectCopy, "activationInfo");

    if (v14)
    {
      v15 = xpc_dictionary_get_dictionary(objectCopy, "activationInfo");
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      v17 = [v16 _cs_initWithXPCObject:v15];
      activationInfo = v5->_activationInfo;
      v5->_activationInfo = v17;
    }

    v19 = xpc_dictionary_get_double(objectCopy, "vadScore");
    v5->_vadScore = v19;
    v5->_hosttime = xpc_dictionary_get_uint64(objectCopy, "hosttime");
  }

  return v5;
}

- (CSDeviceActivationEvent)initWithType:(unint64_t)type deviceId:(id)id activationInfo:(id)info vadScore:(float)score hosttime:(unint64_t)hosttime
{
  idCopy = id;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = CSDeviceActivationEvent;
  v15 = [(CSDeviceActivationEvent *)&v20 init];
  if (v15)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    UUID = v15->_UUID;
    v15->_UUID = uUIDString;

    v15->_type = type;
    objc_storeStrong(&v15->_deviceId, id);
    objc_storeStrong(&v15->_activationInfo, info);
    v15->_hosttime = hosttime;
    v15->_vadScore = score;
  }

  return v15;
}

+ (id)mediaserverdLaunchedEvent:(unint64_t)event
{
  v3 = [[CSDeviceActivationEvent alloc] initWithType:7 deviceId:0 activationInfo:0 hosttime:event];

  return v3;
}

+ (id)remoraVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time
{
  infoCopy = info;
  eventCopy = event;
  v9 = [[CSDeviceActivationEvent alloc] initWithType:8 deviceId:eventCopy activationInfo:infoCopy hosttime:time];

  return v9;
}

+ (id)remoraVoiceTriggerEvent:(id)event hostTime:(unint64_t)time
{
  eventCopy = event;
  v6 = [[CSDeviceActivationEvent alloc] initWithType:8 deviceId:eventCopy activationInfo:0 hosttime:time];

  return v6;
}

+ (id)jarvisVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time
{
  infoCopy = info;
  eventCopy = event;
  v9 = [[CSDeviceActivationEvent alloc] initWithType:6 deviceId:eventCopy activationInfo:infoCopy vadScore:time hosttime:0.0];

  return v9;
}

+ (id)builtInMicVoiceTriggerEvent:(id)event hostTime:(unint64_t)time
{
  eventCopy = event;
  v6 = [[CSDeviceActivationEvent alloc] initWithType:1 deviceId:0 activationInfo:eventCopy vadScore:time hosttime:0.0];

  return v6;
}

+ (id)remoteMicVADEvent:(id)event vadScore:(float)score hostTime:(unint64_t)time
{
  eventCopy = event;
  v8 = [CSDeviceActivationEvent alloc];
  *&v9 = score;
  v10 = [(CSDeviceActivationEvent *)v8 initWithType:3 deviceId:eventCopy activationInfo:0 vadScore:time hosttime:v9];

  return v10;
}

+ (id)remoteMicVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time
{
  infoCopy = info;
  eventCopy = event;
  v9 = [[CSDeviceActivationEvent alloc] initWithType:2 deviceId:eventCopy activationInfo:infoCopy vadScore:time hosttime:0.0];

  return v9;
}

@end