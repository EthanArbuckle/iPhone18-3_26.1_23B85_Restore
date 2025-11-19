@interface NPKProtoRevokeShareForPassIdentifierRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRevokeShareForPassIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRevokeShareForPassIdentifierRequest;
  v4 = [(NPKProtoRevokeShareForPassIdentifierRequest *)&v8 description];
  v5 = [(NPKProtoRevokeShareForPassIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passIdentifier = self->_passIdentifier;
  if (passIdentifier)
  {
    [v3 setObject:passIdentifier forKey:@"passIdentifier"];
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

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setPassIdentifier:self->_passIdentifier];
  [v4 setShareData:self->_shareData];
  if (*&self->_has)
  {
    v4[24] = self->_shouldCascade;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_shareData copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shouldCascade;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  passIdentifier = self->_passIdentifier;
  if (passIdentifier | *(v4 + 1))
  {
    if (![(NSString *)passIdentifier isEqual:?])
    {
      goto LABEL_8;
    }
  }

  shareData = self->_shareData;
  if (shareData | *(v4 + 2))
  {
    if (![(NSData *)shareData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_shouldCascade)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoRevokeShareForPassIdentifierRequest *)self setPassIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoRevokeShareForPassIdentifierRequest *)self setShareData:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_shouldCascade = v4[24];
    *&self->_has |= 1u;
  }
}

@end