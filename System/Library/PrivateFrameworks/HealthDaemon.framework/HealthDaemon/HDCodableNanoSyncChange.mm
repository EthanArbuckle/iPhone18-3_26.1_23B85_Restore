@interface HDCodableNanoSyncChange
+ (id)changeWithNanoSyncEntityClass:(Class)class version:(id)version;
- ($2825F4736939C4A6D3AD43837233062D)versionRange;
- (BOOL)done;
- (BOOL)isEqual:(id)equal;
- (Class)syncEntityClassForProfile:(id)profile;
- (HDSyncAnchorRange)syncAnchorRange;
- (NSNumber)sequenceNumber;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedObjectsForProfile:(id)profile error:(id *)error;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (id)requiredAnchorMapWithProfile:(id)profile error:(id *)error;
- (id)speculativeCopy;
- (id)syncEntityIdentifier;
- (int)StringAsObjectType:(id)type;
- (int)objectType;
- (unint64_t)hash;
- (void)addObjectData:(id)data;
- (void)addRequiredAnchors:(id)anchors;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasComplete:(BOOL)complete;
- (void)setHasObjectType:(BOOL)type;
- (void)setHasSequence:(BOOL)sequence;
- (void)setHasSpeculative:(BOOL)speculative;
- (void)setHasStartAnchor:(BOOL)anchor;
- (void)setObjects:(id)objects syncAnchorRange:(HDSyncAnchorRange)range requiredAnchorMap:(id)map;
- (void)setVersionRange:(id)range;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNanoSyncChange

- (id)nanoSyncDescription
{
  v3 = [HDSyncEntityIdentifier alloc];
  entityIdentifier = [(HDCodableNanoSyncChange *)self entityIdentifier];
  v5 = [(HDSyncEntityIdentifier *)v3 initWithCodableEntityIdentifier:entityIdentifier];

  if (self->_speculative)
  {
    v6 = @"spec";
  }

  else
  {
    startAnchor = self->_startAnchor;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld -> %lld", startAnchor, self->_endAnchor];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v5, v6];

  return v8;
}

- (HDSyncAnchorRange)syncAnchorRange
{
  if ((~*&self->_has & 5) != 0)
  {
    v2 = HDSyncAnchorRangeMake(-1, -1);
  }

  else
  {
    v2 = HDSyncAnchorRangeMake(self->_startAnchor, self->_endAnchor);
  }

  result.end = v3;
  result.start = v2;
  return result;
}

- (NSNumber)sequenceNumber
{
  if ([(HDCodableNanoSyncChange *)self hasSequence])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCodableNanoSyncChange sequence](self, "sequence")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)done
{
  if (![(HDCodableNanoSyncChange *)self hasComplete])
  {
    return 1;
  }

  return [(HDCodableNanoSyncChange *)self complete];
}

