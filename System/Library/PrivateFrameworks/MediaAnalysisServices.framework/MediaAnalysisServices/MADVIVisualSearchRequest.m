@interface MADVIVisualSearchRequest
- (MADVIVisualSearchRequest)initWithCoder:(id)a3;
- (MADVIVisualSearchRequest)initWithGatingResultItems:(id)a3 payload:(id)a4 documentObservations:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchRequest

- (MADVIVisualSearchRequest)initWithGatingResultItems:(id)a3 payload:(id)a4 documentObservations:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADVIVisualSearchRequest;
  v12 = [(MADVIVisualSearchRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_gatingResultItems, a3);
    objc_storeStrong(&v13->_gatingPayload, a4);
    objc_storeStrong(&v13->_documentObservations, a5);
  }

  return v13;
}

- (MADVIVisualSearchRequest)initWithCoder:(id)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = MADVIVisualSearchRequest;
  v5 = [(MADRequest *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"GatingResultItems"];
    gatingResultItems = v5->_gatingResultItems;
    v5->_gatingResultItems = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GatingPayload"];
    gatingPayload = v5->_gatingPayload;
    v5->_gatingPayload = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QueryID"];
    queryID = v5->_queryID;
    v5->_queryID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIScale"];
    uiScale = v5->_uiScale;
    v5->_uiScale = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    location = v5->_location;
    v5->_location = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReferralURL"];
    referralURL = v5->_referralURL;
    v5->_referralURL = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v23;

    v25 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v27 = [v25 setWithArray:v26];

    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"CatalogIDs"];
    catalogIDs = v5->_catalogIDs;
    v5->_catalogIDs = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
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

    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"DocumentObservations"];
    documentObservations = v5->_documentObservations;
    v5->_documentObservations = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EngagementSuggestionType"];
    engagementSuggestionType = v5->_engagementSuggestionType;
    v5->_engagementSuggestionType = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIVisualSearchRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_gatingResultItems forKey:{@"GatingResultItems", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_gatingPayload forKey:@"GatingPayload"];
  [v4 encodeObject:self->_queryID forKey:@"QueryID"];
  [v4 encodeObject:self->_uiScale forKey:@"UIScale"];
  [v4 encodeObject:self->_location forKey:@"Location"];
  [v4 encodeObject:self->_imageURL forKey:@"ImageURL"];
  [v4 encodeObject:self->_referralURL forKey:@"ReferralURL"];
  [v4 encodeObject:self->_imageType forKey:@"ImageType"];
  [v4 encodeObject:self->_catalogIDs forKey:@"CatalogIDs"];
  [v4 encodeObject:self->_featureIdentifier forKey:@"FeatureIdentifier"];
  [v4 encodeObject:self->_documentObservations forKey:@"DocumentObservations"];
  [v4 encodeObject:self->_engagementSuggestionType forKey:@"EngagementSuggestionType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"gatingResultItems: %@, ", self->_gatingResultItems];
  [v3 appendFormat:@"gatingPayload: %@, ", self->_gatingPayload];
  if (self->_queryID)
  {
    [v3 appendFormat:@"queryID: %@, ", self->_queryID];
  }

  if (self->_uiScale)
  {
    [v3 appendFormat:@"uiScale: %@, ", self->_uiScale];
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

  if (self->_catalogIDs)
  {
    [v3 appendFormat:@"catalogIDs: %@, ", self->_catalogIDs];
  }

  if (self->_featureIdentifier)
  {
    [v3 appendFormat:@"featureIdentifier: %@, ", self->_featureIdentifier];
  }

  if (self->_documentObservations)
  {
    [v3 appendFormat:@"documentObservations: %@, ", self->_documentObservations];
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