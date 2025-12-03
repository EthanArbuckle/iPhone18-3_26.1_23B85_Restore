@interface MADVIVisualSearchGatingRequest
- (MADVIVisualSearchGatingRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchGatingRequest

- (MADVIVisualSearchGatingRequest)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = MADVIVisualSearchGatingRequest;
  v5 = [(MADRequest *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QueryID"];
    queryID = v5->_queryID;
    v5->_queryID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReferralURL"];
    referralURL = v5->_referralURL;
    v5->_referralURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v14;

    v16 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"Domains"];
    domains = v5->_domains;
    v5->_domains = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EngagementSuggestionType"];
    engagementSuggestionType = v5->_engagementSuggestionType;
    v5->_engagementSuggestionType = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIVisualSearchGatingRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_queryID forKey:{@"QueryID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_location forKey:@"Location"];
  [coderCopy encodeObject:self->_imageURL forKey:@"ImageURL"];
  [coderCopy encodeObject:self->_referralURL forKey:@"ReferralURL"];
  [coderCopy encodeObject:self->_imageType forKey:@"ImageType"];
  [coderCopy encodeObject:self->_domains forKey:@"Domains"];
  [coderCopy encodeObject:self->_featureIdentifier forKey:@"FeatureIdentifier"];
  [coderCopy encodeObject:self->_engagementSuggestionType forKey:@"EngagementSuggestionType"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  if (self->_queryID)
  {
    [string appendFormat:@"queryID: %@, ", self->_queryID];
  }

  if (self->_location)
  {
    [string appendFormat:@"location: %@, ", self->_location];
  }

  if (self->_imageURL)
  {
    [string appendFormat:@"imageURL: <redacted>, "];
  }

  if (self->_referralURL)
  {
    [string appendFormat:@"referralURL: <redacted>, "];
  }

  if (self->_imageType)
  {
    [string appendFormat:@"imageType: %@, ", self->_imageType];
  }

  if (self->_domains)
  {
    [string appendFormat:@"domains: %@, ", self->_domains];
  }

  if (self->_featureIdentifier)
  {
    [string appendFormat:@"featureIdentifier: %@, ", self->_featureIdentifier];
  }

  if (self->_engagementSuggestionType)
  {
    [string appendFormat:@"engagementSuggestionType: %@, ", self->_engagementSuggestionType];
  }

  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end