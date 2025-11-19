@interface MADVIVisualSearchGatingRequest
- (MADVIVisualSearchGatingRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchGatingRequest

- (MADVIVisualSearchGatingRequest)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MADVIVisualSearchGatingRequest;
  v5 = [(MADRequest *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QueryID"];
    queryID = v5->_queryID;
    v5->_queryID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReferralURL"];
    referralURL = v5->_referralURL;
    v5->_referralURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v14;

    v16 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"Domains"];
    domains = v5->_domains;
    v5->_domains = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EngagementSuggestionType"];
    engagementSuggestionType = v5->_engagementSuggestionType;
    v5->_engagementSuggestionType = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIVisualSearchGatingRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_queryID forKey:{@"QueryID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_location forKey:@"Location"];
  [v4 encodeObject:self->_imageURL forKey:@"ImageURL"];
  [v4 encodeObject:self->_referralURL forKey:@"ReferralURL"];
  [v4 encodeObject:self->_imageType forKey:@"ImageType"];
  [v4 encodeObject:self->_domains forKey:@"Domains"];
  [v4 encodeObject:self->_featureIdentifier forKey:@"FeatureIdentifier"];
  [v4 encodeObject:self->_engagementSuggestionType forKey:@"EngagementSuggestionType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  if (self->_queryID)
  {
    [v3 appendFormat:@"queryID: %@, ", self->_queryID];
  }

  if (self->_location)
  {
    [v3 appendFormat:@"location: %@, ", self->_location];
  }

  if (self->_imageURL)
  {
    [v3 appendFormat:@"imageURL: <redacted>, "];
  }

  if (self->_referralURL)
  {
    [v3 appendFormat:@"referralURL: <redacted>, "];
  }

  if (self->_imageType)
  {
    [v3 appendFormat:@"imageType: %@, ", self->_imageType];
  }

  if (self->_domains)
  {
    [v3 appendFormat:@"domains: %@, ", self->_domains];
  }

  if (self->_featureIdentifier)
  {
    [v3 appendFormat:@"featureIdentifier: %@, ", self->_featureIdentifier];
  }

  if (self->_engagementSuggestionType)
  {
    [v3 appendFormat:@"engagementSuggestionType: %@, ", self->_engagementSuggestionType];
  }

  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end