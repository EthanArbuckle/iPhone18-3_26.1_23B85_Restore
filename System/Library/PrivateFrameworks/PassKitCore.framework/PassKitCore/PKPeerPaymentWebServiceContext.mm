@interface PKPeerPaymentWebServiceContext
+ (PKPeerPaymentWebServiceContext)contextWithArchive:(id)archive;
- (PKPeerPaymentWebServiceContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)updateContextWithDeviceRegistrationData:(id)data registrationResponse:(id)response;
@end

@implementation PKPeerPaymentWebServiceContext

- (PKPeerPaymentWebServiceContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKPeerPaymentWebServiceContext;
  v5 = [(PKPeerPaymentWebServiceContext *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceURL"];
    serviceURL = v5->_serviceURL;
    v5->_serviceURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushTopic"];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v12;

    v5->_devSigned = [coderCopy decodeBoolForKey:@"devSigned"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionSerialNumber"];
    companionSerialNumber = v5->_companionSerialNumber;
    v5->_companionSerialNumber = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedEnrollmentDataSignature"];
    signedEnrollmentDataSignature = v5->_signedEnrollmentDataSignature;
    v5->_signedEnrollmentDataSignature = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  serviceURL = self->_serviceURL;
  coderCopy = coder;
  [coderCopy encodeObject:serviceURL forKey:@"serviceURL"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeObject:self->_pushTopic forKey:@"pushTopic"];
  [coderCopy encodeObject:self->_pushToken forKey:@"pushToken"];
  [coderCopy encodeBool:self->_devSigned forKey:@"devSigned"];
  [coderCopy encodeObject:self->_companionSerialNumber forKey:@"companionSerialNumber"];
  [coderCopy encodeObject:self->_signedEnrollmentDataSignature forKey:@"signedEnrollmentDataSignature"];
}

+ (PKPeerPaymentWebServiceContext)contextWithArchive:(id)archive
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___PKPeerPaymentWebServiceContext;
  v3 = objc_msgSendSuper2(&v7, sel_contextWithArchive_, archive);
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

- (void)updateContextWithDeviceRegistrationData:(id)data registrationResponse:(id)response
{
  responseCopy = response;
  dataCopy = data;
  self->_devSigned = [dataCopy devSigned];
  signedEnrollmentDataSignature = [dataCopy signedEnrollmentDataSignature];
  v9 = [signedEnrollmentDataSignature copy];
  signedEnrollmentDataSignature = self->_signedEnrollmentDataSignature;
  self->_signedEnrollmentDataSignature = v9;

  companionSerialNumber = [dataCopy companionSerialNumber];

  v12 = [companionSerialNumber copy];
  companionSerialNumber = self->_companionSerialNumber;
  self->_companionSerialNumber = v12;

  peerPaymentServiceURL = [responseCopy peerPaymentServiceURL];
  v15 = [peerPaymentServiceURL copy];
  serviceURL = self->_serviceURL;
  self->_serviceURL = v15;

  deviceIdentifier = [responseCopy deviceIdentifier];
  v18 = [deviceIdentifier copy];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v18;

  peerPaymentServicesPushTopic = [responseCopy peerPaymentServicesPushTopic];

  v20 = [peerPaymentServicesPushTopic copy];
  pushTopic = self->_pushTopic;
  self->_pushTopic = v20;
}

@end