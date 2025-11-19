@interface HDCodableClinicalGateway
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableClinicalGateway

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableClinicalGateway;
  v4 = [(HDCodableClinicalGateway *)&v8 description];
  v5 = [(HDCodableClinicalGateway *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  rawContent = self->_rawContent;
  if (rawContent)
  {
    [v3 setObject:rawContent forKey:@"rawContent"];
  }

  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    v7 = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"messageVersion"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v9 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rawContent)
  {
    PBDataWriterWriteDataField();
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
  if (self->_rawContent)
  {
    [v4 setRawContent:?];
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
  v6 = [(NSData *)self->_rawContent copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((rawContent = self->_rawContent, !(rawContent | v4[2])) || -[NSData isEqual:](rawContent, "isEqual:")) && ((messageVersion = self->_messageVersion, !(messageVersion | v4[1])) || -[HDCodableMessageVersion isEqual:](messageVersion, "isEqual:")))
  {
    syncIdentity = self->_syncIdentity;
    if (syncIdentity | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(HDCodableClinicalGateway *)self setRawContent:?];
    v4 = v9;
  }

  messageVersion = self->_messageVersion;
  v6 = v4[1];
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

  v4 = v9;
LABEL_9:
  syncIdentity = self->_syncIdentity;
  v8 = v4[3];
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

  v4 = v9;
LABEL_15:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end