@interface GKImageColorPalette
- (BOOL)analyzeImage:(CGImage *)image;
- (GKImageColorPalette)initWithImage:(id)image;
- (unsigned)weightHistogram:(unsigned int *)histogram size:(unsigned int)size spread:(unsigned int)spread;
- (void)clearSaturationAndBrightnessHistograms;
- (void)findBrightColors;
- (void)generateHSVMapWithContext:(CGContext *)context;
- (void)iterateOverPixelsWithBlock:(id)block forHue:(unsigned int)hue;
- (void)printHistogram:(unsigned int *)histogram ofSize:(unsigned int)size;
- (void)reset;
@end

@implementation GKImageColorPalette

- (void)reset
{
  imageHSVMap = self->_imageHSVMap;
  if (imageHSVMap)
  {
    free(imageHSVMap);
    self->_imageHSVMap = 0;
  }

  self->_imageSize = *MEMORY[0x277CBF3A8];
  [(GKImageColorPalette *)self clearMainHistograms];
  [(GKImageColorPalette *)self clearSaturationAndBrightnessHistograms];
  self->_borderPercentageForBorderDetection = 0.0;
  self->_hueSpread = 7;
  self->_saturationSpread = 10;
  self->_brightnessSpread = 10;
  self->_grayscaleSpread = 15;
}

- (void)clearSaturationAndBrightnessHistograms
{
  bzero(self->_saturationHistogram, 0x400uLL);

  bzero(self->_brightnessHistogram, 0x400uLL);
}

- (void)generateHSVMapWithContext:(CGContext *)context
{
  if (context)
  {
    BytesPerRow = CGBitmapContextGetBytesPerRow(context);
    Data = CGBitmapContextGetData(context);
    if (Data)
    {
      v7 = Data;
      height = self->_imageSize.height;
      width = self->_imageSize.width;
      v10 = malloc_type_calloc(width * height, 0x18uLL, 0x1000040504FFAC1uLL);
      self->_imageHSVMap = v10;
      if (v10)
      {
        BitmapInfo = CGBitmapContextGetBitmapInfo(context);
        if (height)
        {
          v15 = 0;
          v16 = 0;
          v17 = BitmapInfo & 0x3000;
          v18 = 3;
          if ((BitmapInfo & 0x3000) != 0)
          {
            v18 = 0;
          }

          do
          {
            if (width)
            {
              v19 = v7 + BytesPerRow * v15;
              imageHSVMap = self->_imageHSVMap;
              v21 = v16 + width;
              v22 = width;
              do
              {
                if (v17)
                {
                  v23 = 2;
                }

                else
                {
                  v23 = 1;
                }

                if (v17)
                {
                  v24 = 1;
                }

                else
                {
                  v24 = 2;
                }

                LOBYTE(v12) = *(v19 + v18);
                *&v12 = LODWORD(v12) / 255.0;
                v25 = *&v12;
                LOBYTE(v13) = *(v19 + v24);
                *&v13 = LODWORD(v13) / 255.0;
                LOBYTE(v14) = *(v19 + v23);
                v26 = *&v13;
                *&v14 = LODWORD(v14) / 255.0;
                v27 = *&v14;
                if (*&v14 < *&v13 || *&v14 < *&v12)
                {
                  if (*&v13 < *&v12 || *&v13 < *&v14)
                  {
                    if (*&v13 >= *&v14)
                    {
                      v30 = *&v14;
                    }

                    else
                    {
                      v30 = *&v13;
                    }

                    v12 = *&v12;
                  }

                  else
                  {
                    if (*&v14 >= *&v12)
                    {
                      v30 = *&v12;
                    }

                    else
                    {
                      v30 = *&v14;
                    }

                    v12 = *&v13;
                  }
                }

                else
                {
                  if (*&v13 >= *&v12)
                  {
                    v30 = *&v12;
                  }

                  else
                  {
                    v30 = *&v13;
                  }

                  v12 = *&v14;
                }

                v14 = 0.0;
                if (v12 <= 0.0)
                {
                  v13 = 0.0;
                }

                else
                {
                  v31 = v12 - v30;
                  v13 = (v12 - v30) / v12;
                  if (v13 != 0.0)
                  {
                    v32 = (v12 - v26) / v31;
                    v33 = (v12 - v25) / v31;
                    if (v12 == v27)
                    {
                      if (v30 == v26)
                      {
                        v14 = v33 + 5.0;
                      }

                      else
                      {
                        v14 = 1.0 - v32;
                      }
                    }

                    else
                    {
                      v35 = v12 == v26;
                      v36 = (v12 - v27) / v31;
                      if (v35)
                      {
                        if (v30 == v25)
                        {
                          v14 = v36 + 1.0;
                        }

                        else
                        {
                          v14 = 3.0 - v33;
                        }
                      }

                      else if (v30 == v27)
                      {
                        v14 = v32 + 3.0;
                      }

                      else
                      {
                        v14 = 5.0 - v36;
                      }
                    }
                  }
                }

                p_var0 = &imageHSVMap[v16].var0;
                *p_var0 = v14 / 6.0;
                p_var0[1] = v13;
                p_var0[2] = v12;
                ++v16;
                v19 += 4;
                --v22;
              }

              while (v22);
              v16 = v21;
            }

            ++v15;
          }

          while (v15 != height);
        }
      }
    }
  }
}

- (void)printHistogram:(unsigned int *)histogram ofSize:(unsigned int)size
{
  if (size)
  {
    v5 = 0;
    sizeCopy = size;
    do
    {
      v7 = histogram[v5];
      if (v7)
      {
        printf("%ld - %ld\n", v5, v7);
      }

      ++v5;
    }

    while (sizeCopy != v5);
  }
}

