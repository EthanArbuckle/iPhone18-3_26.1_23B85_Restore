@interface PKPaymentDeviceConfigurationData
- (PKPaymentDeviceConfigurationData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentDeviceConfigurationData

- (PKPaymentDeviceConfigurationData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentDeviceConfigurationData;
  v5 = [(PKPaymentDeviceConfigurationData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v6;

    v5->_devSigned = [v4 decodeBoolForKey:@"devSigned"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jsblSequenceCounter"];
    primaryJSBLSequenceCounter = v5->_primaryJSBLSequenceCounter;
    v5->_primaryJSBLSequenceCounter = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentDeviceConfigurationData *)self secureElementIdentifier];
  [v4 encodeObject:v5 forKey:@"secureElementIdentifier"];

  [v4 encodeBool:-[PKPaymentDeviceConfigurationData devSigned](self forKey:{"devSigned"), @"devSigned"}];
  v6 = [(PKPaymentDeviceConfigurationData *)self primaryJSBLSequenceCounter];
  [v4 encodeObject:v6 forKey:@"jsblSequenceCounter"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentDeviceConfigurationData allocWithZone:](PKPaymentDeviceConfigurationData init];
  v6 = [(NSString *)self->_secureElementIdentifier copyWithZone:a3];
  secureElementIdentifier = v5->_secureElementIdentifier;
  v5->_secureElementIdentifier = v6;

  v5->_devSigned = self->_devSigned;
  objc_storeStrong(&v5->_primaryJSBLSequenceCounter, self->_primaryJSBLSequenceCounter);
  return v5;
}

@end