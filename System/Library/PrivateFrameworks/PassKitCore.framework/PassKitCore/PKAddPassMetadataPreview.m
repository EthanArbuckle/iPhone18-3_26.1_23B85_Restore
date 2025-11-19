@interface PKAddPassMetadataPreview
+ (id)previewWithPassThumbnail:(CGImage *)a3 localizedDescription:(id)a4;
- (PKAddPassMetadataPreview)initWithCoder:(id)a3;
- (PKAddPassMetadataPreview)initWithPassThumbnail:(CGImage *)a3 localizedDescription:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_extendableDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPassThumbnailImage:(CGImage *)a3;
@end

@implementation PKAddPassMetadataPreview

+ (id)previewWithPassThumbnail:(CGImage *)a3 localizedDescription:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithPassThumbnail:a3 localizedDescription:v5];

  return v6;
}

- (PKAddPassMetadataPreview)initWithPassThumbnail:(CGImage *)a3 localizedDescription:(id)a4
{
  v7 = a4;
  v8 = [(PKAddPassMetadataPreview *)self init];
  v9 = v8;
  if (v8)
  {
    [(PKAddPassMetadataPreview *)v8 setPassThumbnailImage:a3];
    objc_storeStrong(&v9->_localizedDescription, a4);
  }

  return v9;
}

- (void)setPassThumbnailImage:(CGImage *)a3
{
  if (a3)
  {
    v4 = [[PKImage alloc] initWithCGImage:a3 scale:1 orientation:PKScreenScale()];
  }

  else
  {
    v4 = 0;
  }

  pkPassThumbnailImage = self->_pkPassThumbnailImage;
  self->_pkPassThumbnailImage = v4;
}

- (PKAddPassMetadataPreview)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAddPassMetadataPreview;
  v5 = [(PKAddPassMetadataPreview *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImage"];
    pkPassThumbnailImage = v5->_pkPassThumbnailImage;
    v5->_pkPassThumbnailImage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImageURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pkPassThumbnailImage = self->_pkPassThumbnailImage;
  v5 = a3;
  [v5 encodeObject:pkPassThumbnailImage forKey:@"thumbnailImage"];
  [v5 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v5 encodeObject:self->_thumbnailURL forKey:@"thumbnailImageURL"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKAddPassMetadataPreview *)self _extendableDescription:v3];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)_extendableDescription:(id)a3
{
  localizedDescription = self->_localizedDescription;
  v5 = a3;
  [v5 appendFormat:@"localizedDescription: '%@'; ", localizedDescription];
  [v5 appendFormat:@"thumbnailURL: '%@'; ", self->_thumbnailURL];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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