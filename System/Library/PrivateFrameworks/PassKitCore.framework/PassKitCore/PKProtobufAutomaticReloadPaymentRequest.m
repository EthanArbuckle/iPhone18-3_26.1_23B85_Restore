@interface PKProtobufAutomaticReloadPaymentRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufAutomaticReloadPaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufAutomaticReloadPaymentRequest;
  v4 = [(PKProtobufAutomaticReloadPaymentRequest *)&v8 description];
  v5 = [(PKProtobufAutomaticReloadPaymentRequest *)self dictionaryRepresentation];
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

  automaticPaymentBilling = self->_automaticPaymentBilling;
  if (automaticPaymentBilling)
  {
    v7 = [(PKProtobufPaymentSummaryItem *)automaticPaymentBilling dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"automaticPaymentBilling"];
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

  if (self->_automaticPaymentBilling)
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

  if (self->_automaticPaymentBilling)
  {
    [v5 setAutomaticPaymentBilling:?];
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_paymentDescription copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PKProtobufPaymentSummaryItem *)self->_automaticPaymentBilling copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_billingAgreement copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_managementURL copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_tokenNotificationURL copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((paymentDescription = self->_paymentDescription, !(paymentDescription | v4[4])) || -[NSString isEqual:](paymentDescription, "isEqual:")) && ((automaticPaymentBilling = self->_automaticPaymentBilling, !(automaticPaymentBilling | v4[1])) || -[PKProtobufPaymentSummaryItem isEqual:](automaticPaymentBilling, "isEqual:")) && ((billingAgreement = self->_billingAgreement, !(billingAgreement | v4[2])) || -[NSString isEqual:](billingAgreement, "isEqual:")) && ((managementURL = self->_managementURL, !(managementURL | v4[3])) || -[NSString isEqual:](managementURL, "isEqual:")))
  {
    tokenNotificationURL = self->_tokenNotificationURL;
    if (tokenNotificationURL | v4[5])
    {
      v10 = [(NSString *)tokenNotificationURL isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_paymentDescription hash];
  v4 = [(PKProtobufPaymentSummaryItem *)self->_automaticPaymentBilling hash]^ v3;
  v5 = [(NSString *)self->_billingAgreement hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_managementURL hash];
  return v6 ^ [(NSString *)self->_tokenNotificationURL hash];
}

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[4])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setPaymentDescription:?];
  }

  automaticPaymentBilling = self->_automaticPaymentBilling;
  v5 = v6[1];
  if (automaticPaymentBilling)
  {
    if (v5)
    {
      [(PKProtobufPaymentSummaryItem *)automaticPaymentBilling mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setAutomaticPaymentBilling:?];
  }

  if (v6[2])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setBillingAgreement:?];
  }

  if (v6[3])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setManagementURL:?];
  }

  if (v6[5])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setTokenNotificationURL:?];
  }
}

@end