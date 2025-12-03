@interface ICFallbackPDFAttachmentView
- (BOOL)needToStartRender;
- (id)pdfURL;
@end

@implementation ICFallbackPDFAttachmentView

- (id)pdfURL
{
  attachment = [(ICFallbackPDFAttachmentView *)self attachment];
  fallbackPDFURL = [attachment fallbackPDFURL];

  return fallbackPDFURL;
}

- (BOOL)needToStartRender
{
  superview = [(ICFallbackPDFAttachmentView *)self superview];
  if (superview)
  {
    window = [(ICFallbackPDFAttachmentView *)self window];
    if (window && ![(ICPDFAttachmentView *)self isRendering])
    {
      v5 = ![(ICPDFAttachmentView *)self availableImageIsAcceptable];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end