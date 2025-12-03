@interface IFPDFDocument
- (IFPDFDocument)initWithURL:(id)l;
- (id)pageAtIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation IFPDFDocument

- (IFPDFDocument)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = IFPDFDocument;
  v6 = [(IFPDFDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v7->_pdfDocument = CGPDFDocumentCreateWithURL(lCopy);
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

- (id)pageAtIndex:(unint64_t)index
{
  if ([(IFPDFDocument *)self numberOfPages]<= index)
  {
    Page = 0;
  }

  else
  {
    Page = CGPDFDocumentGetPage(self->_pdfDocument, index + 1);
    if (Page)
    {
      Page = [[IFPDFPage alloc] initWithCGPDFPage:Page];
    }
  }

  return Page;
}

@end