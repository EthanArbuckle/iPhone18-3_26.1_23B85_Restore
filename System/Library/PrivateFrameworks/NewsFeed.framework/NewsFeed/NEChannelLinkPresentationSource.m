@interface NEChannelLinkPresentationSource
- (LPLinkMetadata)linkMetadata;
- (NEChannelLinkPresentationSource)initWithChannel:(id)a3;
@end

@implementation NEChannelLinkPresentationSource

- (NEChannelLinkPresentationSource)initWithChannel:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEChannelLinkPresentationSource;
  v5 = [(NEChannelLinkPresentationSource *)&v13 init];
  if (v5)
  {
    v6 = [v4 name];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFF8];
    v9 = [v4 identifier];
    v10 = [v8 nss_NewsURLForTagID:v9];
    url = v5->_url;
    v5->_url = v10;
  }

  return v5;
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [NELinkMetadataSource alloc];
  v4 = [(NEChannelLinkPresentationSource *)self title];
  v5 = [(NEChannelLinkPresentationSource *)self url];
  v6 = [(NELinkMetadataSource *)v3 initWithTitle:v4 url:v5 image:0];

  v7 = [(NELinkMetadataSource *)v6 linkMetadata];

  return v7;
}

@end