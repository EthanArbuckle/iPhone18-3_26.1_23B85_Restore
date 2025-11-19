@interface ICLinkPresentationActivityItemSource
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (void)setIconImage:(id)a3;
@end

@implementation ICLinkPresentationActivityItemSource

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = [(ICLinkPresentationActivityItemSource *)self title];
  v5 = [(ICLinkPresentationActivityItemSource *)self detail];
  v6 = [(ICLinkPresentationActivityItemSource *)self iconImage];
  if ((!v4 || ![v4 length]) && (!v5 || !objc_msgSend(v5, "length")) && !v6)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"(title && title.length > 0) || (summary && summary.length > 0) || iconImage" functionName:"-[ICLinkPresentationActivityItemSource activityViewControllerLinkPresentationMetadata:]" simulateCrash:1 showAlert:0 format:@"No data passed to link presentation"];
  }

  v7 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];

  if (!v7)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v8);
    v10 = objc_alloc_init(*(v9 + 3232));
    [(ICLinkPresentationActivityItemSource *)self setLinkMetadata:v10];
  }

  v11 = [(ICLinkPresentationActivityItemSource *)self fileMetadata];

  if (!v11)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v12);
    v14 = objc_alloc_init(*(v13 + 3160));
    [(ICLinkPresentationActivityItemSource *)self setFileMetadata:v14];
  }

  if (v4 && [v4 length])
  {
    v15 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [v15 setTitle:v4];

    v16 = [(ICLinkPresentationActivityItemSource *)self fileMetadata];
    [v16 setName:v4];
  }

  if (v5 && [v5 length])
  {
    v17 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [v17 setSummary:v5];
  }

  [(ICLinkPresentationActivityItemSource *)self setIconImage:v6];
  v18 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];

  return v18;
}

- (void)setIconImage:(id)a3
{
  if (a3)
  {
    gotLoadHelper_x23__OBJC_CLASS___LPImage(v4);
    v6 = *(v3 + 3176);
    v8 = v7;
    v16 = [[v6 alloc] initWithPlatformImage:v8];
    v9 = [(ICLinkPresentationActivityItemSource *)self fileMetadata];
    [v9 setThumbnail:v16];

    v10 = [(ICLinkPresentationActivityItemSource *)self fileMetadata];
    v11 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [v11 setSpecialization:v10];

    v12 = objc_alloc(*(v3 + 3176));
    v13 = UIImagePNGRepresentation(v8);

    v14 = [v12 initWithData:v13 MIMEType:@"image/png"];
    v15 = [(ICLinkPresentationActivityItemSource *)self linkMetadata];
    [v15 setIcon:v14];
  }
}

@end