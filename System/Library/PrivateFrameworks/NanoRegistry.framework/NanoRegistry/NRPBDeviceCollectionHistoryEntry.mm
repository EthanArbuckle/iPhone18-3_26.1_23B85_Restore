@interface NRPBDeviceCollectionHistoryEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDiff:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation NRPBDeviceCollectionHistoryEntry

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBDeviceCollectionHistoryEntry;
  v4 = [(NRPBDeviceCollectionHistoryEntry *)&v8 description];
  v5 = [(NRPBDeviceCollectionHistoryEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_index];
    [v3 setObject:v5 forKey:@"index"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [v3 setObject:v6 forKey:@"date"];
  }

  diff = self->_diff;
  if (diff)
  {
    v8 = [(NRPBDeviceCollectionDiff *)diff dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"diff"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    index = self->_index;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_diff)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)setDiff:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_index;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NRPBDeviceCollectionDiff *)self->_diff copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_index != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_14;
  }

  diff = self->_diff;
  if (diff | *(v4 + 3))
  {
    v7 = [(NRPBDeviceCollectionDiff *)diff isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_index;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NRPBDeviceCollectionDiff *)self->_diff hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v6.i64 = floor(date + 0.5);
  v10 = (date - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(NRPBDeviceCollectionDiff *)self->_diff hash:v3];
}

@end