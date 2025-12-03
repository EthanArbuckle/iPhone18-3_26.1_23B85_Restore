@interface PKAutomaticReloadPaymentRequest
+ (PKAutomaticReloadPaymentRequest)automaticReloadPaymentRequestWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAutomaticReloadPaymentRequest:(id)request;
- (PKAutomaticReloadPaymentRequest)initWithCoder:(id)coder;
- (PKAutomaticReloadPaymentRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (PKAutomaticReloadPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription automaticReloadBilling:(PKAutomaticReloadPaymentSummaryItem *)automaticReloadBilling managementURL:(NSURL *)managementURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitize;
@end

@implementation PKAutomaticReloadPaymentRequest

+ (PKAutomaticReloadPaymentRequest)automaticReloadPaymentRequestWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  paymentDescription = [protobufCopy paymentDescription];
  v5 = MEMORY[0x1E695DFF8];
  managementURL = [protobufCopy managementURL];
  v7 = [v5 URLWithString:managementURL];

  automaticPaymentBilling = [protobufCopy automaticPaymentBilling];
  v9 = [PKPaymentSummaryItem itemWithProtobuf:automaticPaymentBilling];

  v10 = [[PKAutomaticReloadPaymentRequest alloc] initWithPaymentDescription:paymentDescription automaticReloadBilling:v9 managementURL:v7];
  if ([protobufCopy hasBillingAgreement])
  {
    billingAgreement = [protobufCopy billingAgreement];
    [(PKAutomaticReloadPaymentRequest *)v10 setBillingAgreement:billingAgreement];
  }

  if ([protobufCopy hasTokenNotificationURL])
  {
    v12 = MEMORY[0x1E695DFF8];
    tokenNotificationURL = [protobufCopy tokenNotificationURL];
    v14 = [v12 URLWithString:tokenNotificationURL];
    [(PKAutomaticReloadPaymentRequest *)v10 setTokenNotificationURL:v14];
  }

  return v10;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufAutomaticReloadPaymentRequest);
  paymentDescription = [(PKAutomaticReloadPaymentRequest *)self paymentDescription];
  [(PKProtobufAutomaticReloadPaymentRequest *)v3 setPaymentDescription:paymentDescription];

  automaticReloadBilling = [(PKAutomaticReloadPaymentRequest *)self automaticReloadBilling];
  summaryItemProtobuf = [automaticReloadBilling summaryItemProtobuf];
  [(PKProtobufAutomaticReloadPaymentRequest *)v3 setAutomaticPaymentBilling:summaryItemProtobuf];

  managementURL = [(PKAutomaticReloadPaymentRequest *)self managementURL];
  absoluteString = [managementURL absoluteString];
  [(PKProtobufAutomaticReloadPaymentRequest *)v3 setManagementURL:absoluteString];

  billingAgreement = [(PKAutomaticReloadPaymentRequest *)self billingAgreement];

  if (billingAgreement)
  {
    billingAgreement2 = [(PKAutomaticReloadPaymentRequest *)self billingAgreement];
    [(PKProtobufAutomaticReloadPaymentRequest *)v3 setBillingAgreement:billingAgreement2];
  }

  tokenNotificationURL = [(PKAutomaticReloadPaymentRequest *)self tokenNotificationURL];

  if (tokenNotificationURL)
  {
    tokenNotificationURL2 = [(PKAutomaticReloadPaymentRequest *)self tokenNotificationURL];
    absoluteString2 = [tokenNotificationURL2 absoluteString];
    [(PKProtobufAutomaticReloadPaymentRequest *)v3 setManagementURL:absoluteString2];
  }

  return v3;
}

