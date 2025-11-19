@interface NRPBSwitchRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation NRPBSwitchRecord

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBSwitchRecord;
  v4 = [(NRPBSwitchRecord *)&v8 description];
  v5 = [(NRPBSwitchRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  deviceIDBytes = self->_deviceIDBytes;
  if (deviceIDBytes)
  {
    [v3 setObject:deviceIDBytes forKey:@"deviceIDBytes"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateTimeInterval];
    [v4 setObject:v7 forKey:@"dateTimeInterval"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_switchIndex];
    [v4 setObject:v8 forKey:@"switchIndex"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_deviceIDBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    dateTimeInterval = self->_dateTimeInterval;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    switchIndex = self->_switchIndex;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_deviceIDBytes copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_dateTimeInterval;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_switchIndex;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  deviceIDBytes = self->_deviceIDBytes;
  if (deviceIDBytes | *(v4 + 2))
  {
    if (![(NSData *)deviceIDBytes isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_dateTimeInterval != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_switchIndex != *(v4 + 6))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_deviceIDBytes hash];
  if (*&self->_has)
  {
    dateTimeInterval = self->_dateTimeInterval;
    if (dateTimeInterval < 0.0)
    {
      dateTimeInterval = -dateTimeInterval;
    }

    *v4.i64 = floor(dateTimeInterval + 0.5);
    v8 = (dateTimeInterval - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
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

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_switchIndex;
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3[2];
    if (v4)
    {
      v6 = v3;
      objc_storeStrong((a1 + 16), v4);
      v3 = v6;
    }

    v5 = *(v3 + 28);
    if (v5)
    {
      *(a1 + 8) = v3[1];
      *(a1 + 28) |= 1u;
      v5 = *(v3 + 28);
    }

    if ((v5 & 2) != 0)
    {
      *(a1 + 24) = *(v3 + 6);
      *(a1 + 28) |= 2u;
    }
  }
}

@end