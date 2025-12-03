@interface HDCodableMedicationDoseEvent
- (BOOL)applyToObject:(id)object;
- (BOOL)applyToObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLogOrigin:(BOOL)origin;
- (void)setHasScheduledDate:(BOOL)date;
- (void)setHasScheduledDoseQuantity:(BOOL)quantity;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicationDoseEvent

- (BOOL)applyToObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [(HDCodableMedicationDoseEvent *)self applyToObject:object error:&v8];
  v4 = v8;
  if (!v3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to decode object of type HKMedicationDoseEvent with error %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)applyToObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 hk_assignError:error code:3 format:{@"Unexpected class %@", v24}];

LABEL_17:
    v14 = 0;
    goto LABEL_22;
  }

  sample = [(HDCodableMedicationDoseEvent *)self sample];
  v8 = [sample applyToObject:objectCopy];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Failed to decode superclass message"];
    goto LABEL_17;
  }

  [objectCopy _setLogOrigin:{-[HDCodableMedicationDoseEvent logOrigin](self, "logOrigin")}];
  if ([(HDCodableMedicationDoseEvent *)self hasScheduleItemIdentifier])
  {
    scheduleItemIdentifier = [(HDCodableMedicationDoseEvent *)self scheduleItemIdentifier];
    [objectCopy _setScheduleItemIdentifier:scheduleItemIdentifier];
  }

  v10 = MEMORY[0x277CCAD78];
  medicationUuid = [(HDCodableMedicationDoseEvent *)self medicationUuid];
  v12 = [v10 hk_UUIDWithData:medicationUuid];

  if (v12)
  {
    [objectCopy _setMedicationUUID:v12];
    medicationIdentifier = [(HDCodableMedicationDoseEvent *)self medicationIdentifier];
    v14 = medicationIdentifier != 0;
    if (medicationIdentifier)
    {
      [objectCopy _setMedicationIdentifier:medicationIdentifier];
      if ([(HDCodableMedicationDoseEvent *)self hasScheduledDoseQuantity])
      {
        v15 = MEMORY[0x277CCABB0];
        [(HDCodableMedicationDoseEvent *)self scheduledDoseQuantity];
        v16 = [v15 numberWithDouble:?];
        [objectCopy _setScheduledDoseQuantity:v16];
      }

      if ([(HDCodableMedicationDoseEvent *)self hasDoseQuantity])
      {
        v17 = MEMORY[0x277CCABB0];
        [(HDCodableMedicationDoseEvent *)self doseQuantity];
        v18 = [v17 numberWithDouble:?];
        [objectCopy _setDoseQuantity:v18];
      }

      if ([(HDCodableMedicationDoseEvent *)self hasScheduledDate])
      {
        v19 = MEMORY[0x277CBEAA8];
        [(HDCodableMedicationDoseEvent *)self scheduledDate];
        v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
        [objectCopy _setScheduledDate:v20];
      }

      [objectCopy _setLogStatus:{-[HDCodableMedicationDoseEvent status](self, "status")}];
      if ([(HDCodableMedicationDoseEvent *)self hasDoseUnitString])
      {
        doseUnitString = [(HDCodableMedicationDoseEvent *)self doseUnitString];
        [objectCopy _setDoseUnitString:doseUnitString];
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Received nil for non-nil field 'medicationIdentifier'"];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Received nil for non-nil field 'medicationUUID'"];
    v14 = 0;
  }

LABEL_22:
  return v14;
}

