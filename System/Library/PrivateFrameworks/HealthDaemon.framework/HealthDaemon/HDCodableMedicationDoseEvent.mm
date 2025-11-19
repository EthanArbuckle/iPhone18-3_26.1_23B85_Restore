@interface HDCodableMedicationDoseEvent
- (BOOL)applyToObject:(id)a3;
- (BOOL)applyToObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLogOrigin:(BOOL)a3;
- (void)setHasScheduledDate:(BOOL)a3;
- (void)setHasScheduledDoseQuantity:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicationDoseEvent

- (BOOL)applyToObject:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [(HDCodableMedicationDoseEvent *)self applyToObject:a3 error:&v8];
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

- (BOOL)applyToObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 hk_assignError:a4 code:3 format:{@"Unexpected class %@", v24}];

LABEL_17:
    v14 = 0;
    goto LABEL_22;
  }

  v7 = [(HDCodableMedicationDoseEvent *)self sample];
  v8 = [v7 applyToObject:v6];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Failed to decode superclass message"];
    goto LABEL_17;
  }

  [v6 _setLogOrigin:{-[HDCodableMedicationDoseEvent logOrigin](self, "logOrigin")}];
  if ([(HDCodableMedicationDoseEvent *)self hasScheduleItemIdentifier])
  {
    v9 = [(HDCodableMedicationDoseEvent *)self scheduleItemIdentifier];
    [v6 _setScheduleItemIdentifier:v9];
  }

  v10 = MEMORY[0x277CCAD78];
  v11 = [(HDCodableMedicationDoseEvent *)self medicationUuid];
  v12 = [v10 hk_UUIDWithData:v11];

  if (v12)
  {
    [v6 _setMedicationUUID:v12];
    v13 = [(HDCodableMedicationDoseEvent *)self medicationIdentifier];
    v14 = v13 != 0;
    if (v13)
    {
      [v6 _setMedicationIdentifier:v13];
      if ([(HDCodableMedicationDoseEvent *)self hasScheduledDoseQuantity])
      {
        v15 = MEMORY[0x277CCABB0];
        [(HDCodableMedicationDoseEvent *)self scheduledDoseQuantity];
        v16 = [v15 numberWithDouble:?];
        [v6 _setScheduledDoseQuantity:v16];
      }

      if ([(HDCodableMedicationDoseEvent *)self hasDoseQuantity])
      {
        v17 = MEMORY[0x277CCABB0];
        [(HDCodableMedicationDoseEvent *)self doseQuantity];
        v18 = [v17 numberWithDouble:?];
        [v6 _setDoseQuantity:v18];
      }

      if ([(HDCodableMedicationDoseEvent *)self hasScheduledDate])
      {
        v19 = MEMORY[0x277CBEAA8];
        [(HDCodableMedicationDoseEvent *)self scheduledDate];
        v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
        [v6 _setScheduledDate:v20];
      }

      [v6 _setLogStatus:{-[HDCodableMedicationDoseEvent status](self, "status")}];
      if ([(HDCodableMedicationDoseEvent *)self hasDoseUnitString])
      {
        v21 = [(HDCodableMedicationDoseEvent *)self doseUnitString];
        [v6 _setDoseUnitString:v21];
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Received nil for non-nil field 'medicationIdentifier'"];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Received nil for non-nil field 'medicationUUID'"];
    v14 = 0;
  }

LABEL_22:
  return v14;
}

- (void)setHasLogOrigin:(BOOL)a3
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

