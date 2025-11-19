@interface NPKProtoRegistrationDataResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRegistrationDataResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRegistrationDataResponse;
  v4 = [(NPKProtoRegistrationDataResponse *)&v8 description];
  v5 = [(NPKProtoRegistrationDataResponse *)self dictionaryRepresentation];
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

  registrationDataBytes = self->_registrationDataBytes;
  if (registrationDataBytes)
  {
    [v3 setObject:registrationDataBytes forKey:@"registrationDataBytes"];
  }

  pushToken = self->_pushToken;
  if (pushToken)
  {
    [v3 setObject:pushToken forKey:@"pushToken"];
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

  if (self->_registrationDataBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_pushToken)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_pending;
    v4[28] |= 1u;
  }

  v5 = v4;
  if (self->_registrationDataBytes)
  {
    [v4 setRegistrationDataBytes:?];
    v4 = v5;
  }

  if (self->_pushToken)
  {
    [v5 setPushToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_registrationDataBytes copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_pushToken copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_pending)
    {
      if (*(v4 + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  registrationDataBytes = self->_registrationDataBytes;
  if (registrationDataBytes | *(v4 + 2) && ![(NSData *)registrationDataBytes isEqual:?])
  {
    goto LABEL_9;
  }

  pushToken = self->_pushToken;
  if (pushToken | *(v4 + 1))
  {
    v8 = [(NSString *)pushToken isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
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

  v4 = [(NSData *)self->_registrationDataBytes hash]^ v3;
  return v4 ^ [(NSString *)self->_pushToken hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[28])
  {
    self->_pending = v4[24];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoRegistrationDataResponse *)self setRegistrationDataBytes:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoRegistrationDataResponse *)self setPushToken:?];
    v4 = v5;
  }
}

@end