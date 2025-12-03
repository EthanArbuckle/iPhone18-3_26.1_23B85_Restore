@interface HDCodableSignedClinicalDataIssuer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSignedClinicalDataIssuer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSignedClinicalDataIssuer;
  v4 = [(HDCodableSignedClinicalDataIssuer *)&v8 description];
  dictionaryRepresentation = [(HDCodableSignedClinicalDataIssuer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
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
    dictionaryRepresentation = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"MessageVersion"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_wellKnownURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }

  if (self->_wellKnownURL)
  {
    [v5 setWellKnownURL:?];
    toCopy = v5;
  }

  if (self->_messageVersion)
  {
    [v5 setMessageVersion:?];
    toCopy = v5;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_wellKnownURL copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v17 = v5[4];
  v5[4] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[5])) || -[NSString isEqual:](title, "isEqual:")) && ((subtitle = self->_subtitle, !(subtitle | equalCopy[3])) || -[NSString isEqual:](subtitle, "isEqual:")) && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")) && ((wellKnownURL = self->_wellKnownURL, !(wellKnownURL | equalCopy[6])) || -[NSString isEqual:](wellKnownURL, "isEqual:")) && ((messageVersion = self->_messageVersion, !(messageVersion | equalCopy[2])) || -[HDCodableMessageVersion isEqual:](messageVersion, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setTitle:?];
  }

  if (fromCopy[3])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setSubtitle:?];
  }

  if (fromCopy[1])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setIdentifier:?];
  }

  if (fromCopy[6])
  {
    [(HDCodableSignedClinicalDataIssuer *)self setWellKnownURL:?];
  }

  messageVersion = self->_messageVersion;
  v5 = fromCopy[2];
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
  v7 = fromCopy[4];
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