- (void)setHasScheduledDoseQuantity:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasScheduledDate:(BOOL)a3
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

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
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
  v5 = [(HDCodableMedicationDoseEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_logOrigin];
    [v3 setObject:v6 forKey:@"logOrigin"];
  }

  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  if (scheduleItemIdentifier)
  {
    [v3 setObject:scheduleItemIdentifier forKey:@"scheduleItemIdentifier"];
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier)
  {
    [v3 setObject:medicationIdentifier forKey:@"medicationIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scheduledDoseQuantity];
    [v3 setObject:v14 forKey:@"scheduledDoseQuantity"];

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
  [v3 setObject:v15 forKey:@"doseQuantity"];

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
  [v3 setObject:v16 forKey:@"scheduledDate"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_status];
    [v3 setObject:v10 forKey:@"status"];
  }

LABEL_14:
  medicationUuid = self->_medicationUuid;
  if (medicationUuid)
  {
    [v3 setObject:medicationUuid forKey:@"medicationUuid"];
  }

  doseUnitString = self->_doseUnitString;
  if (doseUnitString)
  {
    [v3 setObject:doseUnitString forKey:@"doseUnitString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  if ((*&self->_has & 2) != 0)
  {
    logOrigin = self->_logOrigin;
    PBDataWriterWriteInt64Field();
    v4 = v11;
  }

  if (self->_scheduleItemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_medicationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    scheduledDoseQuantity = self->_scheduledDoseQuantity;
    PBDataWriterWriteDoubleField();
    v4 = v11;
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
  v4 = v11;
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
  v4 = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    status = self->_status;
    PBDataWriterWriteInt64Field();
    v4 = v11;
  }

LABEL_14:
  if (self->_medicationUuid)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if (self->_doseUnitString)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_logOrigin;
    *(v4 + 88) |= 2u;
  }

  if (self->_scheduleItemIdentifier)
  {
    [v6 setScheduleItemIdentifier:?];
    v4 = v6;
  }

  if (self->_medicationIdentifier)
  {
    [v6 setMedicationIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 4) = *&self->_scheduledDoseQuantity;
    *(v4 + 88) |= 8u;
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

  *(v4 + 1) = *&self->_doseQuantity;
  *(v4 + 88) |= 1u;
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
  *(v4 + 3) = *&self->_scheduledDate;
  *(v4 + 88) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(v4 + 5) = self->_status;
    *(v4 + 88) |= 0x10u;
  }

LABEL_14:
  if (self->_medicationUuid)
  {
    [v6 setMedicationUuid:?];
    v4 = v6;
  }

  if (self->_doseUnitString)
  {
    [v6 setDoseUnitString:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_logOrigin;
    *(v5 + 88) |= 2u;
  }

  v8 = [(NSString *)self->_scheduleItemIdentifier copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(NSString *)self->_medicationIdentifier copyWithZone:a3];
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
  v13 = [(NSData *)self->_medicationUuid copyWithZone:a3];
  v14 = *(v5 + 64);
  *(v5 + 64) = v13;

  v15 = [(NSString *)self->_doseUnitString copyWithZone:a3];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  sample = self->_sample;
  if (sample | *(v4 + 9))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v6 = *(v4 + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_logOrigin != *(v4 + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
LABEL_37:
    v12 = 0;
    goto LABEL_38;
  }

  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  if (scheduleItemIdentifier | *(v4 + 10) && ![(NSString *)scheduleItemIdentifier isEqual:?])
  {
    goto LABEL_37;
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier | *(v4 + 7))
  {
    if (![(NSString *)medicationIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v9 = *(v4 + 88);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 88) & 8) == 0 || self->_scheduledDoseQuantity != *(v4 + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 88) & 8) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_doseQuantity != *(v4 + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 88) & 4) == 0 || self->_scheduledDate != *(v4 + 3))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 88) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 88) & 0x10) == 0 || self->_status != *(v4 + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 88) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  medicationUuid = self->_medicationUuid;
  if (medicationUuid | *(v4 + 8) && ![(NSData *)medicationUuid isEqual:?])
  {
    goto LABEL_37;
  }

  doseUnitString = self->_doseUnitString;
  if (doseUnitString | *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 9);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  if ((*(v4 + 88) & 2) != 0)
  {
    self->_logOrigin = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 10))
  {
    [(HDCodableMedicationDoseEvent *)self setScheduleItemIdentifier:?];
    v4 = v8;
  }

  if (*(v4 + 7))
  {
    [(HDCodableMedicationDoseEvent *)self setMedicationIdentifier:?];
    v4 = v8;
  }

  v7 = *(v4 + 88);
  if ((v7 & 8) != 0)
  {
    self->_scheduledDoseQuantity = *(v4 + 4);
    *&self->_has |= 8u;
    v7 = *(v4 + 88);
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

  else if ((*(v4 + 88) & 1) == 0)
  {
    goto LABEL_15;
  }

  self->_doseQuantity = *(v4 + 1);
  *&self->_has |= 1u;
  v7 = *(v4 + 88);
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
  self->_scheduledDate = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 88) & 0x10) != 0)
  {
LABEL_17:
    self->_status = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_18:
  if (*(v4 + 8))
  {
    [(HDCodableMedicationDoseEvent *)self setMedicationUuid:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(HDCodableMedicationDoseEvent *)self setDoseUnitString:?];
  }

  MEMORY[0x2821F96F8]();
}

@end