@interface BMSleepModeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSleepModeEvent)initWithProto:(id)a3;
- (BMSleepModeEvent)initWithProtoData:(id)a3;
- (BMSleepModeEvent)initWithSleepModeState:(unint64_t)a3 sleepModeChangeReason:(unint64_t)a4 expectedEndDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMSleepModeEvent

- (BMSleepModeEvent)initWithSleepModeState:(unint64_t)a3 sleepModeChangeReason:(unint64_t)a4 expectedEndDate:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BMSleepModeEvent;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_sleepModeState = a3;
    v10->_sleepModeChangeReason = a4;
    objc_storeStrong(&v10->_expectedEndDate, a5);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 3)
  {
    v4 = BMSleepModeEvent_v3;
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
  v2 = [(BMSleepModeEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSleepModeEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 sleepModeState];
      v7 = v6;
      if (v6 >= 3)
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
        v8 = v6;
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

      v9 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSleepModeEvent initWithProto:];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BMSleepModeEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSleepModeEvent alloc] initWithData:v4];

    self = [(BMSleepModeEvent *)self initWithProto:v5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v10 = [v5 expectedEndDate];
      v11 = [(NSDate *)v9 isEqualToDate:v10];

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