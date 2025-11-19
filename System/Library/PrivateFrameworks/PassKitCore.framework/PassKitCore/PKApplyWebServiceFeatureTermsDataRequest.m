@interface PKApplyWebServiceFeatureTermsDataRequest
- (PKApplyWebServiceFeatureTermsDataRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceFeatureTermsDataRequest

- (PKApplyWebServiceFeatureTermsDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKApplyWebServiceFeatureTermsDataRequest;
  v5 = [(PKApplyWebServiceRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_featureIdentifier = [v4 decodeIntegerForKey:@"featureIdentifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsDataFormat"];
    termsDataFormat = v5->_termsDataFormat;
    v5->_termsDataFormat = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceFeatureTermsDataRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_featureIdentifier forKey:{@"featureIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_termsDataFormat forKey:@"termsDataFormat"];
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_termsDataFormat)
  {
    v8 = PKFeatureIdentifierToString(self->_featureIdentifier);
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"applications", v8, @"termsData", 0}];
    v10 = v9;
    if (self->_termsIdentifier)
    {
      [v9 addObject:?];
    }

    v11 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v10 queryParameters:0 appleAccountInformation:v7];
    [v11 setHTTPMethod:@"POST"];
    [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v12 = [(PKApplyWebServiceRequest *)self _createMutableBody];
    [v12 setObject:self->_termsDataFormat forKey:@"format"];
    v13 = [objc_opt_class() _HTTPBodyWithDictionary:v12];
    [v11 setHTTPBody:v13];

    v14 = [v11 copy];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543618;
      v20 = v17;
      v21 = 2082;
      v22 = "_termsDataFormat";
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

@end