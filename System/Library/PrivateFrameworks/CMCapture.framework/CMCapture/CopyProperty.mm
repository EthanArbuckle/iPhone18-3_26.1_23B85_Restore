@interface CopyProperty
@end

@implementation CopyProperty

uint64_t __captureDeferredPhotoProcessor_CopyProperty_block_invoke_2(uint64_t a1)
{
  result = [+[FigCaptureDeferredProcessingEngine sharedProcessingEngine](FigCaptureDeferredProcessingEngine "sharedProcessingEngine")];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end