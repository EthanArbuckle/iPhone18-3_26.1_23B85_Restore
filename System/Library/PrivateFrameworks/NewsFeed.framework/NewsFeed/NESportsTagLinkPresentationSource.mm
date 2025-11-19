@interface NESportsTagLinkPresentationSource
+ (id)iconItemProviderForSportsTag:(id)a3 tagImageProvider:(id)a4;
+ (id)imageItemProviderForSportsTag:(id)a3 tagImageProvider:(id)a4;
- (LPLinkMetadata)linkMetadata;
- (NESportsTagLinkPresentationSource)initWithSportsTag:(id)a3 tagImageProvider:(id)a4;
- (NESportsTagLinkPresentationSource)initWithTitle:(id)a3 url:(id)a4 sportsTag:(id)a5 tagImageProvider:(id)a6;
@end

@implementation NESportsTagLinkPresentationSource

- (NESportsTagLinkPresentationSource)initWithSportsTag:(id)a3 tagImageProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 name];
  v9 = MEMORY[0x1E695DFF8];
  v10 = [v7 identifier];
  v11 = [v9 nss_NewsURLForTagID:v10];
  v12 = [(NESportsTagLinkPresentationSource *)self initWithTitle:v8 url:v11 sportsTag:v7 tagImageProvider:v6];

  return v12;
}

- (NESportsTagLinkPresentationSource)initWithTitle:(id)a3 url:(id)a4 sportsTag:(id)a5 tagImageProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NESportsTagLinkPresentationSource;
  v15 = [(NESportsTagLinkPresentationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sportsTag, a5);
    objc_storeStrong(&v16->_title, a3);
    objc_storeStrong(&v16->_url, a4);
    objc_storeStrong(&v16->_tagImageProvider, a6);
  }

  return v16;
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [(NESportsTagLinkPresentationSource *)self title];
  v4 = [(NESportsTagLinkPresentationSource *)self url];
  v5 = [(NESportsTagLinkPresentationSource *)self sportsTag];
  v6 = [v5 isMySports];

  v7 = [NELinkMetadataSource alloc];
  if (v6)
  {
    v8 = [(NESportsTagLinkPresentationSource *)self tagImageProvider];
    v9 = [(NESportsTagLinkPresentationSource *)self sportsTag];
    v10 = [v8 mySportsShareImageFor:v9];
    v11 = [(NELinkMetadataSource *)v7 initWithTitle:v3 url:v4 image:v10];
  }

  else
  {
    v8 = [(NESportsTagLinkPresentationSource *)self sportsTag];
    v9 = [(NESportsTagLinkPresentationSource *)self tagImageProvider];
    v10 = [NESportsTagLinkPresentationSource imageItemProviderForSportsTag:v8 tagImageProvider:v9];
    v12 = [(NESportsTagLinkPresentationSource *)self sportsTag];
    v13 = [(NESportsTagLinkPresentationSource *)self tagImageProvider];
    v14 = [NESportsTagLinkPresentationSource iconItemProviderForSportsTag:v12 tagImageProvider:v13];
    v11 = [(NELinkMetadataSource *)v7 initWithTitle:v3 url:v4 imageProvider:v10 iconProvider:v14];
  }

  v15 = [(NELinkMetadataSource *)v11 linkMetadata];

  return v15;
}

+ (id)imageItemProviderForSportsTag:(id)a3 tagImageProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v8 = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__NESportsTagLinkPresentationSource_imageItemProviderForSportsTag_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v7 registerItemForTypeIdentifier:v8 loadHandler:v12];

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

+ (id)iconItemProviderForSportsTag:(id)a3 tagImageProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v8 = [*MEMORY[0x1E6982F28] identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__NESportsTagLinkPresentationSource_iconItemProviderForSportsTag_tagImageProvider___block_invoke;
  v12[3] = &unk_1E84CD128;
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v7 registerItemForTypeIdentifier:v8 loadHandler:v12];

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