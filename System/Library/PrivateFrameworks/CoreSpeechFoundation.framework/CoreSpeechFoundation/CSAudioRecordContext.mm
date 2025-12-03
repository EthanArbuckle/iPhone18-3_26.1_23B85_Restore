@interface CSAudioRecordContext
+ (id)contextForBTLEWithDeviceId:(id)id;
+ (id)contextForBuiltInVoiceTrigger;
+ (id)contextForContinuousConversation;
+ (id)contextForContinuousConversationWithRecordRoute:(id)route deviceId:(id)id;
+ (id)contextForDarwinVoiceTriggerWithDeviceId:(id)id;
+ (id)contextForDictation;
+ (id)contextForHearstVoiceTriggerWithDeviceId:(id)id;
+ (id)contextForHomeButton;
+ (id)contextForJarvisWithDeviceId:(id)id;
+ (id)contextForOpportuneSpeakerListener;
+ (id)contextForOpportuneSpeakerListenerWithCall;
+ (id)contextForRaiseToSpeak;
+ (id)contextForRemoraButtonTriggerWithDeviceId:(id)id;
+ (id)contextForRemoraVoiceTriggerWithDeviceId:(id)id;
+ (id)contextForServerInvoke;
+ (id)contextForVoiceTriggerTraining;
+ (id)defaultContext;
+ (id)recordTypeString:(int64_t)string;
+ (int64_t)audioTypeForContinuousConversation:(int64_t)conversation;
- (BOOL)isAudioRecordTypeSupportedByContinuousConversation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGibraltarVoiceTriggered;
- (BOOL)isTriggeredFromHearst;
- (BOOL)isVoiceTriggered;
- (CSAudioRecordContext)initWithAVVCContext:(id)context;
- (CSAudioRecordContext)initWithRecordType:(int64_t)type deviceId:(id)id;
- (CSAudioRecordContext)initWithXPCObject:(id)object;
- (OS_xpc_object)xpcObject;
- (id)_createAVVCContextWithType:(int64_t)type deviceId:(id)id;
- (id)avvcContextSettings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)avvcActivationMode:(int64_t)mode;
- (int64_t)recordTypeFromAVVCActivationMode:(int64_t)mode;
@end

@implementation CSAudioRecordContext

- (BOOL)isTriggeredFromHearst
{
  if ([(CSAudioRecordContext *)self isHearstVoiceTriggered]|| [(CSAudioRecordContext *)self isHearstDoubleTapTriggered])
  {
    return 1;
  }

  return [(CSAudioRecordContext *)self isTriggerlessAnnounce];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [CSAudioRecordContext recordTypeString:self->_type];
  [string appendFormat:@"recordType[%@] deviceId[%@] turnIdentifier[%@] alwaysUseBuiltInMic[%d] isRequestDuringActiveCall[%d] triggerEventInfo[%@] spokenNotification [%d] isTriggerless [%d] speechEvent [%ld]", v4, self->_deviceId, self->_turnIdentifier, self->_alwaysUseRemoteBuiltInMic, self->_isRequestDuringActiveCall, self->_activationMetadata, self->_isRequestFromSpokenNotification, self->_isRequestFromTriggerless, self->_speechEvent];

  return string;
}

- (id)avvcContextSettings
{
  v16 = *MEMORY[0x1E69E9840];
  avvcContext = [(CSAudioRecordContext *)self avvcContext];
  v4 = [avvcContext objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [avvcContext objectForKeyedSubscript:*MEMORY[0x1E69583A0]];
  v7 = [objc_alloc(MEMORY[0x1E6958540]) initWithMode:unsignedIntegerValue deviceUID:v6];
  if (+[CSUtils supportHandsFree])
  {
    if ([(CSAudioRecordContext *)self isRequestDuringActiveCall])
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[CSAudioRecordContext(AVVC) avvcContextSettings]";
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Setting mixable to yes as we are in an active call", &v14, 0xCu);
      }

      v9 = +[CSUtils supportRingtoneA2DP];
      if (unsignedIntegerValue == 1668314723 || v9)
      {
        v11 = unsignedIntegerValue;
      }

      else
      {
        v11 = 1987012963;
      }

      [v7 setActivationMode:v11];
    }

    [v7 setAnnounceCallsEnabled:{-[CSAudioRecordContext isRequestDuringActiveCall](self, "isRequestDuringActiveCall")}];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (OS_xpc_object)xpcObject
{
  keys[6] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  keys[1] = "alwaysUseRemoteBuiltInMic";
  keys[2] = "isRequestDuringActiveCall";
  keys[3] = "isSpokenNotification";
  keys[4] = "isRequestTriggerless";
  keys[5] = "speechEvent";
  values[0] = xpc_int64_create(self->_type);
  values[1] = xpc_BOOL_create(self->_alwaysUseRemoteBuiltInMic);
  values[2] = xpc_BOOL_create(self->_isRequestDuringActiveCall);
  values[3] = xpc_BOOL_create(self->_isRequestFromSpokenNotification);
  values[4] = xpc_BOOL_create(self->_isRequestFromTriggerless);
  values[5] = xpc_int64_create(self->_speechEvent);
  v3 = xpc_dictionary_create(keys, values, 6uLL);
  deviceId = self->_deviceId;
  if (deviceId)
  {
    xpc_dictionary_set_string(v3, "deviceId", [(NSString *)deviceId UTF8String]);
  }

  activationMetadata = self->_activationMetadata;
  if (activationMetadata)
  {
    _cs_xpcObject = [(NSDictionary *)activationMetadata _cs_xpcObject];
    xpc_dictionary_set_value(v3, "triggerEventInfo", _cs_xpcObject);
  }

  turnIdentifier = self->_turnIdentifier;
  if (turnIdentifier)
  {
    xpc_dictionary_set_string(v3, "turnIdentifier", [(NSString *)turnIdentifier UTF8String]);
  }

  for (i = 5; i != -1; --i)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)contextForBuiltInVoiceTrigger
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:6 deviceId:0];

  return v2;
}

