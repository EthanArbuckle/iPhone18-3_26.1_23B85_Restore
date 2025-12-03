@interface BRServerInfoRecordInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BRServerInfoRecordInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BRServerInfoRecordInfo;
  v4 = [(BRServerInfoRecordInfo *)&v8 description];
  dictionaryRepresentation = [(BRServerInfoRecordInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  recordID = self->_recordID;
  if (recordID)
  {
    [dictionary setObject:recordID forKey:@"recordID"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v4 setObject:etag forKey:@"etag"];
  }

  encryptedBasename = self->_encryptedBasename;
  if (encryptedBasename)
  {
    [v4 setObject:encryptedBasename forKey:@"encryptedBasename"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_bounceNo];
    [v4 setObject:v8 forKey:@"bounceNo"];
  }

  extension = self->_extension;
  if (extension)
  {
    [v4 setObject:extension forKey:@"extension"];
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  if (recordProtectionInfo)
  {
    [v4 setObject:recordProtectionInfo forKey:@"recordProtectionInfo"];
  }

  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v4 setObject:zoneName forKey:@"zoneName"];
  }

  zoneProtectionInfo = self->_zoneProtectionInfo;
  if (zoneProtectionInfo)
  {
    [v4 setObject:zoneProtectionInfo forKey:@"zoneProtectionInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_encryptedBasename)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    bounceNo = self->_bounceNo;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_extension)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_recordProtectionInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_zoneProtectionInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_recordID)
  {
    [toCopy setRecordID:?];
    toCopy = v5;
  }

  if (self->_etag)
  {
    [v5 setEtag:?];
    toCopy = v5;
  }

  if (self->_encryptedBasename)
  {
    [v5 setEncryptedBasename:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_bounceNo;
    *(toCopy + 72) |= 1u;
  }

  if (self->_extension)
  {
    [v5 setExtension:?];
    toCopy = v5;
  }

  if (self->_recordProtectionInfo)
  {
    [v5 setRecordProtectionInfo:?];
    toCopy = v5;
  }

  if (self->_zoneName)
  {
    [v5 setZoneName:?];
    toCopy = v5;
  }

  if (self->_zoneProtectionInfo)
  {
    [v5 setZoneProtectionInfo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_recordID copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_etag copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_encryptedBasename copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_bounceNo;
    *(v5 + 72) |= 1u;
  }

  v12 = [(NSString *)self->_extension copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSData *)self->_recordProtectionInfo copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_zoneName copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSData *)self->_zoneProtectionInfo copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  recordID = self->_recordID;
  if (recordID | *(equalCopy + 5))
  {
    if (![(NSString *)recordID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  etag = self->_etag;
  if (etag | *(equalCopy + 3))
  {
    if (![(NSString *)etag isEqual:?])
    {
      goto LABEL_21;
    }
  }

  encryptedBasename = self->_encryptedBasename;
  if (encryptedBasename | *(equalCopy + 2))
  {
    if (![(NSData *)encryptedBasename isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v8 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_bounceNo != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  extension = self->_extension;
  if (extension | *(equalCopy + 4) && ![(NSString *)extension isEqual:?])
  {
    goto LABEL_21;
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  if (recordProtectionInfo | *(equalCopy + 6))
  {
    if (![(NSData *)recordProtectionInfo isEqual:?])
    {
      goto LABEL_21;
    }
  }

  zoneName = self->_zoneName;
  if (zoneName | *(equalCopy + 7))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_21;
    }
  }

  zoneProtectionInfo = self->_zoneProtectionInfo;
  if (zoneProtectionInfo | *(equalCopy + 8))
  {
    v13 = [(NSData *)zoneProtectionInfo isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recordID hash];
  v4 = [(NSString *)self->_etag hash];
  v5 = [(NSData *)self->_encryptedBasename hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_bounceNo;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSString *)self->_extension hash];
  v9 = v8 ^ [(NSData *)self->_recordProtectionInfo hash];
  v10 = v7 ^ v9 ^ [(NSString *)self->_zoneName hash];
  return v10 ^ [(NSData *)self->_zoneProtectionInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    [(BRServerInfoRecordInfo *)self setRecordID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(BRServerInfoRecordInfo *)self setEtag:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BRServerInfoRecordInfo *)self setEncryptedBasename:?];
    fromCopy = v5;
  }

  if (fromCopy[9])
  {
    self->_bounceNo = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[4])
  {
    [(BRServerInfoRecordInfo *)self setExtension:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    [(BRServerInfoRecordInfo *)self setRecordProtectionInfo:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    [(BRServerInfoRecordInfo *)self setZoneName:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    [(BRServerInfoRecordInfo *)self setZoneProtectionInfo:?];
    fromCopy = v5;
  }
}

@end