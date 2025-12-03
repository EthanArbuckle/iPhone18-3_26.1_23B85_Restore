@interface ICThumbnailDescription
- (ICThumbnailDescription)initWithConfiguration:(id)configuration;
- (int64_t)preferredContentMode;
@end

@implementation ICThumbnailDescription

- (ICThumbnailDescription)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = ICThumbnailDescription;
  v6 = [(ICThumbnailDescription *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = [MEMORY[0x1E695DF00] now];
    creationDate = v7->_creationDate;
    v7->_creationDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    associatedObjectIdentifier = [configurationCopy associatedObjectIdentifier];
    v12 = [v10 ic_setFromNonNilObject:associatedObjectIdentifier];
    associatedObjectIdentifiers = v7->_associatedObjectIdentifiers;
    v7->_associatedObjectIdentifiers = v12;
  }

  return v7;
}

- (int64_t)preferredContentMode
{
  imageScaling = [(ICThumbnailDescription *)self imageScaling];
  v3 = 1;
  if (imageScaling != 2)
  {
    v3 = 2;
  }

  if (imageScaling)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

@end