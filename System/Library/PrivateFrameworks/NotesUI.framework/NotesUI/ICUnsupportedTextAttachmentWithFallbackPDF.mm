@interface ICUnsupportedTextAttachmentWithFallbackPDF
- (id)attachmentAsNSTextAttachment;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackPDF

- (id)attachmentAsNSTextAttachment
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  fallbackPDFData = [attachment fallbackPDFData];

  v4 = objc_alloc(MEMORY[0x1E69DB7F0]);
  fallbackPDFUTI = [MEMORY[0x1E69B7680] fallbackPDFUTI];
  v6 = [v4 initWithData:fallbackPDFData ofType:fallbackPDFUTI];

  return v6;
}

@end