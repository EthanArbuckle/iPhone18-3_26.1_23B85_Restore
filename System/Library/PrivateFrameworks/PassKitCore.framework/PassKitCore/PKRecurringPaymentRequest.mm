@interface PKRecurringPaymentRequest
+ (PKRecurringPaymentRequest)recurringPaymentRequestWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecurringPaymentRequest:(id)a3;
- (PKRecurringPaymentRequest)initWithCoder:(id)a3;
- (PKRecurringPaymentRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (PKRecurringPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription regularBilling:(PKRecurringPaymentSummaryItem *)regularBilling managementURL:(NSURL *)managementURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)sanitize;
@end

@implementation PKRecurringPaymentRequest

+ (PKRecurringPaymentRequest)recurringPaymentRequestWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = [v3 paymentDescription];
  v5 = [v3 regularBilling];
  v6 = [PKPaymentSummaryItem itemWithProtobuf:v5];

  v7 = MEMORY[0x1E695DFF8];
  v8 = [v3 managementURL];
  v9 = [v7 URLWithString:v8];

  v10 = [[PKRecurringPaymentRequest alloc] initWithPaymentDescription:v4 regularBilling:v6 managementURL:v9];
  if ([v3 hasTrialBilling])
  {
    v11 = [v3 trialBilling];
    v12 = [PKPaymentSummaryItem itemWithProtobuf:v11];

    [(PKRecurringPaymentRequest *)v10 setTrialBilling:v12];
  }

  if ([v3 hasBillingAgreement])
  {
    v13 = [v3 billingAgreement];
    [(PKRecurringPaymentRequest *)v10 setBillingAgreement:v13];
  }

  if ([v3 hasTokenNotificationURL])
  {
    v14 = MEMORY[0x1E695DFF8];
    v15 = [v3 tokenNotificationURL];
    v16 = [v14 URLWithString:v15];
    [(PKRecurringPaymentRequest *)v10 setTokenNotificationURL:v16];
  }

  return v10;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufRecurringPaymentRequest);
  v4 = [(PKRecurringPaymentRequest *)self paymentDescription];
  [(PKProtobufRecurringPaymentRequest *)v3 setPaymentDescription:v4];

  v5 = [(PKRecurringPaymentRequest *)self regularBilling];
  v6 = [v5 summaryItemProtobuf];
  [(PKProtobufRecurringPaymentRequest *)v3 setRegularBilling:v6];

  v7 = [(PKRecurringPaymentRequest *)self managementURL];
  v8 = [v7 absoluteString];
  [(PKProtobufRecurringPaymentRequest *)v3 setManagementURL:v8];

  v9 = [(PKRecurringPaymentRequest *)self trialBilling];

  if (v9)
  {
    v10 = [(PKRecurringPaymentRequest *)self trialBilling];
    v11 = [v10 summaryItemProtobuf];
    [(PKProtobufRecurringPaymentRequest *)v3 setTrialBilling:v11];
  }

  v12 = [(PKRecurringPaymentRequest *)self billingAgreement];

  if (v12)
  {
    v13 = [(PKRecurringPaymentRequest *)self billingAgreement];
    [(PKProtobufRecurringPaymentRequest *)v3 setBillingAgreement:v13];
  }

  v14 = [(PKRecurringPaymentRequest *)self tokenNotificationURL];

  if (v14)
  {
    v15 = [(PKRecurringPaymentRequest *)self tokenNotificationURL];
    v16 = [v15 absoluteString];
    [(PKProtobufRecurringPaymentRequest *)v3 setManagementURL:v16];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_paymentDescription copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKRecurringPaymentSummaryItem *)self->_regularBilling copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PKRecurringPaymentSummaryItem *)self->_trialBilling copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_billingAgreement copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSURL *)self->_managementURL copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSURL *)self->_tokenNotificationURL copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  return v5;
}

