@interface CKWatchfaceInProcessPreviewGenerator
+ (Class)implementation;
+ (void)generateFacePreviewImageFromUrl:(id)url completionBlock:(id)block;
@end

@implementation CKWatchfaceInProcessPreviewGenerator

+ (Class)implementation
{
  if (implementation_onceToken != -1)
  {
    +[CKWatchfaceInProcessPreviewGenerator implementation];
  }

  v3 = implementation_impl;

  return v3;
}

uint64_t __54__CKWatchfaceInProcessPreviewGenerator_implementation__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"NTKGreenfieldUtilities", @"NanoTimeKitCompanion");
  implementation_impl = result;
  return result;
}

+ (void)generateFacePreviewImageFromUrl:(id)url completionBlock:(id)block
{
  urlCopy = url;
  blockCopy = block;
  implementation = [self implementation];
  if (implementation)
  {
    [implementation generateFacePreviewImageFromUrl:urlCopy completionBlock:blockCopy];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

@end