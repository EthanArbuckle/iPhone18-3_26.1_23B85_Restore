@interface PKDeferredPaymentRequest
+ (PKDeferredPaymentRequest)deferredPaymentRequestWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeferredPaymentRequest:(id)request;
- (PKDeferredPaymentRequest)initWithCoder:(id)coder;
- (PKDeferredPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription deferredBilling:(PKDeferredPaymentSummaryItem *)deferredBilling managementURL:(NSURL *)managementURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitize;
@end

@implementation PKDeferredPaymentRequest

+ (PKDeferredPaymentRequest)deferredPaymentRequestWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  paymentDescription = [protobufCopy paymentDescription];
  v5 = MEMORY[0x1E695DFF8];
  managementURL = [protobufCopy managementURL];
  v7 = [v5 URLWithString:managementURL];

  deferredBilling = [protobufCopy deferredBilling];
  v9 = [PKPaymentSummaryItem itemWithProtobuf:deferredBilling];

  v10 = [[PKDeferredPaymentRequest alloc] initWithPaymentDescription:paymentDescription deferredBilling:v9 managementURL:v7];
  if ([protobufCopy hasBillingAgreement])
  {
    billingAgreement = [protobufCopy billingAgreement];
    [(PKDeferredPaymentRequest *)v10 setBillingAgreement:billingAgreement];
  }

  if ([protobufCopy hasTokenNotificationURL])
  {
    v12 = MEMORY[0x1E695DFF8];
    tokenNotificationURL = [protobufCopy tokenNotificationURL];
    v14 = [v12 URLWithString:tokenNotificationURL];
    [(PKDeferredPaymentRequest *)v10 setTokenNotificationURL:v14];
  }

  if ([protobufCopy hasFreeCancellationDate])
  {
    v15 = MEMORY[0x1E695DF00];
    [protobufCopy freeCancellationDate];
    v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
    [(PKDeferredPaymentRequest *)v10 setFreeCancellationDate:v16];
  }

  if ([protobufCopy hasFreeCancellationDateTimeZone])
  {
    v17 = objc_alloc(MEMORY[0x1E695DFE8]);
    freeCancellationDateTimeZone = [protobufCopy freeCancellationDateTimeZone];
    v19 = [v17 initWithName:freeCancellationDateTimeZone];
    [(PKDeferredPaymentRequest *)v10 setFreeCancellationDateTimeZone:v19];
  }

  return v10;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufDeferredPaymentRequest);
  paymentDescription = [(PKDeferredPaymentRequest *)self paymentDescription];
  [(PKProtobufDeferredPaymentRequest *)v3 setPaymentDescription:paymentDescription];

  deferredBilling = [(PKDeferredPaymentRequest *)self deferredBilling];
  summaryItemProtobuf = [deferredBilling summaryItemProtobuf];
  [(PKProtobufDeferredPaymentRequest *)v3 setDeferredBilling:summaryItemProtobuf];

  managementURL = [(PKDeferredPaymentRequest *)self managementURL];
  absoluteString = [managementURL absoluteString];
  [(PKProtobufDeferredPaymentRequest *)v3 setManagementURL:absoluteString];

  billingAgreement = [(PKDeferredPaymentRequest *)self billingAgreement];

  if (billingAgreement)
  {
    billingAgreement2 = [(PKDeferredPaymentRequest *)self billingAgreement];
    [(PKProtobufDeferredPaymentRequest *)v3 setBillingAgreement:billingAgreement2];
  }

  tokenNotificationURL = [(PKDeferredPaymentRequest *)self tokenNotificationURL];

  if (tokenNotificationURL)
  {
    tokenNotificationURL2 = [(PKDeferredPaymentRequest *)self tokenNotificationURL];
    absoluteString2 = [tokenNotificationURL2 absoluteString];
    [(PKProtobufDeferredPaymentRequest *)v3 setManagementURL:absoluteString2];
  }

  freeCancellationDate = [(PKDeferredPaymentRequest *)self freeCancellationDate];

  if (freeCancellationDate)
  {
    freeCancellationDate2 = [(PKDeferredPaymentRequest *)self freeCancellationDate];
    [freeCancellationDate2 timeIntervalSinceReferenceDate];
    [(PKProtobufDeferredPaymentRequest *)v3 setFreeCancellationDate:?];
  }

  freeCancellationDateTimeZone = [(PKDeferredPaymentRequest *)self freeCancellationDateTimeZone];

  if (freeCancellationDateTimeZone)
  {
    freeCancellationDateTimeZone2 = [(PKDeferredPaymentRequest *)self freeCancellationDateTimeZone];
    name = [freeCancellationDateTimeZone2 name];
    [(PKProtobufDeferredPaymentRequest *)v3 setFreeCancellationDateTimeZone:name];
  }

  return v3;
}

