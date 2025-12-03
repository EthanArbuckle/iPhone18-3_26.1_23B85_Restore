@interface PKApplyWebServiceCreateRequest
- (PKApplyWebServiceCreateRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceCreateRequest

- (PKApplyWebServiceCreateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKApplyWebServiceCreateRequest;
  v5 = [(PKApplyWebServiceRequest *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_featureIdentifier = [coderCopy decodeIntegerForKey:@"featureIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v6;

    v5->_updateUserInfoSubType = [coderCopy decodeIntegerForKey:@"updateUserInfoSubType"];
    v5->_channel = [coderCopy decodeIntegerForKey:@"channel"];
    v5->_applicationType = [coderCopy decodeIntegerForKey:@"applicationType"];
    v5->_verificationType = [coderCopy decodeIntegerForKey:@"verificationType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fundingSourceIdentifier"];
    fundingSourceIdentifier = v5->_fundingSourceIdentifier;
    v5->_fundingSourceIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationDetails"];
    invitationDetails = v5->_invitationDetails;
    v5->_invitationDetails = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v18;

    v5->_associatedIntent = [coderCopy decodeIntegerForKey:@"associatedIntent"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceCreateRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_featureIdentifier forKey:{@"featureIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_installmentConfiguration forKey:@"installmentConfiguration"];
  [coderCopy encodeInteger:self->_updateUserInfoSubType forKey:@"updateUserInfoSubType"];
  [coderCopy encodeInteger:self->_channel forKey:@"channel"];
  [coderCopy encodeInteger:self->_applicationType forKey:@"applicationType"];
  [coderCopy encodeInteger:self->_verificationType forKey:@"verificationType"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [coderCopy encodeObject:self->_fundingSourceIdentifier forKey:@"fundingSourceIdentifier"];
  [coderCopy encodeObject:self->_invitationDetails forKey:@"invitationDetails"];
  [coderCopy encodeObject:self->_preliminaryAssessmentIdentifier forKey:@"preliminaryAssessmentIdentifier"];
  [coderCopy encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [coderCopy encodeInteger:self->_associatedIntent forKey:@"associatedIntent"];
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (!lCopy)
  {
    v10 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138543618;
    v39 = v33;
    v40 = 2082;
    v41 = "url";
LABEL_30:
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_31;
  }

  if (!informationCopy)
  {
    v10 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    *buf = 138543618;
    v39 = v33;
    v40 = 2082;
    v41 = "appleAccountInformation";
    goto LABEL_30;
  }

  featureIdentifier = self->_featureIdentifier;
  if (!featureIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      v33 = NSStringFromClass(v35);
      *buf = 138543618;
      v39 = v33;
      v40 = 2082;
      v41 = "_featureIdentifier";
      goto LABEL_30;
    }

LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v10 = PKFeatureIdentifierToString(featureIdentifier);
  v37[0] = @"applications";
  v37[1] = v10;
  v37[2] = @"create";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  v12 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v11 queryParameters:0 appleAccountInformation:v8];

  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
  installmentConfiguration = self->_installmentConfiguration;
  if (installmentConfiguration)
  {
    [(PKPaymentInstallmentConfiguration *)installmentConfiguration encodeToBodyDictionary:_createMutableBody];
  }

  applicationType = self->_applicationType;
  if (applicationType)
  {
    v16 = PKFeatureApplicationTypeToString(applicationType);
    [_createMutableBody setObject:v16 forKeyedSubscript:@"applicationType"];

    [_createMutableBody setObject:self->_referenceIdentifier forKeyedSubscript:@"referenceIdentifier"];
    v17 = self->_applicationType;
    if (v17 == 2)
    {
      jsonRepresentation = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails jsonRepresentation];
      [_createMutableBody setObject:jsonRepresentation forKeyedSubscript:@"invitationDetails"];

      [_createMutableBody setObject:self->_accountIdentifier forKeyedSubscript:@"accountIdentifier"];
      v17 = self->_applicationType;
    }

    if (v17 == 6)
    {
      v19 = PKApplyVerificationTypeToString(self->_verificationType);
      [_createMutableBody setObject:v19 forKeyedSubscript:@"verificationType"];
    }
  }

  preliminaryAssessmentIdentifier = self->_preliminaryAssessmentIdentifier;
  if (preliminaryAssessmentIdentifier)
  {
    [_createMutableBody setObject:preliminaryAssessmentIdentifier forKeyedSubscript:@"preliminaryAssessmentIdentifier"];
  }

  experimentDetails = [(PKApplyWebServiceRequest *)self experimentDetails];

  if (experimentDetails)
  {
    experimentDetails2 = [(PKApplyWebServiceRequest *)self experimentDetails];
    [_createMutableBody setObject:experimentDetails2 forKeyedSubscript:@"experiment"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [_createMutableBody setObject:odiAssessment forKeyedSubscript:@"odiAssessment"];
  }

  updateUserInfoSubType = self->_updateUserInfoSubType;
  if (updateUserInfoSubType)
  {
    v25 = PKFeatureApplicationUpdateUserInfoSubTypeToString(updateUserInfoSubType);
    [_createMutableBody setObject:v25 forKeyedSubscript:@"updateUserInfoSubType"];
  }

  channel = self->_channel;
  if (channel)
  {
    v27 = PKFeatureApplicationChannelToString(channel);
    [_createMutableBody setObject:v27 forKeyedSubscript:@"channel"];
  }

  associatedIntent = self->_associatedIntent;
  if (associatedIntent)
  {
    v29 = PKFeatureApplicationAssociatedIntentToString(associatedIntent);
    [_createMutableBody setObject:v29 forKeyedSubscript:@"associatedIntent"];
  }

  [_createMutableBody safelySetObject:self->_fundingSourceIdentifier forKey:@"fundingSourceIdentifier"];
  v30 = [objc_opt_class() _HTTPBodyWithDictionary:_createMutableBody];
  [v12 setHTTPBody:v30];

  v31 = [v12 copy];
LABEL_32:

  return v31;
}

@end