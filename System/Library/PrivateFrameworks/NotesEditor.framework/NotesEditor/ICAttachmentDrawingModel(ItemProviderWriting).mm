@interface ICAttachmentDrawingModel(ItemProviderWriting)
- (id)itemProviderWritingData;
- (id)itemProviderWritingURL;
@end

@implementation ICAttachmentDrawingModel(ItemProviderWriting)

- (id)itemProviderWritingURL
{
  attachment = [self attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v2 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

  orientedPreviewImageURL = [v2 orientedPreviewImageURL];

  return orientedPreviewImageURL;
}

- (id)itemProviderWritingData
{
  attachment = [self attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v3 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

  attachment2 = [self attachment];
  isPasswordProtected = [attachment2 isPasswordProtected];

  if (isPasswordProtected)
  {
    attachment3 = [self attachment];
    isAuthenticated = [attachment3 isAuthenticated];

    if (isAuthenticated)
    {
      decryptedImageData = [v3 decryptedImageData];
    }

    else
    {
      decryptedImageData = 0;
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEA90];
    orientedPreviewImageURL = [v3 orientedPreviewImageURL];
    decryptedImageData = [v9 dataWithContentsOfURL:orientedPreviewImageURL options:1 error:0];
  }

  return decryptedImageData;
}

@end