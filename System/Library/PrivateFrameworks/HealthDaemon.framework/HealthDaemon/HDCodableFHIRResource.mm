@interface HDCodableFHIRResource
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFirstSeenDate:(BOOL)date;
- (void)setHasOriginVersionMajor:(BOOL)major;
- (void)setHasOriginVersionMinor:(BOOL)minor;
- (void)setHasOriginVersionPatch:(BOOL)patch;
- (void)setHasReceivedDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HDCodableFHIRResource

- (void)setHasReceivedDate:(BOOL)date
{
  if (date)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasOriginVersionMajor:(BOOL)major
{
  if (major)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOriginVersionMinor:(BOOL)minor
{
  if (minor)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasOriginVersionPatch:(BOOL)patch
{
  if (patch)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasFirstSeenDate:(BOOL)date
{
  if (date)
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
  v8.super_class = HDCodableFHIRResource;
  v4 = [(HDCodableFHIRResource *)&v8 description];
  dictionaryRepresentation = [(HDCodableFHIRResource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  gatewayExternalID = self->_gatewayExternalID;
  if (gatewayExternalID)
  {
    [dictionary setObject:gatewayExternalID forKey:@"gatewayExternalID"];
  }

  resourceID = self->_resourceID;
  if (resourceID)
  {
    [v4 setObject:resourceID forKey:@"resourceID"];
  }

  rawContent = self->_rawContent;
  if (rawContent)
  {
    [v4 setObject:rawContent forKey:@"rawContent"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_receivedDate];
    [v4 setObject:v8 forKey:@"receivedDate"];
  }

  resourceType = self->_resourceType;
  if (resourceType)
  {
    [v4 setObject:resourceType forKey:@"resourceType"];
  }

  fhirVersion = self->_fhirVersion;
  if (fhirVersion)
  {
    [v4 setObject:fhirVersion forKey:@"fhirVersion"];
  }

  receivedDateTimeZoneName = self->_receivedDateTimeZoneName;
  if (receivedDateTimeZoneName)
  {
    [v4 setObject:receivedDateTimeZoneName forKey:@"receivedDateTimeZoneName"];
  }

  sourceURL = self->_sourceURL;
  if (sourceURL)
  {
    [v4 setObject:sourceURL forKey:@"sourceURL"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_extractionHints];
    [v4 setObject:v13 forKey:@"extractionHints"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_originVersionMajor];
    [v4 setObject:v26 forKey:@"originVersionMajor"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_originVersionMinor];
  [v4 setObject:v27 forKey:@"originVersionMinor"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_24:
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_originVersionPatch];
    [v4 setObject:v16 forKey:@"originVersionPatch"];
  }

LABEL_25:
  originVersionBuild = self->_originVersionBuild;
  if (originVersionBuild)
  {
    [v4 setObject:originVersionBuild forKey:@"originVersionBuild"];
  }

  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    dictionaryRepresentation = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"messageVersion"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstSeenDate];
    [v4 setObject:v20 forKey:@"firstSeenDate"];
  }

  firstSeenDateTimeZoneName = self->_firstSeenDateTimeZoneName;
  if (firstSeenDateTimeZoneName)
  {
    [v4 setObject:firstSeenDateTimeZoneName forKey:@"firstSeenDateTimeZoneName"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"syncIdentity"];
  }

  uniquenessChecksum = self->_uniquenessChecksum;
  if (uniquenessChecksum)
  {
    [v4 setObject:uniquenessChecksum forKey:@"uniquenessChecksum"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_gatewayExternalID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_resourceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_rawContent)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    receivedDate = self->_receivedDate;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

  if (self->_resourceType)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_fhirVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_receivedDateTimeZoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_sourceURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (*&self->_has)
  {
    extractionHints = self->_extractionHints;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    originVersionMajor = self->_originVersionMajor;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  originVersionMinor = self->_originVersionMinor;
  PBDataWriterWriteInt64Field();
  toCopy = v12;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_24:
    originVersionPatch = self->_originVersionPatch;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
  }

LABEL_25:
  if (self->_originVersionBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if ((*&self->_has & 2) != 0)
  {
    firstSeenDate = self->_firstSeenDate;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

  if (self->_firstSeenDateTimeZoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_uniquenessChecksum)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_gatewayExternalID)
  {
    [toCopy setGatewayExternalID:?];
    toCopy = v6;
  }

  if (self->_resourceID)
  {
    [v6 setResourceID:?];
    toCopy = v6;
  }

  if (self->_rawContent)
  {
    [v6 setRawContent:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 6) = *&self->_receivedDate;
    *(toCopy + 160) |= 0x20u;
  }

  if (self->_resourceType)
  {
    [v6 setResourceType:?];
    toCopy = v6;
  }

  if (self->_fhirVersion)
  {
    [v6 setFhirVersion:?];
    toCopy = v6;
  }

  if (self->_receivedDateTimeZoneName)
  {
    [v6 setReceivedDateTimeZoneName:?];
    toCopy = v6;
  }

  if (self->_sourceURL)
  {
    [v6 setSourceURL:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_extractionHints;
    *(toCopy + 160) |= 1u;
  }

  if (self->_accountIdentifier)
  {
    [v6 setAccountIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_originVersionMajor;
    *(toCopy + 160) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  *(toCopy + 4) = self->_originVersionMinor;
  *(toCopy + 160) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_24:
    *(toCopy + 5) = self->_originVersionPatch;
    *(toCopy + 160) |= 0x10u;
  }

LABEL_25:
  if (self->_originVersionBuild)
  {
    [v6 setOriginVersionBuild:?];
    toCopy = v6;
  }

  if (self->_messageVersion)
  {
    [v6 setMessageVersion:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_firstSeenDate;
    *(toCopy + 160) |= 2u;
  }

  if (self->_firstSeenDateTimeZoneName)
  {
    [v6 setFirstSeenDateTimeZoneName:?];
    toCopy = v6;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    toCopy = v6;
  }

  if (self->_uniquenessChecksum)
  {
    [v6 setUniquenessChecksum:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_gatewayExternalID copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_resourceID copyWithZone:zone];
  v9 = *(v5 + 120);
  *(v5 + 120) = v8;

  v10 = [(NSData *)self->_rawContent copyWithZone:zone];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_receivedDate;
    *(v5 + 160) |= 0x20u;
  }

  v12 = [(NSString *)self->_resourceType copyWithZone:zone];
  v13 = *(v5 + 128);
  *(v5 + 128) = v12;

  v14 = [(NSString *)self->_fhirVersion copyWithZone:zone];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSString *)self->_receivedDateTimeZoneName copyWithZone:zone];
  v17 = *(v5 + 112);
  *(v5 + 112) = v16;

  v18 = [(NSString *)self->_sourceURL copyWithZone:zone];
  v19 = *(v5 + 136);
  *(v5 + 136) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_extractionHints;
    *(v5 + 160) |= 1u;
  }

  v20 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_originVersionMajor;
    *(v5 + 160) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 32) = self->_originVersionMinor;
  *(v5 + 160) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    *(v5 + 40) = self->_originVersionPatch;
    *(v5 + 160) |= 0x10u;
  }

LABEL_9:
  v23 = [(NSString *)self->_originVersionBuild copyWithZone:zone];
  v24 = *(v5 + 96);
  *(v5 + 96) = v23;

  v25 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:zone];
  v26 = *(v5 + 88);
  *(v5 + 88) = v25;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_firstSeenDate;
    *(v5 + 160) |= 2u;
  }

  v27 = [(NSString *)self->_firstSeenDateTimeZoneName copyWithZone:zone];
  v28 = *(v5 + 72);
  *(v5 + 72) = v27;

  v29 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v30 = *(v5 + 144);
  *(v5 + 144) = v29;

  v31 = [(NSData *)self->_uniquenessChecksum copyWithZone:zone];
  v32 = *(v5 + 152);
  *(v5 + 152) = v31;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  gatewayExternalID = self->_gatewayExternalID;
  if (gatewayExternalID | *(equalCopy + 10))
  {
    if (![(NSString *)gatewayExternalID isEqual:?])
    {
      goto LABEL_59;
    }
  }

  resourceID = self->_resourceID;
  if (resourceID | *(equalCopy + 15))
  {
    if (![(NSString *)resourceID isEqual:?])
    {
      goto LABEL_59;
    }
  }

  rawContent = self->_rawContent;
  if (rawContent | *(equalCopy + 13))
  {
    if (![(NSData *)rawContent isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v8 = *(equalCopy + 160);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 160) & 0x20) == 0 || self->_receivedDate != *(equalCopy + 6))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 160) & 0x20) != 0)
  {
    goto LABEL_59;
  }

  resourceType = self->_resourceType;
  if (resourceType | *(equalCopy + 16) && ![(NSString *)resourceType isEqual:?])
  {
    goto LABEL_59;
  }

  fhirVersion = self->_fhirVersion;
  if (fhirVersion | *(equalCopy + 8))
  {
    if (![(NSString *)fhirVersion isEqual:?])
    {
      goto LABEL_59;
    }
  }

  receivedDateTimeZoneName = self->_receivedDateTimeZoneName;
  if (receivedDateTimeZoneName | *(equalCopy + 14))
  {
    if (![(NSString *)receivedDateTimeZoneName isEqual:?])
    {
      goto LABEL_59;
    }
  }

  sourceURL = self->_sourceURL;
  if (sourceURL | *(equalCopy + 17))
  {
    if (![(NSString *)sourceURL isEqual:?])
    {
      goto LABEL_59;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 160);
  if (has)
  {
    if ((*(equalCopy + 160) & 1) == 0 || self->_extractionHints != *(equalCopy + 1))
    {
      goto LABEL_59;
    }
  }

  else if (*(equalCopy + 160))
  {
    goto LABEL_59;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)accountIdentifier isEqual:?])
    {
LABEL_59:
      v22 = 0;
      goto LABEL_60;
    }

    has = self->_has;
    v14 = *(equalCopy + 160);
  }

  if ((has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_originVersionMajor != *(equalCopy + 3))
    {
      goto LABEL_59;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_59;
  }

  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_originVersionMinor != *(equalCopy + 4))
    {
      goto LABEL_59;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_59;
  }

  if ((has & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_originVersionPatch != *(equalCopy + 5))
    {
      goto LABEL_59;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_59;
  }

  originVersionBuild = self->_originVersionBuild;
  if (originVersionBuild | *(equalCopy + 12) && ![(NSString *)originVersionBuild isEqual:?])
  {
    goto LABEL_59;
  }

  messageVersion = self->_messageVersion;
  if (messageVersion | *(equalCopy + 11))
  {
    if (![(HDCodableMessageVersion *)messageVersion isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v18 = *(equalCopy + 160);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 160) & 2) == 0 || self->_firstSeenDate != *(equalCopy + 2))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 160) & 2) != 0)
  {
    goto LABEL_59;
  }

  firstSeenDateTimeZoneName = self->_firstSeenDateTimeZoneName;
  if (firstSeenDateTimeZoneName | *(equalCopy + 9) && ![(NSString *)firstSeenDateTimeZoneName isEqual:?])
  {
    goto LABEL_59;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 18))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_59;
    }
  }

  uniquenessChecksum = self->_uniquenessChecksum;
  if (uniquenessChecksum | *(equalCopy + 19))
  {
    v22 = [(NSData *)uniquenessChecksum isEqual:?];
  }

  else
  {
    v22 = 1;
  }

