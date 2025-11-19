@interface HDCodableNanoSyncAnchor
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (int)StringAsObjectType:(id)a3;
- (int)objectType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasObjectType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableNanoSyncAnchor

- (id)nanoSyncDescription
{
  if ([(HDCodableNanoSyncAnchor *)self hasEntityIdentifier])
  {
    v3 = [(HDCodableNanoSyncAnchor *)self entityIdentifier];
    v4 = [v3 identifier];

    v5 = [(HDCodableNanoSyncAnchor *)self entityIdentifier];
    v6 = [v5 schema];

    if (v6 || (v14 = HDBuiltinSyncEntityClassForType(v4)) == 0)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(HDCodableNanoSyncAnchor *)self entityIdentifier];
      v9 = [v8 schema];
      v10 = v9;
      v11 = @"HDSyncEntityType";
      if (v9)
      {
        v11 = v9;
      }

      v12 = [v7 stringWithFormat:@"%@(%ld) %lld", v11, v4, self->_anchor];
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

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%ld) %lld", v15, v4, self->_anchor];
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

- (void)setHasObjectType:(BOOL)a3
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

- (int)StringAsObjectType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CategorySamples"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"QuantitySamples"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Workouts"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ActivityCaches"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LegacyAchievements"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UserCharacteristics"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Deprecated7"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ObjectAssociations"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"UnitPreferences"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Sources"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Authorizations"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"Devices"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Correlations"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"DataTypeSourceOrder"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"MedicalID"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"NanoUserDefaults"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ProtectedNanoUserDefaults"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"LocationSeriesSamples"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"DeletedSamples"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"LegacyAchievementKeyValue"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"ActivityAchievementsKeyValue"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"BinarySamples"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"CDADocumentSamples"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"FHIRResources"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"ClinicalGateways"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"MedicationOrders"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"MedicationDispenseRecords"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"MedicationRecords"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"DiagnosticTestResults"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"DiagnosticTestReports"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"VaccinationRecords"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"ConditionRecords"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"AllergyRecords"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"ProcedureRecords"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"ClinicalAccounts"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"UserDefaults"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"ClinicalDeletedAccounts"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"AccountOwners"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"UnknownRecords"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"OnboardingCompletions"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"ECGSamples"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"SleepSchedules"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"QuantityDerivedCategorySamples"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"TypedObjectAssociations"])
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
  v5 = [(HDCodableNanoSyncAnchor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"objectType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_anchor];
    [v3 setObject:v7 forKey:@"anchor"];
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    v9 = [(HDCodableEntityIdentifier *)entityIdentifier dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"entityIdentifier"];
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
    objectType = self->_objectType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    anchor = self->_anchor;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }

  if (self->_entityIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[6] = self->_objectType;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_anchor;
    *(v4 + 28) |= 1u;
  }

  if (self->_entityIdentifier)
  {
    v6 = v4;
    [v4 setEntityIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(HDCodableEntityIdentifier *)self->_entityIdentifier copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_objectType != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_anchor != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_14;
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if ((v6 & 2) != 0)
  {
    self->_objectType = *(v4 + 6);
    *&self->_has |= 2u;
    v6 = *(v4 + 28);
  }

  if (v6)
  {
    self->_anchor = *(v4 + 1);
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