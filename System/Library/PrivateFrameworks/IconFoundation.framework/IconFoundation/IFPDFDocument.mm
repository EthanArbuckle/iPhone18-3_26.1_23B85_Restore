@interface IFPDFDocument
- (IFPDFDocument)initWithURL:(id)a3;
- (id)pageAtIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation IFPDFDocument

- (IFPDFDocument)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IFPDFDocument;
  v6 = [(IFPDFDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v7->_pdfDocument = CGPDFDocumentCreateWithURL(v5);
  }

  return v7;
}

- (void)dealloc
{
  pdfDocument = self->_pdfDocument;
  if (pdfDocument)
  {
    CFRelease(pdfDocument);
  }

  v4.receiver = self;
  v4.super_class = IFPDFDocument;
  [(IFPDFDocument *)&v4 dealloc];
}

- (id)pageAtIndex:(unint64_t)a3
{
  if ([(IFPDFDocument *)self numberOfPages]<= a3)
  {
    Page = 0;
  }

  else
  {
    Page = CGPDFDocumentGetPage(self->_pdfDocument, a3 + 1);
    if (Page)
    {
      Page = [[IFPDFPage alloc] initWithCGPDFPage:Page];
    }
  }

  return Page;
}

@end