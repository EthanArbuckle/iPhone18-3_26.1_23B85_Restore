@interface PKPeerPaymentServiceRegistrationRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata;
@end

@implementation PKPeerPaymentServiceRegistrationRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  scoreCopy = score;
  assessmentCopy = assessment;
  metadataCopy = metadata;
  v20 = metadataCopy;
  if (!lCopy)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    *buf = 138543618;
    v51 = v38;
    v52 = 2082;
    v53 = "url";
LABEL_35:
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_36;
  }

  if (!informationCopy)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v39 = objc_opt_class();
    v38 = NSStringFromClass(v39);
    *buf = 138543618;
    v51 = v38;
    v52 = 2082;
    v53 = "appleAccountInformation";
    goto LABEL_35;
  }

  if (!metadataCopy)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v40 = objc_opt_class();
    v38 = NSStringFromClass(v40);
    *buf = 138543618;
    v51 = v38;
    v52 = 2082;
    v53 = "deviceMetadata";
    goto LABEL_35;
  }

  if (!self->_pushToken)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v41 = objc_opt_class();
    v38 = NSStringFromClass(v41);
    *buf = 138543618;
    v51 = v38;
    v52 = 2082;
    v53 = "_pushToken";
    goto LABEL_35;
  }

  deviceData = self->_deviceData;
  if (!deviceData)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v42 = objc_opt_class();
    v38 = NSStringFromClass(v42);
    *buf = 138543618;
    v51 = v38;
    v52 = 2082;
    v53 = "_deviceData";
    goto LABEL_35;
  }

  signedAuthToken = [(PKPeerPaymentDeviceRegistrationData *)deviceData signedAuthToken];

  if (!signedAuthToken)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v43 = objc_opt_class();
    v38 = NSStringFromClass(v43);
    *buf = 138543618;
    v51 = v38;
    v52 = 2082;
    v53 = "[_deviceData signedAuthToken]";
    goto LABEL_35;
  }

  enrollmentData = [(PKPeerPaymentDeviceRegistrationData *)self->_deviceData enrollmentData];

  if (!enrollmentData)
  {
    v36 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      v38 = NSStringFromClass(v44);
      *buf = 138543618;
      v51 = v38;
      v52 = 2082;
      v53 = "[_deviceData enrollmentData]";
      goto LABEL_35;
    }

LABEL_36:

    v35 = 0;
    goto LABEL_37;
  }

  v49 = identifierCopy;
  authorizationHeader = [(PKPeerPaymentDeviceRegistrationData *)self->_deviceData authorizationHeader];
  [informationCopy setAuthorizationHeader:authorizationHeader];

  v25 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4688 queryParameters:0 appleAccountInformation:informationCopy];
  [v25 setHTTPMethod:@"POST"];
  [v25 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v48 = v25;
  [v25 setCachePolicy:1];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  enrollmentData2 = [(PKPeerPaymentDeviceRegistrationData *)self->_deviceData enrollmentData];
  v27 = PKSerialNumber();
  [dictionary setObject:v27 forKey:@"deviceSerialNumber"];

  v28 = PKProductType();
  [dictionary setObject:v28 forKey:@"productType"];

  companionSerialNumber = [(PKPeerPaymentDeviceRegistrationData *)self->_deviceData companionSerialNumber];
  if (companionSerialNumber)
  {
    [dictionary setObject:companionSerialNumber forKey:@"companionSerialNumber"];
  }

  signedAuthToken2 = [(PKPeerPaymentDeviceRegistrationData *)self->_deviceData signedAuthToken];
  if (signedAuthToken2)
  {
    [dictionary setObject:signedAuthToken2 forKey:@"signedAuthToken"];
  }

  pushToken = self->_pushToken;
  if (pushToken)
  {
    [dictionary setObject:pushToken forKey:@"pushToken"];
  }

  v46 = companionSerialNumber;
  if (enrollmentData2)
  {
    [dictionary setObject:enrollmentData2 forKey:@"enrollmentData"];
  }

  if (scoreCopy)
  {
    hexEncoding = [scoreCopy hexEncoding];
    [dictionary setObject:hexEncoding forKey:@"deviceScore"];
  }

  if (assessmentCopy)
  {
    [dictionary setObject:assessmentCopy forKey:@"odiAssessment"];
  }

  dictionaryRepresentation = [v20 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];

  [MEMORY[0x1E695AC60] setProperty:&unk_1F23B58B8 forKey:@"PKPeerPaymentEndPointKey" inRequest:v48];
  v34 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v48 setHTTPBody:v34];

  v35 = [v48 copy];
  identifierCopy = v49;
LABEL_37:

  return v35;
}

@end