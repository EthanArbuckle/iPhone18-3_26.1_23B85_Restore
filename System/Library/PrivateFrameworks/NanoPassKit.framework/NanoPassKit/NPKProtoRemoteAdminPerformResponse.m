@interface NPKProtoRemoteAdminPerformResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemoteAdminPerformResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemoteAdminPerformResponse;
  v4 = [(NPKProtoRemoteAdminPerformResponse *)&v8 description];
  v5 = [(NPKProtoRemoteAdminPerformResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resultCode];
  [v3 setObject:v4 forKey:@"resultCode"];

  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    [v3 setObject:responseDictionary forKey:@"responseDictionary"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_httpStatus];
    [v3 setObject:v6 forKey:@"httpStatus"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  resultCode = self->_resultCode;
  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[6] = self->_resultCode;
  if (self->_responseDictionary)
  {
    v5 = v4;
    [v4 setResponseDictionary:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[2] = self->_httpStatus;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_resultCode;
  v6 = [(NSData *)self->_responseDictionary copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_httpStatus;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (self->_resultCode != *(v4 + 6))
  {
    goto LABEL_9;
  }

  responseDictionary = self->_responseDictionary;
  if (responseDictionary | *(v4 + 2))
  {
    if (![(NSData *)responseDictionary isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_httpStatus == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_resultCode = v4[6];
  if (*(v4 + 2))
  {
    v5 = v4;
    [(NPKProtoRemoteAdminPerformResponse *)self setResponseDictionary:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_httpStatus = v4[2];
    *&self->_has |= 1u;
  }
}

@end