- (void)setHasLogOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasScheduledDoseQuantity:(BOOL)quantity
{
  if (quantity)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasScheduledDate:(BOOL)date
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

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationDoseEvent;
  v4 = [(HDCodableMedicationDoseEvent *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicationDoseEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_logOrigin];
    [dictionary setObject:v6 forKey:@"logOrigin"];
  }

  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  if (scheduleItemIdentifier)
  {
    [dictionary setObject:scheduleItemIdentifier forKey:@"scheduleItemIdentifier"];
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier)
  {
    [dictionary setObject:medicationIdentifier forKey:@"medicationIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scheduledDoseQuantity];
    [dictionary setObject:v14 forKey:@"scheduledDoseQuantity"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doseQuantity];
  [dictionary setObject:v15 forKey:@"doseQuantity"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scheduledDate];
  [dictionary setObject:v16 forKey:@"scheduledDate"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_status];
    [dictionary setObject:v10 forKey:@"status"];
  }

LABEL_14:
  medicationUuid = self->_medicationUuid;
  if (medicationUuid)
  {
    [dictionary setObject:medicationUuid forKey:@"medicationUuid"];
  }

  doseUnitString = self->_doseUnitString;
  if (doseUnitString)
  {
    [dictionary setObject:doseUnitString forKey:@"doseUnitString"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if ((*&self->_has & 2) != 0)
  {
    logOrigin = self->_logOrigin;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_scheduleItemIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_medicationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    scheduledDoseQuantity = self->_scheduledDoseQuantity;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  doseQuantity = self->_doseQuantity;
  PBDataWriterWriteDoubleField();
  toCopy = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  scheduledDate = self->_scheduledDate;
  PBDataWriterWriteDoubleField();
  toCopy = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    status = self->_status;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

LABEL_14:
  if (self->_medicationUuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_doseUnitString)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_logOrigin;
    *(toCopy + 88) |= 2u;
  }

  if (self->_scheduleItemIdentifier)
  {
    [v6 setScheduleItemIdentifier:?];
    toCopy = v6;
  }

  if (self->_medicationIdentifier)
  {
    [v6 setMedicationIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 4) = *&self->_scheduledDoseQuantity;
    *(toCopy + 88) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 1) = *&self->_doseQuantity;
  *(toCopy + 88) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  *(toCopy + 3) = *&self->_scheduledDate;
  *(toCopy + 88) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(toCopy + 5) = self->_status;
    *(toCopy + 88) |= 0x10u;
  }

LABEL_14:
  if (self->_medicationUuid)
  {
    [v6 setMedicationUuid:?];
    toCopy = v6;
  }

  if (self->_doseUnitString)
  {
    [v6 setDoseUnitString:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_logOrigin;
    *(v5 + 88) |= 2u;
  }

  v8 = [(NSString *)self->_scheduleItemIdentifier copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(NSString *)self->_medicationIdentifier copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_scheduledDoseQuantity;
    *(v5 + 88) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 24) = self->_scheduledDate;
      *(v5 + 88) |= 4u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 8) = self->_doseQuantity;
  *(v5 + 88) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    *(v5 + 40) = self->_status;
    *(v5 + 88) |= 0x10u;
  }

LABEL_8:
  v13 = [(NSData *)self->_medicationUuid copyWithZone:zone];
  v14 = *(v5 + 64);
  *(v5 + 64) = v13;

  v15 = [(NSString *)self->_doseUnitString copyWithZone:zone];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 9))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v6 = *(equalCopy + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_logOrigin != *(equalCopy + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
LABEL_37:
    v12 = 0;
    goto LABEL_38;
  }

  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  if (scheduleItemIdentifier | *(equalCopy + 10) && ![(NSString *)scheduleItemIdentifier isEqual:?])
  {
    goto LABEL_37;
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)medicationIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v9 = *(equalCopy + 88);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 88) & 8) == 0 || self->_scheduledDoseQuantity != *(equalCopy + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 8) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_doseQuantity != *(equalCopy + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0 || self->_scheduledDate != *(equalCopy + 3))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 88) & 0x10) == 0 || self->_status != *(equalCopy + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  medicationUuid = self->_medicationUuid;
  if (medicationUuid | *(equalCopy + 8) && ![(NSData *)medicationUuid isEqual:?])
  {
    goto LABEL_37;
  }

  doseUnitString = self->_doseUnitString;
  if (doseUnitString | *(equalCopy + 6))
  {
    v12 = [(NSString *)doseUnitString isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_38:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_logOrigin;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_scheduleItemIdentifier hash];
  v6 = [(NSString *)self->_medicationIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    scheduledDoseQuantity = self->_scheduledDoseQuantity;
    if (scheduledDoseQuantity < 0.0)
    {
      scheduledDoseQuantity = -scheduledDoseQuantity;
    }

    *v7.i64 = floor(scheduledDoseQuantity + 0.5);
    v11 = (scheduledDoseQuantity - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v12), v8, v7);
    v9 = 2654435761u * *v7.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if (*&self->_has)
  {
    doseQuantity = self->_doseQuantity;
    if (doseQuantity < 0.0)
    {
      doseQuantity = -doseQuantity;
    }

    *v7.i64 = floor(doseQuantity + 0.5);
    v15 = (doseQuantity - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v16), v8, v7);
    v13 = 2654435761u * *v7.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    scheduledDate = self->_scheduledDate;
    if (scheduledDate < 0.0)
    {
      scheduledDate = -scheduledDate;
    }

    *v7.i64 = floor(scheduledDate + 0.5);
    v19 = (scheduledDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v8, v7).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v21 = 2654435761 * self->_status;
  }

  else
  {
    v21 = 0;
  }

  v22 = v4 ^ v3 ^ v5 ^ v6;
  v23 = v9 ^ v13 ^ v17 ^ v21 ^ [(NSData *)self->_medicationUuid hash];
  return v22 ^ v23 ^ [(NSString *)self->_doseUnitString hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 9);
  v8 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableMedicationDoseEvent *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  if ((*(fromCopy + 88) & 2) != 0)
  {
    self->_logOrigin = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 10))
  {
    [(HDCodableMedicationDoseEvent *)self setScheduleItemIdentifier:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 7))
  {
    [(HDCodableMedicationDoseEvent *)self setMedicationIdentifier:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 88);
  if ((v7 & 8) != 0)
  {
    self->_scheduledDoseQuantity = *(fromCopy + 4);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 88);
    if ((v7 & 1) == 0)
    {
LABEL_15:
      if ((v7 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((*(fromCopy + 88) & 1) == 0)
  {
    goto LABEL_15;
  }

  self->_doseQuantity = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 88);
  if ((v7 & 4) == 0)
  {
LABEL_16:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_27:
  self->_scheduledDate = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 88) & 0x10) != 0)
  {
LABEL_17:
    self->_status = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_18:
  if (*(fromCopy + 8))
  {
    [(HDCodableMedicationDoseEvent *)self setMedicationUuid:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(HDCodableMedicationDoseEvent *)self setDoseUnitString:?];
  }

  MEMORY[0x2821F96F8]();
}

@end