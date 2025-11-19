@interface PKProtobufDeferredPaymentRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufDeferredPaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufDeferredPaymentRequest;
  v4 = [(PKProtobufDeferredPaymentRequest *)&v8 description];
  v5 = [(PKProtobufDeferredPaymentRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  paymentDescription = self->_paymentDescription;
  if (paymentDescription)
  {
    [v3 setObject:paymentDescription forKey:@"paymentDescription"];
  }

  deferredBilling = self->_deferredBilling;
  if (deferredBilling)
  {
    v7 = [(PKProtobufPaymentSummaryItem *)deferredBilling dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"deferredBilling"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_paymentDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deferredBilling)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_billingAgreement)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_managementURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_tokenNotificationURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }

  if (self->_freeCancellationDateTimeZone)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_paymentDescription)
  {
    [v4 setPaymentDescription:?];
    v4 = v5;
  }

  if (self->_deferredBilling)
  {
    [v5 setDeferredBilling:?];
    v4 = v5;
  }

  if (self->_billingAgreement)
  {
    [v5 setBillingAgreement:?];
    v4 = v5;
  }

  if (self->_managementURL)
  {
    [v5 setManagementURL:?];
    v4 = v5;
  }

  if (self->_tokenNotificationURL)
  {
    [v5 setTokenNotificationURL:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_freeCancellationDate;
    *(v4 + 64) |= 1u;
  }

  if (self->_freeCancellationDateTimeZone)
  {
    [v5 setFreeCancellationDateTimeZone:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_paymentDescription copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(PKProtobufPaymentSummaryItem *)self->_deferredBilling copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_billingAgreement copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_managementURL copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_tokenNotificationURL copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_freeCancellationDate;
    *(v5 + 64) |= 1u;
  }

  v16 = [(NSString *)self->_freeCancellationDateTimeZone copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  paymentDescription = self->_paymentDescription;
  if (paymentDescription | *(v4 + 6))
  {
    if (![(NSString *)paymentDescription isEqual:?])
    {
      goto LABEL_19;
    }
  }

  deferredBilling = self->_deferredBilling;
  if (deferredBilling | *(v4 + 3))
  {
    if (![(PKProtobufPaymentSummaryItem *)deferredBilling isEqual:?])
    {
      goto LABEL_19;
    }
  }

  billingAgreement = self->_billingAgreement;
  if (billingAgreement | *(v4 + 2))
  {
    if (![(NSString *)billingAgreement isEqual:?])
    {
      goto LABEL_19;
    }
  }

  managementURL = self->_managementURL;
  if (managementURL | *(v4 + 5))
  {
    if (![(NSString *)managementURL isEqual:?])
    {
      goto LABEL_19;
    }
  }

  tokenNotificationURL = self->_tokenNotificationURL;
  if (tokenNotificationURL | *(v4 + 7))
  {
    if (![(NSString *)tokenNotificationURL isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_freeCancellationDate != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  freeCancellationDateTimeZone = self->_freeCancellationDateTimeZone;
  if (freeCancellationDateTimeZone | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 6))
  {
    [(PKProtobufDeferredPaymentRequest *)self setPaymentDescription:?];
    v4 = v7;
  }

  deferredBilling = self->_deferredBilling;
  v6 = *(v4 + 3);
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

  v4 = v7;
LABEL_9:
  if (*(v4 + 2))
  {
    [(PKProtobufDeferredPaymentRequest *)self setBillingAgreement:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufDeferredPaymentRequest *)self setManagementURL:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(PKProtobufDeferredPaymentRequest *)self setTokenNotificationURL:?];
    v4 = v7;
  }

  if (v4[8])
  {
    self->_freeCancellationDate = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(PKProtobufDeferredPaymentRequest *)self setFreeCancellationDateTimeZone:?];
    v4 = v7;
  }
}

@end