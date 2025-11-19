@interface HDCodableOriginalSignedClinicalDataRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addType:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasLastModifiedDate:(BOOL)a3;
- (void)setHasReceivedDate:(BOOL)a3;
- (void)setHasSignatureStatus:(BOOL)a3;
- (void)setHasSourceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableOriginalSignedClinicalDataRecord

- (void)addType:(id)a3
{
  v4 = a3;
  types = self->_types;
  v8 = v4;
  if (!types)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_types;
    self->_types = v6;

    v4 = v8;
    types = self->_types;
  }

  [(NSMutableArray *)types addObject:v4];
}

- (void)setHasReceivedDate:(BOOL)a3
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

- (void)setHasSignatureStatus:(BOOL)a3
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

- (void)setHasLastModifiedDate:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
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

- (void)setHasSourceType:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableOriginalSignedClinicalDataRecord;
  v4 = [(HDCodableOriginalSignedClinicalDataRecord *)&v8 description];
  v5 = [(HDCodableOriginalSignedClinicalDataRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    v5 = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"messageVersion"];
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [v3 setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  gatewayExternalID = self->_gatewayExternalID;
  if (gatewayExternalID)
  {
    [v3 setObject:gatewayExternalID forKey:@"gatewayExternalID"];
  }

  issuerIdentifier = self->_issuerIdentifier;
  if (issuerIdentifier)
  {
    [v3 setObject:issuerIdentifier forKey:@"issuerIdentifier"];
  }

  sourceURL = self->_sourceURL;
  if (sourceURL)
  {
    [v3 setObject:sourceURL forKey:@"sourceURL"];
  }

  rawContent = self->_rawContent;
  if (rawContent)
  {
    [v3 setObject:rawContent forKey:@"rawContent"];
  }

  types = self->_types;
  if (types)
  {
    [v3 setObject:types forKey:@"type"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v13 = [(HDCodableMetadataDictionary *)metadata dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"metadata"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_receivedDate];
    [v3 setObject:v14 forKey:@"receivedDate"];
  }

  receivedDateTimeZoneName = self->_receivedDateTimeZoneName;
  if (receivedDateTimeZoneName)
  {
    [v3 setObject:receivedDateTimeZoneName forKey:@"receivedDateTimeZoneName"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstSeenDate];
    [v3 setObject:v16 forKey:@"firstSeenDate"];
  }

  firstSeenDateTimeZoneName = self->_firstSeenDateTimeZoneName;
  if (firstSeenDateTimeZoneName)
  {
    [v3 setObject:firstSeenDateTimeZoneName forKey:@"firstSeenDateTimeZoneName"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_signatureStatus];
    [v3 setObject:v18 forKey:@"signatureStatus"];
  }

  uniquenessChecksum = self->_uniquenessChecksum;
  if (uniquenessChecksum)
  {
    [v3 setObject:uniquenessChecksum forKey:@"uniquenessChecksum"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastModifiedDate];
    [v3 setObject:v25 forKey:@"lastModifiedDate"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_31:
      if ((has & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
  [v3 setObject:v26 forKey:@"deleted"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_32:
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sourceType];
    [v3 setObject:v21 forKey:@"sourceType"];
  }

LABEL_33:
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v23 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"syncIdentity"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_syncIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_gatewayExternalID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issuerIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_rawContent)
  {
    PBDataWriterWriteDataField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_types;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    receivedDate = self->_receivedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_receivedDateTimeZoneName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    firstSeenDate = self->_firstSeenDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_firstSeenDateTimeZoneName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    signatureStatus = self->_signatureStatus;
    PBDataWriterWriteInt64Field();
  }

  if (self->_uniquenessChecksum)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    lastModifiedDate = self->_lastModifiedDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_36:
      if ((has & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_36;
  }

  deleted = self->_deleted;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_37:
    sourceType = self->_sourceType;
    PBDataWriterWriteInt64Field();
  }

LABEL_38:
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v10 = a3;
  if (self->_messageVersion)
  {
    [v10 setMessageVersion:?];
  }

  if (self->_syncIdentifier)
  {
    [v10 setSyncIdentifier:?];
  }

  if (self->_gatewayExternalID)
  {
    [v10 setGatewayExternalID:?];
  }

  if (self->_issuerIdentifier)
  {
    [v10 setIssuerIdentifier:?];
  }

  if (self->_sourceURL)
  {
    [v10 setSourceURL:?];
  }

  if (self->_rawContent)
  {
    [v10 setRawContent:?];
  }

  if ([(HDCodableOriginalSignedClinicalDataRecord *)self typesCount])
  {
    [v10 clearTypes];
    v4 = [(HDCodableOriginalSignedClinicalDataRecord *)self typesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableOriginalSignedClinicalDataRecord *)self typeAtIndex:i];
        [v10 addType:v7];
      }
    }
  }

  if (self->_metadata)
  {
    [v10 setMetadata:?];
  }

  v8 = v10;
  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 3) = *&self->_receivedDate;
    *(v10 + 148) |= 4u;
  }

  if (self->_receivedDateTimeZoneName)
  {
    [v10 setReceivedDateTimeZoneName:?];
    v8 = v10;
  }

  if (*&self->_has)
  {
    v8[1] = *&self->_firstSeenDate;
    *(v8 + 148) |= 1u;
  }

  if (self->_firstSeenDateTimeZoneName)
  {
    [v10 setFirstSeenDateTimeZoneName:?];
    v8 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    v8[4] = self->_signatureStatus;
    *(v8 + 148) |= 8u;
  }

  if (self->_uniquenessChecksum)
  {
    [v10 setUniquenessChecksum:?];
    v8 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8[2] = *&self->_lastModifiedDate;
    *(v8 + 148) |= 2u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_33:
      if ((has & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_33;
  }

  *(v8 + 144) = self->_deleted;
  *(v8 + 148) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_34:
    v8[5] = self->_sourceType;
    *(v8 + 148) |= 0x10u;
  }

LABEL_35:
  if (self->_syncIdentity)
  {
    [v10 setSyncIdentity:?];
    v8 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSData *)self->_syncIdentifier copyWithZone:a3];
  v9 = *(v5 + 112);
  *(v5 + 112) = v8;

  v10 = [(NSString *)self->_gatewayExternalID copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_issuerIdentifier copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSString *)self->_sourceURL copyWithZone:a3];
  v15 = *(v5 + 104);
  *(v5 + 104) = v14;

  v16 = [(NSData *)self->_rawContent copyWithZone:a3];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = self->_types;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v37 + 1) + 8 * i) copyWithZone:{a3, v37}];
        [v5 addType:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v20);
  }

  v24 = [(HDCodableMetadataDictionary *)self->_metadata copyWithZone:a3];
  v25 = *(v5 + 80);
  *(v5 + 80) = v24;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_receivedDate;
    *(v5 + 148) |= 4u;
  }

  v26 = [(NSString *)self->_receivedDateTimeZoneName copyWithZone:a3, v37];
  v27 = *(v5 + 96);
  *(v5 + 96) = v26;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_firstSeenDate;
    *(v5 + 148) |= 1u;
  }

  v28 = [(NSString *)self->_firstSeenDateTimeZoneName copyWithZone:a3];
  v29 = *(v5 + 48);
  *(v5 + 48) = v28;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_signatureStatus;
    *(v5 + 148) |= 8u;
  }

  v30 = [(NSData *)self->_uniquenessChecksum copyWithZone:a3];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    *(v5 + 144) = self->_deleted;
    *(v5 + 148) |= 0x20u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v5 + 16) = self->_lastModifiedDate;
  *(v5 + 148) |= 2u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((has & 0x10) != 0)
  {
LABEL_17:
    *(v5 + 40) = self->_sourceType;
    *(v5 + 148) |= 0x10u;
  }

