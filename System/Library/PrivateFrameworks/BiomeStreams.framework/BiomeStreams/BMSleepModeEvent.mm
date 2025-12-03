@interface BMSleepModeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSleepModeEvent)initWithProto:(id)proto;
- (BMSleepModeEvent)initWithProtoData:(id)data;
- (BMSleepModeEvent)initWithSleepModeState:(unint64_t)state sleepModeChangeReason:(unint64_t)reason expectedEndDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMSleepModeEvent

- (BMSleepModeEvent)initWithSleepModeState:(unint64_t)state sleepModeChangeReason:(unint64_t)reason expectedEndDate:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = BMSleepModeEvent;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_sleepModeState = state;
    v10->_sleepModeChangeReason = reason;
    objc_storeStrong(&v10->_expectedEndDate, date);
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sleepModeState];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sleepModeChangeReason];
  v6 = [v3 initWithFormat:@"Sleep event with state: %@ stateChangeReason: %@ expectedEndDate: %@", v4, v5, self->_expectedEndDate];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 3)
  {
    selfCopy = BMSleepModeEvent_v3;
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
  proto = [(BMSleepModeEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSleepModeEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      sleepModeState = [v5 sleepModeState];
      v7 = sleepModeState;
      if (sleepModeState >= 3)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMSleepModeEvent initWithProto:v7];
        }

        v8 = 3;
      }

      else
      {
        v8 = sleepModeState;
      }

      v11 = BMSleepModeChangeReasonFromReason([v5 sleepModeChangeReason]);
      if (([v5 hasExpectedEndDate]& 1) != 0)
      {
        v12 = MEMORY[0x1E695DF00];
        [v5 expectedEndDate];
        v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
        self = [(BMSleepModeEvent *)self initWithSleepModeState:v8 sleepModeChangeReason:v11 expectedEndDate:v13];
      }

      else
      {
        self = [(BMSleepModeEvent *)self initWithSleepModeState:v8 sleepModeChangeReason:v11 expectedEndDate:0];
      }

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSleepModeEvent initWithProto:];
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

- (BMSleepModeEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSleepModeEvent alloc] initWithData:dataCopy];

    self = [(BMSleepModeEvent *)self initWithProto:v5];
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
  sleepModeState = self->_sleepModeState;
  if (sleepModeState)
  {
    if (sleepModeState == 2)
    {
      v5 = 0;
      v6 = 2;
    }

    else if (sleepModeState == 1)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(BMSleepModeEvent *)sleepModeState proto];
      }

      v6 = 0xFFFFFFFFLL;
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sleepModeChangeReason = self->_sleepModeChangeReason;
  if (sleepModeChangeReason >= 0xA)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMSleepModeEvent *)sleepModeChangeReason proto];
    }

    goto LABEL_18;
  }

  if (v5)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v9 = dword_184D27BC0[sleepModeChangeReason];
  [v3 setSleepModeState:v6];
  [v3 setSleepModeChangeReason:v9];
  expectedEndDate = self->_expectedEndDate;
  if (expectedEndDate)
  {
    [(NSDate *)expectedEndDate timeIntervalSinceReferenceDate];
    [v3 setExpectedEndDate:?];
  }

  v11 = v3;
LABEL_19:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sleepModeState = self->_sleepModeState;
    if (sleepModeState == [v5 sleepModeState] && (sleepModeChangeReason = self->_sleepModeChangeReason, sleepModeChangeReason == objc_msgSend(v5, "sleepModeChangeReason")))
    {
      expectedEndDate = self->_expectedEndDate;
      v9 = expectedEndDate;
      if (!expectedEndDate)
      {
        sleepModeChangeReason = [v5 expectedEndDate];
        if (!sleepModeChangeReason)
        {
          v11 = 1;
LABEL_14:

          goto LABEL_11;
        }

        v9 = self->_expectedEndDate;
      }

      expectedEndDate = [v5 expectedEndDate];
      v11 = [(NSDate *)v9 isEqualToDate:expectedEndDate];

      if (!expectedEndDate)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

@end