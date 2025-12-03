@interface MUPDFView
- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l;
@end

@implementation MUPDFView

- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l
{
  linkCopy = link;
  lCopy = l;
  delegate = [(MUPDFView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    selfCopy = self;
    v9 = &selfCopy;
    goto LABEL_5;
  }

  if ([delegate PDFView:linkCopy shouldHandleLink:lCopy])
  {
    selfCopy2 = self;
    v9 = &selfCopy2;
LABEL_5:
    v9[1] = MUPDFView;
    objc_msgSendSuper2(v9, sel_PDFViewWillClickOnLink_withURL_, linkCopy, lCopy, selfCopy);
  }
}

@end