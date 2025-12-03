@interface PKProtobufRecurringPaymentRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufRecurringPaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRecurringPaymentRequest;
  v4 = [(PKProtobufRecurringPaymentRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufRecurringPaymentRequest *)self dictionaryRepresentation];
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

  regularBilling = self->_regularBilling;
  if (regularBilling)
  {
    dictionaryRepresentation = [(PKProtobufPaymentSummaryItem *)regularBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"regularBilling"];
  }

  trialBilling = self->_trialBilling;
  if (trialBilling)
  {
    dictionaryRepresentation2 = [(PKProtobufPaymentSummaryItem *)trialBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"trialBilling"];
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

  if (self->_regularBilling)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_trialBilling)
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

  if (self->_regularBilling)
  {
    [v5 setRegularBilling:?];
    toCopy = v5;
  }

  if (self->_trialBilling)
  {
    [v5 setTrialBilling:?];
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
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PKProtobufPaymentSummaryItem *)self->_regularBilling copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PKProtobufPaymentSummaryItem *)self->_trialBilling copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_billingAgreement copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_managementURL copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(NSString *)self->_tokenNotificationURL copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((paymentDescription = self->_paymentDescription, !(paymentDescription | equalCopy[3])) || -[NSString isEqual:](paymentDescription, "isEqual:")) && ((regularBilling = self->_regularBilling, !(regularBilling | equalCopy[4])) || -[PKProtobufPaymentSummaryItem isEqual:](regularBilling, "isEqual:")) && ((trialBilling = self->_trialBilling, !(trialBilling | equalCopy[6])) || -[PKProtobufPaymentSummaryItem isEqual:](trialBilling, "isEqual:")) && ((billingAgreement = self->_billingAgreement, !(billingAgreement | equalCopy[1])) || -[NSString isEqual:](billingAgreement, "isEqual:")) && ((managementURL = self->_managementURL, !(managementURL | equalCopy[2])) || -[NSString isEqual:](managementURL, "isEqual:")))
  {
    tokenNotificationURL = self->_tokenNotificationURL;
    if (tokenNotificationURL | equalCopy[5])
    {
      v11 = [(NSString *)tokenNotificationURL isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_paymentDescription hash];
  v4 = [(PKProtobufPaymentSummaryItem *)self->_regularBilling hash]^ v3;
  v5 = [(PKProtobufPaymentSummaryItem *)self->_trialBilling hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_billingAgreement hash];
  v7 = [(NSString *)self->_managementURL hash];
  return v6 ^ v7 ^ [(NSString *)self->_tokenNotificationURL hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(PKProtobufRecurringPaymentRequest *)self setPaymentDescription:?];
  }

  regularBilling = self->_regularBilling;
  v5 = fromCopy[4];
  if (regularBilling)
  {
    if (v5)
    {
      [(PKProtobufPaymentSummaryItem *)regularBilling mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PKProtobufRecurringPaymentRequest *)self setRegularBilling:?];
  }

  trialBilling = self->_trialBilling;
  v7 = fromCopy[6];
  if (trialBilling)
  {
    if (v7)
    {
      [(PKProtobufPaymentSummaryItem *)trialBilling mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PKProtobufRecurringPaymentRequest *)self setTrialBilling:?];
  }

  if (fromCopy[1])
  {
    [(PKProtobufRecurringPaymentRequest *)self setBillingAgreement:?];
  }

  if (fromCopy[2])
  {
    [(PKProtobufRecurringPaymentRequest *)self setManagementURL:?];
  }

  if (fromCopy[5])
  {
    [(PKProtobufRecurringPaymentRequest *)self setTokenNotificationURL:?];
  }
}

@end