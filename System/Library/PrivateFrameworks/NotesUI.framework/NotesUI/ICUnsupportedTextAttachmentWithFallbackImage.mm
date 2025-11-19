@interface ICUnsupportedTextAttachmentWithFallbackImage
- (id)attachmentAsNSTextAttachment;
- (id)fileType;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackImage

- (id)attachmentAsNSTextAttachment
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 fallbackImageData];

  v4 = objc_alloc(MEMORY[0x1E69DB7F0]);
  v5 = [MEMORY[0x1E69B7680] fallbackImageUTI];
  v6 = [v4 initWithData:v3 ofType:v5];

  return v6;
}

- (id)fileType
{
  v3 = MEMORY[0x1E69B7680];
  v4 = [(ICBaseTextAttachment *)self attachmentUTI];
  if ([v3 typeUTIIsInlineDrawing:v4])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = MEMORY[0x1E69B7680];
  v6 = [(ICBaseTextAttachment *)self attachmentUTI];
  LOBYTE(v5) = [v5 typeUTIIsSystemPaper:v6];

  if (v5)
  {
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = ICUnsupportedTextAttachmentWithFallbackImage;
  v7 = [(ICUnsupportedTextAttachmentWithFallbackImage *)&v9 fileType];
LABEL_6:

  return v7;
}

@end