- (int)objectType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_objectType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasObjectType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsObjectType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CategorySamples"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"QuantitySamples"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Workouts"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ActivityCaches"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"LegacyAchievements"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"UserCharacteristics"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Deprecated7"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ObjectAssociations"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"UnitPreferences"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Sources"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"Authorizations"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"Devices"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"Correlations"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"DataTypeSourceOrder"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"MedicalID"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"NanoUserDefaults"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"ProtectedNanoUserDefaults"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"LocationSeriesSamples"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"DeletedSamples"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"LegacyAchievementKeyValue"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"ActivityAchievementsKeyValue"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"BinarySamples"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"CDADocumentSamples"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"FHIRResources"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"ClinicalGateways"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"MedicationOrders"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"MedicationDispenseRecords"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"MedicationRecords"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"DiagnosticTestResults"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"DiagnosticTestReports"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"VaccinationRecords"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"ConditionRecords"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"AllergyRecords"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"ProcedureRecords"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"ClinicalAccounts"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"UserDefaults"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"ClinicalDeletedAccounts"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"AccountOwners"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"UnknownRecords"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"OnboardingCompletions"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"ECGSamples"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"SleepSchedules"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"QuantityDerivedCategorySamples"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"TypedObjectAssociations"])
  {
    v4 = 50;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartAnchor:(BOOL)anchor
{
  if (anchor)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addObjectData:(id)data
{
  dataCopy = data;
  objectDatas = self->_objectDatas;
  v8 = dataCopy;
  if (!objectDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_objectDatas;
    self->_objectDatas = v6;

    dataCopy = v8;
    objectDatas = self->_objectDatas;
  }

  [(NSMutableArray *)objectDatas addObject:dataCopy];
}

- (void)addRequiredAnchors:(id)anchors
{
  anchorsCopy = anchors;
  requiredAnchors = self->_requiredAnchors;
  v8 = anchorsCopy;
  if (!requiredAnchors)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_requiredAnchors;
    self->_requiredAnchors = v6;

    anchorsCopy = v8;
    requiredAnchors = self->_requiredAnchors;
  }

  [(NSMutableArray *)requiredAnchors addObject:anchorsCopy];
}

- (void)setHasSpeculative:(BOOL)speculative
{
  if (speculative)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSequence:(BOOL)sequence
{
  if (sequence)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasComplete:(BOOL)complete
{
  if (complete)
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
  v8.super_class = HDCodableNanoSyncChange;
  v4 = [(HDCodableNanoSyncChange *)&v8 description];
  dictionaryRepresentation = [(HDCodableNanoSyncChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = self->_objectType - 1;
    if (v5 < 0x32 && ((0x3EF9FF2FFFFFFuLL >> v5) & 1) != 0)
    {
      v6 = off_27861C208[v5];
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_objectType];
    }

    [dictionary setObject:v6 forKey:@"objectType"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_startAnchor];
    [dictionary setObject:v7 forKey:@"startAnchor"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_endAnchor];
    [dictionary setObject:v8 forKey:@"endAnchor"];
  }

  objectDatas = self->_objectDatas;
  if (objectDatas)
  {
    [dictionary setObject:objectDatas forKey:@"objectData"];
  }

  if ([(NSMutableArray *)self->_requiredAnchors count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_requiredAnchors, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = self->_requiredAnchors;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"requiredAnchors"];
  }

  v17 = self->_has;
  if ((v17 & 0x20) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_speculative];
    [dictionary setObject:v25 forKey:@"speculative"];

    v17 = self->_has;
    if ((v17 & 2) == 0)
    {
LABEL_24:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_24;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sequence];
  [dictionary setObject:v26 forKey:@"sequence"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_25:
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_complete];
    [dictionary setObject:v18 forKey:@"complete"];
  }

LABEL_26:
  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    dictionaryRepresentation2 = [(HDCodableEntityIdentifier *)entityIdentifier dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"entityIdentifier"];
  }

  version = self->_version;
  if (version)
  {
    dictionaryRepresentation3 = [(HDCodableSyncVersionRange *)version dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"version"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  startAnchor = self->_startAnchor;
  PBDataWriterWriteInt64Field();
  if (*&self->_has)
  {
LABEL_4:
    endAnchor = self->_endAnchor;
    PBDataWriterWriteInt64Field();
  }

LABEL_5:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_objectDatas;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_requiredAnchors;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((v19 & 0x20) != 0)
  {
    speculative = self->_speculative;
    PBDataWriterWriteBOOLField();
    v19 = self->_has;
    if ((v19 & 2) == 0)
    {
LABEL_21:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_21;
  }

  sequence = self->_sequence;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_22:
    complete = self->_complete;
    PBDataWriterWriteBOOLField();
  }

LABEL_23:
  if (self->_entityIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_version)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    toCopy[3] = self->_startAnchor;
    *(toCopy + 76) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(toCopy + 12) = self->_objectType;
  *(toCopy + 76) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    toCopy[1] = self->_endAnchor;
    *(toCopy + 76) |= 1u;
  }

LABEL_5:
  v16 = toCopy;
  if ([(HDCodableNanoSyncChange *)self objectDatasCount])
  {
    [v16 clearObjectDatas];
    objectDatasCount = [(HDCodableNanoSyncChange *)self objectDatasCount];
    if (objectDatasCount)
    {
      v7 = objectDatasCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableNanoSyncChange *)self objectDataAtIndex:i];
        [v16 addObjectData:v9];
      }
    }
  }

  if ([(HDCodableNanoSyncChange *)self requiredAnchorsCount])
  {
    [v16 clearRequiredAnchors];
    requiredAnchorsCount = [(HDCodableNanoSyncChange *)self requiredAnchorsCount];
    if (requiredAnchorsCount)
    {
      v11 = requiredAnchorsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableNanoSyncChange *)self requiredAnchorsAtIndex:j];
        [v16 addRequiredAnchors:v13];
      }
    }
  }

  v14 = self->_has;
  v15 = v16;
  if ((v14 & 0x20) != 0)
  {
    *(v16 + 73) = self->_speculative;
    *(v16 + 76) |= 0x20u;
    v14 = self->_has;
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

  *(v16 + 2) = self->_sequence;
  *(v16 + 76) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    *(v16 + 72) = self->_complete;
    *(v16 + 76) |= 0x10u;
  }

