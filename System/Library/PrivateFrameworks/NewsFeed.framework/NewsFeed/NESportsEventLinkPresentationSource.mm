@interface NESportsEventLinkPresentationSource
+ (id)iconItemProviderForSportsEvent:(id)a3 tagImageProvider:(id)a4;
+ (id)imageItemProviderForSportsEvent:(id)a3 tagImageProvider:(id)a4;
+ (id)urlFromSportsEvent:(id)a3;
- (LPLinkMetadata)linkMetadata;
- (NESportsEventLinkPresentationSource)initWithSportsEvent:(id)a3 tagImageProvider:(id)a4;
- (NESportsEventLinkPresentationSource)initWithTitle:(id)a3 url:(id)a4 sportsEvent:(id)a5 tagImageProvider:(id)a6;
@end

@implementation NESportsEventLinkPresentationSource

- (NESportsEventLinkPresentationSource)initWithSportsEvent:(id)a3 tagImageProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NESportsEventLinkPresentationSource titleFromSportsEvent:v7];
  v9 = [NESportsEventLinkPresentationSource urlFromSportsEvent:v7];
  v10 = [(NESportsEventLinkPresentationSource *)self initWithTitle:v8 url:v9 sportsEvent:v7 tagImageProvider:v6];

  return v10;
}

- (NESportsEventLinkPresentationSource)initWithTitle:(id)a3 url:(id)a4 sportsEvent:(id)a5 tagImageProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = NESportsEventLinkPresentationSource;
  v15 = [(NESportsEventLinkPresentationSource *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_url, a4);
    v17 = [NESportsEventLinkPresentationSource imageItemProviderForSportsEvent:v13 tagImageProvider:v14];
    linkPresentationImageProvider = v16->_linkPresentationImageProvider;
    v16->_linkPresentationImageProvider = v17;

    v19 = [NESportsEventLinkPresentationSource iconItemProviderForSportsEvent:v13 tagImageProvider:v14];
    linkPresentationIconProvider = v16->_linkPresentationIconProvider;
    v16->_linkPresentationIconProvider = v19;
  }

  return v16;
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [NELinkMetadataSource alloc];
  v4 = [(NESportsEventLinkPresentationSource *)self title];
  v5 = [(NESportsEventLinkPresentationSource *)self url];
  v6 = [(NESportsEventLinkPresentationSource *)self linkPresentationImageProvider];
  v7 = [(NESportsEventLinkPresentationSource *)self linkPresentationIconProvider];
  v8 = [(NELinkMetadataSource *)v3 initWithTitle:v4 url:v5 imageProvider:v6 iconProvider:v7];

  v9 = [(NELinkMetadataSource *)v8 linkMetadata];

  return v9;
}

+ (id)urlFromSportsEvent:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [a3 identifier];
  v5 = [v3 nss_NewsURLForTagID:v4];

  return v5;
}

+ (id)imageItemProviderForSportsEvent:(id)a3 tagImageProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v8 = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__NESportsEventLinkPresentationSource_imageItemProviderForSportsEvent_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v7 registerItemForTypeIdentifier:v8 loadHandler:v12];

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

+ (id)iconItemProviderForSportsEvent:(id)a3 tagImageProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v8 = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__NESportsEventLinkPresentationSource_iconItemProviderForSportsEvent_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v7 registerItemForTypeIdentifier:v8 loadHandler:v12];

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