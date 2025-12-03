@interface MADVIVisualSearchRequest
- (MADVIVisualSearchRequest)initWithCoder:(id)coder;
- (MADVIVisualSearchRequest)initWithGatingResultItems:(id)items payload:(id)payload documentObservations:(id)observations;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchRequest

- (MADVIVisualSearchRequest)initWithGatingResultItems:(id)items payload:(id)payload documentObservations:(id)observations
{
  itemsCopy = items;
  payloadCopy = payload;
  observationsCopy = observations;
  v15.receiver = self;
  v15.super_class = MADVIVisualSearchRequest;
  v12 = [(MADVIVisualSearchRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_gatingResultItems, items);
    objc_storeStrong(&v13->_gatingPayload, payload);
    objc_storeStrong(&v13->_documentObservations, observations);
  }

  return v13;
}

- (MADVIVisualSearchRequest)initWithCoder:(id)coder
{
  v51[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = MADVIVisualSearchRequest;
  v5 = [(MADRequest *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"GatingResultItems"];
    gatingResultItems = v5->_gatingResultItems;
    v5->_gatingResultItems = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GatingPayload"];
    gatingPayload = v5->_gatingPayload;
    v5->_gatingPayload = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QueryID"];
    queryID = v5->_queryID;
    v5->_queryID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIScale"];
    uiScale = v5->_uiScale;
    v5->_uiScale = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    location = v5->_location;
    v5->_location = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReferralURL"];
    referralURL = v5->_referralURL;
    v5->_referralURL = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v23;

    v25 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v27 = [v25 setWithArray:v26];

    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"CatalogIDs"];
    catalogIDs = v5->_catalogIDs;
    v5->_catalogIDs = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v34 = getVNDocumentObservationClass_softClass;
    v48 = getVNDocumentObservationClass_softClass;
    v49[0] = v33;
    if (!getVNDocumentObservationClass_softClass)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __getVNDocumentObservationClass_block_invoke;
      v44[3] = &unk_1E8342DE0;
      v44[4] = &v45;
      __getVNDocumentObservationClass_block_invoke(v44);
      v34 = v46[3];
    }

    v35 = v34;
    _Block_object_dispose(&v45, 8);
    v49[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v37 = [v32 setWithArray:v36];

    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"DocumentObservations"];
    documentObservations = v5->_documentObservations;
    v5->_documentObservations = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EngagementSuggestionType"];
    engagementSuggestionType = v5->_engagementSuggestionType;
    v5->_engagementSuggestionType = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIVisualSearchRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_gatingResultItems forKey:{@"GatingResultItems", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_gatingPayload forKey:@"GatingPayload"];
  [coderCopy encodeObject:self->_queryID forKey:@"QueryID"];
  [coderCopy encodeObject:self->_uiScale forKey:@"UIScale"];
  [coderCopy encodeObject:self->_location forKey:@"Location"];
  [coderCopy encodeObject:self->_imageURL forKey:@"ImageURL"];
  [coderCopy encodeObject:self->_referralURL forKey:@"ReferralURL"];
  [coderCopy encodeObject:self->_imageType forKey:@"ImageType"];
  [coderCopy encodeObject:self->_catalogIDs forKey:@"CatalogIDs"];
  [coderCopy encodeObject:self->_featureIdentifier forKey:@"FeatureIdentifier"];
  [coderCopy encodeObject:self->_documentObservations forKey:@"DocumentObservations"];
  [coderCopy encodeObject:self->_engagementSuggestionType forKey:@"EngagementSuggestionType"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"gatingResultItems: %@, ", self->_gatingResultItems];
  [string appendFormat:@"gatingPayload: %@, ", self->_gatingPayload];
  if (self->_queryID)
  {
    [string appendFormat:@"queryID: %@, ", self->_queryID];
  }

  if (self->_uiScale)
  {
    [string appendFormat:@"uiScale: %@, ", self->_uiScale];
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

  if (self->_catalogIDs)
  {
    [string appendFormat:@"catalogIDs: %@, ", self->_catalogIDs];
  }

  if (self->_featureIdentifier)
  {
    [string appendFormat:@"featureIdentifier: %@, ", self->_featureIdentifier];
  }

  if (self->_documentObservations)
  {
    [string appendFormat:@"documentObservations: %@, ", self->_documentObservations];
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