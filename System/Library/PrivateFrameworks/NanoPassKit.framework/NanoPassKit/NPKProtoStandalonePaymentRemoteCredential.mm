@interface NPKProtoStandalonePaymentRemoteCredential
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentRemoteCredential

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentRemoteCredential;
  v4 = [(NPKProtoStandalonePaymentRemoteCredential *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentRemoteCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  paymentCredential = self->_paymentCredential;
  if (paymentCredential)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentCredential *)paymentCredential dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"paymentCredential"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  passURL = self->_passURL;
  if (passURL)
  {
    [dictionary setObject:passURL forKey:@"passURL"];
  }

  summaryMetadataDescription = self->_summaryMetadataDescription;
  if (summaryMetadataDescription)
  {
    [dictionary setObject:summaryMetadataDescription forKey:@"summaryMetadataDescription"];
  }

  statusDescription = self->_statusDescription;
  if (statusDescription)
  {
    [dictionary setObject:statusDescription forKey:@"statusDescription"];
  }

  paymentPass = self->_paymentPass;
  if (paymentPass)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentPass *)paymentPass dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"paymentPass"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rank];
    [dictionary setObject:v12 forKey:@"rank"];
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [dictionary setObject:productIdentifier forKey:@"productIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_paymentCredential)
  {
    [NPKProtoStandalonePaymentRemoteCredential writeTo:];
  }

  v7 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passURL)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (self->_summaryMetadataDescription)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_statusDescription)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_paymentPass)
  {
    PBDataWriterWriteSubmessage();
    v5 = v7;
  }

  if (*&self->_has)
  {
    rank = self->_rank;
    PBDataWriterWriteUint32Field();
    v5 = v7;
  }

  if (self->_productIdentifier)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPaymentCredential:self->_paymentCredential];
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_passURL)
  {
    [toCopy setPassURL:?];
  }

  v4 = toCopy;
  if (self->_summaryMetadataDescription)
  {
    [toCopy setSummaryMetadataDescription:?];
    v4 = toCopy;
  }

  if (self->_statusDescription)
  {
    [toCopy setStatusDescription:?];
    v4 = toCopy;
  }

  if (self->_paymentPass)
  {
    [toCopy setPaymentPass:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[12] = self->_rank;
    *(v4 + 72) |= 1u;
  }

  if (self->_productIdentifier)
  {
    [toCopy setProductIdentifier:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandalonePaymentCredential *)self->_paymentCredential copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_passURL copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_summaryMetadataDescription copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSString *)self->_statusDescription copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NPKProtoStandalonePaymentPass *)self->_paymentPass copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_rank;
    *(v5 + 72) |= 1u;
  }

  v18 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  paymentCredential = self->_paymentCredential;
  if (paymentCredential | *(equalCopy + 3))
  {
    if (![(NPKProtoStandalonePaymentCredential *)paymentCredential isEqual:?])
    {
      goto LABEL_21;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  passURL = self->_passURL;
  if (passURL | *(equalCopy + 2))
  {
    if (![(NSString *)passURL isEqual:?])
    {
      goto LABEL_21;
    }
  }

  summaryMetadataDescription = self->_summaryMetadataDescription;
  if (summaryMetadataDescription | *(equalCopy + 8))
  {
    if (![(NSString *)summaryMetadataDescription isEqual:?])
    {
      goto LABEL_21;
    }
  }

  statusDescription = self->_statusDescription;
  if (statusDescription | *(equalCopy + 7))
  {
    if (![(NSString *)statusDescription isEqual:?])
    {
      goto LABEL_21;
    }
  }

  paymentPass = self->_paymentPass;
  if (paymentPass | *(equalCopy + 4))
  {
    if (![(NPKProtoStandalonePaymentPass *)paymentPass isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_rank != *(equalCopy + 12))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier | *(equalCopy + 5))
  {
    v13 = [(NSString *)productIdentifier isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandalonePaymentCredential *)self->_paymentCredential hash];
  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_passURL hash];
  v6 = [(NSString *)self->_summaryMetadataDescription hash];
  v7 = [(NSString *)self->_statusDescription hash];
  v8 = [(NPKProtoStandalonePaymentPass *)self->_paymentPass hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_rank;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_productIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  paymentCredential = self->_paymentCredential;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
  if (paymentCredential)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentCredential *)paymentCredential mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentRemoteCredential *)self setPaymentCredential:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setPassURL:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 8))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setSummaryMetadataDescription:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 7))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setStatusDescription:?];
    fromCopy = v9;
  }

  paymentPass = self->_paymentPass;
  v8 = *(fromCopy + 4);
  if (paymentPass)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    [(NPKProtoStandalonePaymentPass *)paymentPass mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    [(NPKProtoStandalonePaymentRemoteCredential *)self setPaymentPass:?];
  }

  fromCopy = v9;
LABEL_21:
  if (*(fromCopy + 72))
  {
    self->_rank = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setProductIdentifier:?];
    fromCopy = v9;
  }
}

@end