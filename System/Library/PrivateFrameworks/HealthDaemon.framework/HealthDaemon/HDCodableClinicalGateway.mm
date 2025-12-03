@interface HDCodableClinicalGateway
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableClinicalGateway

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableClinicalGateway;
  v4 = [(HDCodableClinicalGateway *)&v8 description];
  dictionaryRepresentation = [(HDCodableClinicalGateway *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  rawContent = self->_rawContent;
  if (rawContent)
  {
    [dictionary setObject:rawContent forKey:@"rawContent"];
  }

  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    dictionaryRepresentation = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"messageVersion"];
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
  if (self->_rawContent)
  {
    PBDataWriterWriteDataField();
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
  if (self->_rawContent)
  {
    [toCopy setRawContent:?];
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
  v6 = [(NSData *)self->_rawContent copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((rawContent = self->_rawContent, !(rawContent | equalCopy[2])) || -[NSData isEqual:](rawContent, "isEqual:")) && ((messageVersion = self->_messageVersion, !(messageVersion | equalCopy[1])) || -[HDCodableMessageVersion isEqual:](messageVersion, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | equalCopy[3])
    {
      v8 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_rawContent hash];
  v4 = [(HDCodableMessageVersion *)self->_messageVersion hash]^ v3;
  return v4 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableClinicalGateway *)self setRawContent:?];
    fromCopy = v9;
  }

  messageVersion = self->_messageVersion;
  v6 = fromCopy[1];
  if (messageVersion)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableClinicalGateway *)self setMessageVersion:?];
  }

  fromCopy = v9;
LABEL_9:
  syncIdentity = self->_syncIdentity;
  v8 = fromCopy[3];
  if (syncIdentity)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    syncIdentity = [(HDCodableClinicalGateway *)self setSyncIdentity:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x2821F96F8](syncIdentity, fromCopy);
}

@end