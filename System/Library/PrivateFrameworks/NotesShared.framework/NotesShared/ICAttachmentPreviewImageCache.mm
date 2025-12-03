@interface ICAttachmentPreviewImageCache
- (ICAttachmentPreviewImageCache)init;
- (void)attachmentPreviewImagesDidUpdate:(id)update;
- (void)dealloc;
@end

@implementation ICAttachmentPreviewImageCache

- (ICAttachmentPreviewImageCache)init
{
  v6.receiver = self;
  v6.super_class = ICAttachmentPreviewImageCache;
  v2 = [(ICThumbnailDataCache *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_attachmentPreviewImagesDidUpdate_ name:@"ICAttachmentPreviewImagesDidUpdateNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_attachmentPreviewImagesDidUpdate_ name:@"ICAttachmentDidLoadNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"ICAttachmentPreviewImagesDidUpdateNotification" object:0];

  v4.receiver = self;
  v4.super_class = ICAttachmentPreviewImageCache;
  [(ICAttachmentPreviewImageCache *)&v4 dealloc];
}

- (void)attachmentPreviewImagesDidUpdate:(id)update
{
  updateCopy = update;
  objc_opt_class();
  object = [updateCopy object];

  v9 = ICCheckedDynamicCast();

  v6 = v9;
  if (v9)
  {
    uRIRepresentation = [v9 URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    [(ICThumbnailDataCache *)self removeThumbnailDataForKey:absoluteString];

    v6 = v9;
  }
}

@end