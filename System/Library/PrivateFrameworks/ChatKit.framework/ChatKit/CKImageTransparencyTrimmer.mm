@interface CKImageTransparencyTrimmer
- (BOOL)isTooSmallToTrim;
- (CGRect)trimmedFrame;
- (CGSize)size;
- (double)trimmedBottom;
- (double)trimmedLeft;
- (double)trimmedRight;
- (double)trimmedTop;
- (id)trimTransparencyFromImage:(id)image;
- (void)dealloc;
- (void)setBitmap:(char *)bitmap;
@end

@implementation CKImageTransparencyTrimmer

- (void)dealloc
{
  [(CKImageTransparencyTrimmer *)self setBitmap:0];
  v3.receiver = self;
  v3.super_class = CKImageTransparencyTrimmer;
  [(CKImageTransparencyTrimmer *)&v3 dealloc];
}

- (BOOL)isTooSmallToTrim
{
  [(CKImageTransparencyTrimmer *)self size];
  if (v3 < 2.0)
  {
    return 1;
  }

  [(CKImageTransparencyTrimmer *)self size];
  return v5 < 2.0;
}

- (void)setBitmap:(char *)bitmap
{
  bitmap = self->_bitmap;
  if (bitmap)
  {
    free(bitmap);
  }

  self->_bitmap = bitmap;
}

- (double)trimmedTop
{
  [(CKImageTransparencyTrimmer *)self height];
  v3 = 0.0;
  if (v4 > 0.0)
  {
    v6 = 0;
    while (1)
    {
      [(CKImageTransparencyTrimmer *)self width];
      if (v7 > 0.0)
      {
        break;
      }

LABEL_8:
      v6 = (v6 + 1);
      v3 = v6;
      [(CKImageTransparencyTrimmer *)self height];
      if (v10 <= v6)
      {
        return 0.0;
      }
    }

    v8 = 0;
    while (![(CKImageTransparencyTrimmer *)self pixel:v6 col:v8])
    {
      v8 = (v8 + 1);
      [(CKImageTransparencyTrimmer *)self width];
      if (v9 <= v8)
      {
        goto LABEL_8;
      }
    }
  }

  return v3;
}

- (double)trimmedLeft
{
  [(CKImageTransparencyTrimmer *)self width];
  v4 = v3;
  [(CKImageTransparencyTrimmer *)self height];
  if (v5 > 0.0)
  {
    v6 = 0;
    do
    {
      [(CKImageTransparencyTrimmer *)self width];
      if (v7 > 0.0)
      {
        v8 = 0;
        v9 = 0.0;
        do
        {
          v10 = [(CKImageTransparencyTrimmer *)self pixel:v6 col:v8];
          v11 = v4 < v9 || v10 == 0;
          if (!v11)
          {
            v4 = v9;
          }

          v8 = (v8 + 1);
          v9 = v8;
          [(CKImageTransparencyTrimmer *)self width];
        }

        while (v12 > v8);
      }

      v6 = (v6 + 1);
      [(CKImageTransparencyTrimmer *)self height];
    }

    while (v13 > v6);
  }

  [(CKImageTransparencyTrimmer *)self width];
  v11 = v4 == v14;
  result = 0.0;
  if (!v11)
  {
    return v4;
  }

  return result;
}

- (double)trimmedRight
{
  [(CKImageTransparencyTrimmer *)self height];
  if (v3 > 0.0)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      [(CKImageTransparencyTrimmer *)self width];
      v7 = (v6 + -1.0);
      if ((v7 & 0x80000000) == 0)
      {
        do
        {
          v8 = [(CKImageTransparencyTrimmer *)self pixel:v4 col:v7];
          v9 = v7;
          if (v5 >= v7)
          {
            v9 = v5;
          }

          if (v8)
          {
            v5 = v9;
          }

          v7 = (v7 - 1);
        }

        while (v7 != -1);
      }

      v4 = (v4 + 1);
      [(CKImageTransparencyTrimmer *)self height];
    }

    while (v10 > v4);
    if (v5 != 0.0)
    {
      return v5;
    }
  }

  [(CKImageTransparencyTrimmer *)self width];
  return result;
}

