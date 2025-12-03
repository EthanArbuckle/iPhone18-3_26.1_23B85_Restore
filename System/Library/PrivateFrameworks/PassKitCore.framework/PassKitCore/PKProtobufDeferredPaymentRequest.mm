@interface PKProtobufDeferredPaymentRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufDeferredPaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufDeferredPaymentRequest;
  v4 = [(PKProtobufDeferredPaymentRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufDeferredPaymentRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  paymentDescription = self->_paymentDescription;
  if (paymentDescription)
  {
    [dictionary setObject:paymentDescription forKey:@"paymentDescription"];
  }

  deferredBilling = self->_deferredBilling;
  if (deferredBilling)
  {
    dictionaryRepresentation = [(PKProtobufPaymentSummaryItem *)deferredBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"deferredBilling"];
  }

  billingAgreement = self->_billingAgreement;
  if (billingAgreement)
  {
    [v4 setObject:billingAgreement forKey:@"billingAgreement"];
  }

  managementURL = self->_managementURL;
  if (managementURL)
  {
    [v4 setObject:managementURL forKey:@"managementURL"];
  }

  tokenNotificationURL = self->_tokenNotificationURL;
  if (tokenNotificationURL)
  {
    [v4 setObject:tokenNotificationURL forKey:@"tokenNotificationURL"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_freeCancellationDate];
    [v4 setObject:v11 forKey:@"freeCancellationDate"];
  }

  freeCancellationDateTimeZone = self->_freeCancellationDateTimeZone;
  if (freeCancellationDateTimeZone)
  {
    [v4 setObject:freeCancellationDateTimeZone forKey:@"freeCancellationDateTimeZone"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deferredBilling)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_billingAgreement)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_managementURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_tokenNotificationURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_freeCancellationDateTimeZone)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentDescription)
  {
    [toCopy setPaymentDescription:?];
    toCopy = v5;
  }

  if (self->_deferredBilling)
  {
    [v5 setDeferredBilling:?];
    toCopy = v5;
  }

  if (self->_billingAgreement)
  {
    [v5 setBillingAgreement:?];
    toCopy = v5;
  }

  if (self->_managementURL)
  {
    [v5 setManagementURL:?];
    toCopy = v5;
  }

  if (self->_tokenNotificationURL)
  {
    [v5 setTokenNotificationURL:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_freeCancellationDate;
    *(toCopy + 64) |= 1u;
  }

  if (self->_freeCancellationDateTimeZone)
  {
    [v5 setFreeCancellationDateTimeZone:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_paymentDescription copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(PKProtobufPaymentSummaryItem *)self->_deferredBilling copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_billingAgreement copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_managementURL copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_tokenNotificationURL copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_freeCancellationDate;
    *(v5 + 64) |= 1u;
  }

  v16 = [(NSString *)self->_freeCancellationDateTimeZone copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  paymentDescription = self->_paymentDescription;
  if (paymentDescription | *(equalCopy + 6))
  {
    if (![(NSString *)paymentDescription isEqual:?])
    {
      goto LABEL_19;
    }
  }

  deferredBilling = self->_deferredBilling;
  if (deferredBilling | *(equalCopy + 3))
  {
    if (![(PKProtobufPaymentSummaryItem *)deferredBilling isEqual:?])
    {
      goto LABEL_19;
    }
  }

  billingAgreement = self->_billingAgreement;
  if (billingAgreement | *(equalCopy + 2))
  {
    if (![(NSString *)billingAgreement isEqual:?])
    {
      goto LABEL_19;
    }
  }

  managementURL = self->_managementURL;
  if (managementURL | *(equalCopy + 5))
  {
    if (![(NSString *)managementURL isEqual:?])
    {
      goto LABEL_19;
    }
  }

  tokenNotificationURL = self->_tokenNotificationURL;
  if (tokenNotificationURL | *(equalCopy + 7))
  {
    if (![(NSString *)tokenNotificationURL isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_freeCancellationDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  freeCancellationDateTimeZone = self->_freeCancellationDateTimeZone;
  if (freeCancellationDateTimeZone | *(equalCopy + 4))
  {
    v11 = [(NSString *)freeCancellationDateTimeZone isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_paymentDescription hash];
  v4 = [(PKProtobufPaymentSummaryItem *)self->_deferredBilling hash];
  v5 = [(NSString *)self->_billingAgreement hash];
  v6 = [(NSString *)self->_managementURL hash];
  v7 = [(NSString *)self->_tokenNotificationURL hash];
  if (*&self->_has)
  {
    freeCancellationDate = self->_freeCancellationDate;
    if (freeCancellationDate < 0.0)
    {
      freeCancellationDate = -freeCancellationDate;
    }

    *v8.i64 = floor(freeCancellationDate + 0.5);
    v12 = (freeCancellationDate - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ [(NSString *)self->_freeCancellationDateTimeZone hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(PKProtobufDeferredPaymentRequest *)self setPaymentDescription:?];
    fromCopy = v7;
  }

  deferredBilling = self->_deferredBilling;
  v6 = *(fromCopy + 3);
  if (deferredBilling)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PKProtobufPaymentSummaryItem *)deferredBilling mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PKProtobufDeferredPaymentRequest *)self setDeferredBilling:?];
  }

  fromCopy = v7;
LABEL_9:
  if (*(fromCopy + 2))
  {
    [(PKProtobufDeferredPaymentRequest *)self setBillingAgreement:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(PKProtobufDeferredPaymentRequest *)self setManagementURL:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(PKProtobufDeferredPaymentRequest *)self setTokenNotificationURL:?];
    fromCopy = v7;
  }

  if (fromCopy[8])
  {
    self->_freeCancellationDate = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(PKProtobufDeferredPaymentRequest *)self setFreeCancellationDateTimeZone:?];
    fromCopy = v7;
  }
}

@end