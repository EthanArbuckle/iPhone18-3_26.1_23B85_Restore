@interface BMHealthKitWorkoutEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMHealthKitWorkoutEvent)initWithIsFirstPartyDonation:(BOOL)donation isIndoor:(BOOL)indoor activityType:(id)type activityUUID:(id)d eventType:(unint64_t)eventType isUpdate:(BOOL)update;
- (BMHealthKitWorkoutEvent)initWithProto:(id)proto;
- (BMHealthKitWorkoutEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHealthKitWorkoutEvent

- (BMHealthKitWorkoutEvent)initWithIsFirstPartyDonation:(BOOL)donation isIndoor:(BOOL)indoor activityType:(id)type activityUUID:(id)d eventType:(unint64_t)eventType isUpdate:(BOOL)update
{
  typeCopy = type;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = BMHealthKitWorkoutEvent;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_isFirstPartyDonation = donation;
    v17->_isIndoor = indoor;
    objc_storeStrong(&v17->_activityType, type);
    objc_storeStrong(&v18->_activityUUID, d);
    v18->_eventType = eventType;
    v18->_isUpdate = update;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFirstPartyDonation];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isIndoor];
  activityType = self->_activityType;
  activityUUID = self->_activityUUID;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventType];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUpdate];
  v10 = [v3 initWithFormat:@"Workout event with isFirstPartyDonation: %@, isIndoor: %@, activityType: %@, activityUUID: %@, eventType: %@, isUpdate: %@", v4, v5, activityType, activityUUID, v8, v9];

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    selfCopy = BMHealthKitWorkoutEvent_v1;
  }

  else
  {
    selfCopy = self;
  }

  dataCopy = data;
  v6 = [[selfCopy alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMHealthKitWorkoutEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMHealthKitWorkoutEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      isFirstPartyDonation = [v5 isFirstPartyDonation];
      isIndoor = [v5 isIndoor];
      activityType = [v5 activityType];
      activityUUID = [v5 activityUUID];
      eventType = [v5 eventType];
      v11 = eventType;
      if (eventType >= 4)
      {
        v14 = __biome_log_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [BMHealthKitWorkoutEvent initWithProto:v11];
        }

        v12 = 4;
      }

      else
      {
        v12 = eventType;
      }

      self = [(BMHealthKitWorkoutEvent *)self initWithIsFirstPartyDonation:isFirstPartyDonation isIndoor:isIndoor activityType:activityType activityUUID:activityUUID eventType:v12 isUpdate:[v5 isUpdate]];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMHealthKitWorkoutEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMHealthKitWorkoutEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBHealthKitWorkoutEvent alloc] initWithData:dataCopy];

    self = [(BMHealthKitWorkoutEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setIsFirstPartyDonation:{-[BMHealthKitWorkoutEvent isFirstPartyDonation](self, "isFirstPartyDonation")}];
  [v3 setIsIndoor:{-[BMHealthKitWorkoutEvent isIndoor](self, "isIndoor")}];
  activityType = [(BMHealthKitWorkoutEvent *)self activityType];
  [v3 setActivityType:activityType];

  activityUUID = [(BMHealthKitWorkoutEvent *)self activityUUID];
  [v3 setActivityUUID:activityUUID];

  eventType = [(BMHealthKitWorkoutEvent *)self eventType];
  if (eventType >= 4)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BMHealthKitWorkoutEvent *)eventType proto];
    }

    v7 = 0;
  }

  else
  {
    [v3 setEventType:eventType];
    [v3 setIsUpdate:{-[BMHealthKitWorkoutEvent isUpdate](self, "isUpdate")}];
    v7 = v3;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isFirstPartyDonation = self->_isFirstPartyDonation;
    if (isFirstPartyDonation == [v5 isFirstPartyDonation] && (isIndoor = self->_isIndoor, isIndoor == objc_msgSend(v5, "isIndoor")))
    {
      activityType = self->_activityType;
      activityType = [v5 activityType];
      if ([(NSString *)activityType isEqualToString:activityType])
      {
        activityUUID = self->_activityUUID;
        activityUUID = [v5 activityUUID];
        if (-[NSString isEqualToString:](activityUUID, "isEqualToString:", activityUUID) && (eventType = self->_eventType, eventType == [v5 eventType]))
        {
          isUpdate = self->_isUpdate;
          v14 = isUpdate == [v5 isUpdate];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end