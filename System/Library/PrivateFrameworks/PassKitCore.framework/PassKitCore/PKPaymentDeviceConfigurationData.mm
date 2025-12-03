@interface PKPaymentDeviceConfigurationData
- (PKPaymentDeviceConfigurationData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentDeviceConfigurationData

- (PKPaymentDeviceConfigurationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentDeviceConfigurationData;
  v5 = [(PKPaymentDeviceConfigurationData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v6;

    v5->_devSigned = [coderCopy decodeBoolForKey:@"devSigned"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jsblSequenceCounter"];
    primaryJSBLSequenceCounter = v5->_primaryJSBLSequenceCounter;
    v5->_primaryJSBLSequenceCounter = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  secureElementIdentifier = [(PKPaymentDeviceConfigurationData *)self secureElementIdentifier];
  [coderCopy encodeObject:secureElementIdentifier forKey:@"secureElementIdentifier"];

  [coderCopy encodeBool:-[PKPaymentDeviceConfigurationData devSigned](self forKey:{"devSigned"), @"devSigned"}];
  primaryJSBLSequenceCounter = [(PKPaymentDeviceConfigurationData *)self primaryJSBLSequenceCounter];
  [coderCopy encodeObject:primaryJSBLSequenceCounter forKey:@"jsblSequenceCounter"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentDeviceConfigurationData allocWithZone:](PKPaymentDeviceConfigurationData init];
  v6 = [(NSString *)self->_secureElementIdentifier copyWithZone:zone];
  secureElementIdentifier = v5->_secureElementIdentifier;
  v5->_secureElementIdentifier = v6;

  v5->_devSigned = self->_devSigned;
  objc_storeStrong(&v5->_primaryJSBLSequenceCounter, self->_primaryJSBLSequenceCounter);
  return v5;
}

@end