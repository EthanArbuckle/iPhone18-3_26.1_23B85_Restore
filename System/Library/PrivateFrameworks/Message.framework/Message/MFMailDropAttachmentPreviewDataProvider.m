@interface MFMailDropAttachmentPreviewDataProvider
+ (id)fullResolutionAttachmentForAttachment:(id)a3;
+ (id)fullResolutionAttachmentURLForAttachmentURL:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFMailDropAttachmentPreviewDataProvider

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v14 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v14)
  {
    v12 = [v14 readFromDisk];
    v13 = v12 != 0;
    if (v12)
    {
      [v9 appendData:v12];
      [v10 setCompletedUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
    }
  }

  else
  {
    v13 = 0;
  }

  (*(v11 + 2))(v11, v13, 0, 0);
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 part];
  v10 = [v8 fullResolutionStorageLocationForAttachmentWithMimePart:v9 withMessage:v7];

  if (!v10)
  {
    v12.receiver = self;
    v12.super_class = MFMailDropAttachmentPreviewDataProvider;
    v10 = [(MFAttachmentLibraryDataProvider *)&v12 storageLocationForAttachment:v6 withMessage:v7];
  }

  return v10;
}

+ (id)fullResolutionAttachmentForAttachment:(id)a3
{
  v3 = [a3 url];
  v4 = [MFMailDropAttachmentPreviewDataProvider fullResolutionAttachmentURLForAttachmentURL:v3];

  if (v4)
  {
    v5 = +[MFAttachmentManager defaultManager];
    v6 = [v5 attachmentForURL:v4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)fullResolutionAttachmentURLForAttachmentURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    [v4 setScheme:@"x-attach-maildrop-image"];
    v5 = [v4 URL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end