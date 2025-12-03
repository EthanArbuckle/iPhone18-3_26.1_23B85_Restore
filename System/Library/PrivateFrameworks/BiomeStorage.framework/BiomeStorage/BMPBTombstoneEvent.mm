@interface BMPBTombstoneEvent
- (BOOL)hasPolicyID;
- (BOOL)hasProcessName;
- (BOOL)hasSegmentName;
- (BOOL)isEqual:(id)equal;
- (__CFString)reasonAsString:(__CFString *)string;
- (double)eventTimestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsReason:(uint64_t)reason;
- (uint64_t)hasEventTimestamp;
- (uint64_t)hasLength;
- (uint64_t)hasOffset;
- (uint64_t)hasReason;
- (uint64_t)length;
- (uint64_t)offset;
- (uint64_t)policyID;
- (uint64_t)processName;
- (uint64_t)reason;
- (uint64_t)segmentName;
- (uint64_t)setEventTimestamp:(uint64_t)result;
- (uint64_t)setHasEventTimestamp:(uint64_t)result;
- (uint64_t)setHasLength:(uint64_t)result;
- (uint64_t)setHasOffset:(uint64_t)result;
- (uint64_t)setHasReason:(uint64_t)result;
- (uint64_t)setLength:(uint64_t)result;
- (uint64_t)setOffset:(uint64_t)result;
- (uint64_t)setReason:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setPolicyID:(uint64_t)d;
- (void)setProcessName:(uint64_t)name;
- (void)setSegmentName:(uint64_t)name;
- (void)writeTo:(id)to;
@end

