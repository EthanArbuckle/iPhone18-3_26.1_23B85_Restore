@interface NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext)
  {
    v5 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"manualEntryStepContext"];
  }

  remoteCredential = self->_remoteCredential;
  if (remoteCredential)
  {
    v7 = [(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"remoteCredential"];
  }

  credential = self->_credential;
  if (credential)
  {
    v9 = [(NPKProtoStandalonePaymentCredentialUnion *)credential dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"credential"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAddingDifferentCard];
    [v3 setObject:v10 forKey:@"allowsAddingDifferentCard"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_manualEntryStepContext)
  {
    [NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_remoteCredential)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_credential)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = v7;
  if (*&self->_has)
  {
    allowsAddingDifferentCard = self->_allowsAddingDifferentCard;
    PBDataWriterWriteBOOLField();
    v5 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setManualEntryStepContext:self->_manualEntryStepContext];
  if (self->_remoteCredential)
  {
    [v4 setRemoteCredential:?];
  }

  if (self->_credential)
  {
    [v4 setCredential:?];
  }

  if (*&self->_has)
  {
    v4[32] = self->_allowsAddingDifferentCard;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)self->_manualEntryStepContext copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NPKProtoStandalonePaymentRemoteCredential *)self->_remoteCredential copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NPKProtoStandalonePaymentCredentialUnion *)self->_credential copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_allowsAddingDifferentCard;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext | *(v4 + 2))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext isEqual:?])
    {
      goto LABEL_10;
    }
  }

  remoteCredential = self->_remoteCredential;
  if (remoteCredential | *(v4 + 3))
  {
    if (![(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential isEqual:?])
    {
      goto LABEL_10;
    }
  }

  credential = self->_credential;
  if (credential | *(v4 + 1))
  {
    if (![(NPKProtoStandalonePaymentCredentialUnion *)credential isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_allowsAddingDifferentCard)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)self->_manualEntryStepContext hash];
  v4 = [(NPKProtoStandalonePaymentRemoteCredential *)self->_remoteCredential hash];
  v5 = [(NPKProtoStandalonePaymentCredentialUnion *)self->_credential hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_allowsAddingDifferentCard;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  manualEntryStepContext = self->_manualEntryStepContext;
  v6 = *(v4 + 2);
  v11 = v4;
  if (manualEntryStepContext)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self setManualEntryStepContext:?];
  }

  v4 = v11;
LABEL_7:
  remoteCredential = self->_remoteCredential;
  v8 = *(v4 + 3);
  if (remoteCredential)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self setRemoteCredential:?];
  }

  v4 = v11;
LABEL_13:
  credential = self->_credential;
  v10 = *(v4 + 1);
  if (credential)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(NPKProtoStandalonePaymentCredentialUnion *)credential mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self setCredential:?];
  }

  v4 = v11;
LABEL_19:
  if (*(v4 + 36))
  {
    self->_allowsAddingDifferentCard = *(v4 + 32);
    *&self->_has |= 1u;
  }
}

@end