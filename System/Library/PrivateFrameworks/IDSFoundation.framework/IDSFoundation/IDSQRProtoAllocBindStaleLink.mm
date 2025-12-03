@interface IDSQRProtoAllocBindStaleLink
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoAllocBindStaleLink

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoAllocBindStaleLink;
  v4 = [(IDSQRProtoAllocBindStaleLink *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoAllocBindStaleLink *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  serverAddress = self->_serverAddress;
  if (serverAddress)
  {
    [dictionary setObject:serverAddress forKey:@"server_address"];
  }

  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [v4 setObject:clientAddress forKey:@"client_address"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_linkId];
    [v4 setObject:v7 forKey:@"link_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serverAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serverAddress)
  {
    [toCopy setServerAddress:?];
    toCopy = v5;
  }

  if (self->_clientAddress)
  {
    [v5 setClientAddress:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_linkId;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_serverAddress copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_clientAddress copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_linkId;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  serverAddress = self->_serverAddress;
  if (serverAddress | *(equalCopy + 3))
  {
    if (![(NSString *)serverAddress isEqual:?])
    {
      goto LABEL_10;
    }
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(equalCopy + 1))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_linkId == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serverAddress hash];
  v4 = [(NSString *)self->_clientAddress hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_linkId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(IDSQRProtoAllocBindStaleLink *)self setServerAddress:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(IDSQRProtoAllocBindStaleLink *)self setClientAddress:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_linkId = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end