- (double)trimmedBottom
{
  [(CKImageTransparencyTrimmer *)self height];
  v4 = (v3 + -1.0);
  if ((v4 & 0x80000000) != 0)
  {
LABEL_8:

    [(CKImageTransparencyTrimmer *)self height];
  }

  else
  {
    while (1)
    {
      [(CKImageTransparencyTrimmer *)self width];
      if (v5 > 0.0)
      {
        break;
      }

LABEL_6:
      v8 = v4 <= 0;
      v4 = (v4 - 1);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v6 = 0;
    while (![(CKImageTransparencyTrimmer *)self pixel:v4 col:v6])
    {
      v6 = (v6 + 1);
      [(CKImageTransparencyTrimmer *)self width];
      if (v7 <= v6)
      {
        goto LABEL_6;
      }
    }

    return v4;
  }

  return result;
}

- (CGRect)trimmedFrame
{
  [(CKImageTransparencyTrimmer *)self trimmedLeft];
  v4 = fmax(v3 + -2.0, 0.0);
  [(CKImageTransparencyTrimmer *)self width];
  v6 = v5;
  [(CKImageTransparencyTrimmer *)self trimmedRight];
  v8 = v7 + 2.0;
  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  [(CKImageTransparencyTrimmer *)self trimmedTop];
  v11 = fmax(v10 + -2.0, 0.0);
  [(CKImageTransparencyTrimmer *)self height];
  v13 = v12;
  [(CKImageTransparencyTrimmer *)self trimmedBottom];
  v15 = v14 + 2.0;
  if (v13 < v15)
  {
    v15 = v13;
  }

  v16 = v9 - v4;
  v17 = v15 - v11;
  v18 = v4;
  v19 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)trimTransparencyFromImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    v6 = imageCopy;
    [(CKImageTransparencyTrimmer *)self setImage:v6];
    [v6 size];
    [(CKImageTransparencyTrimmer *)self setSize:?];
    [(CKImageTransparencyTrimmer *)self size];
    [(CKImageTransparencyTrimmer *)self setBytesPerRow:v7];
    if (![(CKImageTransparencyTrimmer *)self isTooSmallToTrim])
    {
      [(CKImageTransparencyTrimmer *)self width];
      v9 = v8;
      [(CKImageTransparencyTrimmer *)self height];
      [(CKImageTransparencyTrimmer *)self setBitmapSize:(v9 * v10)];
      [(CKImageTransparencyTrimmer *)self width];
      v12 = v11;
      [(CKImageTransparencyTrimmer *)self height];
      [(CKImageTransparencyTrimmer *)self setBitmap:malloc_type_calloc((v12 * v13), 1uLL, 0x100004077774924uLL)];
      bitmap = [(CKImageTransparencyTrimmer *)self bitmap];
      [(CKImageTransparencyTrimmer *)self width];
      v16 = v15;
      [(CKImageTransparencyTrimmer *)self height];
      v18 = CGBitmapContextCreate(bitmap, v16, v17, 8uLL, [(CKImageTransparencyTrimmer *)self bytesPerRow], 0, 7u);
      image = [(CKImageTransparencyTrimmer *)self image];
      cGImage = [image CGImage];

      [(CKImageTransparencyTrimmer *)self width];
      v22 = v21;
      [(CKImageTransparencyTrimmer *)self height];
      v24 = v23;
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = v22;
      v40.size.height = v24;
      CGContextDrawImage(v18, v40, cGImage);
      [(CKImageTransparencyTrimmer *)self trimmedFrame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = v22;
      v41.size.height = v24;
      v42.origin.x = v26;
      v42.origin.y = v28;
      v42.size.width = v30;
      v42.size.height = v32;
      if (!CGRectEqualToRect(v41, v42))
      {
        [v6 scale];
        v34 = v33;
        v39.width = v30;
        v39.height = v32;
        UIGraphicsBeginImageContextWithOptions(v39, 0, v34);
        [v6 drawAtPoint:{-v26, -v28}];
        v35 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        v6 = v35;
      }

      if (v18)
      {
        CGContextRelease(v18);
      }

      [(CKImageTransparencyTrimmer *)self setBitmap:0];
      [(CKImageTransparencyTrimmer *)self setImage:0];
    }

    v36 = v6;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end