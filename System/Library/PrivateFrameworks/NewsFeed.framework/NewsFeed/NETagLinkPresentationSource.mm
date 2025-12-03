@interface NETagLinkPresentationSource
+ (id)linkMetadataFromTag:(id)tag title:(id)title url:(id)url;
- (LPLinkMetadata)linkMetadata;
- (NETagLinkPresentationSource)initWithTag:(id)tag image:(id)image;
- (NETagLinkPresentationSource)initWithTag:(id)tag title:(id)title url:(id)url;
- (NETagLinkPresentationSource)initWithTitle:(id)title url:(id)url image:(id)image;
@end

@implementation NETagLinkPresentationSource

- (NETagLinkPresentationSource)initWithTag:(id)tag image:(id)image
{
  tagCopy = tag;
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = NETagLinkPresentationSource;
  v8 = [(NETagLinkPresentationSource *)&v17 init];
  if (v8)
  {
    v9 = [NELinkMetadataSource alloc];
    name = [tagCopy name];
    v11 = MEMORY[0x1E695DFF8];
    identifier = [tagCopy identifier];
    v13 = [v11 nss_NewsURLForTagID:identifier];
    v14 = [(NELinkMetadataSource *)v9 initWithTitle:name url:v13 image:imageCopy];
    linkMetadataSource = v8->_linkMetadataSource;
    v8->_linkMetadataSource = v14;
  }

  return v8;
}

- (NETagLinkPresentationSource)initWithTitle:(id)title url:(id)url image:(id)image
{
  titleCopy = title;
  urlCopy = url;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = NETagLinkPresentationSource;
  v11 = [(NETagLinkPresentationSource *)&v15 init];
  if (v11)
  {
    v12 = [[NELinkMetadataSource alloc] initWithTitle:titleCopy url:urlCopy image:imageCopy];
    linkMetadataSource = v11->_linkMetadataSource;
    v11->_linkMetadataSource = v12;
  }

  return v11;
}

- (NETagLinkPresentationSource)initWithTag:(id)tag title:(id)title url:(id)url
{
  tagCopy = tag;
  titleCopy = title;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = NETagLinkPresentationSource;
  v11 = [(NETagLinkPresentationSource *)&v15 init];
  if (v11)
  {
    v12 = [NETagLinkPresentationSource linkMetadataFromTag:tagCopy title:titleCopy url:urlCopy];
    linkMetadataSource = v11->_linkMetadataSource;
    v11->_linkMetadataSource = v12;
  }

  return v11;
}

- (LPLinkMetadata)linkMetadata
{
  linkMetadataSource = [(NETagLinkPresentationSource *)self linkMetadataSource];
  linkMetadata = [linkMetadataSource linkMetadata];

  return linkMetadata;
}

+ (id)linkMetadataFromTag:(id)tag title:(id)title url:(id)url
{
  tagCopy = tag;
  v8 = MEMORY[0x1E696ACA0];
  urlCopy = url;
  titleCopy = title;
  v11 = objc_alloc_init(v8);
  v12 = *MEMORY[0x1E6982F28];
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke;
  v26[3] = &unk_1E84CD0B8;
  v14 = tagCopy;
  v27 = v14;
  [v11 registerItemForTypeIdentifier:identifier loadHandler:v26];

  v15 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier2 = [v12 identifier];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __61__NETagLinkPresentationSource_linkMetadataFromTag_title_url___block_invoke_3;
  v24 = &unk_1E84CD0B8;
  v25 = v14;
  v17 = v14;
  [v15 registerItemForTypeIdentifier:identifier2 loadHandler:&v21];

  v18 = [NELinkMetadataSource alloc];
  v19 = [(NELinkMetadataSource *)v18 initWithTitle:titleCopy url:urlCopy imageProvider:v15 iconProvider:v11, v21, v22, v23, v24];

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