@interface BMPostSiriEngagementEventSignalDeltaEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPostSiriEngagementEventSignalDeltaEvent)initWithDuration:(double)a3 sinceUIEnd:(double)a4 sinceUIStart:(double)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPostSiriEngagementEventSignalDeltaEvent

- (BMPostSiriEngagementEventSignalDeltaEvent)initWithDuration:(double)a3 sinceUIEnd:(double)a4 sinceUIStart:(double)a5
{
  v9.receiver = self;
  v9.super_class = BMPostSiriEngagementEventSignalDeltaEvent;
  result = [(BMEventBase *)&v9 init];
  if (result)
  {
    result->_hasDuration = 1;
    result->_duration = a3;
    result->_hasSinceUIEnd = 1;
    result->_sinceUIEnd = a4;
    result->_hasSinceUIStart = 1;
    result->_sinceUIStart = a5;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMPostSiriEngagementEventSignalDeltaEvent *)self duration];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMPostSiriEngagementEventSignalDeltaEvent *)self sinceUIEnd];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMPostSiriEngagementEventSignalDeltaEvent *)self sinceUIStart];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 initWithFormat:@"BMPostSiriEngagementEventSignalDeltaEvent with duration: %@, sinceUIEnd: %@, sinceUIStart: %@", v5, v7, v9];

  return v10;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = BMPostSiriEngagementEventSignalDeltaEvent;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v31 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v31 & 0x7F) << v7;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v5->_hasSinceUIStart = 1;
        v31 = 0;
        v20 = [v4 position] + 8;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
        {
          v25 = [v4 data];
          [v25 getBytes:&v31 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMPostSiriEngagementEventSignalDeltaEvent__sinceUIStart;
      }

      else if (v15 == 2)
      {
        v5->_hasSinceUIEnd = 1;
        v31 = 0;
        v18 = [v4 position] + 8;
        if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:&v31 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMPostSiriEngagementEventSignalDeltaEvent__sinceUIEnd;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        v5->_hasDuration = 1;
        v31 = 0;
        v16 = [v4 position] + 8;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
        {
          v26 = [v4 data];
          [v26 getBytes:&v31 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMPostSiriEngagementEventSignalDeltaEvent__duration;
      }

      *(&v5->super.super.isa + *v24) = v23;
LABEL_39:
      v27 = [v4 position];
    }

    while (v27 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_41:
    v28 = 0;
  }

  else
  {
LABEL_42:
    v28 = v5;
  }

  return v28;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasDuration)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasSinceUIEnd)
  {
    sinceUIEnd = self->_sinceUIEnd;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasSinceUIStart)
  {
    sinceUIStart = self->_sinceUIStart;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v4 = [[BMPostSiriEngagementEventSignalDeltaEvent alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPostSiriEngagementEventSignalDeltaEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMPostSiriEngagementEventSignalDeltaEvent hasDuration](self, "hasDuration") || [v5 hasDuration])
    {
      if (-[BMPostSiriEngagementEventSignalDeltaEvent hasDuration](self, "hasDuration") && [v5 hasDuration])
      {
        [(BMPostSiriEngagementEventSignalDeltaEvent *)self duration];
        v7 = v6;
        [v5 duration];
        v9 = v7 == v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }

    if (-[BMPostSiriEngagementEventSignalDeltaEvent hasSinceUIEnd](self, "hasSinceUIEnd") || [v5 hasSinceUIEnd])
    {
      if (-[BMPostSiriEngagementEventSignalDeltaEvent hasSinceUIEnd](self, "hasSinceUIEnd") && [v5 hasSinceUIEnd])
      {
        [(BMPostSiriEngagementEventSignalDeltaEvent *)self sinceUIEnd];
        v12 = v11;
        [v5 sinceUIEnd];
        v14 = v12 == v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    if (-[BMPostSiriEngagementEventSignalDeltaEvent hasSinceUIStart](self, "hasSinceUIStart") || [v5 hasSinceUIStart])
    {
      if (-[BMPostSiriEngagementEventSignalDeltaEvent hasSinceUIStart](self, "hasSinceUIStart") && [v5 hasSinceUIStart])
      {
        [(BMPostSiriEngagementEventSignalDeltaEvent *)self sinceUIStart];
        v16 = v15;
        [v5 sinceUIStart];
        v18 = v16 == v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    v10 = v9 && v14 && v18;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end