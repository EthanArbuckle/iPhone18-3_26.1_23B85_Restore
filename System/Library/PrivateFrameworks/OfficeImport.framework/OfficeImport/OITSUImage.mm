@interface OITSUImage
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)imageWithCGImage:(CGImage *)image;
+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)imageWithContentsOfFile:(id)file;
+ (id)imageWithData:(id)data;
+ (id)imageWithUIImage:(id)image;
+ (id)noisePatternWithWidth:(unint64_t)width height:(unint64_t)height factor:(double)factor;
- (BOOL)isEmpty;
- (CGImage)CGImage;
- (CGImage)CGImageForSize:(CGSize)size;
- (CGSize)size;
- (OITSUImage)init;
- (OITSUImage)initWithCGImage:(CGImage *)image;
- (OITSUImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
- (OITSUImage)initWithContentsOfFile:(id)file;
- (OITSUImage)initWithData:(id)data;
- (OITSUImage)initWithImageSourceRef:(CGImageSource *)ref;
- (OITSUImage)initWithUIImage:(id)image;
- (UIImage)UIImage;
- (double)scale;
- (id)JPEGRepresentationWithCompressionQuality:(double)quality;
- (id)PNGRepresentation;
- (id)TIFFRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stretchedImageOfSize:(CGSize)size leftCapWidth:(double)width rightCapWidth:(double)capWidth topCapHeight:(double)height bottomCapHeight:(double)capHeight;
- (int64_t)imageOrientation;
- (void)dealloc;
- (void)drawInRect:(CGRect)rect context:(CGContext *)context stretchingCenterWidthBy:(double)by;
- (void)drawInRect:(CGRect)rect fromRect:(CGRect)fromRect isFlipped:(BOOL)flipped;
@end

@implementation OITSUImage

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [OI_TSUImageM allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___OITSUImage;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (id)imageWithContentsOfFile:(id)file
{
  v3 = [[self alloc] initWithContentsOfFile:file];

  return v3;
}

+ (id)imageWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

+ (id)imageWithCGImage:(CGImage *)image
{
  v3 = [[self alloc] initWithCGImage:image];

  return v3;
}

+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [[self alloc] initWithCGImage:image scale:orientation orientation:scale];

  return v5;
}

- (OITSUImage)init
{
  v4.receiver = self;
  v4.super_class = OITSUImage;
  v2 = [(OITSUImage *)&v4 init];
  if (v2)
  {
    v2->mImageSlicesOnce = objc_alloc_init(TSUOnce);
    v2->mCachedImageOnce = objc_alloc_init(TSUOnce);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage copyWithZone:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:721 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage copyWithZone:]"), 0}];
  objc_exception_throw(v10);
}

- (OITSUImage)initWithContentsOfFile:(id)file
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage initWithContentsOfFile:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:726 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage initWithContentsOfFile:]"), 0}];
  objc_exception_throw(v10);
}

- (OITSUImage)initWithData:(id)data
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage initWithData:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:731 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage initWithData:]"), 0}];
  objc_exception_throw(v10);
}

- (OITSUImage)initWithCGImage:(CGImage *)image
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage initWithCGImage:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:736 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage initWithCGImage:]"), 0}];
  objc_exception_throw(v10);
}

- (OITSUImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[OITSUImage initWithCGImage:scale:orientation:]", orientation, scale}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v7 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:741 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v7)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = [v8 exceptionWithName:v9 reason:objc_msgSend(v10 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v11), "-[OITSUImage initWithCGImage:scale:orientation:]"), 0}];
  objc_exception_throw(v12);
}

- (OITSUImage)initWithImageSourceRef:(CGImageSource *)ref
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage initWithImageSourceRef:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:746 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage initWithImageSourceRef:]"), 0}];
  objc_exception_throw(v10);
}

- (CGSize)size
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage size]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:752 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v4)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[OITSUImage size]"), 0}];
  objc_exception_throw(v9);
}

- (double)scale
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage scale]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:756 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v4)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[OITSUImage scale]"), 0}];
  objc_exception_throw(v9);
}

- (void)dealloc
{
  CGImageRelease(self->mCachedSliceableImage);
  mImageSlices = self->mImageSlices;
  if (mImageSlices)
  {
    CFRelease(mImageSlices);
  }

  v4.receiver = self;
  v4.super_class = OITSUImage;
  [(OITSUImage *)&v4 dealloc];
}

- (CGImage)CGImageForSize:(CGSize)size
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[OITSUImage CGImageForSize:]", size.width, size.height}];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:771 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage CGImageForSize:]"), 0}];
  objc_exception_throw(v10);
}

- (CGImage)CGImage
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage CGImage]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:775 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v4)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[OITSUImage CGImage]"), 0}];
  objc_exception_throw(v9);
}

