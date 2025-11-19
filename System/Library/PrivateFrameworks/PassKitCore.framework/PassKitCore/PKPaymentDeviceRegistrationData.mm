@interface PKPaymentDeviceRegistrationData
- (PKPaymentDeviceRegistrationData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentDeviceRegistrationData

- (PKPaymentDeviceRegistrationData)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKPaymentDeviceRegistrationData;
  v5 = [(PKPaymentDeviceRegistrationData *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationHeader"];
    authorizationHeader = v5->_authorizationHeader;
    v5->_authorizationHeader = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedAuthToken"];
    signedAuthToken = v5->_signedAuthToken;
    v5->_signedAuthToken = v8;

    v10 = [v4 decodePropertyListForKey:@"secureElementStateInformation"];
    secureElementStateInformation = v5->_secureElementStateInformation;
    v5->_secureElementStateInformation = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSerialNumber"];
    deviceSerialNumber = v5->_deviceSerialNumber;
    v5->_deviceSerialNumber = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"additionalDeviceSerialNumbers"];
    additionalDeviceSerialNumbers = v5->_additionalDeviceSerialNumbers;
    v5->_additionalDeviceSerialNumbers = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionSerialNumber"];
    companionSerialNumber = v5->_companionSerialNumber;
    v5->_companionSerialNumber = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformData"];
    platformData = v5->_platformData;
    v5->_platformData = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformDataSignature"];
    platformDataSignature = v5->_platformDataSignature;
    v5->_platformDataSignature = v27;

    v5->_devSigned = [v4 decodeBoolForKey:@"devSigned"];
    v5->_walletDeleted = [v4 decodeBoolForKey:@"walletDeleted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  authorizationHeader = self->_authorizationHeader;
  v5 = a3;
  [v5 encodeObject:authorizationHeader forKey:@"authorizationHeader"];
  [v5 encodeObject:self->_signedAuthToken forKey:@"signedAuthToken"];
  [v5 encodeObject:self->_secureElementStateInformation forKey:@"secureElementStateInformation"];
  [v5 encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [v5 encodeObject:self->_deviceSerialNumber forKey:@"deviceSerialNumber"];
  [v5 encodeObject:self->_additionalDeviceSerialNumbers forKey:@"additionalDeviceSerialNumbers"];
  [v5 encodeObject:self->_companionSerialNumber forKey:@"companionSerialNumber"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeObject:self->_platformData forKey:@"platformData"];
  [v5 encodeObject:self->_platformDataSignature forKey:@"platformDataSignature"];
  [v5 encodeBool:self->_devSigned forKey:@"devSigned"];
  [v5 encodeBool:self->_walletDeleted forKey:@"walletDeleted"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentDeviceRegistrationData allocWithZone:](PKPaymentDeviceRegistrationData init];
  v6 = [(NSString *)self->_authorizationHeader copyWithZone:a3];
  authorizationHeader = v5->_authorizationHeader;
  v5->_authorizationHeader = v6;

  v8 = [(NSString *)self->_signedAuthToken copyWithZone:a3];
  signedAuthToken = v5->_signedAuthToken;
  v5->_signedAuthToken = v8;

  v10 = [(NSDictionary *)self->_secureElementStateInformation copyWithZone:a3];
  secureElementStateInformation = v5->_secureElementStateInformation;
  v5->_secureElementStateInformation = v10;

  v12 = [(NSString *)self->_secureElementIdentifier copyWithZone:a3];
  secureElementIdentifier = v5->_secureElementIdentifier;
  v5->_secureElementIdentifier = v12;

  v14 = [(NSString *)self->_deviceSerialNumber copyWithZone:a3];
  deviceSerialNumber = v5->_deviceSerialNumber;
  v5->_deviceSerialNumber = v14;

  v16 = [(NSArray *)self->_additionalDeviceSerialNumbers copyWithZone:a3];
  additionalDeviceSerialNumbers = v5->_additionalDeviceSerialNumbers;
  v5->_additionalDeviceSerialNumbers = v16;

  v18 = [(NSString *)self->_companionSerialNumber copyWithZone:a3];
  companionSerialNumber = v5->_companionSerialNumber;
  v5->_companionSerialNumber = v18;

  v20 = [(NSString *)self->_productType copyWithZone:a3];
  productType = v5->_productType;
  v5->_productType = v20;

  v22 = [(NSData *)self->_platformData copyWithZone:a3];
  platformData = v5->_platformData;
  v5->_platformData = v22;

  v24 = [(NSData *)self->_platformDataSignature copyWithZone:a3];
  platformDataSignature = v5->_platformDataSignature;
  v5->_platformDataSignature = v24;

  v5->_devSigned = self->_devSigned;
  v5->_walletDeleted = self->_walletDeleted;
  return v5;
}

@end