@interface MUPDFView
- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4;
@end

@implementation MUPDFView

- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUPDFView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = self;
    v9 = &v10;
    goto LABEL_5;
  }

  if ([v8 PDFView:v6 shouldHandleLink:v7])
  {
    v11 = self;
    v9 = &v11;
LABEL_5:
    v9[1] = MUPDFView;
    objc_msgSendSuper2(v9, sel_PDFViewWillClickOnLink_withURL_, v6, v7, v10);
  }
}

@end