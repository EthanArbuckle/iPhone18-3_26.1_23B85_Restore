@interface PKAddPassMetadataPreview
+ (id)previewWithPassThumbnail:(CGImage *)thumbnail localizedDescription:(id)description;
- (PKAddPassMetadataPreview)initWithCoder:(id)coder;
- (PKAddPassMetadataPreview)initWithPassThumbnail:(CGImage *)thumbnail localizedDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setPassThumbnailImage:(CGImage *)image;
@end

@implementation PKAddPassMetadataPreview

+ (id)previewWithPassThumbnail:(CGImage *)thumbnail localizedDescription:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithPassThumbnail:thumbnail localizedDescription:descriptionCopy];

  return v6;
}

- (PKAddPassMetadataPreview)initWithPassThumbnail:(CGImage *)thumbnail localizedDescription:(id)description
{
  descriptionCopy = description;
  v8 = [(PKAddPassMetadataPreview *)self init];
  v9 = v8;
  if (v8)
  {
    [(PKAddPassMetadataPreview *)v8 setPassThumbnailImage:thumbnail];
    objc_storeStrong(&v9->_localizedDescription, description);
  }

  return v9;
}

- (void)setPassThumbnailImage:(CGImage *)image
{
  if (image)
  {
    v4 = [[PKImage alloc] initWithCGImage:image scale:1 orientation:PKScreenScale()];
  }

  else
  {
    v4 = 0;
  }

  pkPassThumbnailImage = self->_pkPassThumbnailImage;
  self->_pkPassThumbnailImage = v4;
}

- (PKAddPassMetadataPreview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAddPassMetadataPreview;
  v5 = [(PKAddPassMetadataPreview *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImage"];
    pkPassThumbnailImage = v5->_pkPassThumbnailImage;
    v5->_pkPassThumbnailImage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImageURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pkPassThumbnailImage = self->_pkPassThumbnailImage;
  coderCopy = coder;
  [coderCopy encodeObject:pkPassThumbnailImage forKey:@"thumbnailImage"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_thumbnailURL forKey:@"thumbnailImageURL"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKAddPassMetadataPreview *)self _extendableDescription:v3];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)_extendableDescription:(id)description
{
  localizedDescription = self->_localizedDescription;
  descriptionCopy = description;
  [descriptionCopy appendFormat:@"localizedDescription: '%@'; ", localizedDescription];
  [descriptionCopy appendFormat:@"thumbnailURL: '%@'; ", self->_thumbnailURL];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_pkPassThumbnailImage);
  v5 = [(NSString *)self->_localizedDescription copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  v7 = [(NSURL *)self->_thumbnailURL copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  return v4;
}

@end