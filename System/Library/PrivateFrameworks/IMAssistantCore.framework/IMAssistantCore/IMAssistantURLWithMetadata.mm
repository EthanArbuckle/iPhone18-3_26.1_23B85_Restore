@interface IMAssistantURLWithMetadata
- (IMAssistantURLWithMetadata)initWithURL:(id)l metadata:(id)metadata;
@end

@implementation IMAssistantURLWithMetadata

- (IMAssistantURLWithMetadata)initWithURL:(id)l metadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = IMAssistantURLWithMetadata;
  v9 = [(IMAssistantURLWithMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

@end