- (BOOL)isVoiceTriggered
{
  isJarvisVoiceTriggered = [(CSAudioRecordContext *)self isBuiltInVoiceTriggered]|| [(CSAudioRecordContext *)self isHearstVoiceTriggered]|| [(CSAudioRecordContext *)self isJarvisVoiceTriggered];
  isRemoraVoiceTriggered = [(CSAudioRecordContext *)self isRemoraVoiceTriggered];
  return [(CSAudioRecordContext *)self isDarwinVoiceTriggered]|| isRemoraVoiceTriggered || isJarvisVoiceTriggered;
}

- (BOOL)isAudioRecordTypeSupportedByContinuousConversation
{
  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type <= 0x1B)
  {
    if (((1 << type) & 0xA700C72) != 0)
    {
      goto LABEL_3;
    }

    if (((1 << type) & 0x801080) == 0)
    {
      goto LABEL_4;
    }

    if (+[CSUtils isCarplayWithFlexibleFollowupEnabled])
    {
LABEL_3:
      result = 1;
    }

    else
    {
      v6 = CSLogContextFacilityCoreSpeech;
      v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v7)
      {
        v8 = 136315138;
        v9 = "[CSAudioRecordContext isAudioRecordTypeSupportedByContinuousConversation]";
        _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CarPlay support is disabled!", &v8, 0xCu);
        result = 0;
      }
    }
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isGibraltarVoiceTriggered
{
  if (!+[CSUtils hasRemoteCoreSpeech](CSUtils, "hasRemoteCoreSpeech") || !+[CSUtils hasRemoteBuiltInMic])
  {
    return 0;
  }

  return [(CSAudioRecordContext *)self isBuiltInVoiceTriggered];
}

- (int64_t)avvcActivationMode:(int64_t)mode
{
  if ((mode - 2) > 0x19)
  {
    return 1752132965;
  }

  else
  {
    return *&aPbhw[8 * mode - 16];
  }
}