- (unsigned)weightHistogram:(unsigned int *)histogram size:(unsigned int)size spread:(unsigned int)spread
{
  v8 = 4 * size;
  v9 = malloc_type_malloc(v8, 0x100004052888210uLL);
  memcpy(v9, histogram, v8);
  if (size)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = -1;
    do
    {
      v16 = *(v9 + v11);
      if (!spread)
      {
        goto LABEL_25;
      }

      v17 = v16;
      v18 = 1;
      v19 = 1.0;
      v20 = v15;
      v21 = v14;
      spreadCopy = spread;
      v23 = 1;
      do
      {
        v24 = v20 < 0 && size == 360;
        v25 = v20 + 360;
        if (!v24)
        {
          v25 = v20;
        }

        if ((v25 & 0x80000000) == 0)
        {
          LODWORD(v10) = *(v9 + v25);
          v10 = *&v10;
          if (v17 >= v10)
          {
            v10 = (v19 * -0.0500000007 + 1.0) * v10;
            v16 += vcvtad_u64_f64(v10);
            histogram[v25] = 0;
          }

          else
          {
            v23 = 0;
          }
        }

        v26 = v21 - 360;
        if (v21 <= 360 || size != 360)
        {
          v26 = v21;
        }

        if (v26 < size)
        {
          LODWORD(v10) = *(v9 + v26);
          v10 = *&v10;
          if (v17 >= v10)
          {
            v10 = (v18 * -0.0500000007 + 1.0) * v10;
            v16 += vcvtad_u64_f64(v10);
            histogram[v26] = 0;
          }

          else
          {
            v23 = 0;
          }
        }

        v19 = v19 + 1.0;
        ++v18;
        ++v21;
        --v20;
        --spreadCopy;
      }

      while (spreadCopy);
      if ((v23 & 1) == 0)
      {
        v16 = histogram[v11];
      }

      else
      {
LABEL_25:
        histogram[v11] = v16;
      }

      if (v16 > v12)
      {
        v13 = v11;
        v12 = v16;
      }

      ++v11;
      ++v14;
      ++v15;
    }

    while (v11 != size);
  }

  else
  {
    v13 = 0;
  }

  free(v9);
  return v13;
}

- (void)iterateOverPixelsWithBlock:(id)block forHue:(unsigned int)hue
{
  v4 = *&hue;
  blockCopy = block;
  if (blockCopy)
  {
    if (self->_imageHSVMap)
    {
      height = self->_imageSize.height;
      if (height)
      {
        v7 = 0;
        v8 = 0;
        width = self->_imageSize.width;
        v13 = blockCopy;
        do
        {
          v10 = width;
          v11 = v7;
          if (width)
          {
            do
            {
              (*(blockCopy + 2))(v13, &self->_imageHSVMap[v11], v4);
              blockCopy = v13;
              ++v11;
              --v10;
            }

            while (v10);
          }

          ++v8;
          v7 += width;
        }

        while (v8 != height);
      }
    }
  }
}

- (void)findBrightColors
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__GKImageColorPalette_findBrightColors__block_invoke;
  v7[3] = &unk_27967F3D0;
  v7[4] = self;
  [(GKImageColorPalette *)self iterateOverPixelsWithBlock:v7 forHue:0];
  hueHistogram = self->_hueHistogram;
  [(GKImageColorPalette *)self weightHistogram:self->_hueHistogram size:360 spread:self->_hueSpread];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:360];
  for (i = 0; i != 360; ++i)
  {
    if (hueHistogram[i] >= 0xB)
    {
      v6 = [[SortHueEntry alloc] initWithHue:i count:hueHistogram[i]];
      [v4 addObject:v6];
    }
  }

  [v4 sortUsingComparator:&__block_literal_global_9];
}

double __39__GKImageColorPalette_findBrightColors__block_invoke(uint64_t a1, double *a2)
{
  result = a2[1];
  if (result >= 0.0399999991)
  {
    v3 = a2[2];
    if (v3 <= 0.899999976)
    {
      result = result * 0.100000001 + 0.0 + v3;
      if (result >= 0.200000003)
      {
        result = *a2 * 359.0;
        v4 = vcvtad_u64_f64(result);
        ++*(*(a1 + 32) + 56 + 4 * v4);
      }
    }
  }

  return result;
}

uint64_t __39__GKImageColorPalette_findBrightColors__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 < [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)analyzeImage:(CGImage *)image
{
  [(GKImageColorPalette *)self reset];
  if (image)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    self->_imageSize.width = Width;
    self->_imageSize.height = Height;
    v7 = [[GKImageContext alloc] initWithSize:0 scale:self->_imageSize.width options:self->_imageSize.height, 1.0];
    cGContext = [(GKImageContext *)v7 CGContext];
    v11.size.width = self->_imageSize.width;
    v11.size.height = self->_imageSize.height;
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    CGContextDrawImage(cGContext, v11, image);
    [(GKImageColorPalette *)self generateHSVMapWithContext:[(GKImageContext *)v7 CGContext]];
    imageHSVMap = self->_imageHSVMap;
    LOBYTE(image) = imageHSVMap != 0;
    if (imageHSVMap)
    {
      [(GKImageColorPalette *)self findBrightColors];
    }
  }

  return image;
}

- (GKImageColorPalette)initWithImage:(id)image
{
  imageCopy = image;
  v7.receiver = self;
  v7.super_class = GKImageColorPalette;
  v5 = [(GKImageColorPalette *)&v7 init];
  if (v5)
  {
    -[GKImageColorPalette analyzeImage:](v5, "analyzeImage:", [imageCopy CGImage]);
  }

  return v5;
}

@end