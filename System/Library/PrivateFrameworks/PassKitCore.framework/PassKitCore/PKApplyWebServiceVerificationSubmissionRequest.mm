@interface PKApplyWebServiceVerificationSubmissionRequest
- (PKApplyWebServiceVerificationSubmissionRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceVerificationSubmissionRequest

- (PKApplyWebServiceVerificationSubmissionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKApplyWebServiceVerificationSubmissionRequest;
  v5 = [(PKApplyWebServiceRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v5->_featureIdentifier = [coderCopy decodeIntegerForKey:@"featureIdentifier"];
    v5->_verificationType = [coderCopy decodeIntegerForKey:@"verificationType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verificationInfo"];
    verificationInfo = v5->_verificationInfo;
    v5->_verificationInfo = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v12;

    v5->_channel = [coderCopy decodeIntegerForKey:@"channel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceVerificationSubmissionRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [coderCopy encodeInteger:self->_verificationType forKey:@"verificationType"];
  [coderCopy encodeObject:self->_verificationInfo forKey:@"verificationInfo"];
  [coderCopy encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [coderCopy encodeInteger:self->_channel forKey:@"channel"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v35 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (!informationCopy)
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
        trialDeposits = [(PKApplyVerificationInformation *)self->_verificationInfo trialDeposits];

        if (!trialDeposits)
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
      data = [(PKApplyVerificationInformation *)self->_verificationInfo data];

      if (!data)
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
  v8 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v18 queryParameters:0 appleAccountInformation:informationCopy];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
  v20 = PKApplyVerificationTypeToString(self->_verificationType);
  [_createMutableBody setObject:v20 forKey:@"verificationType"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKApplyVerificationInformation skippedVerification](self->_verificationInfo, "skippedVerification")}];
  [_createMutableBody setObject:v21 forKey:@"skippedVerification"];

  data2 = [(PKApplyVerificationInformation *)self->_verificationInfo data];
  [_createMutableBody safelySetObject:data2 forKey:@"verificationData"];

  trialDeposits2 = [(PKApplyVerificationInformation *)self->_verificationInfo trialDeposits];
  [_createMutableBody safelySetObject:trialDeposits2 forKey:@"trialDeposits"];

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [_createMutableBody setObject:odiAssessment forKey:@"odiAssessment"];
  }

  channel = self->_channel;
  if (channel)
  {
    v26 = PKFeatureApplicationChannelToString(channel);
    [_createMutableBody setObject:v26 forKeyedSubscript:@"channel"];
  }

  v27 = [objc_opt_class() _HTTPBodyWithDictionary:_createMutableBody];
  [v8 setHTTPBody:v27];

  v14 = [v8 copy];
LABEL_24:

  return v14;
}

@end