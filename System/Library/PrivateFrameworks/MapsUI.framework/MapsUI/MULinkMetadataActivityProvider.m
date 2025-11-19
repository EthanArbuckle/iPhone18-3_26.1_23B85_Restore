@interface MULinkMetadataActivityProvider
+ (id)activityProviderFromDataProvider:(id)a3;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (void)registerLinkMetadata:(id)a3;
@end

@implementation MULinkMetadataActivityProvider

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = a3;
  cachedLinkMetadata = self->_cachedLinkMetadata;
  if (!cachedLinkMetadata)
  {
    linkMetadataBlock = self->_linkMetadataBlock;
    if (linkMetadataBlock)
    {
      v7 = linkMetadataBlock[2]();
      v8 = self->_cachedLinkMetadata;
      self->_cachedLinkMetadata = v7;

      cachedLinkMetadata = self->_cachedLinkMetadata;
    }

    else
    {
      cachedLinkMetadata = 0;
    }
  }

  v9 = cachedLinkMetadata;

  return v9;
}

- (void)registerLinkMetadata:(id)a3
{
  v4 = _Block_copy(a3);
  linkMetadataBlock = self->_linkMetadataBlock;
  self->_linkMetadataBlock = v4;

  MEMORY[0x1EEE66BB8](v4, linkMetadataBlock);
}

+ (id)activityProviderFromDataProvider:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MULinkMetadataActivityProvider);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MULinkMetadataActivityProvider_activityProviderFromDataProvider___block_invoke;
  v7[3] = &unk_1E8218B50;
  v8 = v3;
  v5 = v3;
  [(MULinkMetadataActivityProvider *)v4 registerLinkMetadata:v7];

  return v4;
}

@end