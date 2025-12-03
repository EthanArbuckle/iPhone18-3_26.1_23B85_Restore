@interface PKPaymentDeviceRegistrationData
- (PKPaymentDeviceRegistrationData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentDeviceRegistrationData

- (PKPaymentDeviceRegistrationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PKPaymentDeviceRegistrationData;
  v5 = [(PKPaymentDeviceRegistrationData *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationHeader"];
    authorizationHeader = v5->_authorizationHeader;
    v5->_authorizationHeader = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedAuthToken"];
    signedAuthToken = v5->_signedAuthToken;
    v5->_signedAuthToken = v8;

    v10 = [coderCopy decodePropertyListForKey:@"secureElementStateInformation"];
    secureElementStateInformation = v5->_secureElementStateInformation;
    v5->_secureElementStateInformation = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSerialNumber"];
    deviceSerialNumber = v5->_deviceSerialNumber;
    v5->_deviceSerialNumber = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"additionalDeviceSerialNumbers"];
    additionalDeviceSerialNumbers = v5->_additionalDeviceSerialNumbers;
    v5->_additionalDeviceSerialNumbers = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionSerialNumber"];
    companionSerialNumber = v5->_companionSerialNumber;
    v5->_companionSerialNumber = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformData"];
    platformData = v5->_platformData;
    v5->_platformData = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformDataSignature"];
    platformDataSignature = v5->_platformDataSignature;
    v5->_platformDataSignature = v27;

    v5->_devSigned = [coderCopy decodeBoolForKey:@"devSigned"];
    v5->_walletDeleted = [coderCopy decodeBoolForKey:@"walletDeleted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  authorizationHeader = self->_authorizationHeader;
  coderCopy = coder;
  [coderCopy encodeObject:authorizationHeader forKey:@"authorizationHeader"];
  [coderCopy encodeObject:self->_signedAuthToken forKey:@"signedAuthToken"];
  [coderCopy encodeObject:self->_secureElementStateInformation forKey:@"secureElementStateInformation"];
  [coderCopy encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [coderCopy encodeObject:self->_deviceSerialNumber forKey:@"deviceSerialNumber"];
  [coderCopy encodeObject:self->_additionalDeviceSerialNumbers forKey:@"additionalDeviceSerialNumbers"];
  [coderCopy encodeObject:self->_companionSerialNumber forKey:@"companionSerialNumber"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeObject:self->_platformData forKey:@"platformData"];
  [coderCopy encodeObject:self->_platformDataSignature forKey:@"platformDataSignature"];
  [coderCopy encodeBool:self->_devSigned forKey:@"devSigned"];
  [coderCopy encodeBool:self->_walletDeleted forKey:@"walletDeleted"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentDeviceRegistrationData allocWithZone:](PKPaymentDeviceRegistrationData init];
  v6 = [(NSString *)self->_authorizationHeader copyWithZone:zone];
  authorizationHeader = v5->_authorizationHeader;
  v5->_authorizationHeader = v6;

  v8 = [(NSString *)self->_signedAuthToken copyWithZone:zone];
  signedAuthToken = v5->_signedAuthToken;
  v5->_signedAuthToken = v8;

  v10 = [(NSDictionary *)self->_secureElementStateInformation copyWithZone:zone];
  secureElementStateInformation = v5->_secureElementStateInformation;
  v5->_secureElementStateInformation = v10;

  v12 = [(NSString *)self->_secureElementIdentifier copyWithZone:zone];
  secureElementIdentifier = v5->_secureElementIdentifier;
  v5->_secureElementIdentifier = v12;

  v14 = [(NSString *)self->_deviceSerialNumber copyWithZone:zone];
  deviceSerialNumber = v5->_deviceSerialNumber;
  v5->_deviceSerialNumber = v14;

  v16 = [(NSArray *)self->_additionalDeviceSerialNumbers copyWithZone:zone];
  additionalDeviceSerialNumbers = v5->_additionalDeviceSerialNumbers;
  v5->_additionalDeviceSerialNumbers = v16;

  v18 = [(NSString *)self->_companionSerialNumber copyWithZone:zone];
  companionSerialNumber = v5->_companionSerialNumber;
  v5->_companionSerialNumber = v18;

  v20 = [(NSString *)self->_productType copyWithZone:zone];
  productType = v5->_productType;
  v5->_productType = v20;

  v22 = [(NSData *)self->_platformData copyWithZone:zone];
  platformData = v5->_platformData;
  v5->_platformData = v22;

  v24 = [(NSData *)self->_platformDataSignature copyWithZone:zone];
  platformDataSignature = v5->_platformDataSignature;
  v5->_platformDataSignature = v24;

  v5->_devSigned = self->_devSigned;
  v5->_walletDeleted = self->_walletDeleted;
  return v5;
}

@end