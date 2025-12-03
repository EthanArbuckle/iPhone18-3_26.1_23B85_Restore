@interface MFPTextureBrush
- (MFPTextureBrush)initWithImage:(id)image wrapMode:(int)mode transform:(CGAffineTransform *)transform;
@end

@implementation MFPTextureBrush

- (MFPTextureBrush)initWithImage:(id)image wrapMode:(int)mode transform:(CGAffineTransform *)transform
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([imageCopy phoneImage], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(imageCopy, "pixelSize"), v11 = v10, v9))
    {
      tx = transform->tx;
      d = transform->d;
      ty = transform->ty;
      a = transform->a;
      v18 = objc_autoreleasePoolPush();
      v19 = a;
      v20 = MEMORY[0x277CBF348];
      v21 = &OBJC_METACLASS___OITSUPathSet;
      if ((mode - 1) >= 3 && fabs(v19 + -1.0) <= 0.001 && fabs(d + -1.0) <= 0.001)
      {
        v34 = v9;
      }

      else
      {
        if ((mode & 0xFFFFFFFE) == 2)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        if ((mode & 0xFFFFFFFD) == 1)
        {
          v23 = 2;
        }

        else
        {
          v23 = 1;
        }

        v24 = v11 * v19;
        v25 = TCBitmapContextCreate(v11 * v19 * v23);
        v56 = ty;
        [v9 size];
        v26 = 0;
        v27 = v24;
        do
        {
          v28 = 0;
          if (v26)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          v30 = v29;
          do
          {
            if (v28)
            {
              v31 = -1;
            }

            else
            {
              v31 = 1;
            }

            [v9 drawInRect:1 fromRect:NSScaleRect2((2 * (v28++ != 0)) isFlipped:{(2 * (v26 != 0)), v31, v30, v27)}];
          }

          while (v23 != v28);
          ++v26;
        }

        while (v26 != v22);
        Image = CGBitmapContextCreateImage(v25);
        v21 = &OBJC_METACLASS___OITSUPathSet;
        v20 = MEMORY[0x277CBF348];
        ty = v56;
        v33 = Image;
        v34 = [OITSUImage imageWithCGImage:Image];

        CGImageRelease(v33);
        CGContextRelease(v25);
      }

      v35 = tx;
      v36 = ty;
      if (v35 == 0.0 && v36 == 0.0)
      {
        v12 = v34;
      }

      else
      {
        [v34 size];
        v38 = v37;
        v40 = v39;
        v41 = *v20;
        v42 = v20[1];
        v43 = TCBitmapContextCreate(v37);
        v44 = v35 - (floor(v35 / v38) + 1.0) * v38;
        v45 = v36 - (floor(v36 / v40) + 1.0) * v40;
        v46 = v44;
        v47 = v45;
        v48 = 0.0;
        v49 = 1;
        do
        {
          v50 = v49;
          v51 = v47 + v48 * v40;
          v52 = 1;
          v48 = 0.0;
          do
          {
            v53 = v52;
            [v34 drawInRect:1 fromRect:v46 + v48 * v38 isFlipped:{v51, v38, v40, v41, v42, v38, v40}];
            v52 = 0;
            v48 = 1.0;
          }

          while ((v53 & 1) != 0);
          v49 = 0;
        }

        while ((v50 & 1) != 0);
        v54 = CGBitmapContextCreateImage(v43);
        v12 = [&v21[41] imageWithCGImage:v54];

        CGImageRelease(v54);
        CGContextRelease(v43);
      }

      v57.receiver = self;
      v57.super_class = MFPTextureBrush;
      self = [(MFPImageBrush *)&v57 initWithPhoneImage:v12];
      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v12 = 0;
    }

    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end