@interface NPKProtoSignDataResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSignDataResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSignDataResponse;
  v4 = [(NPKProtoSignDataResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSignDataResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v4 forKey:@"pending"];
  }

  signedData = self->_signedData;
  if (signedData)
  {
    [dictionary setObject:signedData forKey:@"signedData"];
  }

  certsBytes = self->_certsBytes;
  if (certsBytes)
  {
    [dictionary setObject:certsBytes forKey:@"certsBytes"];
  }

  signatureInfoBytes = self->_signatureInfoBytes;
  if (signatureInfoBytes)
  {
    [dictionary setObject:signatureInfoBytes forKey:@"signatureInfoBytes"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_signedData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_certsBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_signatureInfoBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[32] = self->_pending;
    toCopy[36] |= 1u;
  }

  v5 = toCopy;
  if (self->_signedData)
  {
    [toCopy setSignedData:?];
    toCopy = v5;
  }

  if (self->_certsBytes)
  {
    [v5 setCertsBytes:?];
    toCopy = v5;
  }

  if (self->_signatureInfoBytes)
  {
    [v5 setSignatureInfoBytes:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_pending;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSData *)self->_signedData copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_certsBytes copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSData *)self->_signatureInfoBytes copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (!self->_pending)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  signedData = self->_signedData;
  if (signedData | *(equalCopy + 3) && ![(NSData *)signedData isEqual:?])
  {
    goto LABEL_11;
  }

  certsBytes = self->_certsBytes;
  if (certsBytes | *(equalCopy + 1))
  {
    if (![(NSData *)certsBytes isEqual:?])
    {
      goto LABEL_11;
    }
  }

  signatureInfoBytes = self->_signatureInfoBytes;
  if (signatureInfoBytes | *(equalCopy + 2))
  {
    v9 = [(NSData *)signatureInfoBytes isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_signedData hash]^ v3;
  v5 = [(NSData *)self->_certsBytes hash];
  return v4 ^ v5 ^ [(NSData *)self->_signatureInfoBytes hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[36])
  {
    self->_pending = fromCopy[32];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NPKProtoSignDataResponse *)self setSignedData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoSignDataResponse *)self setCertsBytes:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoSignDataResponse *)self setSignatureInfoBytes:?];
    fromCopy = v5;
  }
}

@end