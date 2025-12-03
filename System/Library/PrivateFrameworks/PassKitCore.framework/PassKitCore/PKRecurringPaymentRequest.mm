@interface PKRecurringPaymentRequest
+ (PKRecurringPaymentRequest)recurringPaymentRequestWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecurringPaymentRequest:(id)request;
- (PKRecurringPaymentRequest)initWithCoder:(id)coder;
- (PKRecurringPaymentRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (PKRecurringPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription regularBilling:(PKRecurringPaymentSummaryItem *)regularBilling managementURL:(NSURL *)managementURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitize;
@end

@implementation PKRecurringPaymentRequest

+ (PKRecurringPaymentRequest)recurringPaymentRequestWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  paymentDescription = [protobufCopy paymentDescription];
  regularBilling = [protobufCopy regularBilling];
  v6 = [PKPaymentSummaryItem itemWithProtobuf:regularBilling];

  v7 = MEMORY[0x1E695DFF8];
  managementURL = [protobufCopy managementURL];
  v9 = [v7 URLWithString:managementURL];

  v10 = [[PKRecurringPaymentRequest alloc] initWithPaymentDescription:paymentDescription regularBilling:v6 managementURL:v9];
  if ([protobufCopy hasTrialBilling])
  {
    trialBilling = [protobufCopy trialBilling];
    v12 = [PKPaymentSummaryItem itemWithProtobuf:trialBilling];

    [(PKRecurringPaymentRequest *)v10 setTrialBilling:v12];
  }

  if ([protobufCopy hasBillingAgreement])
  {
    billingAgreement = [protobufCopy billingAgreement];
    [(PKRecurringPaymentRequest *)v10 setBillingAgreement:billingAgreement];
  }

  if ([protobufCopy hasTokenNotificationURL])
  {
    v14 = MEMORY[0x1E695DFF8];
    tokenNotificationURL = [protobufCopy tokenNotificationURL];
    v16 = [v14 URLWithString:tokenNotificationURL];
    [(PKRecurringPaymentRequest *)v10 setTokenNotificationURL:v16];
  }

  return v10;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufRecurringPaymentRequest);
  paymentDescription = [(PKRecurringPaymentRequest *)self paymentDescription];
  [(PKProtobufRecurringPaymentRequest *)v3 setPaymentDescription:paymentDescription];

  regularBilling = [(PKRecurringPaymentRequest *)self regularBilling];
  summaryItemProtobuf = [regularBilling summaryItemProtobuf];
  [(PKProtobufRecurringPaymentRequest *)v3 setRegularBilling:summaryItemProtobuf];

  managementURL = [(PKRecurringPaymentRequest *)self managementURL];
  absoluteString = [managementURL absoluteString];
  [(PKProtobufRecurringPaymentRequest *)v3 setManagementURL:absoluteString];

  trialBilling = [(PKRecurringPaymentRequest *)self trialBilling];

  if (trialBilling)
  {
    trialBilling2 = [(PKRecurringPaymentRequest *)self trialBilling];
    summaryItemProtobuf2 = [trialBilling2 summaryItemProtobuf];
    [(PKProtobufRecurringPaymentRequest *)v3 setTrialBilling:summaryItemProtobuf2];
  }

  billingAgreement = [(PKRecurringPaymentRequest *)self billingAgreement];

  if (billingAgreement)
  {
    billingAgreement2 = [(PKRecurringPaymentRequest *)self billingAgreement];
    [(PKProtobufRecurringPaymentRequest *)v3 setBillingAgreement:billingAgreement2];
  }

  tokenNotificationURL = [(PKRecurringPaymentRequest *)self tokenNotificationURL];

  if (tokenNotificationURL)
  {
    tokenNotificationURL2 = [(PKRecurringPaymentRequest *)self tokenNotificationURL];
    absoluteString2 = [tokenNotificationURL2 absoluteString];
    [(PKProtobufRecurringPaymentRequest *)v3 setManagementURL:absoluteString2];
  }

  return v3;
}

