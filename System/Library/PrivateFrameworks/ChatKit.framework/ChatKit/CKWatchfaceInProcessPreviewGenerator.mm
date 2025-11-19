@interface CKWatchfaceInProcessPreviewGenerator
+ (Class)implementation;
+ (void)generateFacePreviewImageFromUrl:(id)a3 completionBlock:(id)a4;
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

+ (void)generateFacePreviewImageFromUrl:(id)a3 completionBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [a1 implementation];
  if (v7)
  {
    [v7 generateFacePreviewImageFromUrl:v8 completionBlock:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

@end