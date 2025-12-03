@interface PKShareablePassMetadataPreview
+ (PKShareablePassMetadataPreview)previewWithTemplateIdentifier:(NSString *)templateIdentifier;
- (PKShareablePassMetadataPreview)initWithCoder:(id)coder;
- (PKShareablePassMetadataPreview)initWithTemplateIdentifier:(NSString *)templateIdentifier;
- (id)_initWithPassThumbnail:(CGImage *)thumbnail localizedDescription:(id)description provisioningTemplateIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKShareablePassMetadataPreview

+ (PKShareablePassMetadataPreview)previewWithTemplateIdentifier:(NSString *)templateIdentifier
{
  v3 = templateIdentifier;
  v4 = [[PKShareablePassMetadataPreview alloc] _initWithPassThumbnail:0 localizedDescription:0 provisioningTemplateIdentifier:v3];

  return v4;
}

- (PKShareablePassMetadataPreview)initWithTemplateIdentifier:(NSString *)templateIdentifier
{
  v4 = templateIdentifier;
  v5 = [[PKShareablePassMetadataPreview alloc] _initWithPassThumbnail:0 localizedDescription:0 provisioningTemplateIdentifier:v4];

  return v5;
}

- (id)_initWithPassThumbnail:(CGImage *)thumbnail localizedDescription:(id)description provisioningTemplateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = [(PKAddPassMetadataPreview *)self initWithPassThumbnail:thumbnail localizedDescription:description];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_provisioningTemplateIdentifier, identifier);
  }

  return v11;
}

- (PKShareablePassMetadataPreview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKShareablePassMetadataPreview;
  v5 = [(PKAddPassMetadataPreview *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerDisplayName"];
    ownerDisplayName = v5->_ownerDisplayName;
    v5->_ownerDisplayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTemplateIdentifier"];
    provisioningTemplateIdentifier = v5->_provisioningTemplateIdentifier;
    v5->_provisioningTemplateIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKShareablePassMetadataPreview;
  coderCopy = coder;
  [(PKAddPassMetadataPreview *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_ownerDisplayName forKey:{@"ownerDisplayName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_provisioningTemplateIdentifier forKey:@"provisioningTemplateIdentifier"];
}

- (void)_extendableDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKShareablePassMetadataPreview;
  descriptionCopy = description;
  [(PKAddPassMetadataPreview *)&v5 _extendableDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"ownerDisplayName: '%@'; ", self->_ownerDisplayName];
  [descriptionCopy appendFormat:@"provisioningTemplateIdentifier: '%@'; ", self->_provisioningTemplateIdentifier];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PKShareablePassMetadataPreview;
  v4 = [(PKAddPassMetadataPreview *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_ownerDisplayName copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_provisioningTemplateIdentifier copy];
  v8 = v4[5];
  v4[5] = v7;

  return v4;
}

@end