- (PKRecurringPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription regularBilling:(PKRecurringPaymentSummaryItem *)regularBilling managementURL:(NSURL *)managementURL
{
  v8 = paymentDescription;
  v9 = regularBilling;
  v10 = managementURL;
  v19.receiver = self;
  v19.super_class = PKRecurringPaymentRequest;
  v11 = [(PKRecurringPaymentRequest *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_paymentDescription;
    v11->_paymentDescription = v12;

    v14 = [(PKRecurringPaymentSummaryItem *)v9 copy];
    v15 = v11->_regularBilling;
    v11->_regularBilling = v14;

    v16 = [(NSURL *)v10 copy];
    v17 = v11->_managementURL;
    v11->_managementURL = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_paymentDescription copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKRecurringPaymentSummaryItem *)self->_regularBilling copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PKRecurringPaymentSummaryItem *)self->_trialBilling copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_billingAgreement copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSURL *)self->_managementURL copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSURL *)self->_tokenNotificationURL copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  return v5;
}

- (PKRecurringPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKRecurringPaymentRequest;
  v5 = [(PKRecurringPaymentRequest *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDescription"];
    paymentDescription = v5->_paymentDescription;
    v5->_paymentDescription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regularBilling"];
    regularBilling = v5->_regularBilling;
    v5->_regularBilling = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialBilling"];
    trialBilling = v5->_trialBilling;
    v5->_trialBilling = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAgreement"];
    billingAgreement = v5->_billingAgreement;
    v5->_billingAgreement = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenNotificationURL"];
    tokenNotificationURL = v5->_tokenNotificationURL;
    v5->_tokenNotificationURL = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentDescription = self->_paymentDescription;
  coderCopy = coder;
  [coderCopy encodeObject:paymentDescription forKey:@"paymentDescription"];
  [coderCopy encodeObject:self->_regularBilling forKey:@"regularBilling"];
  [coderCopy encodeObject:self->_trialBilling forKey:@"trialBilling"];
  [coderCopy encodeObject:self->_billingAgreement forKey:@"billingAgreement"];
  [coderCopy encodeObject:self->_managementURL forKey:@"managementURL"];
  [coderCopy encodeObject:self->_tokenNotificationURL forKey:@"tokenNotificationURL"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"paymentDescription: %@, ", self->_paymentDescription];
  [v3 appendFormat:@"regularBilling: %@, ", self->_regularBilling];
  if (self->_trialBilling)
  {
    [v3 appendFormat:@"trialBilling: %@, ", self->_trialBilling];
  }

  if (self->_billingAgreement)
  {
    [v3 appendFormat:@"billingAgreement: %@, ", self->_billingAgreement];
  }

  [v3 appendFormat:@"managementURL: %@, ", self->_managementURL];
  if (self->_tokenNotificationURL)
  {
    [v3 appendFormat:@"tokenNotificationURL: %@, ", self->_tokenNotificationURL];
  }

  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_paymentDescription];
  [v3 safelyAddObject:self->_regularBilling];
  [v3 safelyAddObject:self->_trialBilling];
  [v3 safelyAddObject:self->_billingAgreement];
  [v3 safelyAddObject:self->_managementURL];
  [v3 safelyAddObject:self->_tokenNotificationURL];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRecurringPaymentRequest *)self isEqualToRecurringPaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRecurringPaymentRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy[1];
  v6 = self->_paymentDescription;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  regularBilling = self->_regularBilling;
  v12 = requestCopy[2];
  if (regularBilling && v12)
  {
    if (![(PKRecurringPaymentSummaryItem *)regularBilling isEqual:?])
    {
      goto LABEL_20;
    }
  }

  else if (regularBilling != v12)
  {
    goto LABEL_20;
  }

  trialBilling = self->_trialBilling;
  v14 = requestCopy[3];
  if (trialBilling && v14)
  {
    if (![(PKRecurringPaymentSummaryItem *)trialBilling isEqual:?])
    {
      goto LABEL_20;
    }
  }

  else if (trialBilling != v14)
  {
    goto LABEL_20;
  }

  v17 = requestCopy[4];
  v6 = self->_billingAgreement;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {

    goto LABEL_28;
  }

  if (!v6 || !v18)
  {
LABEL_7:

    goto LABEL_20;
  }

  v19 = [(NSString *)v6 isEqualToString:v18];

  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_28:
  managementURL = self->_managementURL;
  v21 = requestCopy[5];
  if (managementURL && v21)
  {
    if (([(NSURL *)managementURL isEqual:?]& 1) != 0)
    {
      goto LABEL_33;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (managementURL != v21)
  {
    goto LABEL_20;
  }

LABEL_33:
  tokenNotificationURL = self->_tokenNotificationURL;
  v23 = requestCopy[6];
  if (tokenNotificationURL && v23)
  {
    v15 = [(NSURL *)tokenNotificationURL isEqual:?];
  }

  else
  {
    v15 = tokenNotificationURL == v23;
  }

LABEL_21:

  return v15;
}

- (void)sanitize
{
  pk_merchantTokensSanitizedBillingAgreement = [(NSString *)self->_billingAgreement pk_merchantTokensSanitizedBillingAgreement];
  billingAgreement = self->_billingAgreement;
  self->_billingAgreement = pk_merchantTokensSanitizedBillingAgreement;
}

- (PKRecurringPaymentRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [(PKRecurringPaymentRequest *)self init];
  if (v6)
  {
    v7 = [dictionaryCopy PKStringForKey:@"paymentDescription"];
    paymentDescription = v6->_paymentDescription;
    v6->_paymentDescription = v7;

    v9 = [dictionaryCopy PKDictionaryForKey:@"regularBilling"];
    if (v9)
    {
      v10 = [[PKRecurringPaymentSummaryItem alloc] initWithDictionary:v9 error:0];
      regularBilling = v6->_regularBilling;
      v6->_regularBilling = v10;
    }

    v12 = [dictionaryCopy PKDictionaryForKey:@"trialBilling"];
    if (v12)
    {
      v13 = [[PKRecurringPaymentSummaryItem alloc] initWithDictionary:v12 error:0];
      trialBilling = v6->_trialBilling;
      v6->_trialBilling = v13;
    }

    v15 = [dictionaryCopy PKStringForKey:@"billingAgreement"];
    billingAgreement = v6->_billingAgreement;
    v6->_billingAgreement = v15;

    v17 = [dictionaryCopy PKURLForKey:@"managementURL"];
    managementURL = v6->_managementURL;
    v6->_managementURL = v17;

    v19 = [dictionaryCopy PKURLForKey:@"tokenNotificationURL"];
    tokenNotificationURL = v6->_tokenNotificationURL;
    v6->_tokenNotificationURL = v19;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  paymentDescription = self->_paymentDescription;
  if (paymentDescription)
  {
    [v3 setObject:paymentDescription forKeyedSubscript:@"paymentDescription"];
  }

  regularBilling = self->_regularBilling;
  if (regularBilling)
  {
    dictionaryRepresentation = [(PKRecurringPaymentSummaryItem *)regularBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"regularBilling"];
  }

  trialBilling = self->_trialBilling;
  if (trialBilling)
  {
    dictionaryRepresentation2 = [(PKRecurringPaymentSummaryItem *)trialBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKeyedSubscript:@"trialBilling"];
  }

  billingAgreement = self->_billingAgreement;
  if (billingAgreement)
  {
    [v4 setObject:billingAgreement forKeyedSubscript:@"billingAgreement"];
  }

  managementURL = self->_managementURL;
  if (managementURL)
  {
    absoluteString = [(NSURL *)managementURL absoluteString];
    [v4 setObject:absoluteString forKeyedSubscript:@"managementURL"];
  }

  tokenNotificationURL = self->_tokenNotificationURL;
  if (tokenNotificationURL)
  {
    absoluteString2 = [(NSURL *)tokenNotificationURL absoluteString];
    [v4 setObject:absoluteString2 forKeyedSubscript:@"tokenNotificationURL"];
  }

  v15 = [v4 copy];

  return v15;
}

@end