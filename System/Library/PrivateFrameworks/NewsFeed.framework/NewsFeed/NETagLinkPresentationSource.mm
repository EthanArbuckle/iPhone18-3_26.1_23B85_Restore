@interface NETagLinkPresentationSource
+ (id)linkMetadataFromTag:(id)a3 title:(id)a4 url:(id)a5;
- (LPLinkMetadata)linkMetadata;
- (NETagLinkPresentationSource)initWithTag:(id)a3 image:(id)a4;
- (NETagLinkPresentationSource)initWithTag:(id)a3 title:(id)a4 url:(id)a5;
- (NETagLinkPresentationSource)initWithTitle:(id)a3 url:(id)a4 image:(id)a5;
@end

@implementation NETagLinkPresentationSource

- (NETagLinkPresentationSource)initWithTag:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = NETagLinkPresentationSource;
  v8 = [(NETagLinkPresentationSource *)&v17 init];
  if (v8)
  {
    v9 = [NELinkMetadataSource alloc];
    v10 = [v6 name];
    v11 = MEMORY[0x1E695DFF8];
    v12 = [v6 identifier];
    v13 = [v11 nss_NewsURLForTagID:v12];
    v14 = [(NELinkMetadataSource *)v9 initWithTitle:v10 url:v13 image:v7];
    linkMetadataSource = v8->_linkMetadataSource;
    v8->_linkMetadataSource = v14;
  }

  return v8;
}

- (NETagLinkPresentationSource)initWithTitle:(id)a3 url:(id)a4 image:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = NETagLinkPresentationSource;
  v11 = [(NETagLinkPresentationSource *)&v15 init];
  if (v11)
  {
    v12 = [[NELinkMetadataSource alloc] initWithTitle:v8 url:v9 image:v10];
    linkMetadataSource = v11->_linkMetadataSource;
    v11->_linkMetadataSource = v12;
  }

  return v11;
}

- (NETagLinkPresentationSource)initWithTag:(id)a3 title:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = NETagLinkPresentationSource;
  v11 = [(NETagLinkPresentationSource *)&v15 init];
  if (v11)
  {
    v12 = [NETagLinkPresentationSource linkMetadataFromTag:v8 title:v9 url:v10];
    linkMetadataSource = v11->_linkMetadataSource;
    v11->_linkMetadataSource = v12;
  }

  return v11;
}

- (LPLinkMetadata)linkMetadata
{
  v2 = [(NETagLinkPresentationSource *)self linkMetadataSource];
  v3 = [v2 linkMetadata];

  return v3;
}

+ (id)linkMetadataFromTag:(id)a3 title:(id)a4 url:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696ACA0];
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(v8);
  v12 = *MEMORY[0x1E6982F28];
  v13 = [*MEMORY[0x1E6982F28] identifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke;
  v26[3] = &unk_1E84CD0B8;
  v14 = v7;
  v27 = v14;
  [v11 registerItemForTypeIdentifier:v13 loadHandler:v26];

  v15 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v16 = [v12 identifier];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_3;
  v24 = &unk_1E84CD0B8;
  v25 = v14;
  v17 = v14;
  [v15 registerItemForTypeIdentifier:v16 loadHandler:&v21];

  v18 = [NELinkMetadataSource alloc];
  v19 = [(NELinkMetadataSource *)v18 initWithTitle:v10 url:v9 imageProvider:v15 iconProvider:v11, v21, v22, v23, v24];

  return v19;
}

void __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) feedNavImageAssetHandle];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_2;
  v8[3] = &unk_1E84CD068;
  v9 = v4;
  v10 = v3;
  v5 = v3;
  v6 = v4;
  v7 = [v6 downloadIfNeededWithCompletion:v8];
}

void __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v3 = [*(a1 + 32) filePath];
  image = [v2 initWithContentsOfFile:v3];

  v4 = UIImagePNGRepresentation(image);
  (*(*(a1 + 40) + 16))();
}

void __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) feedNavImageHQAssetHandle];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_4;
  v8[3] = &unk_1E84CD068;
  v9 = v4;
  v10 = v3;
  v5 = v3;
  v6 = v4;
  v7 = [v6 downloadIfNeededWithCompletion:v8];
}

void __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v3 = [*(a1 + 32) filePath];
  image = [v2 initWithContentsOfFile:v3];

  v4 = UIImagePNGRepresentation(image);
  (*(*(a1 + 40) + 16))();
}

@end