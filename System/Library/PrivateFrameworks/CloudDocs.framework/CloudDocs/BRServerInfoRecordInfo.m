@interface BRServerInfoRecordInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRServerInfoRecordInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BRServerInfoRecordInfo;
  v4 = [(BRServerInfoRecordInfo *)&v8 description];
  v5 = [(BRServerInfoRecordInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  recordID = self->_recordID;
  if (recordID)
  {
    [v3 setObject:recordID forKey:@"recordID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_encryptedBasename)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    bounceNo = self->_bounceNo;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_extension)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_recordProtectionInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_zoneProtectionInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_recordID)
  {
    [v4 setRecordID:?];
    v4 = v5;
  }

  if (self->_etag)
  {
    [v5 setEtag:?];
    v4 = v5;
  }

  if (self->_encryptedBasename)
  {
    [v5 setEncryptedBasename:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_bounceNo;
    *(v4 + 72) |= 1u;
  }

  if (self->_extension)
  {
    [v5 setExtension:?];
    v4 = v5;
  }

  if (self->_recordProtectionInfo)
  {
    [v5 setRecordProtectionInfo:?];
    v4 = v5;
  }

  if (self->_zoneName)
  {
    [v5 setZoneName:?];
    v4 = v5;
  }

  if (self->_zoneProtectionInfo)
  {
    [v5 setZoneProtectionInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_recordID copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_etag copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_encryptedBasename copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_bounceNo;
    *(v5 + 72) |= 1u;
  }

  v12 = [(NSString *)self->_extension copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSData *)self->_recordProtectionInfo copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_zoneName copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSData *)self->_zoneProtectionInfo copyWithZone:a3];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  recordID = self->_recordID;
  if (recordID | *(v4 + 5))
  {
    if (![(NSString *)recordID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  etag = self->_etag;
  if (etag | *(v4 + 3))
  {
    if (![(NSString *)etag isEqual:?])
    {
      goto LABEL_21;
    }
  }

  encryptedBasename = self->_encryptedBasename;
  if (encryptedBasename | *(v4 + 2))
  {
    if (![(NSData *)encryptedBasename isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v8 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_bounceNo != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  extension = self->_extension;
  if (extension | *(v4 + 4) && ![(NSString *)extension isEqual:?])
  {
    goto LABEL_21;
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  if (recordProtectionInfo | *(v4 + 6))
  {
    if (![(NSData *)recordProtectionInfo isEqual:?])
    {
      goto LABEL_21;
    }
  }

  zoneName = self->_zoneName;
  if (zoneName | *(v4 + 7))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_21;
    }
  }

  zoneProtectionInfo = self->_zoneProtectionInfo;
  if (zoneProtectionInfo | *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    [(BRServerInfoRecordInfo *)self setRecordID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(BRServerInfoRecordInfo *)self setEtag:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BRServerInfoRecordInfo *)self setEncryptedBasename:?];
    v4 = v5;
  }

  if (v4[9])
  {
    self->_bounceNo = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[4])
  {
    [(BRServerInfoRecordInfo *)self setExtension:?];
    v4 = v5;
  }

  if (v4[6])
  {
    [(BRServerInfoRecordInfo *)self setRecordProtectionInfo:?];
    v4 = v5;
  }

  if (v4[7])
  {
    [(BRServerInfoRecordInfo *)self setZoneName:?];
    v4 = v5;
  }

  if (v4[8])
  {
    [(BRServerInfoRecordInfo *)self setZoneProtectionInfo:?];
    v4 = v5;
  }
}

@end