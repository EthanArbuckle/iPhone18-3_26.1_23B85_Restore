@interface NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_cardAdded];
    [v3 setObject:v4 forKey:@"cardAdded"];
  }

  error = self->_error;
  if (error)
  {
    v6 = [(NPKProtoStandaloneError *)error dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    cardAdded = self->_cardAdded;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_cardAdded;
    v4[20] |= 1u;
  }

  if (self->_error)
  {
    v5 = v4;
    [v4 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_cardAdded;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NPKProtoStandaloneError *)self->_error copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 16);
  if (!self->_cardAdded)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  error = self->_error;
  if (error | *(v4 + 1))
  {
    v7 = [(NPKProtoStandaloneError *)error isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_cardAdded;
  }

  else
  {
    v2 = 0;
  }

  return [(NPKProtoStandaloneError *)self->_error hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 20))
  {
    self->_cardAdded = *(v4 + 16);
    *&self->_has |= 1u;
  }

  error = self->_error;
  v7 = v5[1];
  if (error)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(NPKProtoStandaloneError *)error mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)self setError:?];
  }

  v5 = v8;
LABEL_9:
}

@end