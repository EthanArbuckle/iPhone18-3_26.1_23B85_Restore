@interface UIImage(HealthRecordsUI)
- (id)hr_imageWithWhiteBackground:()HealthRecordsUI;
@end

@implementation UIImage(HealthRecordsUI)

- (id)hr_imageWithWhiteBackground:()HealthRecordsUI
{
  v2 = objc_autoreleasePoolPush();
  cGImage = [self CGImage];
  memset(&srcTop, 0, sizeof(srcTop));
  [self size];
  v5 = v4;
  [self scale];
  v7 = v6;
  [self size];
  v9 = v8;
  [self scale];
  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v31 = 0x2000000008;
  DWORD2(v32) = 4;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  Components = CGColorGetComponents([whiteColor CGColor]);

  if (MEMORY[0x1D38884D0](&srcTop, &v31, Components, cGImage, 0))
  {
    free(srcTop.data);
    v14 = 0;
    goto LABEL_8;
  }

  v15 = (v9 * v11);
  v16 = (v5 * v7);
  v17 = malloc_type_calloc(4 * v16 * v15, 1uLL, 0x100004077774924uLL);
  dest.data = v17;
  dest.height = v15;
  dest.width = v16;
  dest.rowBytes = 4 * v16;
  v18 = malloc_type_calloc(4 * v16 * v15, 1uLL, 0x100004077774924uLL);
  v28.data = v18;
  v28.height = v15;
  v28.width = v16;
  v28.rowBytes = 4 * v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__UIImage_HealthRecordsUI__hr_imageWithWhiteBackground___block_invoke;
  aBlock[3] = &__block_descriptor_80_e5_v8__0l;
  v25 = srcTop;
  v26 = v17;
  v27 = v18;
  v19 = _Block_copy(aBlock);
  *color = -1;
  v30 = vImageBufferFill_ARGB8888(&dest, color, 0);
  if (v30 || (v30 = vImageAlphaBlend_ARGB8888(&srcTop, &dest, &v28, 0)) != 0)
  {
    v19[2](v19);
  }

  else
  {
    free(srcTop.data);
    free(v17);
    v21 = MEMORY[0x1D38884E0](&v28, &v31, 0, 0, 0, &v30);
    v22 = v21;
    if (!v30)
    {
      v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v21];
      CGImageRelease(v22);
      free(v18);
      goto LABEL_7;
    }

    CGImageRelease(v21);
    free(v18);
  }

  v14 = 0;
LABEL_7:

LABEL_8:
  objc_autoreleasePoolPop(v2);

  return v14;
}

@end