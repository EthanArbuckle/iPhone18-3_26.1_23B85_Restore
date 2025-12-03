@interface NESportsEventLinkPresentationSource
+ (id)iconItemProviderForSportsEvent:(id)event tagImageProvider:(id)provider;
+ (id)imageItemProviderForSportsEvent:(id)event tagImageProvider:(id)provider;
+ (id)urlFromSportsEvent:(id)event;
- (LPLinkMetadata)linkMetadata;
- (NESportsEventLinkPresentationSource)initWithSportsEvent:(id)event tagImageProvider:(id)provider;
- (NESportsEventLinkPresentationSource)initWithTitle:(id)title url:(id)url sportsEvent:(id)event tagImageProvider:(id)provider;
@end

@implementation NESportsEventLinkPresentationSource

- (NESportsEventLinkPresentationSource)initWithSportsEvent:(id)event tagImageProvider:(id)provider
{
  providerCopy = provider;
  eventCopy = event;
  v8 = [NESportsEventLinkPresentationSource titleFromSportsEvent:eventCopy];
  v9 = [NESportsEventLinkPresentationSource urlFromSportsEvent:eventCopy];
  v10 = [(NESportsEventLinkPresentationSource *)self initWithTitle:v8 url:v9 sportsEvent:eventCopy tagImageProvider:providerCopy];

  return v10;
}

- (NESportsEventLinkPresentationSource)initWithTitle:(id)title url:(id)url sportsEvent:(id)event tagImageProvider:(id)provider
{
  titleCopy = title;
  urlCopy = url;
  eventCopy = event;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = NESportsEventLinkPresentationSource;
  v15 = [(NESportsEventLinkPresentationSource *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_url, url);
    v17 = [NESportsEventLinkPresentationSource imageItemProviderForSportsEvent:eventCopy tagImageProvider:providerCopy];
    linkPresentationImageProvider = v16->_linkPresentationImageProvider;
    v16->_linkPresentationImageProvider = v17;

    v19 = [NESportsEventLinkPresentationSource iconItemProviderForSportsEvent:eventCopy tagImageProvider:providerCopy];
    linkPresentationIconProvider = v16->_linkPresentationIconProvider;
    v16->_linkPresentationIconProvider = v19;
  }

  return v16;
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [NELinkMetadataSource alloc];
  title = [(NESportsEventLinkPresentationSource *)self title];
  v5 = [(NESportsEventLinkPresentationSource *)self url];
  linkPresentationImageProvider = [(NESportsEventLinkPresentationSource *)self linkPresentationImageProvider];
  linkPresentationIconProvider = [(NESportsEventLinkPresentationSource *)self linkPresentationIconProvider];
  v8 = [(NELinkMetadataSource *)v3 initWithTitle:title url:v5 imageProvider:linkPresentationImageProvider iconProvider:linkPresentationIconProvider];

  linkMetadata = [(NELinkMetadataSource *)v8 linkMetadata];

  return linkMetadata;
}

+ (id)urlFromSportsEvent:(id)event
{
  v3 = MEMORY[0x1E695DFF8];
  identifier = [event identifier];
  v5 = [v3 nss_NewsURLForTagID:identifier];

  return v5;
}

+ (id)imageItemProviderForSportsEvent:(id)event tagImageProvider:(id)provider
{
  eventCopy = event;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__NESportsEventLinkPresentationSource_imageItemProviderForSportsEvent_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = providerCopy;
  v14 = eventCopy;
  v9 = eventCopy;
  v10 = providerCopy;
  [v7 registerItemForTypeIdentifier:identifier loadHandler:v12];

  return v7;
}

void __88__NESportsEventLinkPresentationSource_imageItemProviderForSportsEvent_tagImageProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__NESportsEventLinkPresentationSource_imageItemProviderForSportsEvent_tagImageProvider___block_invoke_2;
  v7[3] = &unk_1E84CD100;
  v8 = v3;
  v6 = v3;
  [v5 createShareSportsEventImageFor:v4 size:v7 logoWidth:260.0 completion:{150.0, 67.0}];
}

void __88__NESportsEventLinkPresentationSource_imageItemProviderForSportsEvent_tagImageProvider___block_invoke_2(uint64_t a1, UIImage *image)
{
  v3 = UIImagePNGRepresentation(image);
  (*(*(a1 + 32) + 16))();
}

+ (id)iconItemProviderForSportsEvent:(id)event tagImageProvider:(id)provider
{
  eventCopy = event;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__NESportsEventLinkPresentationSource_iconItemProviderForSportsEvent_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = providerCopy;
  v14 = eventCopy;
  v9 = eventCopy;
  v10 = providerCopy;
  [v7 registerItemForTypeIdentifier:identifier loadHandler:v12];

  return v7;
}

void __87__NESportsEventLinkPresentationSource_iconItemProviderForSportsEvent_tagImageProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__NESportsEventLinkPresentationSource_iconItemProviderForSportsEvent_tagImageProvider___block_invoke_2;
  v7[3] = &unk_1E84CD100;
  v8 = v3;
  v6 = v3;
  [v5 createShareSportsEventImageFor:v4 size:v7 logoWidth:40.0 completion:{40.0, 10.0}];
}

void __87__NESportsEventLinkPresentationSource_iconItemProviderForSportsEvent_tagImageProvider___block_invoke_2(uint64_t a1, UIImage *image)
{
  v3 = UIImagePNGRepresentation(image);
  (*(*(a1 + 32) + 16))();
}

@end