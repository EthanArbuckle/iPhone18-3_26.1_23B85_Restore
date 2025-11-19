@interface NPKProtoPasscodeUpgradeFlowShouldExitRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPending:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPasscodeUpgradeFlowShouldExitRequest

- (void)setHasPending:(BOOL)a3
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
  v8.super_class = NPKProtoPasscodeUpgradeFlowShouldExitRequest;
  v4 = [(NPKProtoPasscodeUpgradeFlowShouldExitRequest *)&v8 description];
  v5 = [(NPKProtoPasscodeUpgradeFlowShouldExitRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_passcodeChanged];
    [v3 setObject:v4 forKey:@"passcodeChanged"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v6 forKey:@"pending"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    passcodeChanged = self->_passcodeChanged;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_passcodeChanged;
    v4[20] |= 1u;
  }

  if (self->_errorData)
  {
    v5 = v4;
    [v4 setErrorData:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[17] = self->_pending;
    v4[20] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_passcodeChanged;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_errorData copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 17) = self->_pending;
    *(v6 + 20) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = *(v4 + 20);
  if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v4 + 16);
  if (self->_passcodeChanged)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_3:
    if (v6)
    {
      goto LABEL_13;
    }
  }

  errorData = self->_errorData;
  if (!(errorData | *(v4 + 1)))
  {
    goto LABEL_7;
  }

  if (![(NSData *)errorData isEqual:?])
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  has = self->_has;
LABEL_7:
  v8 = (*(v4 + 20) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) != 0)
    {
      if (self->_pending)
      {
        if (*(v4 + 17))
        {
          goto LABEL_19;
        }
      }

      else if (!*(v4 + 17))
      {
LABEL_19:
        v8 = 1;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_passcodeChanged;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_errorData hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_pending;
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
  if (v4[20])
  {
    self->_passcodeChanged = v4[16];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(NPKProtoPasscodeUpgradeFlowShouldExitRequest *)self setErrorData:?];
    v4 = v5;
  }

  if ((v4[20] & 2) != 0)
  {
    self->_pending = v4[17];
    *&self->_has |= 2u;
  }
}

@end