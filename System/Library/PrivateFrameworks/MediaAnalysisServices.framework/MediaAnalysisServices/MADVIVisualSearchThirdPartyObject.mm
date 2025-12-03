@interface MADVIVisualSearchThirdPartyObject
- (MADVIVisualSearchThirdPartyObject)initWithCoder:(id)coder;
- (MADVIVisualSearchThirdPartyObject)initWithObjectIdentifier:(id)identifier imageURL:(id)l thumbnailURL:(id)rL metadata:(id)metadata;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchThirdPartyObject

- (MADVIVisualSearchThirdPartyObject)initWithObjectIdentifier:(id)identifier imageURL:(id)l thumbnailURL:(id)rL metadata:(id)metadata
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  metadataCopy = metadata;
  v18.receiver = self;
  v18.super_class = MADVIVisualSearchThirdPartyObject;
  v15 = [(MADVIVisualSearchThirdPartyObject *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objectIdentifier, identifier);
    objc_storeStrong(&v16->_imageURL, l);
    objc_storeStrong(&v16->_thumbnailURL, rL);
    objc_storeStrong(&v16->_metadata, metadata);
  }

  return v16;
}

- (MADVIVisualSearchThirdPartyObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MADVIVisualSearchThirdPartyObject;
  v5 = [(MADVIVisualSearchThirdPartyObject *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectIdentifier"];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ThumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objectIdentifier = self->_objectIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:objectIdentifier forKey:@"ObjectIdentifier"];
  [coderCopy encodeObject:self->_imageURL forKey:@"ImageURL"];
  [coderCopy encodeObject:self->_thumbnailURL forKey:@"ThumbnailURL"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"objectIdentifier: '%@'", self->_objectIdentifier];
  if (self->_imageURL)
  {
    [string appendFormat:@", imageURL: '%@'", self->_imageURL];
  }

  if (self->_thumbnailURL)
  {
    [string appendFormat:@", thumbnailURL: '%@'", self->_thumbnailURL];
  }

  if (self->_metadata)
  {
    [string appendFormat:@", metadata: '%@'", self->_metadata];
  }

  [string appendString:@">"];

  return string;
}

@end