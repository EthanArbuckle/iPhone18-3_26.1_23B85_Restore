@interface PKApplyWebServiceDocumentSubmissionRequest
- (PKApplyWebServiceDocumentSubmissionRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceDocumentSubmissionRequest

- (PKApplyWebServiceDocumentSubmissionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKApplyWebServiceDocumentSubmissionRequest;
  v5 = [(PKApplyWebServiceRequest *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v13;

    v5->_featureIdentifier = [v4 decodeIntegerForKey:@"featureIdentifier"];
    v5->_documentType = [v4 decodeIntegerForKey:@"documentType"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    documentCountryCode = v5->_documentCountryCode;
    v5->_documentCountryCode = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frontImageData"];
    frontImageData = v5->_frontImageData;
    v5->_frontImageData = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backImageData"];
    backImageData = v5->_backImageData;
    v5->_backImageData = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadedDocumentData"];
    uploadedDocumentData = v5->_uploadedDocumentData;
    v5->_uploadedDocumentData = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v23;

    v5->_channel = [v4 decodeIntegerForKey:@"channel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceDocumentSubmissionRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_baseURL forKey:@"baseURL"];
  [v4 encodeObject:self->_certificates forKey:@"certificates"];
  [v4 encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [v4 encodeInteger:self->_documentType forKey:@"documentType"];
  [v4 encodeObject:self->_documentCountryCode forKey:@"countryCode"];
  [v4 encodeObject:self->_frontImageData forKey:@"frontImageData"];
  [v4 encodeObject:self->_backImageData forKey:@"backImageData"];
  [v4 encodeObject:self->_uploadedDocumentData forKey:@"uploadedDocumentData"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [v4 encodeInteger:self->_channel forKey:@"channel"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
  v8 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v4];

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
      v29 = [v9 allKeys];
      v30 = [v28 stringWithFormat:@"Encrypted document data: %@", v29];
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
  v35 = [(PKApplyWebServiceRequest *)self _createMutableBody];
  if (v33)
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
    [v35 setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
    [v35 setObject:v36 forKey:v11];
    v37 = [v34 hexEncoding];
    [v35 setObject:v37 forKey:@"publicKeyHash"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v35 setObject:odiAssessment forKey:@"odiAssessment"];
  }

  channel = self->_channel;
  if (channel)
  {
    v40 = PKFeatureApplicationChannelToString(channel);
    [v35 setObject:v40 forKeyedSubscript:@"channel"];
  }

  v41 = [objc_opt_class() _HTTPBodyWithDictionary:v35];
  [v8 setHTTPBody:v41];

  v20 = [v8 copy];
LABEL_17:

  return v20;
}

@end