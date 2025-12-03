@interface HDCodableSample
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSample

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  object = [(HDCodableSample *)self object];
  v6 = [object applyToObject:objectCopy];

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = (*&self->_has & 4) != 0 ? self->_startDate : 2.22507386e-308;
  [objectCopy _setStartTimestamp:v7];
  v8 = (*&self->_has & 2) != 0 ? self->_endDate : 2.22507386e-308;
  [objectCopy _setEndTimestamp:v8];
  if ((*&self->_has & 1) != 0 && (dataType = self->_dataType, _HKValidDataTypeCode()))
  {
    v10 = [MEMORY[0x277CCD720] dataTypeWithCode:dataType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [objectCopy _setSampleType:v10];
    }
  }

  else
  {
LABEL_14:
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
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
  dictionaryRepresentation = [(HDCodableSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  object = self->_object;
  if (object)
  {
    dictionaryRepresentation = [(HDCodableHealthObject *)object dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"object"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dataType];
    [dictionary setObject:v9 forKey:@"dataType"];

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
  [dictionary setObject:v10 forKey:@"startDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDate];
    [dictionary setObject:v7 forKey:@"endDate"];
  }

LABEL_7:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_object)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    dataType = self->_dataType;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_object)
  {
    v6 = toCopy;
    [toCopy setObject:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_dataType;
    *(toCopy + 40) |= 1u;
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

  *(toCopy + 3) = *&self->_startDate;
  *(toCopy + 40) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 2) = *&self->_endDate;
    *(toCopy + 40) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableHealthObject *)self->_object copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  object = self->_object;
  if (object | *(equalCopy + 4))
  {
    if (![(HDCodableHealthObject *)object isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_dataType != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_startDate != *(equalCopy + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_endDate != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  object = self->_object;
  v6 = *(fromCopy + 4);
  if (object)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    object = [(HDCodableHealthObject *)object mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    object = [(HDCodableSample *)self setObject:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 40);
  if (v7)
  {
    self->_dataType = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 40);
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

  else if ((*(fromCopy + 40) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_startDate = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 40) & 2) != 0)
  {
LABEL_10:
    self->_endDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_11:

  MEMORY[0x2821F96F8](object, fromCopy);
}

@end