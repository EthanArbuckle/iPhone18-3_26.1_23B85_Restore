@interface BMHealthKitWorkoutEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMHealthKitWorkoutEvent)initWithIsFirstPartyDonation:(BOOL)a3 isIndoor:(BOOL)a4 activityType:(id)a5 activityUUID:(id)a6 eventType:(unint64_t)a7 isUpdate:(BOOL)a8;
- (BMHealthKitWorkoutEvent)initWithProto:(id)a3;
- (BMHealthKitWorkoutEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHealthKitWorkoutEvent

- (BMHealthKitWorkoutEvent)initWithIsFirstPartyDonation:(BOOL)a3 isIndoor:(BOOL)a4 activityType:(id)a5 activityUUID:(id)a6 eventType:(unint64_t)a7 isUpdate:(BOOL)a8
{
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = BMHealthKitWorkoutEvent;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_isFirstPartyDonation = a3;
    v17->_isIndoor = a4;
    objc_storeStrong(&v17->_activityType, a5);
    objc_storeStrong(&v18->_activityUUID, a6);
    v18->_eventType = a7;
    v18->_isUpdate = a8;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = BMHealthKitWorkoutEvent_v1;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMHealthKitWorkoutEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMHealthKitWorkoutEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 isFirstPartyDonation];
      v7 = [v5 isIndoor];
      v8 = [v5 activityType];
      v9 = [v5 activityUUID];
      v10 = [v5 eventType];
      v11 = v10;
      if (v10 >= 4)
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
        v12 = v10;
      }

      self = [(BMHealthKitWorkoutEvent *)self initWithIsFirstPartyDonation:v6 isIndoor:v7 activityType:v8 activityUUID:v9 eventType:v12 isUpdate:[v5 isUpdate]];

      v13 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMHealthKitWorkoutEvent initWithProto:];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BMHealthKitWorkoutEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBHealthKitWorkoutEvent alloc] initWithData:v4];

    self = [(BMHealthKitWorkoutEvent *)self initWithProto:v5];
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
  [v3 setIsFirstPartyDonation:{-[BMHealthKitWorkoutEvent isFirstPartyDonation](self, "isFirstPartyDonation")}];
  [v3 setIsIndoor:{-[BMHealthKitWorkoutEvent isIndoor](self, "isIndoor")}];
  v4 = [(BMHealthKitWorkoutEvent *)self activityType];
  [v3 setActivityType:v4];

  v5 = [(BMHealthKitWorkoutEvent *)self activityUUID];
  [v3 setActivityUUID:v5];

  v6 = [(BMHealthKitWorkoutEvent *)self eventType];
  if (v6 >= 4)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BMHealthKitWorkoutEvent *)v6 proto];
    }

    v7 = 0;
  }

  else
  {
    [v3 setEventType:v6];
    [v3 setIsUpdate:{-[BMHealthKitWorkoutEvent isUpdate](self, "isUpdate")}];
    v7 = v3;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    isFirstPartyDonation = self->_isFirstPartyDonation;
    if (isFirstPartyDonation == [v5 isFirstPartyDonation] && (isIndoor = self->_isIndoor, isIndoor == objc_msgSend(v5, "isIndoor")))
    {
      activityType = self->_activityType;
      v9 = [v5 activityType];
      if ([(NSString *)activityType isEqualToString:v9])
      {
        activityUUID = self->_activityUUID;
        v11 = [v5 activityUUID];
        if (-[NSString isEqualToString:](activityUUID, "isEqualToString:", v11) && (eventType = self->_eventType, eventType == [v5 eventType]))
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