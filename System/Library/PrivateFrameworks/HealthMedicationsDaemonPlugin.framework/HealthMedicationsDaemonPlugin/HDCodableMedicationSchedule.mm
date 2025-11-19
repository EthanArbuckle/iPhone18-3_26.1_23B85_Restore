@interface HDCodableMedicationSchedule
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedMedicationUUID;
- (id)decodedUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntervalData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasDisplayOptions:(BOOL)a3;
- (void)setHasDuplicate:(BOOL)a3;
- (void)setHasEndDateTime:(BOOL)a3;
- (void)setHasFrequencyType:(BOOL)a3;
- (void)setHasScheduleType:(BOOL)a3;
- (void)setHasStartDateTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicationSchedule

- (id)decodedUUID
{
  if (self->_uuid)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedMedicationUUID
{
  if (self->_medicationUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHasStartDateTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndDateTime:(BOOL)a3
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

- (void)setHasFrequencyType:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasScheduleType:(BOOL)a3
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

- (void)setHasDisplayOptions:(BOOL)a3
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

- (void)addIntervalData:(id)a3
{
  v4 = a3;
  intervalDatas = self->_intervalDatas;
  v8 = v4;
  if (!intervalDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_intervalDatas;
    self->_intervalDatas = v6;

    v4 = v8;
    intervalDatas = self->_intervalDatas;
  }

  [(NSMutableArray *)intervalDatas addObject:v4];
}

- (void)setHasDuplicate:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationSchedule;
  v4 = [(HDCodableMedicationSchedule *)&v8 description];
  v5 = [(HDCodableMedicationSchedule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier)
  {
    [v4 setObject:medicationIdentifier forKey:@"medicationIdentifier"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDateTime];
    [v4 setObject:v8 forKey:@"startDateTime"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDateTime];
    [v4 setObject:v9 forKey:@"endDateTime"];
  }

  createdTimeZone = self->_createdTimeZone;
  if (createdTimeZone)
  {
    [v4 setObject:createdTimeZone forKey:@"createdTimeZone"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_frequencyType];
    [v4 setObject:v11 forKey:@"frequencyType"];
  }

  cycleStartDateComponents = self->_cycleStartDateComponents;
  if (cycleStartDateComponents)
  {
    v13 = [(HDCodableDateComponents *)cycleStartDateComponents dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"cycleStartDateComponents"];
  }

  note = self->_note;
  if (note)
  {
    [v4 setObject:note forKey:@"note"];
  }

  medicationUUID = self->_medicationUUID;
  if (medicationUUID)
  {
    [v4 setObject:medicationUUID forKey:@"medicationUUID"];
  }

  v16 = self->_has;
  if (v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v17 forKey:@"creationDate"];

    v16 = self->_has;
  }

  if ((v16 & 0x40) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v18 forKey:@"deleted"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v20 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"syncIdentity"];
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange)
  {
    v22 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"compatibilityVersionRange"];
  }

  v23 = self->_has;
  if ((v23 & 0x10) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_scheduleType];
    [v4 setObject:v24 forKey:@"scheduleType"];

    v23 = self->_has;
  }

  if ((v23 & 2) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_displayOptions];
    [v4 setObject:v25 forKey:@"displayOptions"];
  }

  if ([(NSMutableArray *)self->_intervalDatas count])
  {
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_intervalDatas, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = self->_intervalDatas;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v26 addObject:v32];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v29);
    }

    [v4 setObject:v26 forKey:@"intervalData"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_duplicate];
    [v4 setObject:v33 forKey:@"duplicate"];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_medicationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    startDateTime = self->_startDateTime;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    endDateTime = self->_endDateTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_createdTimeZone)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    frequencyType = self->_frequencyType;
    PBDataWriterWriteDoubleField();
  }

  if (self->_cycleStartDateComponents)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_note)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_medicationUUID)
  {
    PBDataWriterWriteDataField();
  }

  v9 = self->_has;
  if (v9)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v9 = self->_has;
  }

  if ((v9 & 0x40) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_compatibilityVersionRange)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    scheduleType = self->_scheduleType;
    PBDataWriterWriteInt64Field();
    v12 = self->_has;
  }

  if ((v12 & 2) != 0)
  {
    displayOptions = self->_displayOptions;
    PBDataWriterWriteInt64Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_intervalDatas;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    duplicate = self->_duplicate;
    PBDataWriterWriteBOOLField();
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v12;
  }

  if (self->_medicationIdentifier)
  {
    [v12 setMedicationIdentifier:?];
    v4 = v12;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v4 + 6) = *&self->_startDateTime;
    v4[132] |= 0x20u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 3) = *&self->_endDateTime;
    v4[132] |= 4u;
  }

  if (self->_createdTimeZone)
  {
    [v12 setCreatedTimeZone:?];
    v4 = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 4) = *&self->_frequencyType;
    v4[132] |= 8u;
  }

  if (self->_cycleStartDateComponents)
  {
    [v12 setCycleStartDateComponents:?];
    v4 = v12;
  }

  if (self->_note)
  {
    [v12 setNote:?];
    v4 = v12;
  }

  if (self->_medicationUUID)
  {
    [v12 setMedicationUUID:?];
    v4 = v12;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 1) = *&self->_creationDate;
    v4[132] |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    v4[128] = self->_deleted;
    v4[132] |= 0x40u;
  }

  if (self->_syncIdentity)
  {
    [v12 setSyncIdentity:?];
    v4 = v12;
  }

  if (self->_compatibilityVersionRange)
  {
    [v12 setCompatibilityVersionRange:?];
    v4 = v12;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    *(v4 + 5) = self->_scheduleType;
    v4[132] |= 0x10u;
    v7 = self->_has;
  }

  if ((v7 & 2) != 0)
  {
    *(v4 + 2) = self->_displayOptions;
    v4[132] |= 2u;
  }

  if ([(HDCodableMedicationSchedule *)self intervalDatasCount])
  {
    [v12 clearIntervalDatas];
    v8 = [(HDCodableMedicationSchedule *)self intervalDatasCount];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(HDCodableMedicationSchedule *)self intervalDataAtIndex:i];
        [v12 addIntervalData:v11];
      }
    }
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v12[129] = self->_duplicate;
    v12[132] |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSString *)self->_medicationIdentifier copyWithZone:a3];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 48) = self->_startDateTime;
    *(v5 + 132) |= 0x20u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_endDateTime;
    *(v5 + 132) |= 4u;
  }

  v11 = [(NSString *)self->_createdTimeZone copyWithZone:a3];
  v12 = *(v5 + 64);
  *(v5 + 64) = v11;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_frequencyType;
    *(v5 + 132) |= 8u;
  }

  v13 = [(HDCodableDateComponents *)self->_cycleStartDateComponents copyWithZone:a3];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_note copyWithZone:a3];
  v16 = *(v5 + 104);
  *(v5 + 104) = v15;

  v17 = [(NSData *)self->_medicationUUID copyWithZone:a3];
  v18 = *(v5 + 96);
  *(v5 + 96) = v17;

  v19 = self->_has;
  if (v19)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 132) |= 1u;
    v19 = self->_has;
  }

  if ((v19 & 0x40) != 0)
  {
    *(v5 + 128) = self->_deleted;
    *(v5 + 132) |= 0x40u;
  }

  v20 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v21 = *(v5 + 112);
  *(v5 + 112) = v20;

  v22 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange copyWithZone:a3];
  v23 = *(v5 + 56);
  *(v5 + 56) = v22;

  v24 = self->_has;
  if ((v24 & 0x10) != 0)
  {
    *(v5 + 40) = self->_scheduleType;
    *(v5 + 132) |= 0x10u;
    v24 = self->_has;
  }

  if ((v24 & 2) != 0)
  {
    *(v5 + 16) = self->_displayOptions;
    *(v5 + 132) |= 2u;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = self->_intervalDatas;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v33 + 1) + 8 * i) copyWithZone:{a3, v33}];
        [v5 addIntervalData:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v27);
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 129) = self->_duplicate;
    *(v5 + 132) |= 0x80u;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 15))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_45;
    }
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier | *(v4 + 11))
  {
    if (![(NSString *)medicationIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  has = self->_has;
  v8 = v4[132];
  if ((has & 0x20) != 0)
  {
    if ((v4[132] & 0x20) == 0 || self->_startDateTime != *(v4 + 6))
    {
      goto LABEL_45;
    }
  }

  else if ((v4[132] & 0x20) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[132] & 4) == 0 || self->_endDateTime != *(v4 + 3))
    {
      goto LABEL_45;
    }
  }

  else if ((v4[132] & 4) != 0)
  {
    goto LABEL_45;
  }

  createdTimeZone = self->_createdTimeZone;
  if (createdTimeZone | *(v4 + 8))
  {
    if (![(NSString *)createdTimeZone isEqual:?])
    {
      goto LABEL_45;
    }

    has = self->_has;
  }

  v10 = v4[132];
  if ((has & 8) != 0)
  {
    if ((v4[132] & 8) == 0 || self->_frequencyType != *(v4 + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((v4[132] & 8) != 0)
  {
    goto LABEL_45;
  }

  cycleStartDateComponents = self->_cycleStartDateComponents;
  if (cycleStartDateComponents | *(v4 + 9) && ![(HDCodableDateComponents *)cycleStartDateComponents isEqual:?])
  {
    goto LABEL_45;
  }

  note = self->_note;
  if (note | *(v4 + 13))
  {
    if (![(NSString *)note isEqual:?])
    {
      goto LABEL_45;
    }
  }

  medicationUUID = self->_medicationUUID;
  if (medicationUUID | *(v4 + 12))
  {
    if (![(NSData *)medicationUUID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v14 = v4[132];
  if (*&self->_has)
  {
    if ((v4[132] & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_45;
    }
  }

  else if (v4[132])
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[132] & 0x40) == 0)
    {
      goto LABEL_45;
    }

    v21 = v4[128];
    if (self->_deleted)
    {
      if ((v4[128] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v4[128])
    {
      goto LABEL_45;
    }
  }

  else if ((v4[132] & 0x40) != 0)
  {
    goto LABEL_45;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 14) && ![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
  {
    goto LABEL_45;
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange | *(v4 + 7))
  {
    if (![(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v17 = self->_has;
  v18 = v4[132];
  if ((v17 & 0x10) != 0)
  {
    if ((v4[132] & 0x10) == 0 || self->_scheduleType != *(v4 + 5))
    {
      goto LABEL_45;
    }
  }

  else if ((v4[132] & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[132] & 2) == 0 || self->_displayOptions != *(v4 + 2))
    {
      goto LABEL_45;
    }
  }

  else if ((v4[132] & 2) != 0)
  {
    goto LABEL_45;
  }

  intervalDatas = self->_intervalDatas;
  if (intervalDatas | *(v4 + 10))
  {
    if (![(NSMutableArray *)intervalDatas isEqual:?])
    {
      goto LABEL_45;
    }

    v17 = self->_has;
  }

  v23 = v4[132];
  if ((v17 & 0x80) == 0)
  {
    v19 = v23 >= 0;
    goto LABEL_46;
  }

  if (v23 < 0)
  {
    if (self->_duplicate)
    {
      if (v4[129])
      {
        goto LABEL_69;
      }
    }

    else if (!v4[129])
    {
LABEL_69:
      v19 = 1;
      goto LABEL_46;
    }
  }

LABEL_45:
  v19 = 0;
LABEL_46:

  return v19;
}

- (unint64_t)hash
{
  v41 = [(NSData *)self->_uuid hash];
  v40 = [(NSString *)self->_medicationIdentifier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    startDateTime = self->_startDateTime;
    if (startDateTime < 0.0)
    {
      startDateTime = -startDateTime;
    }

    *v3.i64 = floor(startDateTime + 0.5);
    v7 = (startDateTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
    v5 = 2654435761u * *v3.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  if ((*&self->_has & 4) != 0)
  {
    endDateTime = self->_endDateTime;
    if (endDateTime < 0.0)
    {
      endDateTime = -endDateTime;
    }

    *v3.i64 = floor(endDateTime + 0.5);
    v11 = (endDateTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v3).i64;
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

  v38 = v9;
  v37 = [(NSString *)self->_createdTimeZone hash];
  if ((*&self->_has & 8) != 0)
  {
    frequencyType = self->_frequencyType;
    if (frequencyType < 0.0)
    {
      frequencyType = -frequencyType;
    }

    *v13.i64 = floor(frequencyType + 0.5);
    v17 = (frequencyType - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v14, v13).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  v36 = [(HDCodableDateComponents *)self->_cycleStartDateComponents hash];
  v35 = [(NSString *)self->_note hash];
  v33 = [(NSData *)self->_medicationUUID hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v19.i64 = floor(creationDate + 0.5);
    v23 = (creationDate - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v20, v19).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v25 = 2654435761 * self->_deleted;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v27 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v28 = 2654435761 * self->_scheduleType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v28 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_38:
      v29 = 2654435761 * self->_displayOptions;
      goto LABEL_41;
    }
  }

  v29 = 0;
LABEL_41:
  v30 = [(NSMutableArray *)self->_intervalDatas hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v31 = 2654435761 * self->_duplicate;
  }

  else
  {
    v31 = 0;
  }

  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v15 ^ v36 ^ v35 ^ v34 ^ v21 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31;
}

- (void)mergeFrom:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 15))
  {
    [(HDCodableMedicationSchedule *)self setUuid:?];
  }

  if (*(v4 + 11))
  {
    [(HDCodableMedicationSchedule *)self setMedicationIdentifier:?];
  }

  v5 = v4[132];
  if ((v5 & 0x20) != 0)
  {
    self->_startDateTime = *(v4 + 6);
    *&self->_has |= 0x20u;
    v5 = v4[132];
  }

  if ((v5 & 4) != 0)
  {
    self->_endDateTime = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 8))
  {
    [(HDCodableMedicationSchedule *)self setCreatedTimeZone:?];
  }

  if ((v4[132] & 8) != 0)
  {
    self->_frequencyType = *(v4 + 4);
    *&self->_has |= 8u;
  }

  cycleStartDateComponents = self->_cycleStartDateComponents;
  v7 = *(v4 + 9);
  if (cycleStartDateComponents)
  {
    if (v7)
    {
      [(HDCodableDateComponents *)cycleStartDateComponents mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableMedicationSchedule *)self setCycleStartDateComponents:?];
  }

  if (*(v4 + 13))
  {
    [(HDCodableMedicationSchedule *)self setNote:?];
  }

  if (*(v4 + 12))
  {
    [(HDCodableMedicationSchedule *)self setMedicationUUID:?];
  }

  v8 = v4[132];
  if (v8)
  {
    self->_creationDate = *(v4 + 1);
    *&self->_has |= 1u;
    v8 = v4[132];
  }

  if ((v8 & 0x40) != 0)
  {
    self->_deleted = v4[128];
    *&self->_has |= 0x40u;
  }

  syncIdentity = self->_syncIdentity;
  v10 = *(v4 + 14);
  if (syncIdentity)
  {
    if (v10)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(HDCodableMedicationSchedule *)self setSyncIdentity:?];
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  v12 = *(v4 + 7);
  if (compatibilityVersionRange)
  {
    if (v12)
    {
      [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HDCodableMedicationSchedule *)self setCompatibilityVersionRange:?];
  }

  v13 = v4[132];
  if ((v13 & 0x10) != 0)
  {
    self->_scheduleType = *(v4 + 5);
    *&self->_has |= 0x10u;
    v13 = v4[132];
  }

  if ((v13 & 2) != 0)
  {
    self->_displayOptions = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(v4 + 10);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(HDCodableMedicationSchedule *)self addIntervalData:*(*(&v20 + 1) + 8 * i), v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  if (v4[132] < 0)
  {
    self->_duplicate = v4[129];
    *&self->_has |= 0x80u;
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end