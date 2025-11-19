@interface HDCodableProvenance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedDeviceUUID;
- (id)decodedSourceUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOriginMinorVersion:(BOOL)a3;
- (void)setHasOriginPatchVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableProvenance

- (id)decodedSourceUUID
{
  if (self->_sourceUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedDeviceUUID
{
  if (self->_deviceUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHasOriginMinorVersion:(BOOL)a3
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

- (void)setHasOriginPatchVersion:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableProvenance;
  v4 = [(HDCodableProvenance *)&v8 description];
  v5 = [(HDCodableProvenance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  originBuild = self->_originBuild;
  if (originBuild)
  {
    [v3 setObject:originBuild forKey:@"originBuild"];
  }

  sourceUUID = self->_sourceUUID;
  if (sourceUUID)
  {
    [v4 setObject:sourceUUID forKey:@"sourceUUID"];
  }

  deviceUUID = self->_deviceUUID;
  if (deviceUUID)
  {
    [v4 setObject:deviceUUID forKey:@"deviceUUID"];
  }

  sourceVersion = self->_sourceVersion;
  if (sourceVersion)
  {
    [v4 setObject:sourceVersion forKey:@"sourceVersion"];
  }

  originProductType = self->_originProductType;
  if (originProductType)
  {
    [v4 setObject:originProductType forKey:@"originProductType"];
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName)
  {
    [v4 setObject:timeZoneName forKey:@"timeZoneName"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_originMajorVersion];
    [v4 setObject:v15 forKey:@"originMajorVersion"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
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

  v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_originMinorVersion];
  [v4 setObject:v16 forKey:@"originMinorVersion"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_originPatchVersion];
    [v4 setObject:v12 forKey:@"originPatchVersion"];
  }

LABEL_17:
  contributorUUID = self->_contributorUUID;
  if (contributorUUID)
  {
    [v4 setObject:contributorUUID forKey:@"contributorUUID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_originBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_sourceUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_deviceUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_sourceVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_originProductType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_timeZoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    originMajorVersion = self->_originMajorVersion;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
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

  originMinorVersion = self->_originMinorVersion;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    originPatchVersion = self->_originPatchVersion;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_17:
  if (self->_contributorUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_originBuild)
  {
    [v4 setOriginBuild:?];
    v4 = v6;
  }

  if (self->_sourceUUID)
  {
    [v6 setSourceUUID:?];
    v4 = v6;
  }

  if (self->_deviceUUID)
  {
    [v6 setDeviceUUID:?];
    v4 = v6;
  }

  if (self->_sourceVersion)
  {
    [v6 setSourceVersion:?];
    v4 = v6;
  }

  if (self->_originProductType)
  {
    [v6 setOriginProductType:?];
    v4 = v6;
  }

  if (self->_timeZoneName)
  {
    [v6 setTimeZoneName:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 8) = self->_originMajorVersion;
    *(v4 + 80) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
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

  *(v4 + 9) = self->_originMinorVersion;
  *(v4 + 80) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    *(v4 + 10) = self->_originPatchVersion;
    *(v4 + 80) |= 4u;
  }

LABEL_17:
  if (self->_contributorUUID)
  {
    [v6 setContributorUUID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_originBuild copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_sourceUUID copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSData *)self->_deviceUUID copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_sourceVersion copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSString *)self->_originProductType copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_timeZoneName copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 36) = self->_originMinorVersion;
    *(v5 + 80) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 32) = self->_originMajorVersion;
  *(v5 + 80) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_originPatchVersion;
    *(v5 + 80) |= 4u;
  }

LABEL_5:
  v19 = [(NSData *)self->_contributorUUID copyWithZone:a3];
  v20 = *(v5 + 8);
  *(v5 + 8) = v19;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  originBuild = self->_originBuild;
  if (originBuild | *(v4 + 3))
  {
    if (![(NSString *)originBuild isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sourceUUID = self->_sourceUUID;
  if (sourceUUID | *(v4 + 7))
  {
    if (![(NSData *)sourceUUID isEqual:?])
    {
      goto LABEL_31;
    }
  }

  deviceUUID = self->_deviceUUID;
  if (deviceUUID | *(v4 + 2))
  {
    if (![(NSData *)deviceUUID isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sourceVersion = self->_sourceVersion;
  if (sourceVersion | *(v4 + 8))
  {
    if (![(NSString *)sourceVersion isEqual:?])
    {
      goto LABEL_31;
    }
  }

  originProductType = self->_originProductType;
  if (originProductType | *(v4 + 6))
  {
    if (![(NSString *)originProductType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(v4 + 9))
  {
    if (![(NSString *)timeZoneName isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v11 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_originMajorVersion != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_originMinorVersion != *(v4 + 9))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_originPatchVersion != *(v4 + 10))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_31;
  }

  contributorUUID = self->_contributorUUID;
  if (contributorUUID | *(v4 + 1))
  {
    v13 = [(NSData *)contributorUUID isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_32:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_originBuild hash];
  v4 = [(NSData *)self->_sourceUUID hash];
  v5 = [(NSData *)self->_deviceUUID hash];
  v6 = [(NSString *)self->_sourceVersion hash];
  v7 = [(NSString *)self->_originProductType hash];
  v8 = [(NSString *)self->_timeZoneName hash];
  if ((*&self->_has & 1) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_contributorUUID hash];
  }

  v9 = 2654435761 * self->_originMajorVersion;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = 2654435761 * self->_originMinorVersion;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = 2654435761 * self->_originPatchVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_contributorUUID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(HDCodableProvenance *)self setOriginBuild:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(HDCodableProvenance *)self setSourceUUID:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(HDCodableProvenance *)self setDeviceUUID:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(HDCodableProvenance *)self setSourceVersion:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(HDCodableProvenance *)self setOriginProductType:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(HDCodableProvenance *)self setTimeZoneName:?];
    v4 = v6;
  }

  v5 = *(v4 + 80);
  if (v5)
  {
    self->_originMajorVersion = v4[8];
    *&self->_has |= 1u;
    v5 = *(v4 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_15:
      if ((v5 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v4[20] & 2) == 0)
  {
    goto LABEL_15;
  }

  self->_originMinorVersion = v4[9];
  *&self->_has |= 2u;
  if ((v4[20] & 4) != 0)
  {
LABEL_16:
    self->_originPatchVersion = v4[10];
    *&self->_has |= 4u;
  }

LABEL_17:
  if (*(v4 + 1))
  {
    [(HDCodableProvenance *)self setContributorUUID:?];
    v4 = v6;
  }
}

@end