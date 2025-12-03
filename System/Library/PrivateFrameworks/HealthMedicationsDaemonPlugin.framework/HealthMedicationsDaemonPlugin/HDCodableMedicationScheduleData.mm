@interface HDCodableMedicationScheduleData
- (BOOL)hasFutureCompatibilityVersion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocallyTerminallyUnavailable;
- (BOOL)isLocallyUnavailable;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicationScheduleData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationScheduleData;
  v4 = [(HDCodableMedicationScheduleData *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicationScheduleData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v6 forKey:@"creationDate"];
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange)
  {
    dictionaryRepresentation = [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"compatibilityVersionRange"];
  }

  scheduleData = self->_scheduleData;
  if (scheduleData)
  {
    [v4 setObject:scheduleData forKey:@"scheduleData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_compatibilityVersionRange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_scheduleData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_creationDate;
    *(toCopy + 40) |= 1u;
  }

  if (self->_compatibilityVersionRange)
  {
    [v5 setCompatibilityVersionRange:?];
    toCopy = v5;
  }

  if (self->_scheduleData)
  {
    [v5 setScheduleData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 40) |= 1u;
  }

  v8 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_scheduleData copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 4))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_creationDate != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange | *(equalCopy + 2) && ![(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange isEqual:?])
  {
    goto LABEL_13;
  }

  scheduleData = self->_scheduleData;
  if (scheduleData | *(equalCopy + 3))
  {
    v9 = [(NSData *)scheduleData isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v4.i64 = floor(creationDate + 0.5);
    v8 = (creationDate - *v4.i64) * 1.84467441e19;
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

  v10 = v6 ^ v3;
  v11 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange hash];
  return v10 ^ v11 ^ [(NSData *)self->_scheduleData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(HDCodableMedicationScheduleData *)self setUuid:?];
    fromCopy = v7;
  }

  if (fromCopy[5])
  {
    self->_creationDate = fromCopy[1];
    *&self->_has |= 1u;
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  v6 = *(fromCopy + 2);
  if (compatibilityVersionRange)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    compatibilityVersionRange = [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    compatibilityVersionRange = [(HDCodableMedicationScheduleData *)self setCompatibilityVersionRange:?];
  }

  fromCopy = v7;
LABEL_11:
  if (*(fromCopy + 3))
  {
    compatibilityVersionRange = [(HDCodableMedicationScheduleData *)self setScheduleData:?];
    fromCopy = v7;
  }

  MEMORY[0x2821F96F8](compatibilityVersionRange, fromCopy);
}

- (BOOL)isLocallyUnavailable
{
  compatibilityVersionRange = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  minimum = [compatibilityVersionRange minimum];
  compatibilityVersionRange2 = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  LOBYTE(minimum) = minimum > [compatibilityVersionRange2 origin];

  return minimum;
}

- (BOOL)isLocallyTerminallyUnavailable
{
  compatibilityVersionRange = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  v3 = [compatibilityVersionRange minimum] == 0x7FFFFFFF;

  return v3;
}

- (BOOL)hasFutureCompatibilityVersion
{
  compatibilityVersionRange = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  v3 = [compatibilityVersionRange minimum] > 1;

  return v3;
}

@end