- (int64_t)imageOrientation
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage imageOrientation]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:779 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v4)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[OITSUImage imageOrientation]"), 0}];
  objc_exception_throw(v9);
}

- (BOOL)isEmpty
{
  cGImage = [(OITSUImage *)self CGImage];

  return TSUCGImageIsEmpty(cGImage);
}

- (id)TIFFRepresentation
{
  cGImage = [(OITSUImage *)self CGImage];

  return CGImageTIFFRepresentation(cGImage);
}

- (id)JPEGRepresentationWithCompressionQuality:(double)quality
{
  cGImage = [(OITSUImage *)self CGImage];

  return CGImageJPEGRepresentation(cGImage, quality);
}

- (id)PNGRepresentation
{
  cGImage = [(OITSUImage *)self CGImage];

  return CGImagePNGRepresentation(cGImage);
}

- (id)stretchedImageOfSize:(CGSize)size leftCapWidth:(double)width rightCapWidth:(double)capWidth topCapHeight:(double)height bottomCapHeight:(double)capHeight
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__OITSUImage_stretchedImageOfSize_leftCapWidth_rightCapWidth_topCapHeight_bottomCapHeight___block_invoke;
  v12[3] = &unk_2799C6610;
  sizeCopy = size;
  v12[4] = self;
  heightCopy = height;
  capHeightCopy = capHeight;
  widthCopy = width;
  capWidthCopy = capWidth;
  v8 = __91__OITSUImage_stretchedImageOfSize_leftCapWidth_rightCapWidth_topCapHeight_bottomCapHeight___block_invoke(v12, [(OITSUImage *)self CGImageForSize:?], 1.0);
  [(OITSUImage *)self scale];
  v10 = [OITSUImage imageWithCGImage:v8 scale:[(OITSUImage *)self imageOrientation] orientation:v9];
  CGImageRelease(v8);
  return v10;
}

CGImageRef __91__OITSUImage_stretchedImageOfSize_leftCapWidth_rightCapWidth_topCapHeight_bottomCapHeight___block_invoke(uint64_t a1, CGImageRef image, double a3)
{
  v38 = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = fabs(*(a1 + 40));
  [*(a1 + 32) scale];
  v10 = ceil(v8 * v9 * a3);
  v11 = fabs(*(a1 + 48));
  [*(a1 + 32) scale];
  v13 = ceil(v11 * v12 * a3);
  v14 = *(a1 + 64);
  if (*(a1 + 56) * a3 >= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = *(a1 + 56) * a3;
  }

  if (v14 * a3 >= Height - v15)
  {
    v16 = Height - v15;
  }

  else
  {
    v16 = v14 * a3;
  }

  v17 = *(a1 + 80);
  if (*(a1 + 72) * a3 >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = *(a1 + 72) * a3;
  }

  if (v17 * a3 >= Width - v18)
  {
    v19 = Width - v18;
  }

  else
  {
    v19 = v17 * a3;
  }

  TSUSplitRectIntoSlices(v37, 0.0, 0.0, Width, Height, v18, v19, v15, v16);
  TSUSplitRectIntoSlices(v36, 0.0, 0.0, v10, v13, v18, v19, v15, v16);
  v20 = TSUCreateRGBABitmapContext(1, v10, v13, 1.0);
  for (i = 0; i != 288; i += 32)
  {
    v22 = *&v37[i];
    v23 = *&v37[i + 8];
    v24 = *&v37[i + 16];
    v25 = *&v37[i + 24];
    v26 = *&v36[i];
    v27 = *&v36[i + 8];
    v28 = *&v36[i + 16];
    v29 = *&v36[i + 24];
    v39.origin.x = v22;
    v39.origin.y = v23;
    v39.size.width = v24;
    v39.size.height = v25;
    if (!CGRectIsEmpty(v39))
    {
      v40.origin.x = v22;
      v40.origin.y = v23;
      v40.size.width = v24;
      v40.size.height = v25;
      if (!CGRectIsNull(v40))
      {
        v41.origin.x = v26;
        v41.origin.y = v27;
        v41.size.width = v28;
        v41.size.height = v29;
        if (!CGRectIsEmpty(v41))
        {
          v42.origin.x = v26;
          v42.origin.y = v27;
          v42.size.width = v28;
          v42.size.height = v29;
          if (!CGRectIsNull(v42))
          {
            v43.origin.x = v22;
            v43.origin.y = v23;
            v43.size.width = v24;
            v43.size.height = v25;
            v30 = CGImageCreateWithImageInRect(image, v43);
            if (v30)
            {
              v31 = v30;
              CGContextSaveGState(v20);
              v44.origin.x = v26;
              v44.origin.y = v27;
              v44.size.width = v28;
              v44.size.height = v29;
              MaxY = CGRectGetMaxY(v44);
              v45.origin.x = v26;
              v45.origin.y = v27;
              v45.size.width = v28;
              v45.size.height = v29;
              MinY = CGRectGetMinY(v45);
              CGContextTranslateCTM(v20, 0.0, MaxY + MinY);
              CGContextScaleCTM(v20, 1.0, -1.0);
              v46.origin.x = v26;
              v46.origin.y = v27;
              v46.size.width = v28;
              v46.size.height = v29;
              CGContextDrawImage(v20, v46, v31);
              CGImageRelease(v31);
              CGContextRestoreGState(v20);
            }
          }
        }
      }
    }
  }

  v34 = CGBitmapContextCreateImage(v20);
  CGContextRelease(v20);
  return v34;
}

