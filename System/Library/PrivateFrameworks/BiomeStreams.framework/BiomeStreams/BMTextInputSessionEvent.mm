@interface BMTextInputSessionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMTextInputSessionEvent)initWithDateInterval:(id)a3 bundleID:(id)a4 sessionID:(id)a5 sessionType:(unint64_t)a6;
- (BMTextInputSessionEvent)initWithDateInterval:(id)a3 bundleID:(id)a4 sessionType:(unint64_t)a5;
- (BMTextInputSessionEvent)initWithProto:(id)a3;
- (BMTextInputSessionEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMTextInputSessionEvent

- (BMTextInputSessionEvent)initWithDateInterval:(id)a3 bundleID:(id)a4 sessionType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = BMTextInputSessionEvent;
  v11 = [(BMEventBase *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, a3);
    v13 = [v9 startDate];
    startDate = v12->_startDate;
    v12->_startDate = v13;

    [v9 duration];
    v12->_duration = v15;
    objc_storeStrong(&v12->_bundleID, a4);
    sessionID = v12->_sessionID;
    v12->_sessionID = 0;

    v12->_sessionType = a5;
  }

  return v12;
}

- (BMTextInputSessionEvent)initWithDateInterval:(id)a3 bundleID:(id)a4 sessionID:(id)a5 sessionType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = BMTextInputSessionEvent;
  v14 = [(BMEventBase *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dateInterval, a3);
    v16 = [v11 startDate];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    [v11 duration];
    v15->_duration = v18;
    objc_storeStrong(&v15->_bundleID, a4);
    objc_storeStrong(&v15->_sessionID, a5);
    v15->_sessionType = a6;
  }

  return v15;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  dateInterval = self->_dateInterval;
  bundleID = self->_bundleID;
  sessionID = self->_sessionID;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sessionType];
  v8 = [v3 initWithFormat:@"TextInputSessionEvent event with dateInterval: %@, bundleID: %@, sessionID: %@, sessionType: %@", dateInterval, bundleID, sessionID, v7];

  return v8;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = BMTextInputSessionEvent_v1;
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
  v2 = [(BMTextInputSessionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMTextInputSessionEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E696AB80]);
      v7 = MEMORY[0x1E695DF00];
      [v5 timestamp];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      [v5 duration];
      v9 = [v6 initWithStartDate:v8 duration:?];
      v10 = [v5 bundleID];
      v11 = [v5 sessionID];
      v12 = [v5 sessionType];
      v13 = v12;
      if (v12 >= 4)
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [BMTextInputSessionEvent initWithProto:v13];
        }

        v14 = 4;
      }

      else
      {
        v14 = v12;
      }

      self = [(BMTextInputSessionEvent *)self initWithDateInterval:v9 bundleID:v10 sessionID:v11 sessionType:v14];

      v15 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMTextInputSessionEvent initWithProto:];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BMTextInputSessionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBTextInputSessionEvent alloc] initWithData:v4];

    self = [(BMTextInputSessionEvent *)self initWithProto:v5];
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
  [(BMTextInputSessionEvent *)self duration];
  [v3 setDuration:?];
  v4 = [(BMTextInputSessionEvent *)self bundleID];
  [v3 setBundleID:v4];

  v5 = [(BMTextInputSessionEvent *)self sessionID];
  [v3 setSessionID:v5];

  v6 = [(BMTextInputSessionEvent *)self startDate];
  MEMORY[0x1865F69C0]();
  [v3 setTimestamp:?];

  v7 = [(BMTextInputSessionEvent *)self sessionType];
  if (v7 >= 4)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BMTextInputSessionEvent *)v7 proto];
    }

    v8 = 0;
  }

  else
  {
    [v3 setSessionType:v7];
    v8 = v3;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    dateInterval = self->_dateInterval;
    v7 = [v5 dateInterval];
    if ([(NSDateInterval *)dateInterval isEqualToDateInterval:v7])
    {
      bundleID = self->_bundleID;
      v9 = [v5 bundleID];
      if ([(NSString *)bundleID isEqualToString:v9])
      {
        sessionID = self->_sessionID;
        v11 = [v5 sessionID];
        if ([(NSString *)sessionID isEqualToString:v11])
        {
          sessionType = self->_sessionType;
          v13 = sessionType == [v5 sessionType];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end