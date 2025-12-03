@interface PKPaymentHardwareStatus
- (BOOL)_isDemoModeActive;
- (BOOL)canMakePayments;
- (PKPaymentHardwareStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentHardwareStatus

- (PKPaymentHardwareStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPaymentHardwareStatus;
  v5 = [(PKPaymentHardwareStatus *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_hasSecureElement = [coderCopy decodeBoolForKey:@"hasSecureElement"];
    v5->_hasRemoteDevices = [coderCopy decodeBoolForKey:@"hasRemoteDevices"];
    v5->_canMakeRemotePayments = [coderCopy decodeBoolForKey:@"canMakeRemotePayments"];
    v5->_isSRD = [coderCopy decodeBoolForKey:@"isSRD"];
    v5->_inFailForward = [coderCopy decodeBoolForKey:@"inFailForward"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p> type:%d canMakeLocalPayments:%d; canMakeRemotePayments:%d; hasSecureElement:%d; hasRemoteDevices:%d; isSRD:%d; ", objc_opt_class(), self, self->_type, -[PKPaymentHardwareStatus canMakeLocalPayments](self, "canMakeLocalPayments"), self->_canMakeRemotePayments, self->_hasSecureElement, self->_hasRemoteDevices, self->_isSRD];;
  [v3 appendFormat:@"inFailForward:%d; ", self->_inFailForward];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeBool:self->_hasSecureElement forKey:@"hasSecureElement"];
  [coderCopy encodeBool:self->_hasRemoteDevices forKey:@"hasRemoteDevices"];
  [coderCopy encodeBool:self->_canMakeRemotePayments forKey:@"canMakeRemotePayments"];
  [coderCopy encodeBool:self->_isSRD forKey:@"isSRD"];
  [coderCopy encodeBool:self->_inFailForward forKey:@"inFailForward"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKPaymentHardwareStatus allocWithZone:?]];
  *(result + 2) = self->_type;
  *(result + 8) = self->_hasSecureElement;
  *(result + 9) = self->_hasRemoteDevices;
  *(result + 11) = self->_canMakeRemotePayments;
  *(result + 12) = self->_isSRD;
  *(result + 10) = self->_inFailForward;
  return result;
}

- (BOOL)canMakePayments
{
  if ([(PKPaymentHardwareStatus *)self canMakeLocalPayments])
  {
    return 1;
  }

  return [(PKPaymentHardwareStatus *)self canMakeRemotePayments];
}

- (BOOL)_isDemoModeActive
{
  if (PKHandsOnDemoModeEnabled())
  {
    return 1;
  }

  return PKUIOnlyDemoModeEnabled();
}

@end