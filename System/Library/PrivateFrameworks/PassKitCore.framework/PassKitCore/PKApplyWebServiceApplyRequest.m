@interface PKApplyWebServiceApplyRequest
- (PKApplyWebServiceApplyRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceApplyRequest

- (PKApplyWebServiceApplyRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = PKApplyWebServiceApplyRequest;
  v5 = [(PKApplyWebServiceRequest *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreIDVNextStepToken"];
    coreIDVNextStepToken = v5->_coreIDVNextStepToken;
    v5->_coreIDVNextStepToken = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v15;

    v5->_featureIdentifier = [v4 decodeIntegerForKey:@"featureIdentifier"];
    v5->_updateUserInfoSubType = [v4 decodeIntegerForKey:@"updateUserInfoSubType"];
    v5->_channel = [v4 decodeIntegerForKey:@"channel"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousContextIdentifier"];
    previousContextIdentifier = v5->_previousContextIdentifier;
    v5->_previousContextIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v21;

    v5->_applicationType = [v4 decodeIntegerForKey:@"applicationType"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationDetails"];
    invitationDetails = v5->_invitationDetails;
    v5->_invitationDetails = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"termsIdentifiers"];
    termsIdentifiers = v5->_termsIdentifiers;
    v5->_termsIdentifiers = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceMetadata"];
    deviceMetadata = v5->_deviceMetadata;
    v5->_deviceMetadata = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContext"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceApplyRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_baseURL forKey:@"baseURL"];
  [v4 encodeObject:self->_coreIDVNextStepToken forKey:@"coreIDVNextStepToken"];
  [v4 encodeObject:self->_certificates forKey:@"certificates"];
  [v4 encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [v4 encodeInteger:self->_updateUserInfoSubType forKey:@"updateUserInfoSubType"];
  [v4 encodeInteger:self->_channel forKey:@"channel"];
  [v4 encodeObject:self->_previousContextIdentifier forKey:@"previousContextIdentifier"];
  [v4 encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [v4 encodeObject:self->_installmentConfiguration forKey:@"installmentConfiguration"];
  [v4 encodeInteger:self->_applicationType forKey:@"applicationType"];
  [v4 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v4 encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [v4 encodeObject:self->_invitationDetails forKey:@"invitationDetails"];
  [v4 encodeObject:self->_preliminaryAssessmentIdentifier forKey:@"preliminaryAssessmentIdentifier"];
  [v4 encodeObject:self->_termsIdentifiers forKey:@"termsIdentifiers"];
  [v4 encodeObject:self->_deviceMetadata forKey:@"deviceMetadata"];
  [v4 encodeObject:self->_authenticationContext forKey:@"authenticationContext"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
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

  if (!v4)
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
  v10 = [(PKApplyWebServiceRequest *)self _createMutableBody];
  v11 = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v12 = [v11 count];

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
      v18 = [MEMORY[0x1E695DF90] dictionary];
      [(PKOverlayableWebServiceRequest *)self _applySecureOverlayToDictionary:v18];
      if ([v18 count])
      {
        v61 = v17;
        v19 = PKLogFacilityTypeGetObject(0xEuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = [v18 allKeys];
          v22 = [v20 stringWithFormat:@"Encrypted Apply Fields: %@", v21];
          *buf = 138477827;
          v65 = v22;
          _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
        }

        v23 = [objc_opt_class() _HTTPBodyWithDictionary:v18];
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
        [v10 setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
        [v10 setObject:v35 forKey:@"encryptedInputData"];
        v36 = [v26 hexEncoding];
        [v10 setObject:v36 forKey:@"publicKeyHash"];
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

  v37 = [*(v13 + 3984) dictionary];
  [(PKOverlayableWebServiceRequest *)self _applyOverlayToDictionary:v37];
  [v10 setObject:v37 forKey:@"inputData"];
  coreIDVNextStepToken = self->_coreIDVNextStepToken;
  if (coreIDVNextStepToken)
  {
    [v10 setObject:coreIDVNextStepToken forKey:@"coreIDVNextStepToken"];
  }

  previousContextIdentifier = self->_previousContextIdentifier;
  if (previousContextIdentifier)
  {
    [v10 setObject:previousContextIdentifier forKey:@"previousContextIdentifier"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v10 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  installmentConfiguration = self->_installmentConfiguration;
  if (installmentConfiguration)
  {
    [(PKPaymentInstallmentConfiguration *)installmentConfiguration encodeToBodyDictionary:v10];
  }

  applicationType = self->_applicationType;
  if (applicationType)
  {
    v43 = PKFeatureApplicationTypeToString(applicationType);
    [v10 setObject:v43 forKeyedSubscript:@"applicationType"];

    [v10 setObject:self->_referenceIdentifier forKeyedSubscript:@"referenceIdentifier"];
    if (self->_applicationType == 2)
    {
      [v10 setObject:self->_accountIdentifier forKeyedSubscript:@"accountIdentifier"];
      v44 = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails jsonRepresentation];
      [v10 setObject:v44 forKeyedSubscript:@"invitationDetails"];
    }
  }

  preliminaryAssessmentIdentifier = self->_preliminaryAssessmentIdentifier;
  if (preliminaryAssessmentIdentifier)
  {
    [v10 setObject:preliminaryAssessmentIdentifier forKeyedSubscript:@"preliminaryAssessmentIdentifier"];
  }

  if ([(NSSet *)self->_termsIdentifiers count])
  {
    v46 = [(NSSet *)self->_termsIdentifiers allObjects];
    [v10 setObject:v46 forKeyedSubscript:@"termsIdentifiers"];
  }

  updateUserInfoSubType = self->_updateUserInfoSubType;
  if (updateUserInfoSubType)
  {
    v48 = PKFeatureApplicationUpdateUserInfoSubTypeToString(updateUserInfoSubType);
    [v10 setObject:v48 forKeyedSubscript:@"updateUserInfoSubType"];
  }

  channel = self->_channel;
  if (channel)
  {
    v50 = PKFeatureApplicationChannelToString(channel);
    [v10 setObject:v50 forKeyedSubscript:@"channel"];
  }

  v51 = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (v51)
  {
    [v10 setObject:v51 forKey:@"deviceMetadata"];
  }

  authenticationContext = self->_authenticationContext;
  if (!authenticationContext)
  {
    goto LABEL_61;
  }

  v53 = [(PKApplyWebServiceRequestAuthenticationContext *)authenticationContext certificates];
  if (![v53 count])
  {
    goto LABEL_60;
  }

  v54 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext signature];

  if (v54)
  {
    v55 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext certificates];
    v53 = [v55 pk_arrayByApplyingBlock:&__block_literal_global_386];

    [v10 setObject:v53 forKeyedSubscript:@"certificates"];
    v56 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext signature];
    v57 = [v56 base64EncodedStringWithOptions:0];
    [v10 setObject:v57 forKeyedSubscript:@"signature"];

LABEL_60:
  }

LABEL_61:
  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v10 setObject:odiAssessment forKeyedSubscript:@"odiAssessment"];
  }

  v59 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
  [v9 setHTTPBody:v59];

  v31 = [v9 copy];
LABEL_64:

  return v31;
}

@end