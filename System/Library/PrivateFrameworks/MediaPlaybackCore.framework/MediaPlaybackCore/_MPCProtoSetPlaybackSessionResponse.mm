@interface _MPCProtoSetPlaybackSessionResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (double)scheduledRateChangeTimestamp;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)hasScheduledRateChangeTimestamp;
- (uint64_t)setScheduledRateChangeTimestamp:(uint64_t)result;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_scheduledRateChangeTimestamp == *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = *&self->_scheduledRateChangeTimestamp;
    *(result + 16) |= 1u;
  }

  return result;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v21 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        *&self->_has |= 1u;
        v20 = 0.0;
        v14 = [a3 position] + 8;
        if (v14 >= [a3 position] && (v15 = objc_msgSend(a3, "position") + 8, v15 <= objc_msgSend(a3, "length")))
        {
          v17 = [a3 data];
          [v17 getBytes:&v20 range:{objc_msgSend(a3, "position"), 8}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 8}];
        }

        else
        {
          [a3 _setError];
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

      v18 = [a3 position];
    }

    while (v18 < [a3 length]);
  }

  LOBYTE(v16) = [a3 hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_scheduledRateChangeTimestamp];
    [v3 setObject:v4 forKey:@"scheduledRateChangeTimestamp"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoSetPlaybackSessionResponse;
  v4 = [(_MPCProtoSetPlaybackSessionResponse *)&v8 description];
  v5 = [(_MPCProtoSetPlaybackSessionResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

@end