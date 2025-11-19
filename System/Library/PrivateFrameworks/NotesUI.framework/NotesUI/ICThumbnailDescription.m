@interface ICThumbnailDescription
- (ICThumbnailDescription)initWithConfiguration:(id)a3;
- (int64_t)preferredContentMode;
@end

@implementation ICThumbnailDescription

- (ICThumbnailDescription)initWithConfiguration:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ICThumbnailDescription;
  v6 = [(ICThumbnailDescription *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [MEMORY[0x1E695DF00] now];
    creationDate = v7->_creationDate;
    v7->_creationDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = [v5 associatedObjectIdentifier];
    v12 = [v10 ic_setFromNonNilObject:v11];
    associatedObjectIdentifiers = v7->_associatedObjectIdentifiers;
    v7->_associatedObjectIdentifiers = v12;
  }

  return v7;
}

- (int64_t)preferredContentMode
{
  v2 = [(ICThumbnailDescription *)self imageScaling];
  v3 = 1;
  if (v2 != 2)
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

@end