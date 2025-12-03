@interface PKProtobufAutomaticReloadPaymentRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufAutomaticReloadPaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufAutomaticReloadPaymentRequest;
  v4 = [(PKProtobufAutomaticReloadPaymentRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufAutomaticReloadPaymentRequest *)self dictionaryRepresentation];
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

  automaticPaymentBilling = self->_automaticPaymentBilling;
  if (automaticPaymentBilling)
  {
    dictionaryRepresentation = [(PKProtobufPaymentSummaryItem *)automaticPaymentBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"automaticPaymentBilling"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_automaticPaymentBilling)
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

  if (self->_automaticPaymentBilling)
  {
    [v5 setAutomaticPaymentBilling:?];
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_paymentDescription copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PKProtobufPaymentSummaryItem *)self->_automaticPaymentBilling copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_billingAgreement copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_managementURL copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_tokenNotificationURL copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((paymentDescription = self->_paymentDescription, !(paymentDescription | equalCopy[4])) || -[NSString isEqual:](paymentDescription, "isEqual:")) && ((automaticPaymentBilling = self->_automaticPaymentBilling, !(automaticPaymentBilling | equalCopy[1])) || -[PKProtobufPaymentSummaryItem isEqual:](automaticPaymentBilling, "isEqual:")) && ((billingAgreement = self->_billingAgreement, !(billingAgreement | equalCopy[2])) || -[NSString isEqual:](billingAgreement, "isEqual:")) && ((managementURL = self->_managementURL, !(managementURL | equalCopy[3])) || -[NSString isEqual:](managementURL, "isEqual:")))
  {
    tokenNotificationURL = self->_tokenNotificationURL;
    if (tokenNotificationURL | equalCopy[5])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setPaymentDescription:?];
  }

  automaticPaymentBilling = self->_automaticPaymentBilling;
  v5 = fromCopy[1];
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

  if (fromCopy[2])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setBillingAgreement:?];
  }

  if (fromCopy[3])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setManagementURL:?];
  }

  if (fromCopy[5])
  {
    [(PKProtobufAutomaticReloadPaymentRequest *)self setTokenNotificationURL:?];
  }
}

@end