LABEL_17:
  if (self->_entityIdentifier)
  {
    [v16 setEntityIdentifier:?];
    v15 = v16;
  }

  if (self->_version)
  {
    [v16 setVersion:?];
    v15 = v16;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 48) = self->_objectType;
    *(v5 + 76) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_startAnchor;
  *(v5 + 76) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_endAnchor;
    *(v5 + 76) |= 1u;
  }

LABEL_5:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = self->_objectDatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v31 + 1) + 8 * i) copyWithZone:zone];
        [v6 addObjectData:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_requiredAnchors;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v27 + 1) + 8 * j) copyWithZone:{zone, v27}];
        [v6 addRequiredAnchors:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 0x20) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    *(v6 + 16) = self->_sequence;
    *(v6 + 76) |= 2u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(v6 + 73) = self->_speculative;
  *(v6 + 76) |= 0x20u;
  v20 = self->_has;
  if ((v20 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  if ((v20 & 0x10) != 0)
  {
LABEL_22:
    *(v6 + 72) = self->_complete;
    *(v6 + 76) |= 0x10u;
  }

LABEL_23:
  v21 = [(HDCodableEntityIdentifier *)self->_entityIdentifier copyWithZone:zone, v27];
  v22 = *(v6 + 32);
  *(v6 + 32) = v21;

  v23 = [(HDCodableSyncVersionRange *)self->_version copyWithZone:zone];
  v24 = *(v6 + 64);
  *(v6 + 64) = v23;

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = *(equalCopy + 76);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0 || self->_objectType != *(equalCopy + 12))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_startAnchor != *(equalCopy + 3))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_endAnchor != *(equalCopy + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_41;
  }

  objectDatas = self->_objectDatas;
  if (objectDatas | *(equalCopy + 5) && ![(NSMutableArray *)objectDatas isEqual:?])
  {
    goto LABEL_41;
  }

  requiredAnchors = self->_requiredAnchors;
  if (requiredAnchors | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)requiredAnchors isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v8 = *(equalCopy + 76);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 76) & 0x20) == 0)
    {
      goto LABEL_41;
    }

    v9 = *(equalCopy + 73);
    if (self->_speculative)
    {
      if ((*(equalCopy + 73) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (*(equalCopy + 73))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 76) & 0x20) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_sequence != *(equalCopy + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 76) & 0x10) == 0)
    {
      goto LABEL_34;
    }

LABEL_41:
    v12 = 0;
    goto LABEL_42;
  }

  if ((*(equalCopy + 76) & 0x10) == 0)
  {
    goto LABEL_41;
  }

  v14 = *(equalCopy + 72);
  if (self->_complete)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_41;
  }

