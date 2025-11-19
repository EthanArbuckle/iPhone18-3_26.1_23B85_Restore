@interface HDCodableSignedClinicalDataIssuer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSignedClinicalDataIssuer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSignedClinicalDataIssuer;
  v4 = [(HDCodableSignedClinicalDataIssuer *)&v8 description];
  v5 = [(HDCodableSignedClinicalDataIssuer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  wellKnownURL = self->_wellKnownURL;
  if (wellKnownURL)
  {
    [v4 setObject:wellKnownURL forKey:@"wellKnownURL"];
  }

  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    v10 = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"MessageVersion"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v12 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_wellKnownURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    v4 = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }

  if (self->_wellKnownURL)
  {
    [v5 setWellKnownURL:?];
    v4 = v5;
  }

  if (self->_messageVersion)
  {
    [v5 setMessageVersion:?];
    v4 = v5;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_wellKnownURL copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v17 = v5[4];
  v5[4] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | v4[5])) || -[NSString isEqual:](title, "isEqual:")) && ((subtitle = self->_subtitle, !(subtitle | v4[3])) || -[NSString isEqual:](subtitle, "isEqual:")) && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")) && ((wellKnownURL = self->_wellKnownURL, !(wellKnownURL | v4[6])) || -[NSString isEqual:](wellKnownURL, "isEqual:")) && ((messageVersion = self->_messageVersion, !(messageVersion | v4[2])) || -[HDCodableMessageVersion isEqual:](messageVersion, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | v4[4])
    {
      v11 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]^ v3;
  v5 = [(NSString *)self->_identifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_wellKnownURL hash];
  v7 = [(HDCodableMessageVersion *)self->_messageVersion hash];
  return v6 ^ v7 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (v8[5])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setTitle:?];
  }

  if (v8[3])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setSubtitle:?];
  }

  if (v8[1])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setIdentifier:?];
  }

  if (v8[6])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setWellKnownURL:?];
  }

  messageVersion = self->_messageVersion;
  v5 = v8[2];
  if (messageVersion)
  {
    if (v5)
    {
      [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(HDCodableSignedClinicalDataIssuer *)self setMessageVersion:?];
  }

  syncIdentity = self->_syncIdentity;
  v7 = v8[4];
  if (syncIdentity)
  {
    if (v7)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableSignedClinicalDataIssuer *)self setSyncIdentity:?];
  }
}

@end