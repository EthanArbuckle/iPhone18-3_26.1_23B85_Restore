@interface MADVIUserFeedbackRequest
- (MADVIUserFeedbackRequest)initWithCoder:(id)a3;
- (MADVIUserFeedbackRequest)initWithUserFeedbackPayload:(id)a3 sfReportData:(id)a4 reportIdentifier:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIUserFeedbackRequest

- (MADVIUserFeedbackRequest)initWithUserFeedbackPayload:(id)a3 sfReportData:(id)a4 reportIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADVIUserFeedbackRequest;
  v12 = [(MADVIUserFeedbackRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userFeedbackPayload, a3);
    objc_storeStrong(&v13->_sfReportData, a4);
    objc_storeStrong(&v13->_reportIdentifier, a5);
  }

  return v13;
}

- (MADVIUserFeedbackRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADVIUserFeedbackRequest;
  v5 = [(MADRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserFeedbackPayload"];
    userFeedbackPayload = v5->_userFeedbackPayload;
    v5->_userFeedbackPayload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFReportData"];
    sfReportData = v5->_sfReportData;
    v5->_sfReportData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReportIdentifier"];
    reportIdentifier = v5->_reportIdentifier;
    v5->_reportIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIUserFeedbackRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_userFeedbackPayload forKey:{@"UserFeedbackPayload", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sfReportData forKey:@"SFReportData"];
  [v4 encodeObject:self->_reportIdentifier forKey:@"ReportIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"userFeedbackPayload: %@, ", self->_userFeedbackPayload];
  [v3 appendFormat:@"sfReportData: %@, ", self->_sfReportData];
  [v3 appendFormat:@"reportIdentifier: %@, ", self->_reportIdentifier];
  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end