LABEL_34:
  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier | *(equalCopy + 4) && ![(HDCodableEntityIdentifier *)entityIdentifier isEqual:?])
  {
    goto LABEL_41;
  }

  version = self->_version;
  if (version | *(equalCopy + 8))
  {
    v12 = [(HDCodableSyncVersionRange *)version isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_42:

  return v12;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_objectType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_startAnchor;
  if (*&self->_has)
  {
LABEL_4:
    v5 = 2654435761 * self->_endAnchor;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSMutableArray *)self->_objectDatas hash];
  v7 = [(NSMutableArray *)self->_requiredAnchors hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v8 = 2654435761 * self->_speculative;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = 2654435761 * self->_sequence;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761 * self->_complete;
LABEL_15:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  v12 = v9 ^ v10 ^ [(HDCodableEntityIdentifier *)self->_entityIdentifier hash];
  return v11 ^ v12 ^ [(HDCodableSyncVersionRange *)self->_version hash];
}

- (void)mergeFrom:(id)from
{
  v33 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 76);
  if ((v6 & 8) != 0)
  {
    self->_objectType = *(fromCopy + 12);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 76);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 76) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_startAnchor = *(fromCopy + 3);
  *&self->_has |= 4u;
  if (*(fromCopy + 76))
  {
LABEL_4:
    self->_endAnchor = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = *(fromCopy + 5);
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCodableNanoSyncChange *)self addObjectData:*(*(&v27 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = *(v5 + 7);
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HDCodableNanoSyncChange *)self addRequiredAnchors:*(*(&v23 + 1) + 8 * j), v23];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 76);
  if ((v17 & 0x20) != 0)
  {
    self->_speculative = *(v5 + 73);
    *&self->_has |= 0x20u;
    v17 = *(v5 + 76);
    if ((v17 & 2) == 0)
    {
LABEL_21:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v5 + 76) & 2) == 0)
  {
    goto LABEL_21;
  }

  self->_sequence = *(v5 + 2);
  *&self->_has |= 2u;
  if ((*(v5 + 76) & 0x10) != 0)
  {
LABEL_22:
    self->_complete = *(v5 + 72);
    *&self->_has |= 0x10u;
  }

