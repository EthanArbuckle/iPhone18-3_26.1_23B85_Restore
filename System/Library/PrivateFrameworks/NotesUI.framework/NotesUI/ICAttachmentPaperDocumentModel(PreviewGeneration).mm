@interface ICAttachmentPaperDocumentModel(PreviewGeneration)
- (BOOL)tooLargeForPreviewGeneration;
@end

@implementation ICAttachmentPaperDocumentModel(PreviewGeneration)

- (BOOL)tooLargeForPreviewGeneration
{
  attachment = [self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType == 15)
  {
    paperPageCount = [self paperPageCount];
    mEMORY[0x1E69B76E8] = [MEMORY[0x1E69B76E8] sharedConfiguration];
    maxSubAttachmentsPerAttachment = [mEMORY[0x1E69B76E8] maxSubAttachmentsPerAttachment];

    if (paperPageCount > maxSubAttachmentsPerAttachment)
    {
      return 1;
    }
  }

  paperBundleURL = [self paperBundleURL];
  ic_fileOrDirectorySize = [paperBundleURL ic_fileOrDirectorySize];

  return ic_fileOrDirectorySize > 209715200;
}

@end