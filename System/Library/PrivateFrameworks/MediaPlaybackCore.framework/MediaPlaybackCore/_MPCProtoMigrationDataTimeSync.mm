@interface _MPCProtoMigrationDataTimeSync
- (BOOL)isEqual:(id)equal;
- (double)anchorTime;
- (double)anchorTimestamp;
- (double)rate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)isLive;
- (uint64_t)setAnchorTime:(uint64_t)result;
- (uint64_t)setAnchorTimestamp:(uint64_t)result;
- (uint64_t)setDuration:(uint64_t)result;
- (uint64_t)setIsLive:(uint64_t)result;
- (uint64_t)setRate:(uint64_t)result;
- (unint64_t)hash;
- (void)setItemID:(uint64_t)d;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoMigrationDataTimeSync

- (unint64_t)hash
{
  v3 = [(NSString *)self->_itemID hash];
  if ((*&self->_has & 2) != 0)
  {
    anchorTimestamp = self->_anchorTimestamp;
    if (anchorTimestamp < 0.0)
    {
      anchorTimestamp = -anchorTimestamp;
    }

    *v4.i64 = floor(anchorTimestamp + 0.5);
    v8 = (anchorTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    anchorTime = self->_anchorTime;
    if (anchorTime < 0.0)
    {
      anchorTime = -anchorTime;
    }

    *v4.i64 = floor(anchorTime + 0.5);
    v12 = (anchorTime - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v13), v5, v4);
    v10 = 2654435761u * *v4.i64;
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

  if ((*&self->_has & 8) != 0)
  {
    rate = self->_rate;
    if (rate < 0.0)
    {
      rate = -rate;
    }

    *v4.i32 = floorf(rate + 0.5);
    v16 = (rate - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v17, v5, v4);
    v14 = 2654435761u * *v4.i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v4.i64 = floor(duration + 0.5);
    v20 = (duration - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v5, v4).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v22 = 2654435761 * self->_isLive;
  }

  else
  {
    v22 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v18 ^ v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  itemID = self->_itemID;
  if (itemID | *(equalCopy + 4))
  {
    if (![(NSString *)itemID isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_anchorTimestamp != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_anchorTime != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_rate != *(equalCopy + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_duration != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_26;
  }

  v6 = (*(equalCopy + 48) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0)
    {
LABEL_26:
      v6 = 0;
      goto LABEL_27;
    }

    if (self->_isLive)
    {
      if ((*(equalCopy + 44) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(equalCopy + 44))
    {
      goto LABEL_26;
    }

    v6 = 1;
  }

LABEL_27:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_itemID copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_anchorTimestamp;
    *(v5 + 48) |= 2u;
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

  *(v5 + 8) = self->_anchorTime;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 24) = self->_duration;
    *(v5 + 48) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 40) = self->_rate;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 44) = self->_isLive;
    *(v5 + 48) |= 0x10u;
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteFloatField();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  itemID = self->_itemID;
  if (itemID)
  {
    [dictionary setObject:itemID forKey:@"itemID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_anchorTimestamp];
    [v5 setObject:v10 forKey:@"anchorTimestamp"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_anchorTime];
  [v5 setObject:v11 forKey:@"anchorTime"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *&v4 = self->_rate;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v12 forKey:@"rate"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  [v5 setObject:v13 forKey:@"duration"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLive];
    [v5 setObject:v8 forKey:@"isLive"];
  }

LABEL_9:

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoMigrationDataTimeSync;
  v4 = [(_MPCProtoMigrationDataTimeSync *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoMigrationDataTimeSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (uint64_t)setAnchorTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 48) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setAnchorTime:(uint64_t)result
{
  if (result)
  {
    *(result + 48) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setRate:(uint64_t)result
{
  if (result)
  {
    *(result + 48) |= 8u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setDuration:(uint64_t)result
{
  if (result)
  {
    *(result + 48) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setIsLive:(uint64_t)result
{
  if (result)
  {
    *(result + 48) |= 0x10u;
    *(result + 44) = a2;
  }

  return result;
}

- (void)setItemID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 32), a2);
  }
}

- (double)anchorTimestamp
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0.0;
  }
}

- (double)anchorTime
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

- (double)rate
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 40);
  return result;
}

- (uint64_t)isLive
{
  if (self)
  {
    v1 = *(self + 44);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end