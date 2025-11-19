@interface PKApplyWebServiceVerificationSubmissionRequest
- (PKApplyWebServiceVerificationSubmissionRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceVerificationSubmissionRequest

- (PKApplyWebServiceVerificationSubmissionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKApplyWebServiceVerificationSubmissionRequest;
  v5 = [(PKApplyWebServiceRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v5->_featureIdentifier = [v4 decodeIntegerForKey:@"featureIdentifier"];
    v5->_verificationType = [v4 decodeIntegerForKey:@"verificationType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verificationInfo"];
    verificationInfo = v5->_verificationInfo;
    v5->_verificationInfo = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v12;

    v5->_channel = [v4 decodeIntegerForKey:@"channel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceVerificationSubmissionRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_baseURL forKey:@"baseURL"];
  [v4 encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [v4 encodeInteger:self->_verificationType forKey:@"verificationType"];
  [v4 encodeObject:self->_verificationInfo forKey:@"verificationInfo"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [v4 encodeInteger:self->_channel forKey:@"channel"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v10 = NSStringFromClass(v11);
      *buf = 138543618;
      v32 = v10;
      v33 = 2082;
      v34 = "appleAccountInformation";
      goto LABEL_15;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_24;
  }

  if (!self->_verificationType)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v10 = NSStringFromClass(v12);
      *buf = 138543618;
      v32 = v10;
      v33 = 2082;
      v34 = "_verificationType";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  verificationInfo = self->_verificationInfo;
  if (!verificationInfo)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v10 = NSStringFromClass(v13);
      *buf = 138543618;
      v32 = v10;
      v33 = 2082;
      v34 = "_verificationInfo";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (![(PKApplyVerificationInformation *)verificationInfo skippedVerification])
  {
    verificationType = self->_verificationType;
    if (verificationType >= 2)
    {
      if (verificationType == 2)
      {
        v15 = [(PKApplyVerificationInformation *)self->_verificationInfo trialDeposits];

        if (!v15)
        {
          v8 = PKLogFacilityTypeGetObject(0xEuLL);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v29 = objc_opt_class();
          v10 = NSStringFromClass(v29);
          *buf = 138543618;
          v32 = v10;
          v33 = 2082;
          v34 = "[_verificationInfo trialDeposits]";
          goto LABEL_15;
        }
      }
    }

    else
    {
      v7 = [(PKApplyVerificationInformation *)self->_verificationInfo data];

      if (!v7)
      {
        v8 = PKLogFacilityTypeGetObject(0xEuLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138543618;
          v32 = v10;
          v33 = 2082;
          v34 = "[_verificationInfo data]";
LABEL_15:
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }
  }

  baseURL = self->_baseURL;
  applicationIdentifier = self->_applicationIdentifier;
  v30[0] = @"applications";
  v30[1] = applicationIdentifier;
  v30[2] = @"verification";
  v30[3] = @"submit";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v8 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v18 queryParameters:0 appleAccountInformation:v4];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v19 = [(PKApplyWebServiceRequest *)self _createMutableBody];
  v20 = PKApplyVerificationTypeToString(self->_verificationType);
  [v19 setObject:v20 forKey:@"verificationType"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKApplyVerificationInformation skippedVerification](self->_verificationInfo, "skippedVerification")}];
  [v19 setObject:v21 forKey:@"skippedVerification"];

  v22 = [(PKApplyVerificationInformation *)self->_verificationInfo data];
  [v19 safelySetObject:v22 forKey:@"verificationData"];

  v23 = [(PKApplyVerificationInformation *)self->_verificationInfo trialDeposits];
  [v19 safelySetObject:v23 forKey:@"trialDeposits"];

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v19 setObject:odiAssessment forKey:@"odiAssessment"];
  }

  channel = self->_channel;
  if (channel)
  {
    v26 = PKFeatureApplicationChannelToString(channel);
    [v19 setObject:v26 forKeyedSubscript:@"channel"];
  }

  v27 = [objc_opt_class() _HTTPBodyWithDictionary:v19];
  [v8 setHTTPBody:v27];

  v14 = [v8 copy];
LABEL_24:

  return v14;
}

@end