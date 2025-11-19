@interface PKApplyWebServiceCreateRequest
- (PKApplyWebServiceCreateRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceCreateRequest

- (PKApplyWebServiceCreateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKApplyWebServiceCreateRequest;
  v5 = [(PKApplyWebServiceRequest *)&v21 initWithCoder:v4];
  if (v5)
  {
    v5->_featureIdentifier = [v4 decodeIntegerForKey:@"featureIdentifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v6;

    v5->_updateUserInfoSubType = [v4 decodeIntegerForKey:@"updateUserInfoSubType"];
    v5->_channel = [v4 decodeIntegerForKey:@"channel"];
    v5->_applicationType = [v4 decodeIntegerForKey:@"applicationType"];
    v5->_verificationType = [v4 decodeIntegerForKey:@"verificationType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fundingSourceIdentifier"];
    fundingSourceIdentifier = v5->_fundingSourceIdentifier;
    v5->_fundingSourceIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationDetails"];
    invitationDetails = v5->_invitationDetails;
    v5->_invitationDetails = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v18;

    v5->_associatedIntent = [v4 decodeIntegerForKey:@"associatedIntent"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceCreateRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_featureIdentifier forKey:{@"featureIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_installmentConfiguration forKey:@"installmentConfiguration"];
  [v4 encodeInteger:self->_updateUserInfoSubType forKey:@"updateUserInfoSubType"];
  [v4 encodeInteger:self->_channel forKey:@"channel"];
  [v4 encodeInteger:self->_applicationType forKey:@"applicationType"];
  [v4 encodeInteger:self->_verificationType forKey:@"verificationType"];
  [v4 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v4 encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [v4 encodeObject:self->_fundingSourceIdentifier forKey:@"fundingSourceIdentifier"];
  [v4 encodeObject:self->_invitationDetails forKey:@"invitationDetails"];
  [v4 encodeObject:self->_preliminaryAssessmentIdentifier forKey:@"preliminaryAssessmentIdentifier"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [v4 encodeInteger:self->_associatedIntent forKey:@"associatedIntent"];
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
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

  if (!v7)
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
  v12 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v11 queryParameters:0 appleAccountInformation:v8];

  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v13 = [(PKApplyWebServiceRequest *)self _createMutableBody];
  installmentConfiguration = self->_installmentConfiguration;
  if (installmentConfiguration)
  {
    [(PKPaymentInstallmentConfiguration *)installmentConfiguration encodeToBodyDictionary:v13];
  }

  applicationType = self->_applicationType;
  if (applicationType)
  {
    v16 = PKFeatureApplicationTypeToString(applicationType);
    [v13 setObject:v16 forKeyedSubscript:@"applicationType"];

    [v13 setObject:self->_referenceIdentifier forKeyedSubscript:@"referenceIdentifier"];
    v17 = self->_applicationType;
    if (v17 == 2)
    {
      v18 = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails jsonRepresentation];
      [v13 setObject:v18 forKeyedSubscript:@"invitationDetails"];

      [v13 setObject:self->_accountIdentifier forKeyedSubscript:@"accountIdentifier"];
      v17 = self->_applicationType;
    }

    if (v17 == 6)
    {
      v19 = PKApplyVerificationTypeToString(self->_verificationType);
      [v13 setObject:v19 forKeyedSubscript:@"verificationType"];
    }
  }

  preliminaryAssessmentIdentifier = self->_preliminaryAssessmentIdentifier;
  if (preliminaryAssessmentIdentifier)
  {
    [v13 setObject:preliminaryAssessmentIdentifier forKeyedSubscript:@"preliminaryAssessmentIdentifier"];
  }

  v21 = [(PKApplyWebServiceRequest *)self experimentDetails];

  if (v21)
  {
    v22 = [(PKApplyWebServiceRequest *)self experimentDetails];
    [v13 setObject:v22 forKeyedSubscript:@"experiment"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v13 setObject:odiAssessment forKeyedSubscript:@"odiAssessment"];
  }

  updateUserInfoSubType = self->_updateUserInfoSubType;
  if (updateUserInfoSubType)
  {
    v25 = PKFeatureApplicationUpdateUserInfoSubTypeToString(updateUserInfoSubType);
    [v13 setObject:v25 forKeyedSubscript:@"updateUserInfoSubType"];
  }

  channel = self->_channel;
  if (channel)
  {
    v27 = PKFeatureApplicationChannelToString(channel);
    [v13 setObject:v27 forKeyedSubscript:@"channel"];
  }

  associatedIntent = self->_associatedIntent;
  if (associatedIntent)
  {
    v29 = PKFeatureApplicationAssociatedIntentToString(associatedIntent);
    [v13 setObject:v29 forKeyedSubscript:@"associatedIntent"];
  }

  [v13 safelySetObject:self->_fundingSourceIdentifier forKey:@"fundingSourceIdentifier"];
  v30 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
  [v12 setHTTPBody:v30];

  v31 = [v12 copy];
LABEL_32:

  return v31;
}

@end