@interface ICAttachmentDrawingModel(ItemProviderWriting)
- (id)itemProviderWritingData;
- (id)itemProviderWritingURL;
@end

@implementation ICAttachmentDrawingModel(ItemProviderWriting)

- (id)itemProviderWritingURL
{
  v1 = [a1 attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v2 = [v1 attachmentPreviewImageWithMinSize:? scale:?];

  v3 = [v2 orientedPreviewImageURL];

  return v3;
}

- (id)itemProviderWritingData
{
  v2 = [a1 attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v3 = [v2 attachmentPreviewImageWithMinSize:? scale:?];

  v4 = [a1 attachment];
  v5 = [v4 isPasswordProtected];

  if (v5)
  {
    v6 = [a1 attachment];
    v7 = [v6 isAuthenticated];

    if (v7)
    {
      v8 = [v3 decryptedImageData];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = [v3 orientedPreviewImageURL];
    v8 = [v9 dataWithContentsOfURL:v10 options:1 error:0];
  }

  return v8;
}

@end