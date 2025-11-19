@interface ICFallbackPDFAttachmentView
- (BOOL)needToStartRender;
- (id)pdfURL;
@end

@implementation ICFallbackPDFAttachmentView

- (id)pdfURL
{
  v2 = [(ICFallbackPDFAttachmentView *)self attachment];
  v3 = [v2 fallbackPDFURL];

  return v3;
}

- (BOOL)needToStartRender
{
  v3 = [(ICFallbackPDFAttachmentView *)self superview];
  if (v3)
  {
    v4 = [(ICFallbackPDFAttachmentView *)self window];
    if (v4 && ![(ICPDFAttachmentView *)self isRendering])
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