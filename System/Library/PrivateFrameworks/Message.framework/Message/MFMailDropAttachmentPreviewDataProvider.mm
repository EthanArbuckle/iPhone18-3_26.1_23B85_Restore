@interface MFMailDropAttachmentPreviewDataProvider
+ (id)fullResolutionAttachmentForAttachment:(id)attachment;
+ (id)fullResolutionAttachmentURLForAttachmentURL:(id)l;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFMailDropAttachmentPreviewDataProvider

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  completionCopy = completion;
  if (attachmentCopy)
  {
    readFromDisk = [attachmentCopy readFromDisk];
    v13 = readFromDisk != 0;
    if (readFromDisk)
    {
      [consumerCopy appendData:readFromDisk];
      [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
    }
  }

  else
  {
    v13 = 0;
  }

  (*(completionCopy + 2))(completionCopy, v13, 0, 0);
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  attachmentCopy = attachment;
  messageCopy = message;
  v8 = objc_opt_class();
  part = [attachmentCopy part];
  v10 = [v8 fullResolutionStorageLocationForAttachmentWithMimePart:part withMessage:messageCopy];

  if (!v10)
  {
    v12.receiver = self;
    v12.super_class = MFMailDropAttachmentPreviewDataProvider;
    v10 = [(MFAttachmentLibraryDataProvider *)&v12 storageLocationForAttachment:attachmentCopy withMessage:messageCopy];
  }

  return v10;
}

+ (id)fullResolutionAttachmentForAttachment:(id)attachment
{
  v3 = [attachment url];
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

+ (id)fullResolutionAttachmentURLForAttachmentURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
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