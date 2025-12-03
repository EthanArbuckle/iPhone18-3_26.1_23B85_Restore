@interface NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"manualEntryStepContext"];
  }

  remoteCredential = self->_remoteCredential;
  if (remoteCredential)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"remoteCredential"];
  }

  credential = self->_credential;
  if (credential)
  {
    dictionaryRepresentation3 = [(NPKProtoStandalonePaymentCredentialUnion *)credential dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"credential"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAddingDifferentCard];
    [dictionary setObject:v10 forKey:@"allowsAddingDifferentCard"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_manualEntryStepContext)
  {
    [NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext writeTo:];
  }

  v7 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setManualEntryStepContext:self->_manualEntryStepContext];
  if (self->_remoteCredential)
  {
    [toCopy setRemoteCredential:?];
  }

  if (self->_credential)
  {
    [toCopy setCredential:?];
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_allowsAddingDifferentCard;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)self->_manualEntryStepContext copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NPKProtoStandalonePaymentRemoteCredential *)self->_remoteCredential copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NPKProtoStandalonePaymentCredentialUnion *)self->_credential copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_allowsAddingDifferentCard;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext | *(equalCopy + 2))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext isEqual:?])
    {
      goto LABEL_10;
    }
  }

  remoteCredential = self->_remoteCredential;
  if (remoteCredential | *(equalCopy + 3))
  {
    if (![(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential isEqual:?])
    {
      goto LABEL_10;
    }
  }

  credential = self->_credential;
  if (credential | *(equalCopy + 1))
  {
    if (![(NPKProtoStandalonePaymentCredentialUnion *)credential isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_allowsAddingDifferentCard)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  manualEntryStepContext = self->_manualEntryStepContext;
  v6 = *(fromCopy + 2);
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  remoteCredential = self->_remoteCredential;
  v8 = *(fromCopy + 3);
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

  fromCopy = v11;
LABEL_13:
  credential = self->_credential;
  v10 = *(fromCopy + 1);
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

  fromCopy = v11;
LABEL_19:
  if (*(fromCopy + 36))
  {
    self->_allowsAddingDifferentCard = *(fromCopy + 32);
    *&self->_has |= 1u;
  }
}

@end