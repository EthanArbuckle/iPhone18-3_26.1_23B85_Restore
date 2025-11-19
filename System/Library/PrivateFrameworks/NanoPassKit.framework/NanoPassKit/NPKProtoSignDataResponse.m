@interface NPKProtoSignDataResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSignDataResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSignDataResponse;
  v4 = [(NPKProtoSignDataResponse *)&v8 description];
  v5 = [(NPKProtoSignDataResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v4 forKey:@"pending"];
  }

  signedData = self->_signedData;
  if (signedData)
  {
    [v3 setObject:signedData forKey:@"signedData"];
  }

  certsBytes = self->_certsBytes;
  if (certsBytes)
  {
    [v3 setObject:certsBytes forKey:@"certsBytes"];
  }

  signatureInfoBytes = self->_signatureInfoBytes;
  if (signatureInfoBytes)
  {
    [v3 setObject:signatureInfoBytes forKey:@"signatureInfoBytes"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_signedData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_certsBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_signatureInfoBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[32] = self->_pending;
    v4[36] |= 1u;
  }

  v5 = v4;
  if (self->_signedData)
  {
    [v4 setSignedData:?];
    v4 = v5;
  }

  if (self->_certsBytes)
  {
    [v5 setCertsBytes:?];
    v4 = v5;
  }

  if (self->_signatureInfoBytes)
  {
    [v5 setSignatureInfoBytes:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_pending;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSData *)self->_signedData copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_certsBytes copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSData *)self->_signatureInfoBytes copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
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

  if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  signedData = self->_signedData;
  if (signedData | *(v4 + 3) && ![(NSData *)signedData isEqual:?])
  {
    goto LABEL_11;
  }

  certsBytes = self->_certsBytes;
  if (certsBytes | *(v4 + 1))
  {
    if (![(NSData *)certsBytes isEqual:?])
    {
      goto LABEL_11;
    }
  }

  signatureInfoBytes = self->_signatureInfoBytes;
  if (signatureInfoBytes | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[36])
  {
    self->_pending = v4[32];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(NPKProtoSignDataResponse *)self setSignedData:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoSignDataResponse *)self setCertsBytes:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoSignDataResponse *)self setSignatureInfoBytes:?];
    v4 = v5;
  }
}

@end