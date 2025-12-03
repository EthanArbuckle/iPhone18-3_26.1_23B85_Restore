@interface PKApplyWebServiceDocumentSubmissionRequest
- (PKApplyWebServiceDocumentSubmissionRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceDocumentSubmissionRequest

- (PKApplyWebServiceDocumentSubmissionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKApplyWebServiceDocumentSubmissionRequest;
  v5 = [(PKApplyWebServiceRequest *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v13;

    v5->_featureIdentifier = [coderCopy decodeIntegerForKey:@"featureIdentifier"];
    v5->_documentType = [coderCopy decodeIntegerForKey:@"documentType"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    documentCountryCode = v5->_documentCountryCode;
    v5->_documentCountryCode = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frontImageData"];
    frontImageData = v5->_frontImageData;
    v5->_frontImageData = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backImageData"];
    backImageData = v5->_backImageData;
    v5->_backImageData = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadedDocumentData"];
    uploadedDocumentData = v5->_uploadedDocumentData;
    v5->_uploadedDocumentData = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v23;

    v5->_channel = [coderCopy decodeIntegerForKey:@"channel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceDocumentSubmissionRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeObject:self->_certificates forKey:@"certificates"];
  [coderCopy encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [coderCopy encodeInteger:self->_documentType forKey:@"documentType"];
  [coderCopy encodeObject:self->_documentCountryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_frontImageData forKey:@"frontImageData"];
  [coderCopy encodeObject:self->_backImageData forKey:@"backImageData"];
  [coderCopy encodeObject:self->_uploadedDocumentData forKey:@"uploadedDocumentData"];
  [coderCopy encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [coderCopy encodeInteger:self->_channel forKey:@"channel"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v48 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (!informationCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v45 = v14;
    v46 = 2082;
    v47 = "appleAccountInformation";
    v15 = "Request %{public}@ missing parameter '%{public}s'.";
LABEL_13:
    v18 = v8;
    v19 = 22;
    goto LABEL_14;
  }

  if (!self->_documentCountryCode)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    *buf = 138543618;
    v45 = v14;
    v46 = 2082;
    v47 = "_documentCountryCode";
    v15 = "Request %{public}@ missing parameter '%{public}s'.";
    goto LABEL_13;
  }

  if (!self->_documentType)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v14 = NSStringFromClass(v17);
      *buf = 138543618;
      v45 = v14;
      v46 = 2082;
      v47 = "_documentType";
      v15 = "Request %{public}@ missing parameter '%{public}s'.";
      goto LABEL_13;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  baseURL = self->_baseURL;
  applicationIdentifier = self->_applicationIdentifier;
  v43[0] = @"applications";
  v43[1] = applicationIdentifier;
  v43[2] = @"documents";
  v43[3] = @"submit";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  v8 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:informationCopy];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  if (![(NSArray *)self->_certificates count])
  {
    v14 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v15 = "Error: Tried to submit document without certificates";
    v18 = v14;
    v19 = 2;
LABEL_14:
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, v15, buf, v19);
LABEL_15:

    goto LABEL_16;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uploadedDocumentData = self->_uploadedDocumentData;
  if (uploadedDocumentData)
  {
    v11 = @"uploadedDocumentData";
    v12 = @"documentData";
LABEL_26:
    v24 = [(NSData *)uploadedDocumentData base64EncodedStringWithOptions:0];
    [v9 setObject:v24 forKey:v12];

    goto LABEL_27;
  }

  frontImageData = self->_frontImageData;
  if (frontImageData)
  {
    v23 = [(NSData *)frontImageData base64EncodedStringWithOptions:0];
    [v9 setObject:v23 forKey:@"documentFrontImage"];
  }

  uploadedDocumentData = self->_backImageData;
  v11 = @"encryptedDocumentData";
  if (uploadedDocumentData)
  {
    v12 = @"documentBackImage";
    goto LABEL_26;
  }

LABEL_27:
  [v9 setObject:self->_documentCountryCode forKey:@"documentCountryCode"];
  v25 = PKPaymentDocumentTypeToString(self->_documentType);
  [v9 setObject:v25 forKey:@"documentType"];

  v26 = objc_autoreleasePoolPush();
  if ([v9 count])
  {
    v27 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = MEMORY[0x1E696AEC0];
      allKeys = [v9 allKeys];
      v30 = [v28 stringWithFormat:@"Encrypted document data: %@", allKeys];
      *buf = 138477827;
      v45 = v30;
      _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
    }

    v31 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
    certificates = self->_certificates;
    v42 = 0;
    v33 = PKFeatureEncryptDataWithCertChain(v31, certificates, &v42, self->_featureIdentifier);
    v34 = v42;

    if (v33)
    {
      goto LABEL_37;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate apply document submission request encryptedDocumentData. This is bad!", buf, 2u);
    }
  }

  else
  {
    v34 = 0;
  }

  v33 = 0;
LABEL_37:
  objc_autoreleasePoolPop(v26);
  _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
  if (v33)
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
    [_createMutableBody setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
    [_createMutableBody setObject:v36 forKey:v11];
    hexEncoding = [v34 hexEncoding];
    [_createMutableBody setObject:hexEncoding forKey:@"publicKeyHash"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [_createMutableBody setObject:odiAssessment forKey:@"odiAssessment"];
  }

  channel = self->_channel;
  if (channel)
  {
    v40 = PKFeatureApplicationChannelToString(channel);
    [_createMutableBody setObject:v40 forKeyedSubscript:@"channel"];
  }

  v41 = [objc_opt_class() _HTTPBodyWithDictionary:_createMutableBody];
  [v8 setHTTPBody:v41];

  v20 = [v8 copy];
LABEL_17:

  return v20;
}

@end