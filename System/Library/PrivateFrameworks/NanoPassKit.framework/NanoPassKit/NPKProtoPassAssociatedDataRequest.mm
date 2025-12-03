@interface NPKProtoPassAssociatedDataRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPassAssociatedDataRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassAssociatedDataRequest;
  v4 = [(NPKProtoPassAssociatedDataRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPassAssociatedDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passUniqueID = self->_passUniqueID;
  if (passUniqueID)
  {
    [dictionary setObject:passUniqueID forKey:@"passUniqueID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_passRequestedData];
    [v4 setObject:v6 forKey:@"passRequestedData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_passUniqueID)
  {
    [NPKProtoPassAssociatedDataRequest writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    passRequestedData = self->_passRequestedData;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassUniqueID:self->_passUniqueID];
  if (*&self->_has)
  {
    *(toCopy + 1) = self->_passRequestedData;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passUniqueID copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_passRequestedData;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  passUniqueID = self->_passUniqueID;
  if (passUniqueID | *(equalCopy + 2))
  {
    if (![(NSString *)passUniqueID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_passRequestedData == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passUniqueID hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_passRequestedData;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(NPKProtoPassAssociatedDataRequest *)self setPassUniqueID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_passRequestedData = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end