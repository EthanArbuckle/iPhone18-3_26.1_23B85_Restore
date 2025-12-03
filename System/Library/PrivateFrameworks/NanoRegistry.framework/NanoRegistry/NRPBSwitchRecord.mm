@interface NRPBSwitchRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(uint64_t)from;
- (void)writeTo:(id)to;
@end

@implementation NRPBSwitchRecord

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBSwitchRecord;
  v4 = [(NRPBSwitchRecord *)&v8 description];
  dictionaryRepresentation = [(NRPBSwitchRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  deviceIDBytes = self->_deviceIDBytes;
  if (deviceIDBytes)
  {
    [dictionary setObject:deviceIDBytes forKey:@"deviceIDBytes"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_deviceIDBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    dateTimeInterval = self->_dateTimeInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    switchIndex = self->_switchIndex;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_deviceIDBytes copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  deviceIDBytes = self->_deviceIDBytes;
  if (deviceIDBytes | *(equalCopy + 2))
  {
    if (![(NSData *)deviceIDBytes isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_dateTimeInterval != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_switchIndex != *(equalCopy + 6))
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

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[2];
    if (v4)
    {
      v6 = v3;
      objc_storeStrong((from + 16), v4);
      v3 = v6;
    }

    v5 = *(v3 + 28);
    if (v5)
    {
      *(from + 8) = v3[1];
      *(from + 28) |= 1u;
      v5 = *(v3 + 28);
    }

    if ((v5 & 2) != 0)
    {
      *(from + 24) = *(v3 + 6);
      *(from + 28) |= 2u;
    }
  }
}

@end