- (PKRecurringPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKRecurringPaymentRequest;
  v5 = [(PKRecurringPaymentRequest *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDescription"];
    paymentDescription = v5->_paymentDescription;
    v5->_paymentDescription = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regularBilling"];
    regularBilling = v5->_regularBilling;
    v5->_regularBilling = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialBilling"];
    trialBilling = v5->_trialBilling;
    v5->_trialBilling = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingAgreement"];
    billingAgreement = v5->_billingAgreement;
    v5->_billingAgreement = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenNotificationURL"];
    tokenNotificationURL = v5->_tokenNotificationURL;
    v5->_tokenNotificationURL = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  paymentDescription = self->_paymentDescription;
  v5 = a3;
  [v5 encodeObject:paymentDescription forKey:@"paymentDescription"];
  [v5 encodeObject:self->_regularBilling forKey:@"regularBilling"];
  [v5 encodeObject:self->_trialBilling forKey:@"trialBilling"];
  [v5 encodeObject:self->_billingAgreement forKey:@"billingAgreement"];
  [v5 encodeObject:self->_managementURL forKey:@"managementURL"];
  [v5 encodeObject:self->_tokenNotificationURL forKey:@"tokenNotificationURL"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRecurringPaymentRequest *)self isEqualToRecurringPaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRecurringPaymentRequest:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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
  v12 = v4[2];
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
  v14 = v4[3];
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

  v17 = v4[4];
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
  v21 = v4[5];
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
  v23 = v4[6];
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
  v3 = [(NSString *)self->_billingAgreement pk_merchantTokensSanitizedBillingAgreement];
  billingAgreement = self->_billingAgreement;
  self->_billingAgreement = v3;
}

- (PKRecurringPaymentRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PKRecurringPaymentRequest *)self init];
  if (v6)
  {
    v7 = [v5 PKStringForKey:@"paymentDescription"];
    paymentDescription = v6->_paymentDescription;
    v6->_paymentDescription = v7;

    v9 = [v5 PKDictionaryForKey:@"regularBilling"];
    if (v9)
    {
      v10 = [[PKRecurringPaymentSummaryItem alloc] initWithDictionary:v9 error:0];
      regularBilling = v6->_regularBilling;
      v6->_regularBilling = v10;
    }

    v12 = [v5 PKDictionaryForKey:@"trialBilling"];
    if (v12)
    {
      v13 = [[PKRecurringPaymentSummaryItem alloc] initWithDictionary:v12 error:0];
      trialBilling = v6->_trialBilling;
      v6->_trialBilling = v13;
    }

    v15 = [v5 PKStringForKey:@"billingAgreement"];
    billingAgreement = v6->_billingAgreement;
    v6->_billingAgreement = v15;

    v17 = [v5 PKURLForKey:@"managementURL"];
    managementURL = v6->_managementURL;
    v6->_managementURL = v17;

    v19 = [v5 PKURLForKey:@"tokenNotificationURL"];
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
    v7 = [(PKRecurringPaymentSummaryItem *)regularBilling dictionaryRepresentation];
    [v4 setObject:v7 forKeyedSubscript:@"regularBilling"];
  }

  trialBilling = self->_trialBilling;
  if (trialBilling)
  {
    v9 = [(PKRecurringPaymentSummaryItem *)trialBilling dictionaryRepresentation];
    [v4 setObject:v9 forKeyedSubscript:@"trialBilling"];
  }

  billingAgreement = self->_billingAgreement;
  if (billingAgreement)
  {
    [v4 setObject:billingAgreement forKeyedSubscript:@"billingAgreement"];
  }

  managementURL = self->_managementURL;
  if (managementURL)
  {
    v12 = [(NSURL *)managementURL absoluteString];
    [v4 setObject:v12 forKeyedSubscript:@"managementURL"];
  }

  tokenNotificationURL = self->_tokenNotificationURL;
  if (tokenNotificationURL)
  {
    v14 = [(NSURL *)tokenNotificationURL absoluteString];
    [v4 setObject:v14 forKeyedSubscript:@"tokenNotificationURL"];
  }

  v15 = [v4 copy];

  return v15;
}

@end