- (PKAutomaticReloadPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription automaticReloadBilling:(PKAutomaticReloadPaymentSummaryItem *)automaticReloadBilling managementURL:(NSURL *)managementURL
{
  v8 = paymentDescription;
  v9 = automaticReloadBilling;
  v10 = managementURL;
  v19.receiver = self;
  v19.super_class = PKAutomaticReloadPaymentRequest;
  v11 = [(PKAutomaticReloadPaymentRequest *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_paymentDescription;
    v11->_paymentDescription = v12;

    v14 = [(PKAutomaticReloadPaymentSummaryItem *)v9 copy];
    v15 = v11->_automaticReloadBilling;
    v11->_automaticReloadBilling = v14;

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

  v8 = [(PKAutomaticReloadPaymentSummaryItem *)self->_automaticReloadBilling copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_billingAgreement copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSURL *)self->_managementURL copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSURL *)self->_tokenNotificationURL copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (PKAutomaticReloadPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKAutomaticReloadPaymentRequest;
  v5 = [(PKAutomaticReloadPaymentRequest *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDescription"];
    paymentDescription = v5->_paymentDescription;
    v5->_paymentDescription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automaticReloadBilling"];
    automaticReloadBilling = v5->_automaticReloadBilling;
    v5->_automaticReloadBilling = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAgreement"];
    billingAgreement = v5->_billingAgreement;
    v5->_billingAgreement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenNotificationURL"];
    tokenNotificationURL = v5->_tokenNotificationURL;
    v5->_tokenNotificationURL = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentDescription = self->_paymentDescription;
  coderCopy = coder;
  [coderCopy encodeObject:paymentDescription forKey:@"paymentDescription"];
  [coderCopy encodeObject:self->_automaticReloadBilling forKey:@"automaticReloadBilling"];
  [coderCopy encodeObject:self->_billingAgreement forKey:@"billingAgreement"];
  [coderCopy encodeObject:self->_managementURL forKey:@"managementURL"];
  [coderCopy encodeObject:self->_tokenNotificationURL forKey:@"tokenNotificationURL"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"paymentDescription: %@, ", self->_paymentDescription];
  [v3 appendFormat:@"automaticReloadBilling: %@ ", self->_automaticReloadBilling];
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
  [v3 safelyAddObject:self->_automaticReloadBilling];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAutomaticReloadPaymentRequest *)self isEqualToAutomaticReloadPaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToAutomaticReloadPaymentRequest:(id)request
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
      goto LABEL_15;
    }
  }

  automaticReloadBilling = self->_automaticReloadBilling;
  v12 = requestCopy[2];
  if (automaticReloadBilling && v12)
  {
    if (![(PKAutomaticReloadPaymentSummaryItem *)automaticReloadBilling isEqual:?])
    {
      goto LABEL_15;
    }
  }

  else if (automaticReloadBilling != v12)
  {
    goto LABEL_15;
  }

  v15 = requestCopy[3];
  v6 = self->_billingAgreement;
  v16 = v15;
  v8 = v16;
  if (v6 == v16)
  {

    goto LABEL_23;
  }

  if (!v6 || !v16)
  {
LABEL_7:

    goto LABEL_15;
  }

  v17 = [(NSString *)v6 isEqualToString:v16];

  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_23:
  managementURL = self->_managementURL;
  v19 = requestCopy[4];
  if (managementURL && v19)
  {
    if (([(NSURL *)managementURL isEqual:?]& 1) != 0)
    {
      goto LABEL_28;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (managementURL != v19)
  {
    goto LABEL_15;
  }

LABEL_28:
  tokenNotificationURL = self->_tokenNotificationURL;
  v21 = requestCopy[5];
  if (tokenNotificationURL && v21)
  {
    v13 = [(NSURL *)tokenNotificationURL isEqual:?];
  }

  else
  {
    v13 = tokenNotificationURL == v21;
  }

LABEL_16:

  return v13;
}

- (void)sanitize
{
  pk_merchantTokensSanitizedBillingAgreement = [(NSString *)self->_billingAgreement pk_merchantTokensSanitizedBillingAgreement];
  billingAgreement = self->_billingAgreement;
  self->_billingAgreement = pk_merchantTokensSanitizedBillingAgreement;
}

- (PKAutomaticReloadPaymentRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [(PKAutomaticReloadPaymentRequest *)self init];
  if (v6)
  {
    v7 = [dictionaryCopy PKStringForKey:@"paymentDescription"];
    paymentDescription = v6->_paymentDescription;
    v6->_paymentDescription = v7;

    v9 = [dictionaryCopy PKDictionaryForKey:@"automaticReloadBilling"];
    if (v9)
    {
      v10 = [[PKAutomaticReloadPaymentSummaryItem alloc] initWithDictionary:v9 error:0];
      automaticReloadBilling = v6->_automaticReloadBilling;
      v6->_automaticReloadBilling = v10;
    }

    v12 = [dictionaryCopy PKStringForKey:@"billingAgreement"];
    billingAgreement = v6->_billingAgreement;
    v6->_billingAgreement = v12;

    v14 = [dictionaryCopy PKURLForKey:@"managementURL"];
    managementURL = v6->_managementURL;
    v6->_managementURL = v14;

    v16 = [dictionaryCopy PKURLForKey:@"tokenNotificationURL"];
    tokenNotificationURL = v6->_tokenNotificationURL;
    v6->_tokenNotificationURL = v16;
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

  automaticReloadBilling = self->_automaticReloadBilling;
  if (automaticReloadBilling)
  {
    dictionaryRepresentation = [(PKAutomaticReloadPaymentSummaryItem *)automaticReloadBilling dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"automaticReloadBilling"];
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

  v13 = [v4 copy];

  return v13;
}

@end