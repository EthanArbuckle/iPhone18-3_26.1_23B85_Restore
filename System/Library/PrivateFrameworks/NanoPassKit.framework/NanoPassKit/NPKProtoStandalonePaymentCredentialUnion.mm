@interface NPKProtoStandalonePaymentCredentialUnion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentCredentialUnion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentCredentialUnion;
  v4 = [(NPKProtoStandalonePaymentCredentialUnion *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentCredentialUnion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  flowIdentifier = self->_flowIdentifier;
  if (flowIdentifier)
  {
    [v3 setObject:flowIdentifier forKey:@"flowIdentifier"];
  }

  remoteCredential = self->_remoteCredential;
  if (remoteCredential)
  {
    v7 = [(NPKProtoStandalonePaymentRemoteCredential *)remoteCredential dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"remoteCredential"];
  }

  creditAccountCredential = self->_creditAccountCredential;
  if (creditAccountCredential)
  {
    v9 = [(NPKProtoStandaloneCreditAccountCredential *)creditAccountCredential dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"creditAccountCredential"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_flowIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_remoteCredential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_creditAccountCredential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_flowIdentifier)
  {
    [v4 setFlowIdentifier:?];
    v4 = v5;
  }

  if (self->_remoteCredential)
  {
    [v5 setRemoteCredential:?];
    v4 = v5;
  }

  if (self->_creditAccountCredential)
  {
    [v5 setCreditAccountCredential:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_flowIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NPKProtoStandalonePaymentRemoteCredential *)self->_remoteCredential copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NPKProtoStandaloneCreditAccountCredential *)self->_creditAccountCredential copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((flowIdentifier = self->_flowIdentifier, !(flowIdentifier | v4[2])) || -[NSString isEqual:](flowIdentifier, "isEqual:")) && ((remoteCredential = self->_remoteCredential, !(remoteCredential | v4[3])) || -[NPKProtoStandalonePaymentRemoteCredential isEqual:](remoteCredential, "isEqual:")))
  {
    creditAccountCredential = self->_creditAccountCredential;
    if (creditAccountCredential | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(NPKProtoStandalonePaymentCredentialUnion *)self setFlowIdentifier:?];
    v4 = v9;
  }

  remoteCredential = self->_remoteCredential;
  v6 = v4[3];
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

  v4 = v9;
LABEL_9:
  creditAccountCredential = self->_creditAccountCredential;
  v8 = v4[1];
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

  v4 = v9;
LABEL_15:
}

@end