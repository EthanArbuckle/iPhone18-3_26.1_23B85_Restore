@interface NESportsTagLinkPresentationSource
+ (id)iconItemProviderForSportsTag:(id)tag tagImageProvider:(id)provider;
+ (id)imageItemProviderForSportsTag:(id)tag tagImageProvider:(id)provider;
- (LPLinkMetadata)linkMetadata;
- (NESportsTagLinkPresentationSource)initWithSportsTag:(id)tag tagImageProvider:(id)provider;
- (NESportsTagLinkPresentationSource)initWithTitle:(id)title url:(id)url sportsTag:(id)tag tagImageProvider:(id)provider;
@end

@implementation NESportsTagLinkPresentationSource

- (NESportsTagLinkPresentationSource)initWithSportsTag:(id)tag tagImageProvider:(id)provider
{
  providerCopy = provider;
  tagCopy = tag;
  name = [tagCopy name];
  v9 = MEMORY[0x1E695DFF8];
  identifier = [tagCopy identifier];
  v11 = [v9 nss_NewsURLForTagID:identifier];
  v12 = [(NESportsTagLinkPresentationSource *)self initWithTitle:name url:v11 sportsTag:tagCopy tagImageProvider:providerCopy];

  return v12;
}

- (NESportsTagLinkPresentationSource)initWithTitle:(id)title url:(id)url sportsTag:(id)tag tagImageProvider:(id)provider
{
  titleCopy = title;
  urlCopy = url;
  tagCopy = tag;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = NESportsTagLinkPresentationSource;
  v15 = [(NESportsTagLinkPresentationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sportsTag, tag);
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_url, url);
    objc_storeStrong(&v16->_tagImageProvider, provider);
  }

  return v16;
}

- (LPLinkMetadata)linkMetadata
{
  title = [(NESportsTagLinkPresentationSource *)self title];
  v4 = [(NESportsTagLinkPresentationSource *)self url];
  sportsTag = [(NESportsTagLinkPresentationSource *)self sportsTag];
  isMySports = [sportsTag isMySports];

  v7 = [NELinkMetadataSource alloc];
  if (isMySports)
  {
    tagImageProvider = [(NESportsTagLinkPresentationSource *)self tagImageProvider];
    sportsTag2 = [(NESportsTagLinkPresentationSource *)self sportsTag];
    v10 = [tagImageProvider mySportsShareImageFor:sportsTag2];
    v11 = [(NELinkMetadataSource *)v7 initWithTitle:title url:v4 image:v10];
  }

  else
  {
    tagImageProvider = [(NESportsTagLinkPresentationSource *)self sportsTag];
    sportsTag2 = [(NESportsTagLinkPresentationSource *)self tagImageProvider];
    v10 = [NESportsTagLinkPresentationSource imageItemProviderForSportsTag:tagImageProvider tagImageProvider:sportsTag2];
    sportsTag3 = [(NESportsTagLinkPresentationSource *)self sportsTag];
    tagImageProvider2 = [(NESportsTagLinkPresentationSource *)self tagImageProvider];
    v14 = [NESportsTagLinkPresentationSource iconItemProviderForSportsTag:sportsTag3 tagImageProvider:tagImageProvider2];
    v11 = [(NELinkMetadataSource *)v7 initWithTitle:title url:v4 imageProvider:v10 iconProvider:v14];
  }

  linkMetadata = [(NELinkMetadataSource *)v11 linkMetadata];

  return linkMetadata;
}

+ (id)imageItemProviderForSportsTag:(id)tag tagImageProvider:(id)provider
{
  tagCopy = tag;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__NESportsTagLinkPresentationSource_imageItemProviderForSportsTag_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = providerCopy;
  v14 = tagCopy;
  v9 = tagCopy;
  v10 = providerCopy;
  [v7 registerItemForTypeIdentifier:identifier loadHandler:v12];

  return v7;
}

void __84__NESportsTagLinkPresentationSource_imageItemProviderForSportsTag_tagImageProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__NESportsTagLinkPresentationSource_imageItemProviderForSportsTag_tagImageProvider___block_invoke_2;
  v7[3] = &unk_1E84CD100;
  v8 = v3;
  v6 = v3;
  [v5 createSportsShareImageFor:v4 completion:v7];
}

void __84__NESportsTagLinkPresentationSource_imageItemProviderForSportsTag_tagImageProvider___block_invoke_2(uint64_t a1, UIImage *image)
{
  v3 = UIImagePNGRepresentation(image);
  (*(*(a1 + 32) + 16))();
}

+ (id)iconItemProviderForSportsTag:(id)tag tagImageProvider:(id)provider
{
  tagCopy = tag;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__NESportsTagLinkPresentationSource_iconItemProviderForSportsTag_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = providerCopy;
  v14 = tagCopy;
  v9 = tagCopy;
  v10 = providerCopy;
  [v7 registerItemForTypeIdentifier:identifier loadHandler:v12];

  return v7;
}

void __83__NESportsTagLinkPresentationSource_iconItemProviderForSportsTag_tagImageProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__NESportsTagLinkPresentationSource_iconItemProviderForSportsTag_tagImageProvider___block_invoke_2;
  v7[3] = &unk_1E84CD100;
  v8 = v3;
  v6 = v3;
  [v5 createSportsShareImageFor:v4 completion:v7];
}

void __83__NESportsTagLinkPresentationSource_iconItemProviderForSportsTag_tagImageProvider___block_invoke_2(uint64_t a1, UIImage *image)
{
  v3 = UIImagePNGRepresentation(image);
  (*(*(a1 + 32) + 16))();
}

@end