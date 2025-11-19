@interface HDCodableSample
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEndDate:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSample

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = [(HDCodableSample *)self object];
  v6 = [v5 applyToObject:v4];

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = (*&self->_has & 4) != 0 ? self->_startDate : 2.22507386e-308;
  [v4 _setStartTimestamp:v7];
  v8 = (*&self->_has & 2) != 0 ? self->_endDate : 2.22507386e-308;
  [v4 _setEndTimestamp:v8];
  if ((*&self->_has & 1) != 0 && (dataType = self->_dataType, _HKValidDataTypeCode()))
  {
    v10 = [MEMORY[0x277CCD720] dataTypeWithCode:dataType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 _setSampleType:v10];
    }
  }

  else
  {
LABEL_14:
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)setHasStartDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEndDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSample;
  v4 = [(HDCodableSample *)&v8 description];
  v5 = [(HDCodableSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  object = self->_object;
  if (object)
  {
    v5 = [(HDCodableHealthObject *)object dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"object"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dataType];
    [v3 setObject:v9 forKey:@"dataType"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDate];
  [v3 setObject:v10 forKey:@"startDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDate];
    [v3 setObject:v7 forKey:@"endDate"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_object)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    dataType = self->_dataType;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  startDate = self->_startDate;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_object)
  {
    v6 = v4;
    [v4 setObject:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_dataType;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 3) = *&self->_startDate;
  *(v4 + 40) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v4 + 2) = *&self->_endDate;
    *(v4 + 40) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableHealthObject *)self->_object copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_startDate;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_dataType;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_endDate;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  object = self->_object;
  if (object | *(v4 + 4))
  {
    if (![(HDCodableHealthObject *)object isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_dataType != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_startDate != *(v4 + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_endDate != *(v4 + 2))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HDCodableHealthObject *)self->_object hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_dataType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v4.i64 = floor(startDate + 0.5);
  v8 = (startDate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v4.i64 = floor(endDate + 0.5);
    v13 = (endDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  object = self->_object;
  v6 = *(v4 + 4);
  if (object)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    object = [(HDCodableHealthObject *)object mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    object = [(HDCodableSample *)self setObject:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 40);
  if (v7)
  {
    self->_dataType = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 40);
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 40) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_startDate = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 40) & 2) != 0)
  {
LABEL_10:
    self->_endDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_11:

  MEMORY[0x2821F96F8](object, v4);
}

@end