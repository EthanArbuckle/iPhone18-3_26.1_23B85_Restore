@interface PKPaymentHardwareStatus
- (BOOL)_isDemoModeActive;
- (BOOL)canMakePayments;
- (PKPaymentHardwareStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentHardwareStatus

- (PKPaymentHardwareStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPaymentHardwareStatus;
  v5 = [(PKPaymentHardwareStatus *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_hasSecureElement = [v4 decodeBoolForKey:@"hasSecureElement"];
    v5->_hasRemoteDevices = [v4 decodeBoolForKey:@"hasRemoteDevices"];
    v5->_canMakeRemotePayments = [v4 decodeBoolForKey:@"canMakeRemotePayments"];
    v5->_isSRD = [v4 decodeBoolForKey:@"isSRD"];
    v5->_inFailForward = [v4 decodeBoolForKey:@"inFailForward"];
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

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeBool:self->_hasSecureElement forKey:@"hasSecureElement"];
  [v5 encodeBool:self->_hasRemoteDevices forKey:@"hasRemoteDevices"];
  [v5 encodeBool:self->_canMakeRemotePayments forKey:@"canMakeRemotePayments"];
  [v5 encodeBool:self->_isSRD forKey:@"isSRD"];
  [v5 encodeBool:self->_inFailForward forKey:@"inFailForward"];
}

- (id)copyWithZone:(_NSZone *)a3
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