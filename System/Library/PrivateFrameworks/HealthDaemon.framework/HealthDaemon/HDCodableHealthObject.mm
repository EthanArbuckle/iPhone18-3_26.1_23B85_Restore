@interface HDCodableHealthObject
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedMetadata;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExternalSyncObjectCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation HDCodableHealthObject

- (id)decodedMetadata
{
  if (self->_metadataDictionary)
  {
    v3 = [MEMORY[0x277CBEAC0] hk_dictionaryWithCodableMetadata:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (self->_uuid)
    {
      v6 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
      [objectCopy _setUUID:v6];
    }

    else
    {
      [objectCopy _setUUID:?];
    }

    decodedMetadata = [(HDCodableHealthObject *)self decodedMetadata];
    [objectCopy _setMetadata:decodedMetadata];

    sourceBundleIdentifier = [(HDCodableHealthObject *)self sourceBundleIdentifier];
    [objectCopy _setSourceBundleIdentifier:sourceBundleIdentifier];

    if (*&self->_has)
    {
      creationDate = self->_creationDate;
    }

    else
    {
      creationDate = 2.22507386e-308;
    }

    [objectCopy _setCreationTimestamp:creationDate];
  }

  return isKindOfClass & 1;
}

- (void)setHasExternalSyncObjectCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableHealthObject;
  v4 = [(HDCodableHealthObject *)&v8 description];
  dictionaryRepresentation = [(HDCodableHealthObject *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary)
  {
    dictionaryRepresentation = [(HDCodableMetadataDictionary *)metadataDictionary dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"metadataDictionary"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [v4 setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v10 forKey:@"creationDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_externalSyncObjectCode];
    [v4 setObject:v11 forKey:@"externalSyncObjectCode"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_metadataDictionary)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    externalSyncObjectCode = self->_externalSyncObjectCode;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v6;
  }

  if (self->_metadataDictionary)
  {
    [v6 setMetadataDictionary:?];
    toCopy = v6;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v6 setSourceBundleIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_creationDate;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_externalSyncObjectCode;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(HDCodableMetadataDictionary *)self->_metadataDictionary copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_externalSyncObjectCode;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 5))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_17;
    }
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary | *(equalCopy + 3))
  {
    if (![(HDCodableMetadataDictionary *)metadataDictionary isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)sourceBundleIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_creationDate != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_externalSyncObjectCode != *(equalCopy + 2))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  v4 = [(HDCodableMetadataDictionary *)self->_metadataDictionary hash];
  v5 = [(NSString *)self->_sourceBundleIdentifier hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v6.i64 = floor(creationDate + 0.5);
    v10 = (creationDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_externalSyncObjectCode;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(HDCodableHealthObject *)self setUuid:?];
    fromCopy = v8;
  }

  metadataDictionary = self->_metadataDictionary;
  v6 = *(fromCopy + 3);
  if (metadataDictionary)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    metadataDictionary = [(HDCodableMetadataDictionary *)metadataDictionary mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    metadataDictionary = [(HDCodableHealthObject *)self setMetadataDictionary:?];
  }

  fromCopy = v8;
LABEL_9:
  if (*(fromCopy + 4))
  {
    metadataDictionary = [(HDCodableHealthObject *)self setSourceBundleIdentifier:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 48);
  if (v7)
  {
    self->_creationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_externalSyncObjectCode = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8](metadataDictionary, fromCopy);
}

@end