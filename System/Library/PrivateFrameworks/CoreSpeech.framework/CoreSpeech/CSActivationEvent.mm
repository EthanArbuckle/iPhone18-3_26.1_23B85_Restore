@interface CSActivationEvent
+ (id)builtInMicVoiceTriggerEvent:(id)event hostTime:(unint64_t)time;
+ (id)jarvisVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time;
+ (id)mediaserverdLaunchedEvent:(unint64_t)event;
+ (id)remoraVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time;
+ (id)remoraVoiceTriggerEvent:(id)event hostTime:(unint64_t)time;
+ (id)remoteMicVADEvent:(id)event vadScore:(float)score hostTime:(unint64_t)time;
+ (id)remoteMicVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time;
- (CSActivationEvent)initWithType:(unint64_t)type deviceId:(id)id activationInfo:(id)info vadScore:(float)score hosttime:(unint64_t)hosttime;
- (CSActivationEvent)initWithXPCObject:(id)object;
- (id)xpcObject;
@end

@implementation CSActivationEvent

- (id)xpcObject
{
  keys = "deviceActivationEvent";
  values = [(CSDeviceActivationEvent *)self->_deviceActivationEvent xpcObject];
  v2 = xpc_dictionary_create(&keys, &values, 1uLL);

  return v2;
}

- (CSActivationEvent)initWithXPCObject:(id)object
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = CSActivationEvent;
  v5 = [(CSActivationEvent *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = xpc_dictionary_get_value(objectCopy, "deviceActivationEvent");
  if (v6)
  {
    v7 = [[CSDeviceActivationEvent alloc] initWithXPCObject:v6];
    deviceActivationEvent = v5->_deviceActivationEvent;
    v5->_deviceActivationEvent = v7;

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (CSActivationEvent)initWithType:(unint64_t)type deviceId:(id)id activationInfo:(id)info vadScore:(float)score hosttime:(unint64_t)hosttime
{
  idCopy = id;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = CSActivationEvent;
  v14 = [(CSActivationEvent *)&v20 init];
  if (v14)
  {
    v15 = [CSDeviceActivationEvent alloc];
    *&v16 = score;
    v17 = [v15 initWithType:type deviceId:idCopy activationInfo:infoCopy vadScore:hosttime hosttime:v16];
    deviceActivationEvent = v14->_deviceActivationEvent;
    v14->_deviceActivationEvent = v17;
  }

  return v14;
}

+ (id)mediaserverdLaunchedEvent:(unint64_t)event
{
  v3 = [[CSActivationEvent alloc] initWithType:7 deviceId:0 activationInfo:0 hosttime:event];

  return v3;
}

+ (id)remoraVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time
{
  infoCopy = info;
  eventCopy = event;
  v9 = [[CSActivationEvent alloc] initWithType:8 deviceId:eventCopy activationInfo:infoCopy hosttime:time];

  return v9;
}

+ (id)remoraVoiceTriggerEvent:(id)event hostTime:(unint64_t)time
{
  eventCopy = event;
  v6 = [[CSActivationEvent alloc] initWithType:8 deviceId:eventCopy activationInfo:0 hosttime:time];

  return v6;
}

+ (id)jarvisVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time
{
  infoCopy = info;
  eventCopy = event;
  v9 = [[CSActivationEvent alloc] initWithType:6 deviceId:eventCopy activationInfo:infoCopy vadScore:time hosttime:0.0];

  return v9;
}

+ (id)builtInMicVoiceTriggerEvent:(id)event hostTime:(unint64_t)time
{
  eventCopy = event;
  v6 = [[CSActivationEvent alloc] initWithType:1 deviceId:0 activationInfo:eventCopy vadScore:time hosttime:0.0];

  return v6;
}

+ (id)remoteMicVADEvent:(id)event vadScore:(float)score hostTime:(unint64_t)time
{
  eventCopy = event;
  v8 = [CSActivationEvent alloc];
  *&v9 = score;
  v10 = [(CSActivationEvent *)v8 initWithType:3 deviceId:eventCopy activationInfo:0 vadScore:time hosttime:v9];

  return v10;
}

+ (id)remoteMicVoiceTriggerEvent:(id)event activationInfo:(id)info hostTime:(unint64_t)time
{
  infoCopy = info;
  eventCopy = event;
  v9 = [[CSActivationEvent alloc] initWithType:2 deviceId:eventCopy activationInfo:infoCopy vadScore:time hosttime:0.0];

  return v9;
}

@end