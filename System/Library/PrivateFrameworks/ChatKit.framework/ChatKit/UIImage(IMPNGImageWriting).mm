@interface UIImage(IMPNGImageWriting)
- (id)__ck_heicsImageData;
- (id)__ck_pngImageData;
- (uint64_t)__ck_writePNGToFilePath:()IMPNGImageWriting error:;
- (uint64_t)__ck_writePNGToURL:()IMPNGImageWriting error:;
@end

@implementation UIImage(IMPNGImageWriting)

- (uint64_t)__ck_writePNGToFilePath:()IMPNGImageWriting error:
{
  v6 = [MEMORY[0x1E695DFF8] URLWithString:?];
  v7 = [a1 __ck_writePNGToURL:v6 error:a4];

  return v7;
}

- (uint64_t)__ck_writePNGToURL:()IMPNGImageWriting error:
{
  v6 = a3;
  v7 = [a1 __ck_pngImageData];
  v11 = 0;
  v8 = [v7 writeToURL:v6 options:1 error:&v11];

  v9 = v11;
  if (a4 && (v8 & 1) == 0)
  {
    v9 = v9;
    *a4 = v9;
  }

  return v8;
}

- (id)__ck_pngImageData
{
  [a1 CGImage];
  v1 = IMCreatePNGImageDataFromCGImageRef();

  return v1;
}

- (id)__ck_heicsImageData
{
  [a1 CGImage];
  v1 = IMCreateHEICSImageDataFromCGImageRef();

  return v1;
}

@end