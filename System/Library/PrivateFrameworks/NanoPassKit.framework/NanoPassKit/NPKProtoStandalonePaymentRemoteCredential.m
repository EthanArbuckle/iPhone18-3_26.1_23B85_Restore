@interface NPKProtoStandalonePaymentRemoteCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentRemoteCredential

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentRemoteCredential;
  v4 = [(NPKProtoStandalonePaymentRemoteCredential *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentRemoteCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  paymentCredential = self->_paymentCredential;
  if (paymentCredential)
  {
    v5 = [(NPKProtoStandalonePaymentCredential *)paymentCredential dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"paymentCredential"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  passURL = self->_passURL;
  if (passURL)
  {
    [v3 setObject:passURL forKey:@"passURL"];
  }

  summaryMetadataDescription = self->_summaryMetadataDescription;
  if (summaryMetadataDescription)
  {
    [v3 setObject:summaryMetadataDescription forKey:@"summaryMetadataDescription"];
  }

  statusDescription = self->_statusDescription;
  if (statusDescription)
  {
    [v3 setObject:statusDescription forKey:@"statusDescription"];
  }

  paymentPass = self->_paymentPass;
  if (paymentPass)
  {
    v11 = [(NPKProtoStandalonePaymentPass *)paymentPass dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"paymentPass"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rank];
    [v3 setObject:v12 forKey:@"rank"];
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [v3 setObject:productIdentifier forKey:@"productIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_paymentCredential)
  {
    [NPKProtoStandalonePaymentRemoteCredential writeTo:];
  }

  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setPaymentCredential:self->_paymentCredential];
  if (self->_identifier)
  {
    [v5 setIdentifier:?];
  }

  if (self->_passURL)
  {
    [v5 setPassURL:?];
  }

  v4 = v5;
  if (self->_summaryMetadataDescription)
  {
    [v5 setSummaryMetadataDescription:?];
    v4 = v5;
  }

  if (self->_statusDescription)
  {
    [v5 setStatusDescription:?];
    v4 = v5;
  }

  if (self->_paymentPass)
  {
    [v5 setPaymentPass:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[12] = self->_rank;
    *(v4 + 72) |= 1u;
  }

  if (self->_productIdentifier)
  {
    [v5 setProductIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePaymentCredential *)self->_paymentCredential copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_passURL copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_summaryMetadataDescription copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSString *)self->_statusDescription copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NPKProtoStandalonePaymentPass *)self->_paymentPass copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_rank;
    *(v5 + 72) |= 1u;
  }

  v18 = [(NSString *)self->_productIdentifier copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  paymentCredential = self->_paymentCredential;
  if (paymentCredential | *(v4 + 3))
  {
    if (![(NPKProtoStandalonePaymentCredential *)paymentCredential isEqual:?])
    {
      goto LABEL_21;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  passURL = self->_passURL;
  if (passURL | *(v4 + 2))
  {
    if (![(NSString *)passURL isEqual:?])
    {
      goto LABEL_21;
    }
  }

  summaryMetadataDescription = self->_summaryMetadataDescription;
  if (summaryMetadataDescription | *(v4 + 8))
  {
    if (![(NSString *)summaryMetadataDescription isEqual:?])
    {
      goto LABEL_21;
    }
  }

  statusDescription = self->_statusDescription;
  if (statusDescription | *(v4 + 7))
  {
    if (![(NSString *)statusDescription isEqual:?])
    {
      goto LABEL_21;
    }
  }

  paymentPass = self->_paymentPass;
  if (paymentPass | *(v4 + 4))
  {
    if (![(NPKProtoStandalonePaymentPass *)paymentPass isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_rank != *(v4 + 12))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier | *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  paymentCredential = self->_paymentCredential;
  v6 = *(v4 + 3);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 1))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setPassURL:?];
    v4 = v9;
  }

  if (*(v4 + 8))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setSummaryMetadataDescription:?];
    v4 = v9;
  }

  if (*(v4 + 7))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setStatusDescription:?];
    v4 = v9;
  }

  paymentPass = self->_paymentPass;
  v8 = *(v4 + 4);
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

  v4 = v9;
LABEL_21:
  if (*(v4 + 72))
  {
    self->_rank = *(v4 + 12);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(NPKProtoStandalonePaymentRemoteCredential *)self setProductIdentifier:?];
    v4 = v9;
  }
}

@end