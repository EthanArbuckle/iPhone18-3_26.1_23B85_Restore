@interface PKApplyWebServiceApplyRequest
- (PKApplyWebServiceApplyRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceApplyRequest

- (PKApplyWebServiceApplyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = PKApplyWebServiceApplyRequest;
  v5 = [(PKApplyWebServiceRequest *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreIDVNextStepToken"];
    coreIDVNextStepToken = v5->_coreIDVNextStepToken;
    v5->_coreIDVNextStepToken = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v15;

    v5->_featureIdentifier = [coderCopy decodeIntegerForKey:@"featureIdentifier"];
    v5->_updateUserInfoSubType = [coderCopy decodeIntegerForKey:@"updateUserInfoSubType"];
    v5->_channel = [coderCopy decodeIntegerForKey:@"channel"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousContextIdentifier"];
    previousContextIdentifier = v5->_previousContextIdentifier;
    v5->_previousContextIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v21;

    v5->_applicationType = [coderCopy decodeIntegerForKey:@"applicationType"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationDetails"];
    invitationDetails = v5->_invitationDetails;
    v5->_invitationDetails = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"termsIdentifiers"];
    termsIdentifiers = v5->_termsIdentifiers;
    v5->_termsIdentifiers = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceMetadata"];
    deviceMetadata = v5->_deviceMetadata;
    v5->_deviceMetadata = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContext"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceApplyRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeObject:self->_coreIDVNextStepToken forKey:@"coreIDVNextStepToken"];
  [coderCopy encodeObject:self->_certificates forKey:@"certificates"];
  [coderCopy encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [coderCopy encodeInteger:self->_updateUserInfoSubType forKey:@"updateUserInfoSubType"];
  [coderCopy encodeInteger:self->_channel forKey:@"channel"];
  [coderCopy encodeObject:self->_previousContextIdentifier forKey:@"previousContextIdentifier"];
  [coderCopy encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [coderCopy encodeObject:self->_installmentConfiguration forKey:@"installmentConfiguration"];
  [coderCopy encodeInteger:self->_applicationType forKey:@"applicationType"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [coderCopy encodeObject:self->_invitationDetails forKey:@"invitationDetails"];
  [coderCopy encodeObject:self->_preliminaryAssessmentIdentifier forKey:@"preliminaryAssessmentIdentifier"];
  [coderCopy encodeObject:self->_termsIdentifiers forKey:@"termsIdentifiers"];
  [coderCopy encodeObject:self->_deviceMetadata forKey:@"deviceMetadata"];
  [coderCopy encodeObject:self->_authenticationContext forKey:@"authenticationContext"];
  [coderCopy encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v68 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138543618;
    v65 = v28;
    v66 = 2082;
    v67 = "_baseURL";
LABEL_20:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_21;
  }

  if (!informationCopy)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v29 = objc_opt_class();
    v28 = NSStringFromClass(v29);
    *buf = 138543618;
    v65 = v28;
    v66 = 2082;
    v67 = "appleAccountInformation";
    goto LABEL_20;
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (!applicationIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v28 = NSStringFromClass(v30);
      *buf = 138543618;
      v65 = v28;
      v66 = 2082;
      v67 = "_applicationIdentifier";
      goto LABEL_20;
    }

LABEL_21:
    v31 = 0;
    goto LABEL_64;
  }

  v63[0] = @"applications";
  v63[1] = applicationIdentifier;
  v63[2] = @"apply";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
  v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v9 setCachePolicy:1];
  _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
  secureOverlayParameters = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v12 = [secureOverlayParameters count];

  v13 = 0x1E695D000uLL;
  if (v12)
  {
    if ([(NSArray *)self->_certificates count])
    {
      v14 = PKLogFacilityTypeGetObject(0x24uLL);
      v15 = os_signpost_id_make_with_pointer(v14, self);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = v15;
        if (os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "request:applyRequest:encryption", "", buf, 2u);
        }
      }

      v17 = objc_autoreleasePoolPush();
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(PKOverlayableWebServiceRequest *)self _applySecureOverlayToDictionary:dictionary];
      if ([dictionary count])
      {
        v61 = v17;
        v19 = PKLogFacilityTypeGetObject(0xEuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = MEMORY[0x1E696AEC0];
          allKeys = [dictionary allKeys];
          v22 = [v20 stringWithFormat:@"Encrypted Apply Fields: %@", allKeys];
          *buf = 138477827;
          v65 = v22;
          _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
        }

        v23 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
        certificates = self->_certificates;
        v62 = 0;
        v25 = PKFeatureEncryptDataWithCertChain(v23, certificates, &v62, self->_featureIdentifier);
        v26 = v62;

        if (v25)
        {
          v13 = 0x1E695D000;
          v17 = v61;
        }

        else
        {
          v17 = v61;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate apply request encryptedCardData. This is bad!", buf, 2u);
          }

          v25 = 0;
          v13 = 0x1E695D000uLL;
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      objc_autoreleasePoolPop(v17);
      v32 = v14;
      v33 = os_signpost_id_make_with_pointer(v32, self);
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v34 = v33;
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v32, OS_SIGNPOST_INTERVAL_END, v34, "request:applyRequest:encryption", "", buf, 2u);
        }
      }

      if (v25)
      {
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v25 encoding:4];
        [_createMutableBody setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
        [_createMutableBody setObject:v35 forKey:@"encryptedInputData"];
        hexEncoding = [v26 hexEncoding];
        [_createMutableBody setObject:hexEncoding forKey:@"publicKeyHash"];
      }
    }

    else
    {
      v26 = PKLogFacilityTypeGetObject(0xEuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Error: Tried to apply without certificates", buf, 2u);
      }

      v25 = v9;
      v9 = 0;
    }
  }

  dictionary2 = [*(v13 + 3984) dictionary];
  [(PKOverlayableWebServiceRequest *)self _applyOverlayToDictionary:dictionary2];
  [_createMutableBody setObject:dictionary2 forKey:@"inputData"];
  coreIDVNextStepToken = self->_coreIDVNextStepToken;
  if (coreIDVNextStepToken)
  {
    [_createMutableBody setObject:coreIDVNextStepToken forKey:@"coreIDVNextStepToken"];
  }

  previousContextIdentifier = self->_previousContextIdentifier;
  if (previousContextIdentifier)
  {
    [_createMutableBody setObject:previousContextIdentifier forKey:@"previousContextIdentifier"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [_createMutableBody setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  installmentConfiguration = self->_installmentConfiguration;
  if (installmentConfiguration)
  {
    [(PKPaymentInstallmentConfiguration *)installmentConfiguration encodeToBodyDictionary:_createMutableBody];
  }

  applicationType = self->_applicationType;
  if (applicationType)
  {
    v43 = PKFeatureApplicationTypeToString(applicationType);
    [_createMutableBody setObject:v43 forKeyedSubscript:@"applicationType"];

    [_createMutableBody setObject:self->_referenceIdentifier forKeyedSubscript:@"referenceIdentifier"];
    if (self->_applicationType == 2)
    {
      [_createMutableBody setObject:self->_accountIdentifier forKeyedSubscript:@"accountIdentifier"];
      jsonRepresentation = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails jsonRepresentation];
      [_createMutableBody setObject:jsonRepresentation forKeyedSubscript:@"invitationDetails"];
    }
  }

  preliminaryAssessmentIdentifier = self->_preliminaryAssessmentIdentifier;
  if (preliminaryAssessmentIdentifier)
  {
    [_createMutableBody setObject:preliminaryAssessmentIdentifier forKeyedSubscript:@"preliminaryAssessmentIdentifier"];
  }

  if ([(NSSet *)self->_termsIdentifiers count])
  {
    allObjects = [(NSSet *)self->_termsIdentifiers allObjects];
    [_createMutableBody setObject:allObjects forKeyedSubscript:@"termsIdentifiers"];
  }

  updateUserInfoSubType = self->_updateUserInfoSubType;
  if (updateUserInfoSubType)
  {
    v48 = PKFeatureApplicationUpdateUserInfoSubTypeToString(updateUserInfoSubType);
    [_createMutableBody setObject:v48 forKeyedSubscript:@"updateUserInfoSubType"];
  }

  channel = self->_channel;
  if (channel)
  {
    v50 = PKFeatureApplicationChannelToString(channel);
    [_createMutableBody setObject:v50 forKeyedSubscript:@"channel"];
  }

  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [_createMutableBody setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  authenticationContext = self->_authenticationContext;
  if (!authenticationContext)
  {
    goto LABEL_61;
  }

  certificates = [(PKApplyWebServiceRequestAuthenticationContext *)authenticationContext certificates];
  if (![certificates count])
  {
    goto LABEL_60;
  }

  signature = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext signature];

  if (signature)
  {
    certificates2 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext certificates];
    certificates = [certificates2 pk_arrayByApplyingBlock:&__block_literal_global_386];

    [_createMutableBody setObject:certificates forKeyedSubscript:@"certificates"];
    signature2 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext signature];
    v57 = [signature2 base64EncodedStringWithOptions:0];
    [_createMutableBody setObject:v57 forKeyedSubscript:@"signature"];

LABEL_60:
  }

LABEL_61:
  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [_createMutableBody setObject:odiAssessment forKeyedSubscript:@"odiAssessment"];
  }

  v59 = [objc_opt_class() _HTTPBodyWithDictionary:_createMutableBody];
  [v9 setHTTPBody:v59];

  v31 = [v9 copy];
LABEL_64:

  return v31;
}

@end