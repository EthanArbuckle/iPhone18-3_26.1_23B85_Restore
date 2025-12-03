@interface PKPeerPaymentPurchaseData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPKPeerPaymentPurchaseData:(id)data;
- (PKPeerPaymentPurchaseData)initWithCoder:(id)coder;
- (PKPeerPaymentPurchaseData)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentPurchaseData

- (PKPeerPaymentPurchaseData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentPurchaseData;
  v5 = [(PKServiceProviderPurchaseData *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"status"];
    v5->_status = PKPeerPaymentPurchaseDataStatusFromString(v6);

    v5->_requiresInteraction = [dictionaryCopy PKBoolForKey:@"requiresInteraction"];
  }

  return v5;
}

- (PKPeerPaymentPurchaseData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentPurchaseData;
  v5 = [(PKPeerPaymentPurchaseData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPeerPaymentPurchaseDataStatusFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiresInteraction"];
    v5->_requiresInteraction = [v7 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  v6 = PKPeerPaymentPurchaseDataStatusToString(status);
  [coderCopy encodeObject:v6 forKey:@"status"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresInteraction];
  [coderCopy encodeObject:v7 forKey:@"requiresInteraction"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPurchaseData *)self isEqualToPKPeerPaymentPurchaseData:equalCopy];

  return v5;
}

- (BOOL)isEqualToPKPeerPaymentPurchaseData:(id)data
{
  dataCopy = data;
  v5 = self == dataCopy || self->_status == dataCopy->_status && self->_requiresInteraction == dataCopy->_requiresInteraction;

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