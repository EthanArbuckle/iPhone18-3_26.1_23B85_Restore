@interface HDCodableMedicationScheduleData
- (BOOL)hasFutureCompatibilityVersion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocallyTerminallyUnavailable;
- (BOOL)isLocallyUnavailable;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicationScheduleData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationScheduleData;
  v4 = [(HDCodableMedicationScheduleData *)&v8 description];
  v5 = [(HDCodableMedicationScheduleData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v6 forKey:@"creationDate"];
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange)
  {
    v8 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"compatibilityVersionRange"];
  }

  scheduleData = self->_scheduleData;
  if (scheduleData)
  {
    [v4 setObject:scheduleData forKey:@"scheduleData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_compatibilityVersionRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_scheduleData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_creationDate;
    *(v4 + 40) |= 1u;
  }

  if (self->_compatibilityVersionRange)
  {
    [v5 setCompatibilityVersionRange:?];
    v4 = v5;
  }

  if (self->_scheduleData)
  {
    [v5 setScheduleData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 40) |= 1u;
  }

  v8 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_scheduleData copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 4))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange | *(v4 + 2) && ![(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange isEqual:?])
  {
    goto LABEL_13;
  }

  scheduleData = self->_scheduleData;
  if (scheduleData | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 4))
  {
    [(HDCodableMedicationScheduleData *)self setUuid:?];
    v4 = v7;
  }

  if (v4[5])
  {
    self->_creationDate = v4[1];
    *&self->_has |= 1u;
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  v6 = *(v4 + 2);
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

  v4 = v7;
LABEL_11:
  if (*(v4 + 3))
  {
    compatibilityVersionRange = [(HDCodableMedicationScheduleData *)self setScheduleData:?];
    v4 = v7;
  }

  MEMORY[0x2821F96F8](compatibilityVersionRange, v4);
}

- (BOOL)isLocallyUnavailable
{
  v3 = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  v4 = [v3 minimum];
  v5 = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  LOBYTE(v4) = v4 > [v5 origin];

  return v4;
}

- (BOOL)isLocallyTerminallyUnavailable
{
  v2 = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  v3 = [v2 minimum] == 0x7FFFFFFF;

  return v3;
}

- (BOOL)hasFutureCompatibilityVersion
{
  v2 = [(HDCodableMedicationScheduleData *)self compatibilityVersionRange];
  v3 = [v2 minimum] > 1;

  return v3;
}

@end