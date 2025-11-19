@interface UIImage
@end

@implementation UIImage

void __77__UIImage_GKAdditions___gkloadRemoteImageForURL_queue_withCompletionHandler___block_invoke()
{
  v0 = [MEMORY[0x277D0C1D8] shared];
  _gkloadRemoteImageForURL_queue_withCompletionHandler__shouldAnnotateImageUsage = [v0 shouldAnnotateImageUsage];
}

void __77__UIImage_GKAdditions___gkloadRemoteImageForURL_queue_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v6 = v3;
    if ([v3 length])
    {
      v4 = [MEMORY[0x277D755B8] _gkImageWithCheckedData:v6];
      v5 = v4;
      if (v4 && _gkloadRemoteImageForURL_queue_withCompletionHandler__shouldAnnotateImageUsage == 1)
      {
        objc_setAssociatedObject(v4, @"GK_IMAGE_URL_ANNOTATION_KEY", *(a1 + 32), 0x301);
      }
    }

    else
    {
      v5 = 0;
    }

    (*(*(a1 + 40) + 16))();

    v3 = v6;
  }
}

uint64_t __65__UIImage_GKTransferFunction___gkReadAtSize_ARGBHostEndianBytes___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = [a2 CGContext];
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  CGContextClearRect(v7, v14);
  v8 = [*(a1 + 32) CGImage];
  v15.origin.x = v3;
  v15.origin.y = v4;
  v15.size.width = v5;
  v15.size.height = v6;
  CGContextDrawImage(v7, v15, v8);
  CGBitmapContextGetBytesPerRow(v7);
  CGBitmapContextGetData(v7);
  v9 = *(*(a1 + 40) + 16);
  v10.n128_u64[0] = *(a1 + 48);
  v11.n128_u64[0] = *(a1 + 56);

  return v9(v10, v11);
}

@end