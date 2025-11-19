@interface PKPeerPaymentPurchaseData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPKPeerPaymentPurchaseData:(id)a3;
- (PKPeerPaymentPurchaseData)initWithCoder:(id)a3;
- (PKPeerPaymentPurchaseData)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPurchaseData

- (PKPeerPaymentPurchaseData)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentPurchaseData;
  v5 = [(PKServiceProviderPurchaseData *)&v8 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"status"];
    v5->_status = PKPeerPaymentPurchaseDataStatusFromString(v6);

    v5->_requiresInteraction = [v4 PKBoolForKey:@"requiresInteraction"];
  }

  return v5;
}

- (PKPeerPaymentPurchaseData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentPurchaseData;
  v5 = [(PKPeerPaymentPurchaseData *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPeerPaymentPurchaseDataStatusFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiresInteraction"];
    v5->_requiresInteraction = [v7 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  v6 = PKPeerPaymentPurchaseDataStatusToString(status);
  [v5 encodeObject:v6 forKey:@"status"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresInteraction];
  [v5 encodeObject:v7 forKey:@"requiresInteraction"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPurchaseData *)self isEqualToPKPeerPaymentPurchaseData:v4];

  return v5;
}

- (BOOL)isEqualToPKPeerPaymentPurchaseData:(id)a3
{
  v4 = a3;
  v5 = self == v4 || self->_status == v4->_status && self->_requiresInteraction == v4->_requiresInteraction;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  status = self->_status;
  if (status)
  {
    v5 = PKPeerPaymentPurchaseDataStatusToString(status);
    [v3 appendFormat:@"status: '%@'; ", v5];
  }

  if (self->_requiresInteraction)
  {
    [v3 appendFormat:@"requiredInteraction: '%@'; ", @"YES"];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end