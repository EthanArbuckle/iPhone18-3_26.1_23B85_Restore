@interface MADVITextLookupRequest
- (MADVITextLookupRequest)initWithCoder:(id)a3;
- (MADVITextLookupRequest)initWithQueryTerm:(id)a3 domain:(id)a4 textContext:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVITextLookupRequest

- (MADVITextLookupRequest)initWithQueryTerm:(id)a3 domain:(id)a4 textContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MADVITextLookupRequest;
  v11 = [(MADVITextLookupRequest *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    queryTerm = v11->_queryTerm;
    v11->_queryTerm = v12;

    v14 = [v9 copy];
    hintDomain = v11->_hintDomain;
    v11->_hintDomain = v14;

    v16 = [v10 copy];
    surroundingText = v11->_surroundingText;
    v11->_surroundingText = v16;

    normalizedBoundingBoxes = v11->_normalizedBoundingBoxes;
    v11->_normalizedBoundingBoxes = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (MADVITextLookupRequest)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MADVITextLookupRequest;
  v5 = [(MADRequest *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QueryTerm"];
    queryTerm = v5->_queryTerm;
    v5->_queryTerm = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HintDomain"];
    hintDomain = v5->_hintDomain;
    v5->_hintDomain = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SurroundingText"];
    surroundingText = v5->_surroundingText;
    v5->_surroundingText = v10;

    v12 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"NormalizedBoundingBoxes"];
    normalizedBoundingBoxes = v5->_normalizedBoundingBoxes;
    v5->_normalizedBoundingBoxes = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QueryID"];
    queryID = v5->_queryID;
    v5->_queryID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIScale"];
    uiScale = v5->_uiScale;
    v5->_uiScale = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EngagementSuggestionType"];
    engagementSuggestionType = v5->_engagementSuggestionType;
    v5->_engagementSuggestionType = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVITextLookupRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_queryTerm forKey:{@"QueryTerm", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_hintDomain forKey:@"HintDomain"];
  [v4 encodeObject:self->_surroundingText forKey:@"SurroundingText"];
  [v4 encodeObject:self->_normalizedBoundingBoxes forKey:@"NormalizedBoundingBoxes"];
  [v4 encodeObject:self->_queryID forKey:@"QueryID"];
  [v4 encodeObject:self->_uiScale forKey:@"UIScale"];
  [v4 encodeObject:self->_engagementSuggestionType forKey:@"EngagementSuggestionType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"queryTerm: %@, ", self->_queryTerm];
  if (self->_hintDomain)
  {
    [v3 appendFormat:@"hintDomain: %@, ", self->_hintDomain];
  }

  if (self->_surroundingText)
  {
    [v3 appendFormat:@"surroundingText: %@, ", self->_surroundingText];
  }

  if (self->_normalizedBoundingBoxes)
  {
    [v3 appendFormat:@"normalizedBoundingBoxes: %@, ", self->_normalizedBoundingBoxes];
  }

  if (self->_queryID)
  {
    [v3 appendFormat:@"queryID: %@, ", self->_queryID];
  }

  if (self->_uiScale)
  {
    [v3 appendFormat:@"uiScale: %@, ", self->_uiScale];
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