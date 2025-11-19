@interface DCPDFGenerator
- (BOOL)startGenerating;
- (CGRect)pageRect;
- (DCPDFGenerator)initWithMutableData:(id)a3 pageRect:(CGRect)a4 title:(id)a5;
- (DCPDFGenerator)initWithURL:(id)a3 pageRect:(CGRect)a4 title:(id)a5;
- (void)addPageWithPageRect:(CGRect)a3 renderBlock:(id)a4;
- (void)addPageWithRenderBlock:(id)a3;
- (void)dealloc;
- (void)finishGenerating;
- (void)startGenerating;
@end

@implementation DCPDFGenerator

- (DCPDFGenerator)initWithURL:(id)a3 pageRect:(CGRect)a4 title:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = DCPDFGenerator;
  v13 = [(DCPDFGenerator *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(DCPDFGenerator *)v13 setFileURL:v11];
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (CGRectEqualToRect(v17, *MEMORY[0x277CBF398]))
    {
      x = *&kICPDFGeneratorDefaultPageRect;
      y = *algn_27EEE1788;
      width = *&qword_27EEE1790;
      height = unk_27EEE1798;
    }

    [(DCPDFGenerator *)v14 setPageRect:x, y, width, height];
    [(DCPDFGenerator *)v14 setTitle:v12];
  }

  return v14;
}

- (DCPDFGenerator)initWithMutableData:(id)a3 pageRect:(CGRect)a4 title:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = DCPDFGenerator;
  v13 = [(DCPDFGenerator *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(DCPDFGenerator *)v13 setData:v11];
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (CGRectEqualToRect(v17, *MEMORY[0x277CBF398]))
    {
      x = *&kICPDFGeneratorDefaultPageRect;
      y = *algn_27EEE1788;
      width = *&qword_27EEE1790;
      height = unk_27EEE1798;
    }

    [(DCPDFGenerator *)v14 setPageRect:x, y, width, height];
    [(DCPDFGenerator *)v14 setTitle:v12];
  }

  return v14;
}

- (void)dealloc
{
  if (self->_pdfContext)
  {
    v3 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249253000, v3, OS_LOG_TYPE_DEFAULT, "Forgot to call finishGenerating", buf, 2u);
    }

    [(DCPDFGenerator *)self finishGenerating];
  }

  v4.receiver = self;
  v4.super_class = DCPDFGenerator;
  [(DCPDFGenerator *)&v4 dealloc];
}

- (BOOL)startGenerating
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (self->_pdfContext)
  {
    v2 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(DCPDFGenerator *)v2 startGenerating:v3];
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v28[0] = *MEMORY[0x277CBF5E0];
  v11 = [(DCPDFGenerator *)self title];
  v29[0] = v11;
  v28[1] = *MEMORY[0x277CBF578];
  v12 = DCAppName();
  v29[1] = v12;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  [(DCPDFGenerator *)self pageRect];
  mediaBox.origin.x = v13;
  mediaBox.origin.y = v14;
  mediaBox.size.width = v15;
  mediaBox.size.height = v16;
  v17 = [(DCPDFGenerator *)self fileURL];

  if (v17)
  {
    v18 = [(DCPDFGenerator *)self fileURL];
    self->_pdfContext = CGPDFContextCreateWithURL(v18, &mediaBox, v2);
  }

  else
  {
    v19 = [(DCPDFGenerator *)self data];

    if (!v19)
    {
LABEL_10:
      v25 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(DCPDFGenerator *)self startGenerating];
      }

      goto LABEL_13;
    }

    v20 = [MEMORY[0x277CBEA90] data];
    v21 = [(DCPDFGenerator *)self data];
    [v21 setData:v20];

    v22 = [(DCPDFGenerator *)self data];
    v23 = CGDataConsumerCreateWithCFData(v22);

    self->_pdfContext = CGPDFContextCreate(v23, &mediaBox, v2);
    CGDataConsumerRelease(v23);
  }

  if (!self->_pdfContext)
  {
    goto LABEL_10;
  }

  v24 = 1;
LABEL_14:

  return v24;
}

- (void)addPageWithRenderBlock:(id)a3
{
  v4 = a3;
  [(DCPDFGenerator *)self pageRect];
  [(DCPDFGenerator *)self addPageWithPageRect:v4 renderBlock:?];
}

- (void)addPageWithPageRect:(CGRect)a3 renderBlock:(id)a4
{
  v16 = a3;
  v5 = a4;
  if (self->_pdfContext)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v7 = CFDataCreate(0, &v16, 32);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBF5A8], v7);
    CGPDFContextBeginPage(self->_pdfContext, Mutable);
    v5[2](v5, self->_pdfContext, v16.origin.x, v16.origin.y, v16.size.width, v16.size.height);
    CGPDFContextEndPage(self->_pdfContext);
    CFRelease(Mutable);
    CFRelease(v7);
  }

  else
  {
    v8 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DCPDFGenerator *)v8 addPageWithPageRect:v9 renderBlock:v10, v11, v12, v13, v14, v15];
    }
  }
}

- (void)finishGenerating
{
  pdfContext = self->_pdfContext;
  if (pdfContext)
  {
    CGPDFContextClose(pdfContext);
    CGContextRelease(self->_pdfContext);
    self->_pdfContext = 0;
  }

  else
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DCPDFGenerator *)v4 finishGenerating:v5];
    }
  }
}

- (CGRect)pageRect
{
  x = self->_pageRect.origin.x;
  y = self->_pageRect.origin.y;
  width = self->_pageRect.size.width;
  height = self->_pageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)startGenerating
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 fileURL];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Failed to create a pdf document at: %@", &v4, 0xCu);
}

@end