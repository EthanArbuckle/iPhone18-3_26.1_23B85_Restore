@interface ICUnsupportedTextAttachmentWithFallbackImage
- (id)attachmentAsNSTextAttachment;
- (id)fileType;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackImage

- (id)attachmentAsNSTextAttachment
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  fallbackImageData = [attachment fallbackImageData];

  v4 = objc_alloc(MEMORY[0x1E69DB7F0]);
  fallbackImageUTI = [MEMORY[0x1E69B7680] fallbackImageUTI];
  v6 = [v4 initWithData:fallbackImageData ofType:fallbackImageUTI];

  return v6;
}

- (id)fileType
{
  v3 = MEMORY[0x1E69B7680];
  attachmentUTI = [(ICBaseTextAttachment *)self attachmentUTI];
  if ([v3 typeUTIIsInlineDrawing:attachmentUTI])
  {

LABEL_4:
    fileType = 0;
    goto LABEL_6;
  }

  v5 = MEMORY[0x1E69B7680];
  attachmentUTI2 = [(ICBaseTextAttachment *)self attachmentUTI];
  LOBYTE(v5) = [v5 typeUTIIsSystemPaper:attachmentUTI2];

  if (v5)
  {
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = ICUnsupportedTextAttachmentWithFallbackImage;
  fileType = [(ICUnsupportedTextAttachmentWithFallbackImage *)&v9 fileType];
LABEL_6:

  return fileType;
}

@end