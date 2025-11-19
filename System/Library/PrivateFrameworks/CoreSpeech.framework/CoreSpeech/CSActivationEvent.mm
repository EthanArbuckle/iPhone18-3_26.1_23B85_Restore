@interface CSActivationEvent
+ (id)builtInMicVoiceTriggerEvent:(id)a3 hostTime:(unint64_t)a4;
+ (id)jarvisVoiceTriggerEvent:(id)a3 activationInfo:(id)a4 hostTime:(unint64_t)a5;
+ (id)mediaserverdLaunchedEvent:(unint64_t)a3;
+ (id)remoraVoiceTriggerEvent:(id)a3 activationInfo:(id)a4 hostTime:(unint64_t)a5;
+ (id)remoraVoiceTriggerEvent:(id)a3 hostTime:(unint64_t)a4;
+ (id)remoteMicVADEvent:(id)a3 vadScore:(float)a4 hostTime:(unint64_t)a5;
+ (id)remoteMicVoiceTriggerEvent:(id)a3 activationInfo:(id)a4 hostTime:(unint64_t)a5;
- (CSActivationEvent)initWithType:(unint64_t)a3 deviceId:(id)a4 activationInfo:(id)a5 vadScore:(float)a6 hosttime:(unint64_t)a7;
- (CSActivationEvent)initWithXPCObject:(id)a3;
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

- (CSActivationEvent)initWithXPCObject:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSActivationEvent;
  v5 = [(CSActivationEvent *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = xpc_dictionary_get_value(v4, "deviceActivationEvent");
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

- (CSActivationEvent)initWithType:(unint64_t)a3 deviceId:(id)a4 activationInfo:(id)a5 vadScore:(float)a6 hosttime:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = CSActivationEvent;
  v14 = [(CSActivationEvent *)&v20 init];
  if (v14)
  {
    v15 = [CSDeviceActivationEvent alloc];
    *&v16 = a6;
    v17 = [v15 initWithType:a3 deviceId:v12 activationInfo:v13 vadScore:a7 hosttime:v16];
    deviceActivationEvent = v14->_deviceActivationEvent;
    v14->_deviceActivationEvent = v17;
  }

  return v14;
}

+ (id)mediaserverdLaunchedEvent:(unint64_t)a3
{
  v3 = [[CSActivationEvent alloc] initWithType:7 deviceId:0 activationInfo:0 hosttime:a3];

  return v3;
}

+ (id)remoraVoiceTriggerEvent:(id)a3 activationInfo:(id)a4 hostTime:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CSActivationEvent alloc] initWithType:8 deviceId:v8 activationInfo:v7 hosttime:a5];

  return v9;
}

+ (id)remoraVoiceTriggerEvent:(id)a3 hostTime:(unint64_t)a4
{
  v5 = a3;
  v6 = [[CSActivationEvent alloc] initWithType:8 deviceId:v5 activationInfo:0 hosttime:a4];

  return v6;
}

+ (id)jarvisVoiceTriggerEvent:(id)a3 activationInfo:(id)a4 hostTime:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CSActivationEvent alloc] initWithType:6 deviceId:v8 activationInfo:v7 vadScore:a5 hosttime:0.0];

  return v9;
}

+ (id)builtInMicVoiceTriggerEvent:(id)a3 hostTime:(unint64_t)a4
{
  v5 = a3;
  v6 = [[CSActivationEvent alloc] initWithType:1 deviceId:0 activationInfo:v5 vadScore:a4 hosttime:0.0];

  return v6;
}

+ (id)remoteMicVADEvent:(id)a3 vadScore:(float)a4 hostTime:(unint64_t)a5
{
  v7 = a3;
  v8 = [CSActivationEvent alloc];
  *&v9 = a4;
  v10 = [(CSActivationEvent *)v8 initWithType:3 deviceId:v7 activationInfo:0 vadScore:a5 hosttime:v9];

  return v10;
}

+ (id)remoteMicVoiceTriggerEvent:(id)a3 activationInfo:(id)a4 hostTime:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CSActivationEvent alloc] initWithType:2 deviceId:v8 activationInfo:v7 vadScore:a5 hosttime:0.0];

  return v9;
}

@end