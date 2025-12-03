@interface NPKProtoRemoteAdminPerformResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemoteAdminPerformResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemoteAdminPerformResponse;
  v4 = [(NPKProtoRemoteAdminPerformResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemoteAdminPerformResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resultCode];
  [dictionary setObject:v4 forKey:@"resultCode"];

  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    [dictionary setObject:responseDictionary forKey:@"responseDictionary"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_httpStatus];
    [dictionary setObject:v6 forKey:@"httpStatus"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resultCode = self->_resultCode;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_responseDictionary)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    httpStatus = self->_httpStatus;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_resultCode;
  if (self->_responseDictionary)
  {
    v5 = toCopy;
    [toCopy setResponseDictionary:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_httpStatus;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_resultCode;
  v6 = [(NSData *)self->_responseDictionary copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_httpStatus;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (self->_resultCode != *(equalCopy + 6))
  {
    goto LABEL_9;
  }

  responseDictionary = self->_responseDictionary;
  if (responseDictionary | *(equalCopy + 2))
  {
    if (![(NSData *)responseDictionary isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_httpStatus == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  resultCode = self->_resultCode;
  v4 = [(NSData *)self->_responseDictionary hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_httpStatus;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v5 ^ (2654435761 * resultCode);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_resultCode = fromCopy[6];
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(NPKProtoRemoteAdminPerformResponse *)self setResponseDictionary:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    self->_httpStatus = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end