@interface PBBProtoAcknowledgeBuysOnWatchCredentialIngestion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoAcknowledgeBuysOnWatchCredentialIngestion

- (void)setHasSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoAcknowledgeBuysOnWatchCredentialIngestion;
  v4 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)&v8 description];
  v5 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v4 forKey:@"success"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_errorCode];
    [v3 setObject:v6 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[24] = self->_success;
    v4[28] |= 2u;
  }

  if (self->_errorDescription)
  {
    v5 = v4;
    [v4 setErrorDescription:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_errorCode;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 28) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + 24);
    if (self->_success)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2))
  {
    if (![(NSString *)errorDescription isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 28) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_errorCode == *(v4 + 2))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_success;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_errorDescription hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
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
  if ((*(v4 + 28) & 2) != 0)
  {
    self->_success = *(v4 + 24);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)self setErrorDescription:?];
    v4 = v5;
  }

  if (*(v4 + 28))
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end