- (PKDeferredPaymentRequest)initWithPaymentDescription:(NSString *)paymentDescription deferredBilling:(PKDeferredPaymentSummaryItem *)deferredBilling managementURL:(NSURL *)managementURL
{
  v8 = paymentDescription;
  v9 = deferredBilling;
  v10 = managementURL;
  v19.receiver = self;
  v19.super_class = PKDeferredPaymentRequest;
  v11 = [(PKDeferredPaymentRequest *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_paymentDescription;
    v11->_paymentDescription = v12;

    v14 = [(PKDeferredPaymentSummaryItem *)v9 copy];
    v15 = v11->_deferredBilling;
    v11->_deferredBilling = v14;

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

  v8 = [(PKDeferredPaymentSummaryItem *)self->_deferredBilling copyWithZone:zone];
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

  v16 = [(NSDate *)self->_freeCancellationDate copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSTimeZone *)self->_freeCancellationDateTimeZone copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (PKDeferredPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKDeferredPaymentRequest;
  v5 = [(PKDeferredPaymentRequest *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDescription"];
    paymentDescription = v5->_paymentDescription;
    v5->_paymentDescription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deferredBilling"];
    deferredBilling = v5->_deferredBilling;
    v5->_deferredBilling = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAgreement"];
    billingAgreement = v5->_billingAgreement;
    v5->_billingAgreement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenNotificationURL"];
    tokenNotificationURL = v5->_tokenNotificationURL;
    v5->_tokenNotificationURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"freeCancellationDate"];
    freeCancellationDate = v5->_freeCancellationDate;
    v5->_freeCancellationDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"freeCancellationDateTimeZone"];
    freeCancellationDateTimeZone = v5->_freeCancellationDateTimeZone;
    v5->_freeCancellationDateTimeZone = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentDescription = self->_paymentDescription;
  coderCopy = coder;
  [coderCopy encodeObject:paymentDescription forKey:@"paymentDescription"];
  [coderCopy encodeObject:self->_deferredBilling forKey:@"deferredBilling"];
  [coderCopy encodeObject:self->_billingAgreement forKey:@"billingAgreement"];
  [coderCopy encodeObject:self->_managementURL forKey:@"managementURL"];
  [coderCopy encodeObject:self->_tokenNotificationURL forKey:@"tokenNotificationURL"];
  [coderCopy encodeObject:self->_freeCancellationDate forKey:@"freeCancellationDate"];
  [coderCopy encodeObject:self->_freeCancellationDateTimeZone forKey:@"freeCancellationDateTimeZone"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"paymentDescription: %@, ", self->_paymentDescription];
  [v3 appendFormat:@"deferredBilling: %@ ", self->_deferredBilling];
  if (self->_billingAgreement)
  {
    [v3 appendFormat:@"billingAgreement: %@, ", self->_billingAgreement];
  }

  [v3 appendFormat:@"managementURL: %@, ", self->_managementURL];
  if (self->_tokenNotificationURL)
  {
    [v3 appendFormat:@"tokenNotificationURL: %@, ", self->_tokenNotificationURL];
  }

  if (self->_freeCancellationDate)
  {
    [v3 appendFormat:@"freeCancellationDate: %@, ", self->_freeCancellationDate];
  }

  if (self->_freeCancellationDateTimeZone)
  {
    [v3 appendFormat:@"freeCancellationDateTimeZone: %@, ", self->_freeCancellationDateTimeZone];
  }

  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_paymentDescription];
  [v3 safelyAddObject:self->_deferredBilling];
  [v3 safelyAddObject:self->_billingAgreement];
  [v3 safelyAddObject:self->_managementURL];
  [v3 safelyAddObject:self->_tokenNotificationURL];
  [v3 safelyAddObject:self->_freeCancellationDate];
  [v3 safelyAddObject:self->_freeCancellationDateTimeZone];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDeferredPaymentRequest *)self isEqualToDeferredPaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeferredPaymentRequest:(id)request
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

  deferredBilling = self->_deferredBilling;
  v12 = requestCopy[2];
  if (deferredBilling && v12)
  {
    if (![(PKDeferredPaymentSummaryItem *)deferredBilling isEqual:?])
    {
      goto LABEL_15;
    }
  }

  else if (deferredBilling != v12)
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
    if (([(NSURL *)managementURL isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (managementURL != v19)
  {
    goto LABEL_15;
  }

  tokenNotificationURL = self->_tokenNotificationURL;
  v21 = requestCopy[5];
  if (tokenNotificationURL && v21)
  {
    if (([(NSURL *)tokenNotificationURL isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (tokenNotificationURL != v21)
  {
    goto LABEL_15;
  }

  freeCancellationDate = self->_freeCancellationDate;
  v23 = requestCopy[6];
  if (freeCancellationDate && v23)
  {
    if (([(NSDate *)freeCancellationDate isEqual:?]& 1) != 0)
    {
      goto LABEL_38;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (freeCancellationDate != v23)
  {
    goto LABEL_15;
  }

LABEL_38:
  freeCancellationDateTimeZone = self->_freeCancellationDateTimeZone;
  v25 = requestCopy[7];
  if (freeCancellationDateTimeZone && v25)
  {
    v13 = [(NSTimeZone *)freeCancellationDateTimeZone isEqual:?];
  }

  else
  {
    v13 = freeCancellationDateTimeZone == v25;
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

@end