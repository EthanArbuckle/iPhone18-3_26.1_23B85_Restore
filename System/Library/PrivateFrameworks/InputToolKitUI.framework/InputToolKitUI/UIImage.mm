@interface UIImage
@end

@implementation UIImage

void __48__UIImage_ITKUtilities__itk_imageWithTint_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextTranslateCTM(v3, 0.0, *(a1 + 56));
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextSetBlendMode(v3, kCGBlendModeNormal);
  [*(a1 + 32) setFill];
  CGContextFillRect(v3, *(a1 + 64));
  CGContextSetBlendMode(v3, kCGBlendModeDestinationIn);
  v4 = [*(a1 + 40) itk_cgImage];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);

  CGContextDrawImage(v3, *&v5, v4);
}

uint64_t __55__UIImage_ITKUtilities__itk_imageDataWithRequirements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mmap(0, [v3 length], 3, 4097, -1, 0);
  memcpy(v4, [v3 bytes], objc_msgSend(v3, "length"));
  v5 = [v3 length];

  *(*(*(a1 + 32) + 8) + 40) = dispatch_data_create(v4, v5, 0, *MEMORY[0x277D85CB8]);

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__UIImage_ITKUtilities__itk_decodeWithCompletion___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = itk_decodeWithCompletion__drawingDecodingOperationQueue;
  itk_decodeWithCompletion__drawingDecodingOperationQueue = v0;

  [itk_decodeWithCompletion__drawingDecodingOperationQueue setName:@"com.apple.notes.drawing-decoding-queue"];
  v2 = itk_decodeWithCompletion__drawingDecodingOperationQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

void __50__UIImage_ITKUtilities__itk_decodeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) itk_decodeInBackground];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__UIImage_ITKUtilities__itk_decodeWithCompletion___block_invoke_3;
  v5[3] = &unk_2797B04C0;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

@end