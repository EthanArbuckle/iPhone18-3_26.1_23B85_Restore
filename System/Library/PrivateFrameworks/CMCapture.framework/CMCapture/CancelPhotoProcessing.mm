@interface CancelPhotoProcessing
@end

@implementation CancelPhotoProcessing

uint64_t __captureDeferredPhotoProcessor_CancelPhotoProcessing_block_invoke(void *a1)
{
  v2 = *(a1[5] + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __captureDeferredPhotoProcessor_CancelPhotoProcessing_block_invoke_2;
  v7[3] = &__block_descriptor_40_e56_B32__0__FigCaptureDeferredPhotoProcessorRequest_8Q16_B24l;
  v7[4] = a1[6];
  v3 = [v2 indexesOfObjectsPassingTest:v7];
  v4 = [v3 count];
  v5 = a1[5];
  if (v4)
  {
    return [*(v5 + 40) removeObjectsAtIndexes:v3];
  }

  result = [objc_msgSend(*(v5 + 48) "photoIdentifier")];
  if (result)
  {
    *(*(a1[4] + 8) + 24) = -16829;
  }

  return result;
}

@end