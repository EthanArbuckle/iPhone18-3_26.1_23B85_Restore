@interface PKApplyWebServiceRequest
- (PKApplyWebServiceRequest)initWithCoder:(id)a3;
- (id)_createMutableBody;
- (id)_murlRequestWithServiceURL:(id)a3 endpointComponents:(id)a4 queryParameters:(id)a5 appleAccountInformation:(id)a6;
- (id)_murlRequestWithURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceRequest

- (PKApplyWebServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKApplyWebServiceRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"experimentDetails"];
    experimentDetails = v5->_experimentDetails;
    v5->_experimentDetails = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_referrerIdentifier forKey:{@"referrerIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_experimentDetails forKey:@"experimentDetails"];
}

- (id)_murlRequestWithServiceURL:(id)a3 endpointComponents:(id)a4 queryParameters:(id)a5 appleAccountInformation:(id)a6
{
  v8.receiver = self;
  v8.super_class = PKApplyWebServiceRequest;
  v6 = [(PKPaymentWebServiceRequest *)&v8 _murlRequestWithServiceURL:a3 version:@"1" endpointComponents:a4 queryParameters:a5 appleAccountInformation:a6];

  return v6;
}

- (id)_murlRequestWithURL:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKApplyWebServiceRequest;
  v4 = [(PKPaymentWebServiceRequest *)&v8 _murlRequestWithURL:a3];
  v5 = v4;
  referrerIdentifier = self->_referrerIdentifier;
  if (referrerIdentifier)
  {
    [v4 setValue:referrerIdentifier forHTTPHeaderField:@"x-apple-referrer-identifier"];
  }

  return v5;
}

- (id)_createMutableBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  experimentDetails = self->_experimentDetails;
  if (experimentDetails)
  {
    [v3 setObject:experimentDetails forKeyedSubscript:@"experiment"];
  }

  return v4;
}

@end