@implementation BMPBTombstoneEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBTombstoneEvent;
  v4 = [(BMPBTombstoneEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBTombstoneEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  segmentName = self->_segmentName;
  if (segmentName)
  {
    [dictionary setObject:segmentName forKey:@"segmentName"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_offset];
    [v4 setObject:v7 forKey:@"offset"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_length];
  [v4 setObject:v8 forKey:@"length"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  reason = self->_reason;
  if (reason >= 5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
  }

  else
  {
    v10 = off_1E8338AF8[reason];
  }

  [v4 setObject:v10 forKey:@"reason"];

LABEL_13:
  processName = self->_processName;
  if (processName)
  {
    [v4 setObject:processName forKey:@"processName"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTimestamp];
    [v4 setObject:v12 forKey:@"eventTimestamp"];
  }

  policyID = self->_policyID;
  if (policyID)
  {
    [v4 setObject:policyID forKey:@"policyID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_segmentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    offset = self->_offset;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  length = self->_length;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

LABEL_7:
  if (self->_processName)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (*&self->_has)
  {
    eventTimestamp = self->_eventTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_policyID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_segmentName copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 20) = self->_offset;
    *(v5 + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_length;
  *(v5 + 56) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_reason;
    *(v5 + 56) |= 8u;
  }

LABEL_5:
  v9 = [(NSString *)self->_processName copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_eventTimestamp;
    *(v5 + 56) |= 1u;
  }

  v11 = [(NSString *)self->_policyID copyWithZone:zone];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  segmentName = self->_segmentName;
  if (segmentName | *(equalCopy + 6))
  {
    if (![(NSString *)segmentName isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_offset != *(equalCopy + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_length != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_reason != *(equalCopy + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_29;
  }

  processName = self->_processName;
  if (processName | *(equalCopy + 4))
  {
    if (![(NSString *)processName isEqual:?])
    {
LABEL_29:
      v11 = 0;
      goto LABEL_30;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_eventTimestamp != *(equalCopy + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_29;
  }

  policyID = self->_policyID;
  if (policyID | *(equalCopy + 3))
  {
    v11 = [(NSString *)policyID isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_30:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_segmentName hash];
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761 * self->_offset;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_length;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_reason;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(NSString *)self->_processName hash];
  if (*&self->_has)
  {
    eventTimestamp = self->_eventTimestamp;
    if (eventTimestamp < 0.0)
    {
      eventTimestamp = -eventTimestamp;
    }

    *v8.i64 = floor(eventTimestamp + 0.5);
    v12 = (eventTimestamp - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ [(NSString *)self->_policyID hash];
}

- (BOOL)hasSegmentName
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (uint64_t)setOffset:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 4u;
    *(result + 20) = a2;
  }

  return result;
}

- (uint64_t)setHasOffset:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 56) = *(result + 56) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasOffset
{
  if (result)
  {
    return (*(result + 56) >> 2) & 1;
  }

  return result;
}

- (uint64_t)setLength:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasLength:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 56) = *(result + 56) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasLength
{
  if (result)
  {
    return (*(result + 56) >> 1) & 1;
  }

  return result;
}

- (uint64_t)reason
{
  if (result)
  {
    if ((*(result + 56) & 8) != 0)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setReason:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 8u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasReason:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 56) = *(result + 56) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasReason
{
  if (result)
  {
    return (*(result + 56) >> 3) & 1;
  }

  return result;
}

- (__CFString)reasonAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 5)
  {
    string = off_1E8338AF8[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsReason:(uint64_t)reason
{
  v3 = a2;
  v4 = v3;
  if (reason)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"TTL"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"UserInitiated"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"MaxSize"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"MaxCount"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasProcessName
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (uint64_t)setEventTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasEventTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = *(result + 56) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasEventTimestamp
{
  if (result)
  {
    return *(result + 56) & 1;
  }

  return result;
}

- (BOOL)hasPolicyID
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (!to)
  {
    goto LABEL_14;
  }

  v4 = *(to + 48);
  if (v4)
  {
    v14 = v3;
    [(BMPBTombstoneEvent *)v3 setSegmentName:v4];
    v3 = v14;
  }

  v5 = *(to + 56);
  if ((v5 & 4) == 0)
  {
    if ((*(to + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v3 = OUTLINED_FUNCTION_1_0(v3, 16);
    v3[v13] = v12 | 2;
    if ((*(to + 56) & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = OUTLINED_FUNCTION_1_0(v3, 20);
  v3[v11] = v10 | 4;
  v5 = *(to + 56);
  if ((v5 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v5 & 8) != 0)
  {
LABEL_7:
    v3 = OUTLINED_FUNCTION_1_0(v3, 40);
    v3[v7] = v6 | 8;
  }

LABEL_8:
  v8 = *(to + 32);
  if (v8)
  {
    v15 = v3;
    [(BMPBTombstoneEvent *)v3 setProcessName:v8];
    v3 = v15;
  }

  if (*(to + 56))
  {
    *(v3 + 1) = *(to + 8);
    v3[56] |= 1u;
  }

  v9 = *(to + 24);
  if (v9)
  {
    v16 = v3;
    [(BMPBTombstoneEvent *)v3 setPolicyID:v9];
    v3 = v16;
  }

LABEL_14:
}

- (void)setSegmentName:(uint64_t)name
{
  if (name)
  {
    OUTLINED_FUNCTION_0_0(name, a2, 48);
  }
}

- (void)setProcessName:(uint64_t)name
{
  if (name)
  {
    OUTLINED_FUNCTION_0_0(name, a2, 32);
  }
}

- (void)setPolicyID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_0(d, a2, 24);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (!from)
  {
    goto LABEL_14;
  }

  v4 = v3[6];
  v14 = v3;
  if (v4)
  {
    objc_storeStrong((from + 48), v4);
    v3 = v14;
  }

  v5 = *(v3 + 56);
  if ((v5 & 4) == 0)
  {
    if ((v3[7] & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v3 = OUTLINED_FUNCTION_2(v3, 16);
    *(from + v13) = v12 | 2;
    if ((v3[7] & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = OUTLINED_FUNCTION_2(v3, 20);
  *(from + v11) = v10 | 4;
  v5 = *(v3 + 56);
  if ((v5 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v5 & 8) != 0)
  {
LABEL_7:
    v3 = OUTLINED_FUNCTION_2(v3, 40);
    *(from + v7) = v6 | 8;
  }

LABEL_8:
  v8 = v3[4];
  if (v8)
  {
    objc_storeStrong((from + 32), v8);
    v3 = v14;
  }

  if (v3[7])
  {
    *(from + 8) = v3[1];
    *(from + 56) |= 1u;
  }

  v9 = v3[3];
  if (v9)
  {
    objc_storeStrong((from + 24), v9);
    v3 = v14;
  }

LABEL_14:
}

- (uint64_t)segmentName
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)offset
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

- (uint64_t)length
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)processName
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (double)eventTimestamp
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

- (uint64_t)policyID
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end