- (int64_t)recordTypeFromAVVCActivationMode:(int64_t)mode
{
  v3 = 1;
  if (mode > 1886352243)
  {
    if (mode <= 1936750195)
    {
      v4 = 1919771247;
      v15 = 17;
      if (mode != 1919776372)
      {
        v15 = 1;
      }

      if (mode == 1919771248)
      {
        v7 = 18;
      }

      else
      {
        v7 = v15;
      }

      v8 = 1886352244;
      v9 = 14;
      v10 = mode == 1918986611;
      v11 = 9;
    }

    else
    {
      v4 = 1986357345;
      v12 = 2;
      if (mode != 2003329648)
      {
        v12 = 1;
      }

      if (mode == 1987012963)
      {
        v13 = 6;
      }

      else
      {
        v13 = v12;
      }

      if (mode == 1986357346)
      {
        v7 = 7;
      }

      else
      {
        v7 = v13;
      }

      v8 = 1936750196;
      v9 = 16;
      v10 = mode == 1969840752;
      v11 = 4;
    }
  }

  else if (mode <= 1668314722)
  {
    v4 = 1651795059;
    v14 = 8;
    if (mode != 1651797093)
    {
      v14 = 1;
    }

    if (mode == 1651795060)
    {
      v7 = 10;
    }

    else
    {
      v7 = v14;
    }

    v8 = 1635087471;
    v9 = 5;
    v10 = mode == 1651794544;
    v11 = 3;
  }

  else
  {
    v4 = 1684628339;
    v5 = 15;
    if (mode != 1752396914)
    {
      v5 = 1;
    }

    if (mode == 1751414371)
    {
      v6 = 11;
    }

    else
    {
      v6 = v5;
    }

    if (mode == 1684628340)
    {
      v7 = 13;
    }

    else
    {
      v7 = v6;
    }

    v8 = 1668314723;
    v9 = 12;
    v10 = mode == 1684108899;
    v11 = 21;
  }

  if (v10)
  {
    v3 = v11;
  }

  if (mode == v8)
  {
    v3 = v9;
  }

  if (mode <= v4)
  {
    return v3;
  }

  else
  {
    return v7;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  type = self->_type;
  if (type == [equalCopy type])
  {
    deviceId = self->_deviceId;
    deviceId = [equalCopy deviceId];
    v8 = deviceId;
    if (deviceId)
    {
      v9 = [(NSString *)deviceId isEqualToString:deviceId];
    }

    else
    {
      v9 = deviceId == 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_createAVVCContextWithType:(int64_t)type deviceId:(id)id
{
  idCopy = id;
  v7 = [(CSAudioRecordContext *)self avvcActivationMode:type];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  [dictionary setObject:v9 forKey:*MEMORY[0x1E69583A8]];

  if (idCopy)
  {
    [dictionary setObject:idCopy forKey:*MEMORY[0x1E69583A0]];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CSAudioRecordContext);
  [(CSAudioRecordContext *)v5 setType:self->_type];
  [(CSAudioRecordContext *)v5 setAlwaysUseRemoteBuiltInMic:self->_alwaysUseRemoteBuiltInMic];
  v6 = [(NSString *)self->_deviceId copyWithZone:zone];
  [(CSAudioRecordContext *)v5 setDeviceId:v6];

  [(CSAudioRecordContext *)v5 setIsRequestDuringActiveCall:self->_isRequestDuringActiveCall];
  v7 = [(NSDictionary *)self->_activationMetadata copyWithZone:zone];
  [(CSAudioRecordContext *)v5 setActivationMetadata:v7];

  v8 = [(NSString *)self->_turnIdentifier copyWithZone:zone];
  [(CSAudioRecordContext *)v5 setTurnIdentifier:v8];

  [(CSAudioRecordContext *)v5 setIsRequestFromSpokenNotification:self->_isRequestFromSpokenNotification];
  [(CSAudioRecordContext *)v5 setIsRequestFromTriggerless:self->_isRequestFromTriggerless];
  [(CSAudioRecordContext *)v5 setSpeechEvent:self->_speechEvent];
  return v5;
}

- (CSAudioRecordContext)initWithRecordType:(int64_t)type deviceId:(id)id
{
  idCopy = id;
  v12.receiver = self;
  v12.super_class = CSAudioRecordContext;
  v7 = [(CSAudioRecordContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [idCopy copy];
    deviceId = v8->_deviceId;
    v8->_deviceId = v9;
  }

  return v8;
}

- (CSAudioRecordContext)initWithAVVCContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CSAudioRecordContext;
  v5 = [(CSAudioRecordContext *)&v17 init];
  v6 = v5;
  if (contextCopy && v5)
  {
    v7 = *MEMORY[0x1E69583A8];
    v8 = [contextCopy objectForKeyedSubscript:*MEMORY[0x1E69583A8]];

    if (v8)
    {
      v9 = [contextCopy objectForKeyedSubscript:v7];
      integerValue = [v9 integerValue];

      v6->_type = [(CSAudioRecordContext *)v6 recordTypeFromAVVCActivationMode:integerValue];
    }

    v11 = *MEMORY[0x1E69583A0];
    v12 = [contextCopy objectForKeyedSubscript:*MEMORY[0x1E69583A0]];

    if (v12)
    {
      v13 = [contextCopy objectForKeyedSubscript:v11];
      v14 = [v13 copy];
      deviceId = v6->_deviceId;
      v6->_deviceId = v14;
    }
  }

  return v6;
}

- (CSAudioRecordContext)initWithXPCObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = CSAudioRecordContext;
  v5 = [(CSAudioRecordContext *)&v18 init];
  if (v5)
  {
    v5->_type = xpc_dictionary_get_int64(objectCopy, "type");
    v5->_alwaysUseRemoteBuiltInMic = xpc_dictionary_get_BOOL(objectCopy, "alwaysUseRemoteBuiltInMic");
    string = xpc_dictionary_get_string(objectCopy, "deviceId");
    if (string)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      deviceId = v5->_deviceId;
      v5->_deviceId = v7;
    }

    v5->_isRequestDuringActiveCall = xpc_dictionary_get_BOOL(objectCopy, "isRequestDuringActiveCall");
    v9 = xpc_dictionary_get_value(objectCopy, "triggerEventInfo");

    if (v9)
    {
      v10 = xpc_dictionary_get_dictionary(objectCopy, "triggerEventInfo");
      v11 = objc_alloc(MEMORY[0x1E695DF20]);
      v12 = [v11 _cs_initWithXPCObject:v10];
      activationMetadata = v5->_activationMetadata;
      v5->_activationMetadata = v12;
    }

    v14 = xpc_dictionary_get_string(objectCopy, "turnIdentifier");
    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
      turnIdentifier = v5->_turnIdentifier;
      v5->_turnIdentifier = v15;
    }

    v5->_isRequestFromSpokenNotification = xpc_dictionary_get_BOOL(objectCopy, "isSpokenNotification");
    v5->_isRequestFromTriggerless = xpc_dictionary_get_BOOL(objectCopy, "isRequestTriggerless");
    v5->_speechEvent = xpc_dictionary_get_int64(objectCopy, "speechEvent");
  }

  return v5;
}

+ (id)recordTypeString:(int64_t)string
{
  if (string > 0x1B)
  {
    return @"CSAudioRecordTypeUnknown";
  }

  else
  {
    return off_1E865AA68[string];
  }
}

+ (id)defaultContext
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[CSAudioRecordContext contextForServerInvoke];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[CSAudioRecordContext defaultContext]";
    v8 = 2114;
    v9 = v2;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s default to recordContext : %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)contextForDictation
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:13 deviceId:0];

  return v2;
}

