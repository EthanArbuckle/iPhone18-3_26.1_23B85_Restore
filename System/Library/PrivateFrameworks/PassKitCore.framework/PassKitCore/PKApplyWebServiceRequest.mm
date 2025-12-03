@interface PKApplyWebServiceRequest
- (PKApplyWebServiceRequest)initWithCoder:(id)coder;
- (id)_createMutableBody;
- (id)_murlRequestWithServiceURL:(id)l endpointComponents:(id)components queryParameters:(id)parameters appleAccountInformation:(id)information;
- (id)_murlRequestWithURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceRequest

- (PKApplyWebServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKApplyWebServiceRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"experimentDetails"];
    experimentDetails = v5->_experimentDetails;
    v5->_experimentDetails = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_referrerIdentifier forKey:{@"referrerIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_experimentDetails forKey:@"experimentDetails"];
}

- (id)_murlRequestWithServiceURL:(id)l endpointComponents:(id)components queryParameters:(id)parameters appleAccountInformation:(id)information
{
  v8.receiver = self;
  v8.super_class = PKApplyWebServiceRequest;
  v6 = [(PKPaymentWebServiceRequest *)&v8 _murlRequestWithServiceURL:l version:@"1" endpointComponents:components queryParameters:parameters appleAccountInformation:information];

  return v6;
}

- (id)_murlRequestWithURL:(id)l
{
  v8.receiver = self;
  v8.super_class = PKApplyWebServiceRequest;
  v4 = [(PKPaymentWebServiceRequest *)&v8 _murlRequestWithURL:l];
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