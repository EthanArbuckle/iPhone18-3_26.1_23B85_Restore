@interface IFPDFPage
- (IFPDFPage)initWithCGPDFPage:(CGPDFPage *)a3;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (void)dealloc;
@end

@implementation IFPDFPage

- (IFPDFPage)initWithCGPDFPage:(CGPDFPage *)a3
{
  v7.receiver = self;
  v7.super_class = IFPDFPage;
  v4 = [(IFPDFPage *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    CFRetain(a3);
    v5->_pdfPage = a3;
  }

  return v5;
}

- (void)dealloc
{
  pdfPage = self->_pdfPage;
  if (pdfPage)
  {
    CFRelease(pdfPage);
  }

  v4.receiver = self;
  v4.super_class = IFPDFPage;
  [(IFPDFPage *)&v4 dealloc];
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  if (self->_pdfPage)
  {
    height = a3.height;
    width = a3.width;
    v8 = (a3.width * a4);
    v9 = (a3.height * a4);
    v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v11 = CGBitmapContextCreate(0, v8, v9, 8uLL, 4 * v8, v10, 2u);
    CGContextScaleCTM(v11, a4, a4);
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = width;
    v25.size.height = height;
    CGContextClearRect(v11, v25);
    BoxRect = CGPDFPageGetBoxRect(self->_pdfPage, kCGPDFCropBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    if (BoxRect.size.width >= BoxRect.size.height)
    {
      v14 = BoxRect.size.width;
    }

    else
    {
      v14 = BoxRect.size.height;
    }

    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&v23.a = *MEMORY[0x1E695EFD0];
    *&v23.c = v15;
    *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&transform.a = *&v23.a;
    *&transform.c = v15;
    *&transform.tx = *&v23.tx;
    CGAffineTransformScale(&v23, &transform, 1024.0 / v14, 1024.0 / v14);
    if (width >= height)
    {
      v16 = width;
    }

    else
    {
      v16 = height;
    }

    v21 = v23;
    CGAffineTransformScale(&transform, &v21, v16 * 0.0009765625, v16 * 0.0009765625);
    v23 = transform;
    v21 = transform;
    CGAffineTransformTranslate(&transform, &v21, -x, -y);
    v23 = transform;
    CGContextSaveGState(v11);
    transform = v23;
    CGContextConcatCTM(v11, &transform);
    v27 = CGPDFPageGetBoxRect(self->_pdfPage, kCGPDFArtBox);
    CGContextClipToRect(v11, v27);
    CGContextDrawPDFPage(v11, self->_pdfPage);
    CGContextRestoreGState(v11);
    CGContextFlush(v11);
    Image = CGBitmapContextCreateImage(v11);
    if (Image)
    {
      v18 = Image;
      v19 = [[IFImage alloc] initWithCGImage:Image scale:a4];
      CFRelease(v18);
    }

    else
    {
      v19 = 0;
    }

    CGContextRelease(v11);
    CGColorSpaceRelease(v10);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end