LABEL_23:
  entityIdentifier = self->_entityIdentifier;
  v19 = *(v5 + 4);
  if (entityIdentifier)
  {
    if (v19)
    {
      [(HDCodableEntityIdentifier *)entityIdentifier mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(HDCodableNanoSyncChange *)self setEntityIdentifier:?];
  }

  version = self->_version;
  v21 = *(v5 + 8);
  if (version)
  {
    if (v21)
    {
      [(HDCodableSyncVersionRange *)version mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(HDCodableNanoSyncChange *)self setVersion:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- ($2825F4736939C4A6D3AD43837233062D)versionRange
{
  version = [(HDCodableNanoSyncChange *)self version];
  syncVersionRange = [version syncVersionRange];

  return syncVersionRange;
}

+ (id)changeWithNanoSyncEntityClass:(Class)class version:(id)version
{
  v6 = objc_alloc_init(self);
  if (objc_opt_respondsToSelector())
  {
    [v6 setObjectType:{-[objc_class nanoSyncObjectType](class, "nanoSyncObjectType")}];
  }

  syncEntityIdentifier = [(objc_class *)class syncEntityIdentifier];
  codableEntityIdentifier = [syncEntityIdentifier codableEntityIdentifier];
  [v6 setEntityIdentifier:codableEntityIdentifier];

  v9 = [HDCodableSyncVersionRange versionRangeWithSyncVersionRange:version];
  [v6 setVersion:v9];

  return v6;
}

- (id)syncEntityIdentifier
{
  if (self->_entityIdentifier)
  {
    syncEntityIdentifier = [[HDSyncEntityIdentifier alloc] initWithCodableEntityIdentifier:self->_entityIdentifier];
  }

  else if ((*&self->_has & 8) != 0)
  {
    syncEntityIdentifier = [HDNanoSyncEntityClassForObjectType(self->_objectType) syncEntityIdentifier];
  }

  else
  {
    syncEntityIdentifier = 0;
  }

  return syncEntityIdentifier;
}

- (Class)syncEntityClassForProfile:(id)profile
{
  profileCopy = profile;
  if (self->_entityIdentifier)
  {
    v5 = [[HDSyncEntityIdentifier alloc] initWithCodableEntityIdentifier:self->_entityIdentifier];
    syncEngine = [profileCopy syncEngine];
    allSyncEntitiesByIdentifier = [syncEngine allSyncEntitiesByIdentifier];
    v8 = [allSyncEntitiesByIdentifier objectForKeyedSubscript:v5];
  }

  else if ((*&self->_has & 8) != 0)
  {
    v8 = HDNanoSyncEntityClassForObjectType(self->_objectType);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)speculativeCopy
{
  v3 = objc_alloc_init(HDCodableNanoSyncChange);
  [(HDCodableNanoSyncChange *)self copyTo:v3];
  [(HDCodableNanoSyncChange *)v3 setSpeculative:1];
  [(HDCodableNanoSyncChange *)v3 clearRequiredAnchors];
  [(HDCodableNanoSyncChange *)v3 setHasStartAnchor:0];
  [(HDCodableNanoSyncChange *)v3 setHasEndAnchor:0];

  return v3;
}

- (void)setObjects:(id)objects syncAnchorRange:(HDSyncAnchorRange)range requiredAnchorMap:(id)map
{
  end = range.end;
  start = range.start;
  v26 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  mapCopy = map;
  [(HDCodableNanoSyncChange *)self clearObjectDatas];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = objectsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        data = [v16 data];
        if (data)
        {
          [(HDCodableNanoSyncChange *)self addObjectData:data];
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [(HDCodableNanoSyncChange *)self setStartAnchor:start];
  [(HDCodableNanoSyncChange *)self setEndAnchor:end];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__HDCodableNanoSyncChange_NanoSyncSupport__setObjects_syncAnchorRange_requiredAnchorMap___block_invoke;
  v20[3] = &unk_278615EC0;
  v20[4] = self;
  [mapCopy enumerateAnchorsAndEntityIdentifiersWithBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __89__HDCodableNanoSyncChange_NanoSyncSupport__setObjects_syncAnchorRange_requiredAnchorMap___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = objc_alloc_init(HDCodableNanoSyncAnchor);
  [(HDCodableNanoSyncAnchor *)v5 setAnchor:a3];
  v6 = [v10 codableEntityIdentifier];
  [(HDCodableNanoSyncAnchor *)v5 setEntityIdentifier:v6];

  v7 = [v10 schemaIdentifier];

  if (!v7)
  {
    v8 = HDBuiltinSyncEntityClassForType([v10 entityIdentifier]);
    if (v8)
    {
      v9 = v8;
      if (objc_opt_respondsToSelector())
      {
        -[HDCodableNanoSyncAnchor setObjectType:](v5, "setObjectType:", [v9 nanoSyncObjectType]);
      }
    }
  }

  [*(a1 + 32) addRequiredAnchors:v5];
}

- (void)setVersionRange:(id)range
{
  var1 = range.var1;
  version = [(HDCodableNanoSyncChange *)self version];
  [version setMinimum:range];

  version2 = [(HDCodableNanoSyncChange *)self version];
  [version2 setCurrent:var1];
}

- (id)requiredAnchorMapWithProfile:(id)profile error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v6 = objc_alloc_init(HDSyncAnchorMap);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_requiredAnchors;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        anchor = [v11 anchor];
        entityIdentifier = [v11 entityIdentifier];

        if (!entityIdentifier)
        {
          goto LABEL_8;
        }

        v14 = [HDSyncEntityIdentifier alloc];
        entityIdentifier2 = [v11 entityIdentifier];
        entityIdentifier = [(HDSyncEntityIdentifier *)v14 initWithCodableEntityIdentifier:entityIdentifier2];

        syncEngine = [profileCopy syncEngine];
        allSyncEntitiesByIdentifier = [syncEngine allSyncEntitiesByIdentifier];
        v18 = [allSyncEntitiesByIdentifier objectForKeyedSubscript:entityIdentifier];

        if (!v18)
        {
LABEL_8:
          v18 = HDNanoSyncEntityClassForObjectType([v11 objectType]);
        }

        if (![v11 hasAnchor] || anchor < 0 || !v18)
        {

          [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:3 format:{@"invalid required anchor %@", v11}];
          v6 = 0;
          goto LABEL_16;
        }

        -[HDSyncAnchorMap setAnchor:forSyncEntity:](v6, "setAnchor:forSyncEntity:", [v11 anchor], v18);
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)decodedObjectsForProfile:(id)profile error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(HDCodableNanoSyncChange *)self syncEntityClassForProfile:profile];
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"No sync entity found for %@", self}];
    goto LABEL_14;
  }

  v7 = v6;
  if (![(NSMutableArray *)self->_objectDatas count])
  {
LABEL_14:
    array = 0;
    goto LABEL_15;
  }

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_objectDatas;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(objc_class *)v7 decodeSyncObjectWithData:*(*(&v17 + 1) + 8 * i)];
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];

  return array;
}

@end