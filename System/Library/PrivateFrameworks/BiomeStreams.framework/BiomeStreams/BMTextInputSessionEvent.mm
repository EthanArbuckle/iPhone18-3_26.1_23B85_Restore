@interface BMTextInputSessionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMTextInputSessionEvent)initWithDateInterval:(id)interval bundleID:(id)d sessionID:(id)iD sessionType:(unint64_t)type;
- (BMTextInputSessionEvent)initWithDateInterval:(id)interval bundleID:(id)d sessionType:(unint64_t)type;
- (BMTextInputSessionEvent)initWithProto:(id)proto;
- (BMTextInputSessionEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMTextInputSessionEvent

- (BMTextInputSessionEvent)initWithDateInterval:(id)interval bundleID:(id)d sessionType:(unint64_t)type
{
  intervalCopy = interval;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = BMTextInputSessionEvent;
  v11 = [(BMEventBase *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, interval);
    startDate = [intervalCopy startDate];
    startDate = v12->_startDate;
    v12->_startDate = startDate;

    [intervalCopy duration];
    v12->_duration = v15;
    objc_storeStrong(&v12->_bundleID, d);
    sessionID = v12->_sessionID;
    v12->_sessionID = 0;

    v12->_sessionType = type;
  }

  return v12;
}

- (BMTextInputSessionEvent)initWithDateInterval:(id)interval bundleID:(id)d sessionID:(id)iD sessionType:(unint64_t)type
{
  intervalCopy = interval;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = BMTextInputSessionEvent;
  v14 = [(BMEventBase *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dateInterval, interval);
    startDate = [intervalCopy startDate];
    startDate = v15->_startDate;
    v15->_startDate = startDate;

    [intervalCopy duration];
    v15->_duration = v18;
    objc_storeStrong(&v15->_bundleID, d);
    objc_storeStrong(&v15->_sessionID, iD);
    v15->_sessionType = type;
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    selfCopy = BMTextInputSessionEvent_v1;
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
  proto = [(BMTextInputSessionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMTextInputSessionEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v6 = objc_alloc(MEMORY[0x1E696AB80]);
      v7 = MEMORY[0x1E695DF00];
      [v5 timestamp];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      [v5 duration];
      v9 = [v6 initWithStartDate:v8 duration:?];
      bundleID = [v5 bundleID];
      sessionID = [v5 sessionID];
      sessionType = [v5 sessionType];
      v13 = sessionType;
      if (sessionType >= 4)
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
        v14 = sessionType;
      }

      self = [(BMTextInputSessionEvent *)self initWithDateInterval:v9 bundleID:bundleID sessionID:sessionID sessionType:v14];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMTextInputSessionEvent initWithProto:];
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

- (BMTextInputSessionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBTextInputSessionEvent alloc] initWithData:dataCopy];

    self = [(BMTextInputSessionEvent *)self initWithProto:v5];
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
  [(BMTextInputSessionEvent *)self duration];
  [v3 setDuration:?];
  bundleID = [(BMTextInputSessionEvent *)self bundleID];
  [v3 setBundleID:bundleID];

  sessionID = [(BMTextInputSessionEvent *)self sessionID];
  [v3 setSessionID:sessionID];

  startDate = [(BMTextInputSessionEvent *)self startDate];
  MEMORY[0x1865F69C0]();
  [v3 setTimestamp:?];

  sessionType = [(BMTextInputSessionEvent *)self sessionType];
  if (sessionType >= 4)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BMTextInputSessionEvent *)sessionType proto];
    }

    v8 = 0;
  }

  else
  {
    [v3 setSessionType:sessionType];
    v8 = v3;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dateInterval = self->_dateInterval;
    dateInterval = [v5 dateInterval];
    if ([(NSDateInterval *)dateInterval isEqualToDateInterval:dateInterval])
    {
      bundleID = self->_bundleID;
      bundleID = [v5 bundleID];
      if ([(NSString *)bundleID isEqualToString:bundleID])
      {
        sessionID = self->_sessionID;
        sessionID = [v5 sessionID];
        if ([(NSString *)sessionID isEqualToString:sessionID])
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