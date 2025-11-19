@interface CBSParsePDFMetadataOperation
- (CBSParsePDFMetadataOperation)initWithPDFBook:(id)a3 filePath:(id)a4 parseImage:(BOOL)a5;
- (id)fileName;
- (id)titleFromDictionaryRef:(CGPDFDictionary *)a3;
- (void)main;
- (void)updateAuthor:(id)a3;
- (void)updateTitleWithDictionaryRef:(CGPDFDictionary *)a3;
@end

@implementation CBSParsePDFMetadataOperation

- (CBSParsePDFMetadataOperation)initWithPDFBook:(id)a3 filePath:(id)a4 parseImage:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CBSParsePDFMetadataOperation;
  v11 = [(CBSParsePDFMetadataOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_book, a3);
    objc_storeStrong(&v12->_filePath, a4);
    v12->_parseImage = a5;
  }

  return v12;
}

- (void)main
{
  v3 = [(CBSParsePDFMetadataOperation *)self filePath];
  v4 = [NSURL fileURLWithPath:v3];
  v5 = CGPDFDocumentCreateWithURL(v4);

  if (v5)
  {
    Info = CGPDFDocumentGetInfo(v5);
    [(CBSParsePDFMetadataOperation *)self updateTitleWithDictionaryRef:Info];
    value = 0;
    CGPDFDictionaryGetString(Info, "Author", &value);
    v7 = CGPDFStringCopyTextString(value);
    [(CBSParsePDFMetadataOperation *)self updateAuthor:v7];

    if (![(CBSParsePDFMetadataOperation *)self parseImage])
    {
      goto LABEL_7;
    }

    Page = CGPDFDocumentGetPage(v5, 1uLL);
    if (!Page)
    {
      goto LABEL_7;
    }

    v9 = Page;
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v14 = [CRKCoreGraphicsUtilities createImageContextForSize:70.0, 100.0];
    if (v14)
    {
      v15 = v14;
      CGContextTranslateCTM(v14, 0.0, 100.0);
      CGContextScaleCTM(v15, 1.0, -1.0);
      memset(&v21, 0, sizeof(v21));
      v25.origin.x = 0.0;
      v25.origin.y = 0.0;
      v25.size.width = 70.0;
      v25.size.height = 100.0;
      CGPDFPageGetDrawingTransform(&v21, v9, kCGPDFCropBox, v25, 0, 1);
      v20 = v21;
      CGContextConcatCTM(v15, &v20);
      CGContextSetRGBFillColor(v15, 1.0, 1.0, 1.0, 1.0);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      CGContextFillRect(v15, v26);
      CGContextDrawPDFPage(v15, v9);
      Image = CGBitmapContextCreateImage(v15);
      if (Image)
      {
        v17 = Image;
        v18 = [CRKCoreGraphicsUtilities imageDataFromImage:Image];
        CFRelease(v5);
        CGImageRelease(v17);
        CGContextRelease(v15);
        v19 = [(CBSParsePDFMetadataOperation *)self book];
        [v19 setImage:v18];

        return;
      }

      CFRelease(v5);
      CGContextRelease(v15);
    }

    else
    {
LABEL_7:
      CFRelease(v5);
    }

    [(CBSParsePDFMetadataOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(CBSParsePDFMetadataOperation *)self updateTitleWithDictionaryRef:0];

    [(CBSParsePDFMetadataOperation *)self endOperationWithResultObject:0];
  }
}

- (void)updateTitleWithDictionaryRef:(CGPDFDictionary *)a3
{
  v4 = [(CBSParsePDFMetadataOperation *)self titleFromDictionaryRef:a3];
  v5 = v4;
  if (v4)
  {
    v13 = v4;
  }

  else
  {
    v6 = [(CBSParsePDFMetadataOperation *)self book];
    v7 = [v6 title];
    v8 = v7;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v9 = [(CBSParsePDFMetadataOperation *)self fileName];
      v10 = v9;
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v11 = [NSBundle bundleForClass:objc_opt_class()];
        v13 = [v11 localizedStringForKey:@"Untitled" value:&stru_10000C3F0 table:0];
      }
    }
  }

  v12 = [(CBSParsePDFMetadataOperation *)self book];
  [v12 setTitle:v13];
}

- (id)titleFromDictionaryRef:(CGPDFDictionary *)a3
{
  if (a3)
  {
    value = 0;
    v3 = 0;
    if (CGPDFDictionaryGetString(a3, "Title", &value))
    {
      v4 = CGPDFStringCopyTextString(value);
      if ([(__CFString *)v4 length])
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v3 = v5;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fileName
{
  v2 = [(CBSParsePDFMetadataOperation *)self filePath];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)updateAuthor:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CBSParsePDFMetadataOperation *)self book];
    [v5 setAuthor:v4];
  }
}

@end