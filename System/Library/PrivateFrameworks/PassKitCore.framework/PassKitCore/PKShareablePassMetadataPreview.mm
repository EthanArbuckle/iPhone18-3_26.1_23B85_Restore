@interface PKShareablePassMetadataPreview
+ (PKShareablePassMetadataPreview)previewWithTemplateIdentifier:(NSString *)templateIdentifier;
- (PKShareablePassMetadataPreview)initWithCoder:(id)a3;
- (PKShareablePassMetadataPreview)initWithTemplateIdentifier:(NSString *)templateIdentifier;
- (id)_initWithPassThumbnail:(CGImage *)a3 localizedDescription:(id)a4 provisioningTemplateIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_extendableDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithPassThumbnail:(CGImage *)a3 localizedDescription:(id)a4 provisioningTemplateIdentifier:(id)a5
{
  v9 = a5;
  v10 = [(PKAddPassMetadataPreview *)self initWithPassThumbnail:a3 localizedDescription:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_provisioningTemplateIdentifier, a5);
  }

  return v11;
}

- (PKShareablePassMetadataPreview)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKShareablePassMetadataPreview;
  v5 = [(PKAddPassMetadataPreview *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerDisplayName"];
    ownerDisplayName = v5->_ownerDisplayName;
    v5->_ownerDisplayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTemplateIdentifier"];
    provisioningTemplateIdentifier = v5->_provisioningTemplateIdentifier;
    v5->_provisioningTemplateIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKShareablePassMetadataPreview;
  v4 = a3;
  [(PKAddPassMetadataPreview *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_ownerDisplayName forKey:{@"ownerDisplayName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_provisioningTemplateIdentifier forKey:@"provisioningTemplateIdentifier"];
}

- (void)_extendableDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKShareablePassMetadataPreview;
  v4 = a3;
  [(PKAddPassMetadataPreview *)&v5 _extendableDescription:v4];
  [v4 appendFormat:@"ownerDisplayName: '%@'; ", self->_ownerDisplayName];
  [v4 appendFormat:@"provisioningTemplateIdentifier: '%@'; ", self->_provisioningTemplateIdentifier];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = PKShareablePassMetadataPreview;
  v4 = [(PKAddPassMetadataPreview *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_ownerDisplayName copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_provisioningTemplateIdentifier copy];
  v8 = v4[5];
  v4[5] = v7;

  return v4;
}

@end