LABEL_60:

  return v22;
}

- (unint64_t)hash
{
  v31 = [(NSString *)self->_gatewayExternalID hash];
  v30 = [(NSString *)self->_resourceID hash];
  v29 = [(NSData *)self->_rawContent hash];
  if ((*&self->_has & 0x20) != 0)
  {
    receivedDate = self->_receivedDate;
    if (receivedDate < 0.0)
    {
      receivedDate = -receivedDate;
    }

    *v3.i64 = floor(receivedDate + 0.5);
    v7 = (receivedDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
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

  v28 = [(NSString *)self->_resourceType hash];
  v27 = [(NSString *)self->_fhirVersion hash];
  v26 = [(NSString *)self->_receivedDateTimeZoneName hash];
  v25 = [(NSString *)self->_sourceURL hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_extractionHints;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_accountIdentifier hash];
  if ((*&self->_has & 4) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v12 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v11 = 2654435761 * self->_originVersionMajor;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v12 = 2654435761 * self->_originVersionMinor;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    v13 = 2654435761 * self->_originVersionPatch;
    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  v14 = [(NSString *)self->_originVersionBuild hash];
  v15 = [(HDCodableMessageVersion *)self->_messageVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    firstSeenDate = self->_firstSeenDate;
    if (firstSeenDate < 0.0)
    {
      firstSeenDate = -firstSeenDate;
    }

    *v16.i64 = floor(firstSeenDate + 0.5);
    v20 = (firstSeenDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = v30 ^ v31 ^ v29 ^ v5 ^ v28 ^ v27 ^ v26 ^ v25 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v18 ^ [(NSString *)self->_firstSeenDateTimeZoneName hash];
  v23 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  return v22 ^ v23 ^ [(NSData *)self->_uniquenessChecksum hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(HDCodableFHIRResource *)self setGatewayExternalID:?];
    fromCopy = v10;
  }

  if (*(fromCopy + 15))
  {
    [(HDCodableFHIRResource *)self setResourceID:?];
    fromCopy = v10;
  }

  if (*(fromCopy + 13))
  {
    [(HDCodableFHIRResource *)self setRawContent:?];
    fromCopy = v10;
  }

  if ((*(fromCopy + 160) & 0x20) != 0)
  {
    self->_receivedDate = *(fromCopy + 6);
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 16))
  {
    [(HDCodableFHIRResource *)self setResourceType:?];
    fromCopy = v10;
  }

  if (*(fromCopy + 8))
  {
    [(HDCodableFHIRResource *)self setFhirVersion:?];
    fromCopy = v10;
  }

  if (*(fromCopy + 14))
  {
    [(HDCodableFHIRResource *)self setReceivedDateTimeZoneName:?];
    fromCopy = v10;
  }

  if (*(fromCopy + 17))
  {
    [(HDCodableFHIRResource *)self setSourceURL:?];
    fromCopy = v10;
  }

  if (*(fromCopy + 160))
  {
    self->_extractionHints = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 7))
  {
    [(HDCodableFHIRResource *)self setAccountIdentifier:?];
    fromCopy = v10;
  }

  v5 = *(fromCopy + 160);
  if ((v5 & 4) != 0)
  {
    self->_originVersionMajor = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 160);
    if ((v5 & 8) == 0)
    {
LABEL_23:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*(fromCopy + 160) & 8) == 0)
  {
    goto LABEL_23;
  }

  self->_originVersionMinor = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 160) & 0x10) != 0)
  {
LABEL_24:
    self->_originVersionPatch = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_25:
  if (*(fromCopy + 12))
  {
    [(HDCodableFHIRResource *)self setOriginVersionBuild:?];
    fromCopy = v10;
  }

  messageVersion = self->_messageVersion;
  v7 = *(fromCopy + 11);
  if (messageVersion)
  {
    if (!v7)
    {
      goto LABEL_36;
    }

    [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_36;
    }

    [(HDCodableFHIRResource *)self setMessageVersion:?];
  }

  fromCopy = v10;
LABEL_36:
  if ((*(fromCopy + 160) & 2) != 0)
  {
    self->_firstSeenDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 9))
  {
    [(HDCodableFHIRResource *)self setFirstSeenDateTimeZoneName:?];
    fromCopy = v10;
  }

  syncIdentity = self->_syncIdentity;
  v9 = *(fromCopy + 18);
  if (syncIdentity)
  {
    if (!v9)
    {
      goto LABEL_46;
    }

    [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_46;
    }

    [(HDCodableFHIRResource *)self setSyncIdentity:?];
  }

  fromCopy = v10;
LABEL_46:
  if (*(fromCopy + 19))
  {
    [(HDCodableFHIRResource *)self setUniquenessChecksum:?];
  }

  MEMORY[0x2821F96F8]();
}

@end