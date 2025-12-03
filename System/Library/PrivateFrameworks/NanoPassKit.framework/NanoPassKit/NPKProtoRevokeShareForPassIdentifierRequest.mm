@interface NPKProtoRevokeShareForPassIdentifierRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRevokeShareForPassIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRevokeShareForPassIdentifierRequest;
  v4 = [(NPKProtoRevokeShareForPassIdentifierRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRevokeShareForPassIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passIdentifier = self->_passIdentifier;
  if (passIdentifier)
  {
    [dictionary setObject:passIdentifier forKey:@"passIdentifier"];
  }

  shareData = self->_shareData;
  if (shareData)
  {
    [v4 setObject:shareData forKey:@"shareData"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldCascade];
    [v4 setObject:v7 forKey:@"shouldCascade"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_passIdentifier)
  {
    [NPKProtoRevokeShareForPassIdentifierRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_shareData)
  {
    [NPKProtoRevokeShareForPassIdentifierRequest writeTo:];
  }

  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    shouldCascade = self->_shouldCascade;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassIdentifier:self->_passIdentifier];
  [toCopy setShareData:self->_shareData];
  if (*&self->_has)
  {
    toCopy[24] = self->_shouldCascade;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_shareData copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shouldCascade;
    *(v5 + 28) |= 1u;
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

  passIdentifier = self->_passIdentifier;
  if (passIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)passIdentifier isEqual:?])
    {
      goto LABEL_8;
    }
  }

  shareData = self->_shareData;
  if (shareData | *(equalCopy + 2))
  {
    if (![(NSData *)shareData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_shouldCascade)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passIdentifier hash];
  v4 = [(NSData *)self->_shareData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_shouldCascade;
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
  if (*(fromCopy + 1))
  {
    [(NPKProtoRevokeShareForPassIdentifierRequest *)self setPassIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoRevokeShareForPassIdentifierRequest *)self setShareData:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_shouldCascade = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end