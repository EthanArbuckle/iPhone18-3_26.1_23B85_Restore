@interface MADVITextLookupRequest
- (MADVITextLookupRequest)initWithCoder:(id)coder;
- (MADVITextLookupRequest)initWithQueryTerm:(id)term domain:(id)domain textContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVITextLookupRequest

- (MADVITextLookupRequest)initWithQueryTerm:(id)term domain:(id)domain textContext:(id)context
{
  termCopy = term;
  domainCopy = domain;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = MADVITextLookupRequest;
  v11 = [(MADVITextLookupRequest *)&v20 init];
  if (v11)
  {
    v12 = [termCopy copy];
    queryTerm = v11->_queryTerm;
    v11->_queryTerm = v12;

    v14 = [domainCopy copy];
    hintDomain = v11->_hintDomain;
    v11->_hintDomain = v14;

    v16 = [contextCopy copy];
    surroundingText = v11->_surroundingText;
    v11->_surroundingText = v16;

    normalizedBoundingBoxes = v11->_normalizedBoundingBoxes;
    v11->_normalizedBoundingBoxes = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (MADVITextLookupRequest)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = MADVITextLookupRequest;
  v5 = [(MADRequest *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QueryTerm"];
    queryTerm = v5->_queryTerm;
    v5->_queryTerm = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HintDomain"];
    hintDomain = v5->_hintDomain;
    v5->_hintDomain = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SurroundingText"];
    surroundingText = v5->_surroundingText;
    v5->_surroundingText = v10;

    v12 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"NormalizedBoundingBoxes"];
    normalizedBoundingBoxes = v5->_normalizedBoundingBoxes;
    v5->_normalizedBoundingBoxes = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QueryID"];
    queryID = v5->_queryID;
    v5->_queryID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIScale"];
    uiScale = v5->_uiScale;
    v5->_uiScale = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EngagementSuggestionType"];
    engagementSuggestionType = v5->_engagementSuggestionType;
    v5->_engagementSuggestionType = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVITextLookupRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_queryTerm forKey:{@"QueryTerm", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_hintDomain forKey:@"HintDomain"];
  [coderCopy encodeObject:self->_surroundingText forKey:@"SurroundingText"];
  [coderCopy encodeObject:self->_normalizedBoundingBoxes forKey:@"NormalizedBoundingBoxes"];
  [coderCopy encodeObject:self->_queryID forKey:@"QueryID"];
  [coderCopy encodeObject:self->_uiScale forKey:@"UIScale"];
  [coderCopy encodeObject:self->_engagementSuggestionType forKey:@"EngagementSuggestionType"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"queryTerm: %@, ", self->_queryTerm];
  if (self->_hintDomain)
  {
    [string appendFormat:@"hintDomain: %@, ", self->_hintDomain];
  }

  if (self->_surroundingText)
  {
    [string appendFormat:@"surroundingText: %@, ", self->_surroundingText];
  }

  if (self->_normalizedBoundingBoxes)
  {
    [string appendFormat:@"normalizedBoundingBoxes: %@, ", self->_normalizedBoundingBoxes];
  }

  if (self->_queryID)
  {
    [string appendFormat:@"queryID: %@, ", self->_queryID];
  }

  if (self->_uiScale)
  {
    [string appendFormat:@"uiScale: %@, ", self->_uiScale];
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