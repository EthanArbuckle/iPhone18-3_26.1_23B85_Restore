@interface HDCodableOnboardingCompletion
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedCompletionDate;
- (id)decodedModificationDate;
- (id)decodedUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCountryCodeProvenance:(BOOL)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableOnboardingCompletion

- (id)decodedCompletionDate
{
  if ([(HDCodableOnboardingCompletion *)self hasCompletionDate])
  {
    [(HDCodableOnboardingCompletion *)self completionDate];
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedModificationDate
{
  if ([(HDCodableOnboardingCompletion *)self hasModificationDate])
  {
    [(HDCodableOnboardingCompletion *)self modificationDate];
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedUUID
{
  if ([(HDCodableOnboardingCompletion *)self hasUuid])
  {
    v3 = MEMORY[0x277CCAD78];
    v4 = [(HDCodableOnboardingCompletion *)self uuid];
    v5 = [v3 hk_UUIDWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isValidWithError:(id *)a3
{
  v5 = [(HDCodableOnboardingCompletion *)self decodedUUID];

  if (v5)
  {
    if ([(HDCodableOnboardingCompletion *)self hasModificationDate])
    {
      if ([(HDCodableOnboardingCompletion *)self deleted])
      {
        return 1;
      }

      if ([(HDCodableOnboardingCompletion *)self hasFeatureIdentifier])
      {
        if ([(HDCodableOnboardingCompletion *)self hasVersion]&& [(HDCodableOnboardingCompletion *)self hasCompletionDate])
        {
          return 1;
        }

        v7 = @"Failed to decode onboarding completion due to missing version";
      }

      else
      {
        v7 = @"Failed to decode onboarding completion due to missing featureIdentifier";
      }
    }

    else
    {
      v7 = @"Failed to decode onboarding completion due to missing modification date";
    }
  }

  else
  {
    v7 = @"Failed to decode onboarding completion due to missing UUID";
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:v7];
  return 0;
}

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasModificationDate:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
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

- (void)setHasCountryCodeProvenance:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableOnboardingCompletion;
  v4 = [(HDCodableOnboardingCompletion *)&v8 description];
  v5 = [(HDCodableOnboardingCompletion *)self dictionaryRepresentation];
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

  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier)
  {
    [v4 setObject:featureIdentifier forKey:@"featureIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
    [v4 setObject:v8 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_completionDate];
    [v4 setObject:v9 forKey:@"completionDate"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v4 setObject:countryCode forKey:@"countryCode"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [v4 setObject:v16 forKey:@"modificationDate"];

    v11 = self->_has;
    if ((v11 & 0x10) == 0)
    {
LABEL_13:
      if ((v11 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
  [v4 setObject:v17 forKey:@"deleted"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_countryCodeProvenance];
    [v4 setObject:v12 forKey:@"countryCodeProvenance"];
  }

LABEL_15:
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v14 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  if (self->_featureIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    v4 = v12;
    has = self->_has;
  }

  if (has)
  {
    completionDate = self->_completionDate;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    v4 = v12;
    v8 = self->_has;
    if ((v8 & 0x10) == 0)
    {
LABEL_13:
      if ((v8 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

  deleted = self->_deleted;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    countryCodeProvenance = self->_countryCodeProvenance;
    PBDataWriterWriteInt64Field();
    v4 = v12;
  }

LABEL_15:
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v7;
  }

  if (self->_featureIdentifier)
  {
    [v7 setFeatureIdentifier:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 4) = self->_version;
    *(v4 + 76) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_completionDate;
    *(v4 + 76) |= 1u;
  }

  if (self->_countryCode)
  {
    [v7 setCountryCode:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(v4 + 3) = *&self->_modificationDate;
    *(v4 + 76) |= 4u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_13:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 72) = self->_deleted;
  *(v4 + 76) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    *(v4 + 2) = self->_countryCodeProvenance;
    *(v4 + 76) |= 2u;
  }

LABEL_15:
  if (self->_syncIdentity)
  {
    [v7 setSyncIdentity:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_featureIdentifier copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 76) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_completionDate;
    *(v5 + 76) |= 1u;
  }

  v11 = [(NSString *)self->_countryCode copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v5 + 72) = self->_deleted;
    *(v5 + 76) |= 0x10u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v5 + 24) = self->_modificationDate;
  *(v5 + 76) |= 4u;
  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v13 & 2) != 0)
  {
LABEL_8:
    *(v5 + 16) = self->_countryCodeProvenance;
    *(v5 + 76) |= 2u;
  }

LABEL_9:
  v14 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 8))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_38;
    }
  }

  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier | *(v4 + 6))
  {
    if (![(NSString *)featureIdentifier isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v8 = *(v4 + 76);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 76) & 8) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 76) & 8) != 0)
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_completionDate != *(v4 + 1))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_38;
  }

  countryCode = self->_countryCode;
  if (countryCode | *(v4 + 5))
  {
    if (![(NSString *)countryCode isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v8 = *(v4 + 76);
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_modificationDate != *(v4 + 3))
    {
      goto LABEL_38;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_38;
  }

  if ((has & 0x10) == 0)
  {
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_26;
    }

LABEL_38:
    v12 = 0;
    goto LABEL_39;
  }

  if ((v8 & 0x10) == 0)
  {
    goto LABEL_38;
  }

  v10 = *(v4 + 72);
  if (self->_deleted)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_38;
  }

LABEL_26:
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_countryCodeProvenance != *(v4 + 2))
    {
      goto LABEL_38;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_38;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 7))
  {
    v12 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_39:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  v4 = [(NSString *)self->_featureIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  completionDate = self->_completionDate;
  if (completionDate < 0.0)
  {
    completionDate = -completionDate;
  }

  *v5.i64 = floor(completionDate + 0.5);
  v9 = (completionDate - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_9:
  v12 = [(NSString *)self->_countryCode hash];
  if ((*&self->_has & 4) != 0)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v13.i64 = floor(modificationDate + 0.5);
    v17 = (modificationDate - *v13.i64) * 1.84467441e19;
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

  if ((*&self->_has & 0x10) != 0)
  {
    v19 = 2654435761 * self->_deleted;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v20 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v15 ^ v19 ^ v20 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  }

  v19 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v20 = 2654435761 * self->_countryCodeProvenance;
  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v15 ^ v19 ^ v20 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 8))
  {
    [(HDCodableOnboardingCompletion *)self setUuid:?];
    v4 = v9;
  }

  if (*(v4 + 6))
  {
    [(HDCodableOnboardingCompletion *)self setFeatureIdentifier:?];
    v4 = v9;
  }

  v5 = *(v4 + 76);
  if ((v5 & 8) != 0)
  {
    self->_version = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = *(v4 + 76);
  }

  if (v5)
  {
    self->_completionDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(HDCodableOnboardingCompletion *)self setCountryCode:?];
    v4 = v9;
  }

  v6 = *(v4 + 76);
  if ((v6 & 4) != 0)
  {
    self->_modificationDate = *(v4 + 3);
    *&self->_has |= 4u;
    v6 = *(v4 + 76);
    if ((v6 & 0x10) == 0)
    {
LABEL_13:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 76) & 0x10) == 0)
  {
    goto LABEL_13;
  }

  self->_deleted = *(v4 + 72);
  *&self->_has |= 0x10u;
  if ((*(v4 + 76) & 2) != 0)
  {
LABEL_14:
    self->_countryCodeProvenance = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_15:
  syncIdentity = self->_syncIdentity;
  v8 = *(v4 + 7);
  if (syncIdentity)
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    syncIdentity = [(HDCodableOnboardingCompletion *)self setSyncIdentity:?];
  }

  v4 = v9;
LABEL_24:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end