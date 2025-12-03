@interface OI_TSUImageM
+ (id)initWithCGImage:(CGImage *)image;
+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)initWithContentsOfFile:(id)file;
+ (id)initWithData:(id)data;
+ (id)initWithImageSourceRef:(CGImageSource *)ref;
+ (id)initWithUIImage:(id)image;
@end

@implementation OI_TSUImageM

+ (id)initWithCGImage:(CGImage *)image
{
  v4 = [OITSUCGImage alloc];

  return [(OITSUCGImage *)v4 initWithCGImage:image scale:0 orientation:0.0];
}

+ (id)initWithData:(id)data
{
  v4 = CGImageSourceCreateWithData(data, MEMORY[0x277CBEC10]);
  v5 = [self initWithImageSourceRef:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v8 = [OITSUCGImage alloc];

  return [(OITSUCGImage *)v8 initWithCGImage:image scale:orientation orientation:scale];
}

+ (id)initWithContentsOfFile:(id)file
{
  v4 = [OITSUUIImage alloc];

  return [(OITSUUIImage *)v4 initWithContentsOfFile:file];
}

+ (id)initWithImageSourceRef:(CGImageSource *)ref
{
  refCopy = ref;
  if (ref)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(ref, 0, 0);
    refCopy = TSUImageSourceOrientation(refCopy);
  }

  else
  {
    ImageAtIndex = 0;
  }

  v5 = [[OITSUCGImage alloc] initWithCGImage:ImageAtIndex scale:refCopy orientation:0.0];
  CGImageRelease(ImageAtIndex);
  return v5;
}

+ (id)initWithUIImage:(id)image
{
  v4 = [OITSUUIImage alloc];

  return [(OITSUUIImage *)v4 initWithUIImage:image];
}

@end