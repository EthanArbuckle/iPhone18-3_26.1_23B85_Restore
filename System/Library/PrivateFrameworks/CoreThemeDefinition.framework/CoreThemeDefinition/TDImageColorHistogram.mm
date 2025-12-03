@interface TDImageColorHistogram
- (TDImageColorHistogram)initWithCGImage:(CGImage *)image;
@end

@implementation TDImageColorHistogram

- (TDImageColorHistogram)initWithCGImage:(CGImage *)image
{
  v14.receiver = self;
  v14.super_class = TDImageColorHistogram;
  v4 = [(TDImageColorHistogram *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v6 = &v4->_histogram.tbl[3][1023];
    Height = CGImageGetHeight(image);
    Width = CGImageGetWidth(image);
    v5->_imageBuffer.data = 0;
    v5->_imageBuffer.height = Height;
    v5->_imageBuffer.width = Width;
    v5->_imageBuffer.rowBytes = 0;
    v9 = CUIGetRGBAImageBuffer();
    if (v9)
    {
      NSLog(&cfstr_FailedToInitia.isa, v9);
    }

    else
    {
      v12 = *&v5->_imageBuffer.data;
      v13 = *(v6 + 3);
      v10 = CUIComputeImageColorHistogramARGB();
      if (!v10)
      {
        v5->_isMonochrome = CUIColorHistogramARGBIsMonochrome();
        CUIDeallocateRGBAImageBuffer();
        return v5;
      }

      NSLog(&cfstr_FailedToComput.isa, v10);
      CUIDeallocateRGBAImageBuffer();
    }

    return 0;
  }

  return v5;
}

@end