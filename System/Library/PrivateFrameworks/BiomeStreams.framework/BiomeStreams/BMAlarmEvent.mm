@interface BMAlarmEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMAlarmEvent)initWithEventType:(unint64_t)a3 lastEventType:(unint64_t)a4 alarmID:(id)a5 isSleepAlarm:(BOOL)a6;
- (BMAlarmEvent)initWithProto:(id)a3;
- (BMAlarmEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMAlarmEvent

- (BMAlarmEvent)initWithEventType:(unint64_t)a3 lastEventType:(unint64_t)a4 alarmID:(id)a5 isSleepAlarm:(BOOL)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMAlarmEvent;
  v12 = [(BMEventBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_eventType = a3;
    v12->_lastEventType = a4;
    objc_storeStrong(&v12->_alarmID, a5);
    v13->_isSleepAlarm = a6;
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventType = self->_eventType;
  isSleepAlarm = self->_isSleepAlarm;
  alarmID = self->_alarmID;
  v7 = BMPBLastAlarmEventTypeFromType(self->_lastEventType, 0);
  if (v7 >= 0xB)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_1E6E54548[v7];
  }

  v9 = [v3 initWithFormat:@"Alarm event with type: %ld is sleep alarm: %d alarm ID: %@ last event: %@", eventType, isSleepAlarm, alarmID, v8];

  return v9;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = BMAlarmEvent_v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDict
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"alarmID";
  v3 = [(NSUUID *)self->_alarmID UUIDString];
  v11[0] = v3;
  v10[1] = @"isSleepAlarm";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSleepAlarm];
  v11[1] = v4;
  v10[2] = @"eventType";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventType];
  v11[2] = v5;
  v10[3] = @"lastEventType";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lastEventType];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMAlarmEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDeviceMetadataEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  v2 = [(BMAlarmEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMAlarmEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 eventType];
      if (v6 >= 6)
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BMAlarmEvent initWithProto:];
        }

        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v10 = [v5 lastEventType];
      if (v10 >= 0xB)
      {
        v12 = __biome_log_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [BMAlarmEvent initWithProto:];
        }

        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v13 = objc_alloc(MEMORY[0x1E696AFB0]);
      v14 = [v5 alarmID];
      v15 = [v13 initWithUUIDString:v14];
      self = [(BMAlarmEvent *)self initWithEventType:v7 lastEventType:v11 alarmID:v15 isSleepAlarm:[v5 isSleepAlarm]];

      v8 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMAlarmEvent initWithProto:];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BMAlarmEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBAlarmEvent alloc] initWithData:v4];

    self = [(BMAlarmEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setIsSleepAlarm:self->_isSleepAlarm];
  v9 = 0;
  eventType = self->_eventType;
  if (eventType >= 6)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BMAlarmEvent *)eventType proto];
    }

    v9 = 1;
    eventType = 0xFFFFFFFFLL;
  }

  [v3 setEventType:eventType];
  [v3 setLastEventType:{BMPBLastAlarmEventTypeFromType(self->_lastEventType, &v9)}];
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(NSUUID *)self->_alarmID UUIDString];
    [v3 setAlarmID:v7];

    v6 = v3;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = v6;
  alarmID = self->_alarmID;
  v9 = alarmID;
  if (alarmID)
  {
LABEL_5:
    v10 = [v7 alarmID];
    v11 = [(NSUUID *)v9 isEqual:v10];

    if (alarmID)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = [v6 alarmID];
  if (v3)
  {
    v9 = self->_alarmID;
    goto LABEL_5;
  }

  v11 = 1;
LABEL_9:

LABEL_10:
  eventType = self->_eventType;
  if (eventType == [v7 eventType] && (lastEventType = self->_lastEventType, lastEventType == objc_msgSend(v7, "lastEventType")))
  {
    isSleepAlarm = self->_isSleepAlarm;
    v12 = (isSleepAlarm == [v7 isSleepAlarm]) & v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  return v12;
}

@end