- (void)drawInRect:(CGRect)rect context:(CGContext *)context stretchingCenterWidthBy:(double)by
{
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [(OITSUImage *)self CGImageForSize:rect.size.width, rect.size.height];
  Width = CGImageGetWidth(v10);
  v12 = CGImageGetHeight(v10);
  if ((Width & 0x80000001) == 1)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = floor(vcvtd_n_f64_u64(Width, 1uLL)) - (v13 + -1.0);
  v15 = Width - (v13 + v14);
  mImageSlicesOnce = self->mImageSlicesOnce;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__OITSUImage_drawInRect_context_stretchingCenterWidthBy___block_invoke;
  v26[3] = &unk_2799C60B0;
  v26[4] = self;
  [(TSUOnce *)mImageSlicesOnce performBlockOnce:v26];
  mCachedSliceableImage = self->mCachedSliceableImage;
  if (!mCachedSliceableImage || !CFEqual(v10, mCachedSliceableImage))
  {
    v18 = v12;
    self->mCachedSliceableImage = CGImageRetain(v10);
    CFDictionaryRemoveAllValues(self->mImageSlices);
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = v14;
    v27.size.height = v12;
    v19 = CGImageCreateWithImageInRect(v10, v27);
    v28.origin.y = 0.0;
    v28.origin.x = v13 + v14;
    v28.size.width = Width - (v13 + v14);
    v28.size.height = v18;
    v20 = CGImageCreateWithImageInRect(v10, v28);
    v29.origin.y = 0.0;
    v29.origin.x = v14;
    v29.size.width = v13;
    v29.size.height = v18;
    v21 = CGImageCreateWithImageInRect(v10, v29);
    CFDictionarySetValue(self->mImageSlices, &unk_286F6D7A0, v19);
    CFDictionarySetValue(self->mImageSlices, &unk_286F6D7B8, v21);
    CFDictionarySetValue(self->mImageSlices, &unk_286F6D7D0, v20);
    CGImageRelease(v19);
    CGImageRelease(v20);
    CGImageRelease(v21);
  }

  Value = CFDictionaryGetValue(self->mImageSlices, &unk_286F6D7A0);
  v23 = CFDictionaryGetValue(self->mImageSlices, &unk_286F6D7B8);
  v24 = CFDictionaryGetValue(self->mImageSlices, &unk_286F6D7D0);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = v14;
  v30.size.height = height;
  CGContextDrawImage(context, v30, Value);
  v31.origin.x = x + v14;
  v31.origin.y = y;
  v31.size.width = by;
  v31.size.height = height;
  CGContextDrawImage(context, v31, v23);
  v32.origin.x = x + v14 + by;
  v32.origin.y = y;
  v32.size.width = v15;
  v32.size.height = height;
  CGContextDrawImage(context, v32, v24);
}

CFMutableDictionaryRef __57__OITSUImage_drawInRect_context_stretchingCenterWidthBy___block_invoke(uint64_t a1)
{
  result = CFDictionaryCreateMutable(0, 12, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(*(a1 + 32) + 16) = result;
  return result;
}

+ (id)imageWithUIImage:(id)image
{
  v3 = [[OITSUUIImage alloc] initWithUIImage:image];

  return v3;
}

- (OITSUImage)initWithUIImage:(id)image
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUImage(UIKitAdditions) initWithUIImage:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:989 isFatal:0 description:"Abstract method not overridden by %@", NSStringFromClass(v5)];
  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[OITSUImage(UIKitAdditions) initWithUIImage:]"), 0}];
  objc_exception_throw(v10);
}

- (UIImage)UIImage
{
  mCachedImageOnce = self->mCachedImageOnce;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__OITSUImage_UIKitAdditions__UIImage__block_invoke;
  v5[3] = &unk_2799C60B0;
  v5[4] = self;
  [(TSUOnce *)mCachedImageOnce performBlockOnce:v5];
  return self->mCachedSystemImage;
}

uint64_t __37__OITSUImage_UIKitAdditions__UIImage__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  result = [v2 initWithCGImage:v3 scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), v4}];
  *(*(a1 + 32) + 32) = result;
  return result;
}

