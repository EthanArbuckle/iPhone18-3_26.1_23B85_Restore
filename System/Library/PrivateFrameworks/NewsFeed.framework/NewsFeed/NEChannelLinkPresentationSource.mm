@interface NEChannelLinkPresentationSource
- (LPLinkMetadata)linkMetadata;
- (NEChannelLinkPresentationSource)initWithChannel:(id)channel;
@end

@implementation NEChannelLinkPresentationSource

- (NEChannelLinkPresentationSource)initWithChannel:(id)channel
{
  channelCopy = channel;
  v13.receiver = self;
  v13.super_class = NEChannelLinkPresentationSource;
  v5 = [(NEChannelLinkPresentationSource *)&v13 init];
  if (v5)
  {
    name = [channelCopy name];
    title = v5->_title;
    v5->_title = name;

    v8 = MEMORY[0x1E695DFF8];
    identifier = [channelCopy identifier];
    v10 = [v8 nss_NewsURLForTagID:identifier];
    url = v5->_url;
    v5->_url = v10;
  }

  return v5;
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [NELinkMetadataSource alloc];
  title = [(NEChannelLinkPresentationSource *)self title];
  v5 = [(NEChannelLinkPresentationSource *)self url];
  v6 = [(NELinkMetadataSource *)v3 initWithTitle:title url:v5 image:0];

  linkMetadata = [(NELinkMetadataSource *)v6 linkMetadata];

  return linkMetadata;
}

@end