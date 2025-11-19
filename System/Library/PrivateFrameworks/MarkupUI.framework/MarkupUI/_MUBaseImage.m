@interface _MUBaseImage
- (_MUBaseImage)initWithBaseImage:(id)a3 allowHDR:(BOOL)a4;
- (void)dealloc;
@end

@implementation _MUBaseImage

- (_MUBaseImage)initWithBaseImage:(id)a3 allowHDR:(BOOL)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = _MUBaseImage;
  v7 = [(_MUBaseImage *)&v22 init];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = CGImageSourceCreateWithURL(v6, 0);
      }

      else
      {
        v8 = CGImageSourceCreateWithData(v6, 0);
      }

      v9 = v8;
      if (v8)
      {
        v7->_imageSourceRef = v8;
        v25 = *MEMORY[0x277CD3538];
        v10 = MEMORY[0x277CBEC38];
        v26[0] = MEMORY[0x277CBEC38];
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v7->_imageOptions = CGImageSourceCopyPropertiesAtIndex(v9, 0, v11);
        v7->_imageMetadata = CGImageSourceCopyMetadataAtIndex(v9, 0, 0);
        v12 = [MEMORY[0x277CBEB38] dictionary];
        [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CD3618]];
        v13 = *MEMORY[0x277CD3580];
        if (a4)
        {
          [v12 setObject:*MEMORY[0x277CD3590] forKeyedSubscript:*MEMORY[0x277CD3580]];
          v23 = *MEMORY[0x277CD2C48];
          v24 = v10;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD3588]];

          ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v12);
          HeadroomFromImage = GetHeadroomFromImage(ImageAtIndex);
        }

        else
        {
          [v12 setObject:*MEMORY[0x277CD3598] forKeyedSubscript:*MEMORY[0x277CD3580]];
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v12);
          HeadroomFromImage = 1.0;
        }

        v7->_headroom = HeadroomFromImage;
        AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
        v7->_opaque = (AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo);
        if (v7->_headroom > 1.0)
        {
          v7->_hdrImage = ImageAtIndex;
          v20 = [MEMORY[0x277CBEB38] dictionary];

          [v20 setObject:*MEMORY[0x277CD3598] forKeyedSubscript:v13];
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v20);
          v12 = v20;
        }

        v7->_sdrImage = ImageAtIndex;
      }
    }

    else
    {
      v17 = [(__CFURL *)v6 CGImage];
      CGImageRetain(v17);
      v18 = GetHeadroomFromImage(v17);
      v7->_headroom = v18;
      if (v18 <= 1.0)
      {
        v7->_sdrImage = v17;
      }

      else
      {
        v7->_hdrImage = v17;
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  sdrImage = self->_sdrImage;
  if (sdrImage)
  {
    CGImageRelease(sdrImage);
  }

  hdrImage = self->_hdrImage;
  if (hdrImage)
  {
    CGImageRelease(hdrImage);
  }

  imageSourceRef = self->_imageSourceRef;
  if (imageSourceRef)
  {
    CFRelease(imageSourceRef);
  }

  imageMetadata = self->_imageMetadata;
  if (imageMetadata)
  {
    CFRelease(imageMetadata);
  }

  imageOptions = self->_imageOptions;
  if (imageOptions)
  {
    CFRelease(imageOptions);
  }

  v8.receiver = self;
  v8.super_class = _MUBaseImage;
  [(_MUBaseImage *)&v8 dealloc];
}

@end