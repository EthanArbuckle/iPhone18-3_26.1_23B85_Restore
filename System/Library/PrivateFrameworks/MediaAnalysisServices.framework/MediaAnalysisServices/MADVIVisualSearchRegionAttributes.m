@interface MADVIVisualSearchRegionAttributes
- (MADVIVisualSearchRegionAttributes)initWithCoder:(id)a3;
- (MADVIVisualSearchRegionAttributes)initWithDomain:(id)a3 knowledgeGraphID:(id)a4 title:(id)a5 thumbnailURL:(id)a6 thumbnailAspectRatio:(float)a7 shortDescription:(id)a8 detailedDescription:(id)a9 webURL:(id)a10 knowledgeProperties:(id)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchRegionAttributes

- (MADVIVisualSearchRegionAttributes)initWithDomain:(id)a3 knowledgeGraphID:(id)a4 title:(id)a5 thumbnailURL:(id)a6 thumbnailAspectRatio:(float)a7 shortDescription:(id)a8 detailedDescription:(id)a9 webURL:(id)a10 knowledgeProperties:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a8;
  v24 = a9;
  v19 = a10;
  v20 = a11;
  v30.receiver = self;
  v30.super_class = MADVIVisualSearchRegionAttributes;
  v21 = [(MADVIVisualSearchRegionAttributes *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_domain, a3);
    objc_storeStrong(&v22->_knowledgeGraphID, a4);
    objc_storeStrong(&v22->_title, a5);
    objc_storeStrong(&v22->_thumbnailURL, a6);
    v22->_thumbnailAspectRatio = a7;
    objc_storeStrong(&v22->_shortDescription, a8);
    objc_storeStrong(&v22->_detailedDescription, a9);
    objc_storeStrong(&v22->_webURL, a10);
    objc_storeStrong(&v22->_knowledgeProperties, a11);
  }

  return v22;
}

- (MADVIVisualSearchRegionAttributes)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MADVIVisualSearchRegionAttributes;
  v5 = [(MADVIVisualSearchRegionAttributes *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KnowledgeGraphID"];
    knowledgeGraphID = v5->_knowledgeGraphID;
    v5->_knowledgeGraphID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ThumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v12;

    [v4 decodeFloatForKey:@"ThumbnailAspectRatio"];
    v5->_thumbnailAspectRatio = v14;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShortDescription"];
    shortDescription = v5->_shortDescription;
    v5->_shortDescription = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DetailedDescription"];
    detailedDescription = v5->_detailedDescription;
    v5->_detailedDescription = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebURL"];
    webURL = v5->_webURL;
    v5->_webURL = v19;

    v21 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v23 = [v21 setWithArray:v22];

    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"KnowledgeProperties"];
    knowledgeProperties = v5->_knowledgeProperties;
    v5->_knowledgeProperties = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ThirdPartyObject"];
    thirdPartyObject = v5->_thirdPartyObject;
    v5->_thirdPartyObject = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v6 = a3;
  [v6 encodeObject:domain forKey:@"Domain"];
  [v6 encodeObject:self->_knowledgeGraphID forKey:@"KnowledgeGraphID"];
  [v6 encodeObject:self->_title forKey:@"Title"];
  [v6 encodeObject:self->_thumbnailURL forKey:@"ThumbnailURL"];
  *&v5 = self->_thumbnailAspectRatio;
  [v6 encodeFloat:@"ThumbnailAspectRatio" forKey:v5];
  [v6 encodeObject:self->_shortDescription forKey:@"ShortDescription"];
  [v6 encodeObject:self->_detailedDescription forKey:@"DetailedDescription"];
  [v6 encodeObject:self->_webURL forKey:@"WebURL"];
  [v6 encodeObject:self->_knowledgeProperties forKey:@"KnowledgeProperties"];
  [v6 encodeObject:self->_thirdPartyObject forKey:@"ThirdPartyObject"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"domain: '%@', ", self->_domain];
  [v3 appendFormat:@"knowledgeGraphID: '%@', ", self->_knowledgeGraphID];
  [v3 appendFormat:@"title: '%@', ", self->_title];
  [v3 appendFormat:@"thumbnailURL: '%@', ", self->_thumbnailURL];
  [v3 appendFormat:@"thumbnailAspectRatio: %0.2f, ", self->_thumbnailAspectRatio];
  [v3 appendFormat:@"shortDescription: '%@', ", self->_shortDescription];
  [v3 appendFormat:@"detailedDescription: '%@', ", self->_detailedDescription];
  [v3 appendFormat:@"webURL: '%@', ", self->_webURL];
  [v3 appendFormat:@"knowledgeProperties: %@", self->_knowledgeProperties];
  if (self->_thirdPartyObject)
  {
    [v3 appendFormat:@", thirdPartyObject: %@", self->_thirdPartyObject];
  }

  [v3 appendString:@">"];

  return v3;
}

@end