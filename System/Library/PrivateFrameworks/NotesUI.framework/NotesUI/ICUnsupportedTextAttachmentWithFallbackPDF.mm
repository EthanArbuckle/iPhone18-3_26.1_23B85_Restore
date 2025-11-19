@interface ICUnsupportedTextAttachmentWithFallbackPDF
- (id)attachmentAsNSTextAttachment;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackPDF

- (id)attachmentAsNSTextAttachment
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 fallbackPDFData];

  v4 = objc_alloc(MEMORY[0x1E69DB7F0]);
  v5 = [MEMORY[0x1E69B7680] fallbackPDFUTI];
  v6 = [v4 initWithData:v3 ofType:v5];

  return v6;
}

@end