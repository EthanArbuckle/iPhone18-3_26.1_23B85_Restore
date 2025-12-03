@interface MADVIUserFeedbackRequest
- (MADVIUserFeedbackRequest)initWithCoder:(id)coder;
- (MADVIUserFeedbackRequest)initWithUserFeedbackPayload:(id)payload sfReportData:(id)data reportIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIUserFeedbackRequest

- (MADVIUserFeedbackRequest)initWithUserFeedbackPayload:(id)payload sfReportData:(id)data reportIdentifier:(id)identifier
{
  payloadCopy = payload;
  dataCopy = data;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = MADVIUserFeedbackRequest;
  v12 = [(MADVIUserFeedbackRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userFeedbackPayload, payload);
    objc_storeStrong(&v13->_sfReportData, data);
    objc_storeStrong(&v13->_reportIdentifier, identifier);
  }

  return v13;
}

- (MADVIUserFeedbackRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MADVIUserFeedbackRequest;
  v5 = [(MADRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserFeedbackPayload"];
    userFeedbackPayload = v5->_userFeedbackPayload;
    v5->_userFeedbackPayload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFReportData"];
    sfReportData = v5->_sfReportData;
    v5->_sfReportData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReportIdentifier"];
    reportIdentifier = v5->_reportIdentifier;
    v5->_reportIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIUserFeedbackRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_userFeedbackPayload forKey:{@"UserFeedbackPayload", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sfReportData forKey:@"SFReportData"];
  [coderCopy encodeObject:self->_reportIdentifier forKey:@"ReportIdentifier"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"userFeedbackPayload: %@, ", self->_userFeedbackPayload];
  [string appendFormat:@"sfReportData: %@, ", self->_sfReportData];
  [string appendFormat:@"reportIdentifier: %@, ", self->_reportIdentifier];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end