@interface NPKProtoStandalonePaymentCredentialUnion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentCredentialUnion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentCredentialUnion;
  v4 = [(NPKProtoStandalonePaymentCredentialUnion *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentCredentialUnion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  flowIdentifier = self->_flowIdentifier;
  if (flowIdentifier)
  {
    [dictionary setObject:flowIdentifier forKey:@"flowIdentifier"];
  }

  remoteCredential = self->_remoteCredential;
  if (remoteCredential)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"remoteCredential"];
  }

  creditAccountCredential = self->_creditAccountCredential;
  if (creditAccountCredential)
  {
    dictionaryRepresentation2 = [(NPKProtoStandaloneCreditAccountCredential *)creditAccountCredential dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"creditAccountCredential"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_flowIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_remoteCredential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_creditAccountCredential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_flowIdentifier)
  {
    [toCopy setFlowIdentifier:?];
    toCopy = v5;
  }

  if (self->_remoteCredential)
  {
    [v5 setRemoteCredential:?];
    toCopy = v5;
  }

  if (self->_creditAccountCredential)
  {
    [v5 setCreditAccountCredential:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_flowIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NPKProtoStandalonePaymentRemoteCredential *)self->_remoteCredential copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NPKProtoStandaloneCreditAccountCredential *)self->_creditAccountCredential copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((flowIdentifier = self->_flowIdentifier, !(flowIdentifier | equalCopy[2])) || -[NSString isEqual:](flowIdentifier, "isEqual:")) && ((remoteCredential = self->_remoteCredential, !(remoteCredential | equalCopy[3])) || -[NPKProtoStandalonePaymentRemoteCredential isEqual:](remoteCredential, "isEqual:")))
  {
    creditAccountCredential = self->_creditAccountCredential;
    if (creditAccountCredential | equalCopy[1])
    {
      v8 = [(NPKProtoStandaloneCreditAccountCredential *)creditAccountCredential isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_flowIdentifier hash];
  v4 = [(NPKProtoStandalonePaymentRemoteCredential *)self->_remoteCredential hash]^ v3;
  return v4 ^ [(NPKProtoStandaloneCreditAccountCredential *)self->_creditAccountCredential hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoStandalonePaymentCredentialUnion *)self setFlowIdentifier:?];
    fromCopy = v9;
  }

  remoteCredential = self->_remoteCredential;
  v6 = fromCopy[3];
  if (remoteCredential)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoStandalonePaymentCredentialUnion *)self setRemoteCredential:?];
  }

  fromCopy = v9;
LABEL_9:
  creditAccountCredential = self->_creditAccountCredential;
  v8 = fromCopy[1];
  if (creditAccountCredential)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(NPKProtoStandaloneCreditAccountCredential *)creditAccountCredential mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(NPKProtoStandalonePaymentCredentialUnion *)self setCreditAccountCredential:?];
  }

  fromCopy = v9;
LABEL_15:
}

@end