@interface PKPeerPaymentWebServiceContext
+ (PKPeerPaymentWebServiceContext)contextWithArchive:(id)a3;
- (PKPeerPaymentWebServiceContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateContextWithDeviceRegistrationData:(id)a3 registrationResponse:(id)a4;
@end

@implementation PKPeerPaymentWebServiceContext

- (PKPeerPaymentWebServiceContext)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPeerPaymentWebServiceContext;
  v5 = [(PKPeerPaymentWebServiceContext *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceURL"];
    serviceURL = v5->_serviceURL;
    v5->_serviceURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushTopic"];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v12;

    v5->_devSigned = [v4 decodeBoolForKey:@"devSigned"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionSerialNumber"];
    companionSerialNumber = v5->_companionSerialNumber;
    v5->_companionSerialNumber = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedEnrollmentDataSignature"];
    signedEnrollmentDataSignature = v5->_signedEnrollmentDataSignature;
    v5->_signedEnrollmentDataSignature = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serviceURL = self->_serviceURL;
  v5 = a3;
  [v5 encodeObject:serviceURL forKey:@"serviceURL"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeObject:self->_pushTopic forKey:@"pushTopic"];
  [v5 encodeObject:self->_pushToken forKey:@"pushToken"];
  [v5 encodeBool:self->_devSigned forKey:@"devSigned"];
  [v5 encodeObject:self->_companionSerialNumber forKey:@"companionSerialNumber"];
  [v5 encodeObject:self->_signedEnrollmentDataSignature forKey:@"signedEnrollmentDataSignature"];
}

+ (PKPeerPaymentWebServiceContext)contextWithArchive:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___PKPeerPaymentWebServiceContext;
  v3 = objc_msgSendSuper2(&v7, sel_contextWithArchive_, a3);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(PKPeerPaymentWebServiceContext);
  }

  v5 = v4;

  return v5;
}

- (void)updateContextWithDeviceRegistrationData:(id)a3 registrationResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  self->_devSigned = [v7 devSigned];
  v8 = [v7 signedEnrollmentDataSignature];
  v9 = [v8 copy];
  signedEnrollmentDataSignature = self->_signedEnrollmentDataSignature;
  self->_signedEnrollmentDataSignature = v9;

  v11 = [v7 companionSerialNumber];

  v12 = [v11 copy];
  companionSerialNumber = self->_companionSerialNumber;
  self->_companionSerialNumber = v12;

  v14 = [v6 peerPaymentServiceURL];
  v15 = [v14 copy];
  serviceURL = self->_serviceURL;
  self->_serviceURL = v15;

  v17 = [v6 deviceIdentifier];
  v18 = [v17 copy];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v18;

  v22 = [v6 peerPaymentServicesPushTopic];

  v20 = [v22 copy];
  pushTopic = self->_pushTopic;
  self->_pushTopic = v20;
}

@end