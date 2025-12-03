@interface MULinkMetadataActivityProvider
+ (id)activityProviderFromDataProvider:(id)provider;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (void)registerLinkMetadata:(id)metadata;
@end

@implementation MULinkMetadataActivityProvider

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
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

- (void)registerLinkMetadata:(id)metadata
{
  v4 = _Block_copy(metadata);
  linkMetadataBlock = self->_linkMetadataBlock;
  self->_linkMetadataBlock = v4;

  MEMORY[0x1EEE66BB8](v4, linkMetadataBlock);
}

+ (id)activityProviderFromDataProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_alloc_init(MULinkMetadataActivityProvider);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MULinkMetadataActivityProvider_activityProviderFromDataProvider___block_invoke;
  v7[3] = &unk_1E8218B50;
  v8 = providerCopy;
  v5 = providerCopy;
  [(MULinkMetadataActivityProvider *)v4 registerLinkMetadata:v7];

  return v4;
}

@end