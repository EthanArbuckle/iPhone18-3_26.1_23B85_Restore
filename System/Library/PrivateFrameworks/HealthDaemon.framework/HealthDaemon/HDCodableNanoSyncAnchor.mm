@interface HDCodableNanoSyncAnchor
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (int)StringAsObjectType:(id)type;
- (int)objectType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasObjectType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNanoSyncAnchor

- (id)nanoSyncDescription
{
  if ([(HDCodableNanoSyncAnchor *)self hasEntityIdentifier])
  {
    entityIdentifier = [(HDCodableNanoSyncAnchor *)self entityIdentifier];
    identifier = [entityIdentifier identifier];

    entityIdentifier2 = [(HDCodableNanoSyncAnchor *)self entityIdentifier];
    schema = [entityIdentifier2 schema];

    if (schema || (v14 = HDBuiltinSyncEntityClassForType(identifier)) == 0)
    {
      v7 = MEMORY[0x277CCACA8];
      entityIdentifier3 = [(HDCodableNanoSyncAnchor *)self entityIdentifier];
      schema2 = [entityIdentifier3 schema];
      v10 = schema2;
      v11 = @"HDSyncEntityType";
      if (schema2)
      {
        v11 = schema2;
      }

      v12 = [v7 stringWithFormat:@"%@(%ld) %lld", v11, identifier, self->_anchor];
    }

    else
    {
      v15 = NSStringFromClass(v14);
      if ([v15 hasPrefix:@"HD"])
      {
        v16 = [v15 substringFromIndex:{objc_msgSend(@"HD", "length")}];

        v15 = v16;
      }

      if ([v15 hasSuffix:@"SyncEntity"])
      {
        v17 = [v15 substringToIndex:{objc_msgSend(v15, "length") - objc_msgSend(@"SyncEntity", "length")}];

        v15 = v17;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%ld) %lld", v15, identifier, self->_anchor];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %lld", @"(null)", self->_anchor];
  }

  return v12;
}

- (int)objectType
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNanoSyncAnchor;
  v4 = [(HDCodableNanoSyncAnchor *)&v8 description];
  dictionaryRepresentation = [(HDCodableNanoSyncAnchor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = self->_objectType - 1;
    if (v5 < 0x32 && ((0x3EF9FF2FFFFFFuLL >> v5) & 1) != 0)
    {
      v6 = off_278616B30[v5];
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_objectType];
    }

    [dictionary setObject:v6 forKey:@"objectType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_anchor];
    [dictionary setObject:v7 forKey:@"anchor"];
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    dictionaryRepresentation = [(HDCodableEntityIdentifier *)entityIdentifier dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"entityIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    anchor = self->_anchor;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_entityIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[6] = self->_objectType;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_anchor;
    *(toCopy + 28) |= 1u;
  }

  if (self->_entityIdentifier)
  {
    v6 = toCopy;
    [toCopy setEntityIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_objectType;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_anchor;
    *(v5 + 28) |= 1u;
  }

  v8 = [(HDCodableEntityIdentifier *)self->_entityIdentifier copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_objectType != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_anchor != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_14;
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier | *(equalCopy + 2))
  {
    v7 = [(HDCodableEntityIdentifier *)entityIdentifier isEqual:?];
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
    v6 = 2654435761 * self->_objectType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(HDCodableEntityIdentifier *)self->_entityIdentifier hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_anchor;
  return v7 ^ v6 ^ [(HDCodableEntityIdentifier *)self->_entityIdentifier hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 28);
  if ((v6 & 2) != 0)
  {
    self->_objectType = *(fromCopy + 6);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 28);
  }

  if (v6)
  {
    self->_anchor = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  entityIdentifier = self->_entityIdentifier;
  v8 = v5[2];
  if (entityIdentifier)
  {
    if (v8)
    {
      [(HDCodableEntityIdentifier *)entityIdentifier mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableNanoSyncAnchor *)self setEntityIdentifier:?];
  }

  MEMORY[0x2821F96F8]();
}

@end