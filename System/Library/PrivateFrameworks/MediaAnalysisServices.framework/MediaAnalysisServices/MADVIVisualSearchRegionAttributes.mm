@interface MADVIVisualSearchRegionAttributes
- (MADVIVisualSearchRegionAttributes)initWithCoder:(id)coder;
- (MADVIVisualSearchRegionAttributes)initWithDomain:(id)domain knowledgeGraphID:(id)d title:(id)title thumbnailURL:(id)l thumbnailAspectRatio:(float)ratio shortDescription:(id)description detailedDescription:(id)detailedDescription webURL:(id)self0 knowledgeProperties:(id)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchRegionAttributes

- (MADVIVisualSearchRegionAttributes)initWithDomain:(id)domain knowledgeGraphID:(id)d title:(id)title thumbnailURL:(id)l thumbnailAspectRatio:(float)ratio shortDescription:(id)description detailedDescription:(id)detailedDescription webURL:(id)self0 knowledgeProperties:(id)self1
{
  domainCopy = domain;
  dCopy = d;
  titleCopy = title;
  lCopy = l;
  descriptionCopy = description;
  detailedDescriptionCopy = detailedDescription;
  rLCopy = rL;
  propertiesCopy = properties;
  v30.receiver = self;
  v30.super_class = MADVIVisualSearchRegionAttributes;
  v21 = [(MADVIVisualSearchRegionAttributes *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_domain, domain);
    objc_storeStrong(&v22->_knowledgeGraphID, d);
    objc_storeStrong(&v22->_title, title);
    objc_storeStrong(&v22->_thumbnailURL, l);
    v22->_thumbnailAspectRatio = ratio;
    objc_storeStrong(&v22->_shortDescription, description);
    objc_storeStrong(&v22->_detailedDescription, detailedDescription);
    objc_storeStrong(&v22->_webURL, rL);
    objc_storeStrong(&v22->_knowledgeProperties, properties);
  }

  return v22;
}

- (MADVIVisualSearchRegionAttributes)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MADVIVisualSearchRegionAttributes;
  v5 = [(MADVIVisualSearchRegionAttributes *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KnowledgeGraphID"];
    knowledgeGraphID = v5->_knowledgeGraphID;
    v5->_knowledgeGraphID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ThumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v12;

    [coderCopy decodeFloatForKey:@"ThumbnailAspectRatio"];
    v5->_thumbnailAspectRatio = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShortDescription"];
    shortDescription = v5->_shortDescription;
    v5->_shortDescription = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DetailedDescription"];
    detailedDescription = v5->_detailedDescription;
    v5->_detailedDescription = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebURL"];
    webURL = v5->_webURL;
    v5->_webURL = v19;

    v21 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v23 = [v21 setWithArray:v22];

    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"KnowledgeProperties"];
    knowledgeProperties = v5->_knowledgeProperties;
    v5->_knowledgeProperties = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ThirdPartyObject"];
    thirdPartyObject = v5->_thirdPartyObject;
    v5->_thirdPartyObject = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"Domain"];
  [coderCopy encodeObject:self->_knowledgeGraphID forKey:@"KnowledgeGraphID"];
  [coderCopy encodeObject:self->_title forKey:@"Title"];
  [coderCopy encodeObject:self->_thumbnailURL forKey:@"ThumbnailURL"];
  *&v5 = self->_thumbnailAspectRatio;
  [coderCopy encodeFloat:@"ThumbnailAspectRatio" forKey:v5];
  [coderCopy encodeObject:self->_shortDescription forKey:@"ShortDescription"];
  [coderCopy encodeObject:self->_detailedDescription forKey:@"DetailedDescription"];
  [coderCopy encodeObject:self->_webURL forKey:@"WebURL"];
  [coderCopy encodeObject:self->_knowledgeProperties forKey:@"KnowledgeProperties"];
  [coderCopy encodeObject:self->_thirdPartyObject forKey:@"ThirdPartyObject"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"domain: '%@', ", self->_domain];
  [string appendFormat:@"knowledgeGraphID: '%@', ", self->_knowledgeGraphID];
  [string appendFormat:@"title: '%@', ", self->_title];
  [string appendFormat:@"thumbnailURL: '%@', ", self->_thumbnailURL];
  [string appendFormat:@"thumbnailAspectRatio: %0.2f, ", self->_thumbnailAspectRatio];
  [string appendFormat:@"shortDescription: '%@', ", self->_shortDescription];
  [string appendFormat:@"detailedDescription: '%@', ", self->_detailedDescription];
  [string appendFormat:@"webURL: '%@', ", self->_webURL];
  [string appendFormat:@"knowledgeProperties: %@", self->_knowledgeProperties];
  if (self->_thirdPartyObject)
  {
    [string appendFormat:@", thirdPartyObject: %@", self->_thirdPartyObject];
  }

  [string appendString:@">"];

  return string;
}

@end