+ (id)contextForDarwinVoiceTriggerWithDeviceId:(id)id
{
  idCopy = id;
  v4 = [[CSAudioRecordContext alloc] initWithRecordType:21 deviceId:idCopy];

  return v4;
}

+ (int64_t)audioTypeForContinuousConversation:(int64_t)conversation
{
  v3 = 27;
  v4 = 20;
  if (conversation == 12)
  {
    v4 = 23;
  }

  if (conversation != 21)
  {
    v3 = v4;
  }

  if ((conversation - 10) >= 2)
  {
    return v3;
  }

  else
  {
    return 22;
  }
}

+ (id)contextForContinuousConversationWithRecordRoute:(id)route deviceId:(id)id
{
  routeCopy = route;
  idCopy = id;
  if ([CSUtils isDoAPAudioRouteWithRecordRoute:routeCopy])
  {
    v7 = [CSAudioRecordContext alloc];
    v8 = 22;
LABEL_7:
    v10 = idCopy;
    goto LABEL_8;
  }

  if ([CSUtils isJarvisAudioRouteWithRecordRoute:routeCopy])
  {
    v7 = [CSAudioRecordContext alloc];
    v8 = 23;
    goto LABEL_7;
  }

  v9 = [CSUtils isDisplayPortRouteWithRecordRoute:routeCopy];
  v7 = [CSAudioRecordContext alloc];
  if (v9)
  {
    v8 = 27;
    goto LABEL_7;
  }

  v8 = 20;
  v10 = 0;
LABEL_8:
  v11 = [(CSAudioRecordContext *)v7 initWithRecordType:v8 deviceId:v10];

  return v11;
}

+ (id)contextForContinuousConversation
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:20 deviceId:0];

  return v2;
}

+ (id)contextForRaiseToSpeak
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:9 deviceId:0];

  return v2;
}

+ (id)contextForHomeButton
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:1 deviceId:0];

  return v2;
}

+ (id)contextForServerInvoke
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:5 deviceId:0];

  return v2;
}

+ (id)contextForVoiceTriggerTraining
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:15 deviceId:0];

  return v2;
}

+ (id)contextForBTLEWithDeviceId:(id)id
{
  idCopy = id;
  v4 = [[CSAudioRecordContext alloc] initWithRecordType:8 deviceId:idCopy];

  return v4;
}

+ (id)contextForJarvisWithDeviceId:(id)id
{
  idCopy = id;
  v4 = [[CSAudioRecordContext alloc] initWithRecordType:12 deviceId:idCopy];

  return v4;
}

+ (id)contextForOpportuneSpeakerListenerWithCall
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:19 deviceId:0];
  [(CSAudioRecordContext *)v2 setIsRequestDuringActiveCall:1];

  return v2;
}

+ (id)contextForOpportuneSpeakerListener
{
  v2 = [[CSAudioRecordContext alloc] initWithRecordType:16 deviceId:0];

  return v2;
}

+ (id)contextForRemoraButtonTriggerWithDeviceId:(id)id
{
  if (id)
  {
    idCopy = id;
    v4 = [[CSAudioRecordContext alloc] initWithRecordType:18 deviceId:idCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)contextForRemoraVoiceTriggerWithDeviceId:(id)id
{
  if (id)
  {
    idCopy = id;
    v4 = [[CSAudioRecordContext alloc] initWithRecordType:17 deviceId:idCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)contextForHearstVoiceTriggerWithDeviceId:(id)id
{
  if (id)
  {
    idCopy = id;
    v4 = [[CSAudioRecordContext alloc] initWithRecordType:11 deviceId:idCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end