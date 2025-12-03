@interface _MPCProtoSetPlaybackSessionResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (double)scheduledRateChangeTimestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)hasScheduledRateChangeTimestamp;
- (uint64_t)setScheduledRateChangeTimestamp:(uint64_t)result;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoSetPlaybackSessionResponse

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  scheduledRateChangeTimestamp = self->_scheduledRateChangeTimestamp;
  if (scheduledRateChangeTimestamp < 0.0)
  {
    scheduledRateChangeTimestamp = -scheduledRateChangeTimestamp;
  }

  *v2.i64 = floor(scheduledRateChangeTimestamp + 0.5);
  v6 = (scheduledRateChangeTimestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabs(v6);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_scheduledRateChangeTimestamp == *(equalCopy + 1))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = *&self->_scheduledRateChangeTimestamp;
    *(result + 16) |= 1u;
  }

  return result;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v21 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        *&self->_has |= 1u;
        v20 = 0.0;
        v14 = [from position] + 8;
        if (v14 >= [from position] && (v15 = objc_msgSend(from, "position") + 8, v15 <= objc_msgSend(from, "length")))
        {
          data2 = [from data];
          [data2 getBytes:&v20 range:{objc_msgSend(from, "position"), 8}];

          [from setPosition:{objc_msgSend(from, "position") + 8}];
        }

        else
        {
          [from _setError];
        }

        self->_scheduledRateChangeTimestamp = v20;
      }

      else
      {
        v16 = PBReaderSkipValueWithTag();
        if (!v16)
        {
          return v16;
        }
      }

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v16) = [from hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_scheduledRateChangeTimestamp];
    [dictionary setObject:v4 forKey:@"scheduledRateChangeTimestamp"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoSetPlaybackSessionResponse;
  v4 = [(_MPCProtoSetPlaybackSessionResponse *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoSetPlaybackSessionResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (uint64_t)setScheduledRateChangeTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 16) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)hasScheduledRateChangeTimestamp
{
  if (result)
  {
    return *(result + 16) & 1;
  }

  return result;
}

- (double)scheduledRateChangeTimestamp
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

@end