@interface ICLinkPresentationActivityItemSource
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (void)setIconImage:(id)image;
@end

@implementation ICLinkPresentationActivityItemSource

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  title = [(ICLinkPresentationActivityItemSource *)self title];
  detail = [(ICLinkPresentationActivityItemSource *)self detail];
  iconImage = [(ICLinkPresentationActivityItemSource *)self iconImage];
  if ((!title || ![title length]) && (!detail || !objc_msgSend(detail, "length")) && !iconImage)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"(title && title.length > 0) || (summary && summary.length > 0) || iconImage" functionName:"-[ICLinkPresentationActivityItemSource activityViewControllerLinkPresentationMetadata:]" simulateCrash:1 showAlert:0 format:@"No data passed to link presentation"];
  }

  linkMetadata = [(ICLinkPresentationActivityItemSource *)self linkMetadata];

  if (!linkMetadata)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v8);
    v10 = objc_alloc_init(*(v9 + 3232));
    [(ICLinkPresentationActivityItemSource *)self setLinkMetadata:v10];
  }

  fileMetadata = [(ICLinkPresentationActivityItemSource *)self fileMetadata];

  if (!fileMetadata)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v12);
    v14 = objc_alloc_init(*(v13 + 3160));
    [(ICLinkPresentationActivityItemSource *)self setFileMetadata:v14];
  }

  if (title && [title length])
  {
    linkMetadata2 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [linkMetadata2 setTitle:title];

    fileMetadata2 = [(ICLinkPresentationActivityItemSource *)self fileMetadata];
    [fileMetadata2 setName:title];
  }

  if (detail && [detail length])
  {
    linkMetadata3 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [linkMetadata3 setSummary:detail];
  }

  [(ICLinkPresentationActivityItemSource *)self setIconImage:iconImage];
  linkMetadata4 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];

  return linkMetadata4;
}

- (void)setIconImage:(id)image
{
  if (image)
  {
    gotLoadHelper_x23__OBJC_CLASS___LPImage(v4);
    v6 = *(v3 + 3176);
    v8 = v7;
    v16 = [[v6 alloc] initWithPlatformImage:v8];
    fileMetadata = [(ICLinkPresentationActivityItemSource *)self fileMetadata];
    [fileMetadata setThumbnail:v16];

    fileMetadata2 = [(ICLinkPresentationActivityItemSource *)self fileMetadata];
    linkMetadata = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [linkMetadata setSpecialization:fileMetadata2];

    v12 = objc_alloc(*(v3 + 3176));
    v13 = UIImagePNGRepresentation(v8);

    v14 = [v12 initWithData:v13 MIMEType:@"image/png"];
    linkMetadata2 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [linkMetadata2 setIcon:v14];
  }
}

@end