LABEL_18:
  v33 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v34 = *(v5 + 120);
  *(v5 + 120) = v33;

  v35 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  messageVersion = self->_messageVersion;
  if (messageVersion | *(v4 + 9))
  {
    if (![(HDCodableMessageVersion *)messageVersion isEqual:?])
    {
      goto LABEL_61;
    }
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(v4 + 14))
  {
    if (![(NSData *)syncIdentifier isEqual:?])
    {
      goto LABEL_61;
    }
  }

  gatewayExternalID = self->_gatewayExternalID;
  if (gatewayExternalID | *(v4 + 7))
  {
    if (![(NSString *)gatewayExternalID isEqual:?])
    {
      goto LABEL_61;
    }
  }

  issuerIdentifier = self->_issuerIdentifier;
  if (issuerIdentifier | *(v4 + 8))
  {
    if (![(NSString *)issuerIdentifier isEqual:?])
    {
      goto LABEL_61;
    }
  }

  sourceURL = self->_sourceURL;
  if (sourceURL | *(v4 + 13))
  {
    if (![(NSString *)sourceURL isEqual:?])
    {
      goto LABEL_61;
    }
  }

  rawContent = self->_rawContent;
  if (rawContent | *(v4 + 11))
  {
    if (![(NSData *)rawContent isEqual:?])
    {
      goto LABEL_61;
    }
  }

  types = self->_types;
  if (types | *(v4 + 16))
  {
    if (![(NSMutableArray *)types isEqual:?])
    {
      goto LABEL_61;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 10))
  {
    if (![(HDCodableMetadataDictionary *)metadata isEqual:?])
    {
      goto LABEL_61;
    }
  }

  has = self->_has;
  v14 = *(v4 + 148);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 148) & 4) == 0 || self->_receivedDate != *(v4 + 3))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 148) & 4) != 0)
  {
    goto LABEL_61;
  }

  receivedDateTimeZoneName = self->_receivedDateTimeZoneName;
  if (receivedDateTimeZoneName | *(v4 + 12))
  {
    if (![(NSString *)receivedDateTimeZoneName isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
    v14 = *(v4 + 148);
  }

  if (has)
  {
    if ((v14 & 1) == 0 || self->_firstSeenDate != *(v4 + 1))
    {
      goto LABEL_61;
    }
  }

  else if (v14)
  {
    goto LABEL_61;
  }

  firstSeenDateTimeZoneName = self->_firstSeenDateTimeZoneName;
  if (firstSeenDateTimeZoneName | *(v4 + 6))
  {
    if (![(NSString *)firstSeenDateTimeZoneName isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
    v14 = *(v4 + 148);
  }

  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_signatureStatus != *(v4 + 4))
    {
      goto LABEL_61;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_61;
  }

  uniquenessChecksum = self->_uniquenessChecksum;
  if (uniquenessChecksum | *(v4 + 17))
  {
    if (![(NSData *)uniquenessChecksum isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
    v14 = *(v4 + 148);
  }

  if ((has & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_lastModifiedDate != *(v4 + 2))
    {
      goto LABEL_61;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x20) == 0)
  {
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_49;
    }

LABEL_61:
    v20 = 0;
    goto LABEL_62;
  }

  if ((v14 & 0x20) == 0)
  {
    goto LABEL_61;
  }

  v18 = *(v4 + 144);
  if (self->_deleted)
  {
    if ((*(v4 + 144) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (*(v4 + 144))
  {
    goto LABEL_61;
  }

LABEL_49:
  if ((has & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_sourceType != *(v4 + 5))
    {
      goto LABEL_61;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_61;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 15))
  {
    v20 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_62:

  return v20;
}

- (unint64_t)hash
{
  v35 = [(HDCodableMessageVersion *)self->_messageVersion hash];
  v34 = [(NSData *)self->_syncIdentifier hash];
  v33 = [(NSString *)self->_gatewayExternalID hash];
  v32 = [(NSString *)self->_issuerIdentifier hash];
  v31 = [(NSString *)self->_sourceURL hash];
  v30 = [(NSData *)self->_rawContent hash];
  v3 = [(NSMutableArray *)self->_types hash];
  v4 = [(HDCodableMetadataDictionary *)self->_metadata hash];
  if ((*&self->_has & 4) != 0)
  {
    receivedDate = self->_receivedDate;
    if (receivedDate < 0.0)
    {
      receivedDate = -receivedDate;
    }

    *v5.i64 = floor(receivedDate + 0.5);
    v9 = (receivedDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [(NSString *)self->_receivedDateTimeZoneName hash];
  if (*&self->_has)
  {
    firstSeenDate = self->_firstSeenDate;
    if (firstSeenDate < 0.0)
    {
      firstSeenDate = -firstSeenDate;
    }

    *v12.i64 = floor(firstSeenDate + 0.5);
    v16 = (firstSeenDate - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = [(NSString *)self->_firstSeenDateTimeZoneName hash];
  if ((*&self->_has & 8) != 0)
  {
    v19 = 2654435761 * self->_signatureStatus;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSData *)self->_uniquenessChecksum hash];
  if ((*&self->_has & 2) != 0)
  {
    lastModifiedDate = self->_lastModifiedDate;
    if (lastModifiedDate < 0.0)
    {
      lastModifiedDate = -lastModifiedDate;
    }

    *v21.i64 = floor(lastModifiedDate + 0.5);
    v25 = (lastModifiedDate - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v22, v21).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v27 = 2654435761 * self->_deleted;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v28 = 0;
    return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v7 ^ v11 ^ v14 ^ v18 ^ v19 ^ v20 ^ v23 ^ v27 ^ v28 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  }

  v27 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  v28 = 2654435761 * self->_sourceType;
  return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v7 ^ v11 ^ v14 ^ v18 ^ v19 ^ v20 ^ v23 ^ v27 ^ v28 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  messageVersion = self->_messageVersion;
  v6 = *(v4 + 9);
  if (messageVersion)
  {
    if (v6)
    {
      [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setMessageVersion:?];
  }

  if (*(v4 + 14))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setSyncIdentifier:?];
  }

  if (*(v4 + 7))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setGatewayExternalID:?];
  }

  if (*(v4 + 8))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setIssuerIdentifier:?];
  }

  if (*(v4 + 13))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setSourceURL:?];
  }

  if (*(v4 + 11))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setRawContent:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(v4 + 16);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCodableOriginalSignedClinicalDataRecord *)self addType:*(*(&v18 + 1) + 8 * i), v18];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  metadata = self->_metadata;
  v13 = *(v4 + 10);
  if (metadata)
  {
    if (v13)
    {
      [(HDCodableMetadataDictionary *)metadata mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setMetadata:?];
  }

  if ((*(v4 + 148) & 4) != 0)
  {
    self->_receivedDate = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 12))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setReceivedDateTimeZoneName:?];
  }

  if (*(v4 + 148))
  {
    self->_firstSeenDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setFirstSeenDateTimeZoneName:?];
  }

  if ((*(v4 + 148) & 8) != 0)
  {
    self->_signatureStatus = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 17))
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setUniquenessChecksum:?];
  }

  v14 = *(v4 + 148);
  if ((v14 & 2) != 0)
  {
    self->_lastModifiedDate = *(v4 + 2);
    *&self->_has |= 2u;
    v14 = *(v4 + 148);
    if ((v14 & 0x20) == 0)
    {
LABEL_42:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((*(v4 + 148) & 0x20) == 0)
  {
    goto LABEL_42;
  }

  self->_deleted = *(v4 + 144);
  *&self->_has |= 0x20u;
  if ((*(v4 + 148) & 0x10) != 0)
  {
LABEL_43:
    self->_sourceType = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_44:
  syncIdentity = self->_syncIdentity;
  v16 = *(v4 + 15);
  if (syncIdentity)
  {
    if (v16)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(HDCodableOriginalSignedClinicalDataRecord *)self setSyncIdentity:?];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end