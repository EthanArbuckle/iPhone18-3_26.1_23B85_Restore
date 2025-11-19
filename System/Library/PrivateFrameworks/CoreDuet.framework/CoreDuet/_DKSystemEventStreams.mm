@interface _DKSystemEventStreams
+ (id)airplaneModeStream;
+ (id)audioOutputRoutStream;
+ (id)deviceActivityLevelStream;
+ (id)doNotDisturbStream;
+ (id)motionStream;
+ (id)nextEventForTopOffProtectionStream;
+ (id)pairedDeviceForecastStream;
+ (id)remoteDeviceInBedTimesStream;
@end

@implementation _DKSystemEventStreams

+ (id)audioOutputRoutStream
{
  v2 = objc_opt_class();

  return [v2 audioOutputRouteStream];
}

+ (id)deviceActivityLevelStream
{
  v2 = +[_DKAnyIntegerCategory type];
  v3 = [_DKEventStream eventStreamWithName:@"/activity/level" valueType:v2];

  return v3;
}

+ (id)doNotDisturbStream
{
  v2 = +[_DKBoolCategory type];
  v3 = [_DKEventStream eventStreamWithName:@"/settings/doNotDisturb" valueType:v2];

  return v3;
}

+ (id)airplaneModeStream
{
  v2 = +[_DKBoolCategory type];
  v3 = [_DKEventStream eventStreamWithName:@"/system/airplaneMode" valueType:v2];

  return v3;
}

+ (id)nextEventForTopOffProtectionStream
{
  v2 = +[_DKAnyDoubleQuantity type];
  v3 = [_DKEventStream eventStreamWithName:@"/system/userWakingEvent" valueType:v2];

  return v3;
}

+ (id)motionStream
{
  v2 = +[_DKAnyIntegerCategory type];
  v3 = [_DKEventStream eventStreamWithName:@"/inferred/motion" valueType:v2];

  return v3;
}

+ (id)pairedDeviceForecastStream
{
  v2 = +[_DKAnyStringIdentifier type];
  v3 = [_DKEventStream eventStreamWithName:@"PairedDeviceForecast" valueType:v2];

  return v3;
}

+ (id)remoteDeviceInBedTimesStream
{
  v2 = +[_DKAnyIntegerCategory type];
  v3 = [_DKEventStream eventStreamWithName:@"RemoteDeviceInBed" valueType:v2];

  return v3;
}

@end