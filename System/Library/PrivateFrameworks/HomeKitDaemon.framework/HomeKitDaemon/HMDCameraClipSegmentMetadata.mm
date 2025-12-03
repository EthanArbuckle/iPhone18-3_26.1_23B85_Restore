@interface HMDCameraClipSegmentMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasByteOffset:(BOOL)offset;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasTimeOffset:(BOOL)offset;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HMDCameraClipSegmentMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_byteOffset = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_byteLength = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_timeOffset = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_duration = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 44) & 0x10) != 0)
  {
LABEL_6:
    self->_type = *(fromCopy + 10);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v4 = 2654435761u * self->_byteOffset;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761u * self->_byteLength;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timeOffset = self->_timeOffset;
  if (timeOffset < 0.0)
  {
    timeOffset = -timeOffset;
  }

  *v2.i64 = floor(timeOffset + 0.5);
  v7 = (timeOffset - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_11:
  if ((*&self->_has & 4) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v2.i64 = floor(duration + 0.5);
    v12 = (duration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v14 = 2654435761 * self->_type;
  }

  else
  {
    v14 = 0;
  }

  return v5 ^ v4 ^ v9 ^ v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_byteOffset != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_byteLength != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0 || self->_timeOffset != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_duration != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 44) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 44) & 0x10) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_byteOffset;
    *(result + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_byteLength;
  *(result + 44) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 4) = *&self->_timeOffset;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 3) = *&self->_duration;
  *(result + 44) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 10) = self->_type;
  *(result + 44) |= 0x10u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_byteOffset;
    *(toCopy + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[1] = self->_byteLength;
  *(toCopy + 44) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[4] = *&self->_timeOffset;
  *(toCopy + 44) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  toCopy[3] = *&self->_duration;
  *(toCopy + 44) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(toCopy + 10) = self->_type;
    *(toCopy + 44) |= 0x10u;
  }

LABEL_7:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    byteOffset = self->_byteOffset;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  byteLength = self->_byteLength;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  timeOffset = self->_timeOffset;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  duration = self->_duration;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
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
        LOBYTE(v47) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v47 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v47 & 0x7F) << v6;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v36 = [from position] + 1;
            if (v36 >= [from position] && (v37 = objc_msgSend(from, "position") + 1, v37 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v47 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v35 |= (v47 & 0x7F) << v33;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v12 = v34++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_61;
            }
          }

          if ([from hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v35;
          }

LABEL_61:
          v40 = 16;
        }

        else
        {
          if (v14 != 2)
          {
LABEL_56:
            v39 = PBReaderSkipValueWithTag();
            if (!v39)
            {
              return v39;
            }

            goto LABEL_76;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v25 = [from position] + 1;
            if (v25 >= [from position] && (v26 = objc_msgSend(from, "position") + 1, v26 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:&v47 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v24 |= (v47 & 0x7F) << v22;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_69;
            }
          }

          if ([from hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_69:
          v40 = 8;
        }

        *(&self->super.super.isa + v40) = v28;
      }

      else
      {
        if (v14 == 3)
        {
          *&self->_has |= 8u;
          v47 = 0;
          v29 = [from position] + 8;
          if (v29 >= [from position] && (v30 = objc_msgSend(from, "position") + 8, v30 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:&v47 range:{objc_msgSend(from, "position"), 8}];

            [from setPosition:{objc_msgSend(from, "position") + 8}];
          }

          else
          {
            [from _setError];
          }

          v42 = v47;
          v43 = 32;
          goto LABEL_75;
        }

        if (v14 == 4)
        {
          *&self->_has |= 4u;
          v47 = 0;
          v31 = [from position] + 8;
          if (v31 >= [from position] && (v32 = objc_msgSend(from, "position") + 8, v32 <= objc_msgSend(from, "length")))
          {
            data5 = [from data];
            [data5 getBytes:&v47 range:{objc_msgSend(from, "position"), 8}];

            [from setPosition:{objc_msgSend(from, "position") + 8}];
          }

          else
          {
            [from _setError];
          }

          v42 = v47;
          v43 = 24;
LABEL_75:
          *(&self->super.super.isa + v43) = v42;
          goto LABEL_76;
        }

        if (v14 != 5)
        {
          goto LABEL_56;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 0x10u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data6 = [from data];
            [data6 getBytes:&v47 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v47 & 0x7F) << v15;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_65;
          }
        }

        if ([from hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_65:
        self->_type = v21;
      }

LABEL_76:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v39) = [from hasError] ^ 1;
  return v39;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_byteOffset];
    [dictionary setObject:v5 forKey:@"byteOffset"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_byteLength];
  [dictionary setObject:v6 forKey:@"byteLength"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [dictionary setObject:v8 forKey:@"duration"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    type = self->_type;
    if (type >= 3)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v10 = off_278681838[type];
    }

    [dictionary setObject:v10 forKey:@"type"];

    goto LABEL_15;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOffset];
  [dictionary setObject:v7 forKey:@"timeOffset"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_15:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCameraClipSegmentMetadata;
  v4 = [(HMDCameraClipSegmentMetadata *)&v8 description];
  dictionaryRepresentation = [(HMDCameraClipSegmentMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FMP4_INIT"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FMP4_SEGMENT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"POSTER_FRAME"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)type
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimeOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasByteOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end