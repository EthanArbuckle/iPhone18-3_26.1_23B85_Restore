@interface MADVIVisualSearchThirdPartyObject
- (MADVIVisualSearchThirdPartyObject)initWithCoder:(id)a3;
- (MADVIVisualSearchThirdPartyObject)initWithObjectIdentifier:(id)a3 imageURL:(id)a4 thumbnailURL:(id)a5 metadata:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchThirdPartyObject

- (MADVIVisualSearchThirdPartyObject)initWithObjectIdentifier:(id)a3 imageURL:(id)a4 thumbnailURL:(id)a5 metadata:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MADVIVisualSearchThirdPartyObject;
  v15 = [(MADVIVisualSearchThirdPartyObject *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objectIdentifier, a3);
    objc_storeStrong(&v16->_imageURL, a4);
    objc_storeStrong(&v16->_thumbnailURL, a5);
    objc_storeStrong(&v16->_metadata, a6);
  }

  return v16;
}

- (MADVIVisualSearchThirdPartyObject)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADVIVisualSearchThirdPartyObject;
  v5 = [(MADVIVisualSearchThirdPartyObject *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ObjectIdentifier"];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ThumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objectIdentifier = self->_objectIdentifier;
  v5 = a3;
  [v5 encodeObject:objectIdentifier forKey:@"ObjectIdentifier"];
  [v5 encodeObject:self->_imageURL forKey:@"ImageURL"];
  [v5 encodeObject:self->_thumbnailURL forKey:@"ThumbnailURL"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"objectIdentifier: '%@'", self->_objectIdentifier];
  if (self->_imageURL)
  {
    [v3 appendFormat:@", imageURL: '%@'", self->_imageURL];
  }

  if (self->_thumbnailURL)
  {
    [v3 appendFormat:@", thumbnailURL: '%@'", self->_thumbnailURL];
  }

  if (self->_metadata)
  {
    [v3 appendFormat:@", metadata: '%@'", self->_metadata];
  }

  [v3 appendString:@">"];

  return v3;
}

@end