+ (id)noisePatternWithWidth:(unint64_t)width height:(unint64_t)height factor:(double)factor
{
  v9 = height * width;
  v10 = malloc_type_malloc(height * width, 0x100004077774924uLL);
  srand(0x7Cu);
  if (v9)
  {
    v11 = v10;
    do
    {
      v12 = rand();
      if (v12 <= 0)
      {
        v13 = --v12;
      }

      else
      {
        v13 = v12;
      }

      v14 = v13 * factor;
      if (v14 > 255.0)
      {
        v14 = 255.0;
      }

      *v11++ = v14;
      --v9;
    }

    while (v9);
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v16 = CGBitmapContextCreate(v10, width, height, 8uLL, width, DeviceGray, 0);
  Image = CGBitmapContextCreateImage(v16);
  CGColorSpaceRelease(DeviceGray);
  free(v10);
  CGContextRelease(v16);
  v18 = [self imageWithCGImage:Image];
  CGImageRelease(Image);
  return v18;
}

- (void)drawInRect:(CGRect)rect fromRect:(CGRect)fromRect isFlipped:(BOOL)flipped
{
  if (fromRect.size.width >= 0.0)
  {
    x = fromRect.origin.x;
  }

  else
  {
    x = fromRect.origin.x + fromRect.size.width;
  }

  if (fromRect.size.width >= 0.0)
  {
    width = fromRect.size.width;
  }

  else
  {
    width = -fromRect.size.width;
  }

  v32 = width;
  if (rect.size.width < 0.0)
  {
    v8 = fromRect.size.width >= 0.0;
  }

  else
  {
    v8 = fromRect.size.width < 0.0;
  }

  if (rect.size.width < 0.0)
  {
    v9 = rect.origin.x + rect.size.width;
  }

  else
  {
    v9 = rect.origin.x;
  }

  if (rect.size.width < 0.0)
  {
    v10 = -rect.size.width;
  }

  else
  {
    v10 = rect.size.width;
  }

  flippedCopy = !flipped;
  height = -fromRect.size.height;
  if (fromRect.size.height < 0.0)
  {
    y = fromRect.origin.y + fromRect.size.height;
  }

  else
  {
    flippedCopy = flipped;
    y = fromRect.origin.y;
  }

  if (fromRect.size.height >= 0.0)
  {
    height = fromRect.size.height;
  }

  rect = height;
  if (rect.size.height < 0.0)
  {
    v14 = !flippedCopy;
  }

  else
  {
    v14 = flippedCopy;
  }

  if (rect.size.height < 0.0)
  {
    v15 = rect.origin.y + rect.size.height;
  }

  else
  {
    v15 = rect.origin.y;
  }

  if (rect.size.height < 0.0)
  {
    v16 = -rect.size.height;
  }

  else
  {
    v16 = rect.size.height;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v35.origin.x = v9;
  v35.origin.y = v15;
  v35.size.width = v10;
  v35.size.height = v16;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v9;
  v36.origin.y = v15;
  v36.size.width = v10;
  v36.size.height = v16;
  MidY = CGRectGetMidY(v36);
  CGContextTranslateCTM(CurrentContext, MidX, MidY);
  v20 = 1.0;
  if (v8)
  {
    v21 = -1.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (v14)
  {
    v20 = -1.0;
  }

  CGContextScaleCTM(CurrentContext, v21, v20);
  v37.origin.x = v9;
  v37.origin.y = v15;
  v37.size.width = v10;
  v37.size.height = v16;
  v22 = -CGRectGetMidX(v37);
  v38.origin.x = v9;
  v38.origin.y = v15;
  v38.size.width = v10;
  v38.size.height = v16;
  v23 = CGRectGetMidY(v38);
  CGContextTranslateCTM(CurrentContext, v22, -v23);
  v24 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  [(OITSUImage *)self size];
  v43.size.width = v26;
  v43.size.height = v27;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = v32;
  v39.size.height = rect;
  v43.origin.x = v24;
  v43.origin.y = v25;
  v28 = CGRectEqualToRect(v39, v43);
  cGImage = [(OITSUImage *)self CGImage];
  if (v28)
  {
    v40.origin.x = v9;
    v40.origin.y = v15;
    v40.size.width = v10;
    v40.size.height = v16;
    CGContextDrawImage(CurrentContext, v40, cGImage);
  }

  else
  {
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = v32;
    v41.size.height = rect;
    v30 = CGImageCreateWithImageInRect(cGImage, v41);
    if (v30)
    {
      v31 = v30;
      v42.origin.x = v9;
      v42.origin.y = v15;
      v42.size.width = v10;
      v42.size.height = v16;
      CGContextDrawImage(CurrentContext, v42, v30);
      CFRelease(v31);
    }
  }

  CGContextRestoreGState(CurrentContext);
}

@end