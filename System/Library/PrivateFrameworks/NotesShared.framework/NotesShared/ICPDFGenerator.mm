@interface ICPDFGenerator
- (BOOL)startGenerating;
- (CGRect)pageRect;
- (ICPDFGenerator)init;
- (ICPDFGenerator)initWithMutableData:(id)data pageRect:(CGRect)rect title:(id)title;
- (ICPDFGenerator)initWithURL:(id)l pageRect:(CGRect)rect title:(id)title;
- (void)addPageWithPageRect:(CGRect)rect renderBlock:(id)block;
- (void)addPageWithRenderBlock:(id)block;
- (void)dealloc;
- (void)finishGenerating;
- (void)startGenerating;
@end

@implementation ICPDFGenerator

- (ICPDFGenerator)init
{
  [(ICPDFGenerator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICPDFGenerator)initWithURL:(id)l pageRect:(CGRect)rect title:(id)title
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  lCopy = l;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = ICPDFGenerator;
  v13 = [(ICPDFGenerator *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(ICPDFGenerator *)v13 setFileURL:lCopy];
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (CGRectEqualToRect(v17, *MEMORY[0x277CBF398]))
    {
      x = *&kICPDFGeneratorDefaultPageRect;
      y = unk_27CA40C60;
      width = *&qword_27CA40C68;
      height = unk_27CA40C70;
    }

    [(ICPDFGenerator *)v14 setPageRect:x, y, width, height];
    [(ICPDFGenerator *)v14 setTitle:titleCopy];
  }

  return v14;
}

- (ICPDFGenerator)initWithMutableData:(id)data pageRect:(CGRect)rect title:(id)title
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = ICPDFGenerator;
  v13 = [(ICPDFGenerator *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(ICPDFGenerator *)v13 setData:dataCopy];
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (CGRectEqualToRect(v17, *MEMORY[0x277CBF398]))
    {
      x = *&kICPDFGeneratorDefaultPageRect;
      y = unk_27CA40C60;
      width = *&qword_27CA40C68;
      height = unk_27CA40C70;
    }

    [(ICPDFGenerator *)v14 setPageRect:x, y, width, height];
    [(ICPDFGenerator *)v14 setTitle:titleCopy];
  }

  return v14;
}

- (void)dealloc
{
  if (self->_pdfContext)
  {
    v3 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Forgot to call finishGenerating", buf, 2u);
    }

    [(ICPDFGenerator *)self finishGenerating];
  }

  v4.receiver = self;
  v4.super_class = ICPDFGenerator;
  [(ICPDFGenerator *)&v4 dealloc];
}

- (BOOL)startGenerating
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (self->_pdfContext)
  {
    v2 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(ICPDFGenerator *)v2 startGenerating:v3];
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v27[0] = *MEMORY[0x277CBF5E0];
  title = [(ICPDFGenerator *)self title];
  v27[1] = *MEMORY[0x277CBF578];
  v28[0] = title;
  v28[1] = @"Notes";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  [(ICPDFGenerator *)self pageRect];
  mediaBox.origin.x = v12;
  mediaBox.origin.y = v13;
  mediaBox.size.width = v14;
  mediaBox.size.height = v15;
  fileURL = [(ICPDFGenerator *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(ICPDFGenerator *)self fileURL];
    self->_pdfContext = CGPDFContextCreateWithURL(fileURL2, &mediaBox, v2);
  }

  else
  {
    data = [(ICPDFGenerator *)self data];

    if (!data)
    {
LABEL_10:
      v24 = os_log_create("com.apple.notes", "Export");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ICPDFGenerator *)self startGenerating];
      }

      goto LABEL_13;
    }

    data2 = [MEMORY[0x277CBEA90] data];
    data3 = [(ICPDFGenerator *)self data];
    [data3 setData:data2];

    data4 = [(ICPDFGenerator *)self data];
    v22 = CGDataConsumerCreateWithCFData(data4);

    self->_pdfContext = CGPDFContextCreate(v22, &mediaBox, v2);
    CGDataConsumerRelease(v22);
  }

  if (!self->_pdfContext)
  {
    goto LABEL_10;
  }

  v23 = 1;
LABEL_14:

  return v23;
}

- (void)addPageWithRenderBlock:(id)block
{
  blockCopy = block;
  [(ICPDFGenerator *)self pageRect];
  [(ICPDFGenerator *)self addPageWithPageRect:blockCopy renderBlock:?];
}

- (void)addPageWithPageRect:(CGRect)rect renderBlock:(id)block
{
  rectCopy = rect;
  blockCopy = block;
  if (self->_pdfContext)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v7 = CFDataCreate(0, &rectCopy, 32);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBF5A8], v7);
    CGPDFContextBeginPage(self->_pdfContext, Mutable);
    blockCopy[2](blockCopy, self->_pdfContext, rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height);
    CGPDFContextEndPage(self->_pdfContext);
    CFRelease(Mutable);
    CFRelease(v7);
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICPDFGenerator *)v8 addPageWithPageRect:v9 renderBlock:v10, v11, v12, v13, v14, v15];
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
    v4 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICPDFGenerator *)v4 finishGenerating:v5];
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
  fileURL = [self fileURL];
  v4 = 138412290;
  v5 = fileURL;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Failed to create a pdf document at: %@", &v4, 0xCu);
}

@end