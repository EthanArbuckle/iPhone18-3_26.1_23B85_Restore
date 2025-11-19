@interface UIImage
@end

@implementation UIImage

uint64_t __46__UIImage_Utilities__ic_symbolsNeedingUIAsset__block_invoke()
{
  ic_symbolsNeedingUIAsset_symbolsNeedingUIAsset = [MEMORY[0x1E695DFD8] setWithObjects:{@"thumbnailbar.rectangle", @"math.operators", @"surprisebox", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53__UIImage_Utilities__ic_symbolsNeedingPrivateCatalog__block_invoke()
{
  ic_symbolsNeedingPrivateCatalog_symbolsNeedingPrivateCatalog = [MEMORY[0x1E695DFD8] setWithObjects:{@"quicknote", @"calculator", @"calculator.fill", @"apple.math.notes", @"apple.writing.tools", @"apple.pages", @"quotelevel.square.fill", @"text.replace", @"checkmark.circle.platter", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __44__UIImage_Utilities__ic_imageWithTint_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextTranslateCTM(v3, 0.0, *(a1 + 56));
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextSetBlendMode(v3, kCGBlendModeNormal);
  [*(a1 + 32) setFill];
  CGContextFillRect(v3, *(a1 + 64));
  CGContextSetBlendMode(v3, kCGBlendModeDestinationIn);
  v4 = [*(a1 + 40) ic_CGImage];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);

  CGContextDrawImage(v3, *&v5, v4);
}

uint64_t __50__UIImage_Utilities__ic_imageWithBackgroundColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 set];
  [*(a1 + 40) size];
  v6 = v5;
  [*(a1 + 40) size];
  [v4 fillRect:{0.0, 0.0, v6, v7}];

  [*(a1 + 40) size];
  v9 = v8;
  [*(a1 + 40) size];
  v11 = *(a1 + 40);

  return [v11 drawInRect:0 blendMode:0.0 alpha:{0.0, v9, v10, 1.0}];
}

uint64_t __76__UIImage_Utilities__ic_imageCenteredWithBackgroundColor_size_cornerRadius___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC728];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = a2;
  v8 = [v3 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v4, v5, v6}];
  v9 = [v8 CGPath];

  CGContextAddPath([v7 CGContext], v9);
  CGContextSetFillColorWithColor([v7 CGContext], objc_msgSend(*(a1 + 32), "CGColor"));
  CGContextClosePath([v7 CGContext]);
  v10 = [v7 CGContext];

  CGContextFillPath(v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48) * 0.5;
  [v11 size];
  v14 = v12 - v13 * 0.5;
  v15 = *(a1 + 56) * 0.5;
  [*(a1 + 40) size];
  v17 = v15 - v16 * 0.5;

  return [v11 drawAtPoint:{v14, v17}];
}

uint64_t __46__UIImage_Utilities__ic_decodeWithCompletion___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = ic_decodeWithCompletion__drawingDecodingOperationQueue;
  ic_decodeWithCompletion__drawingDecodingOperationQueue = v0;

  [ic_decodeWithCompletion__drawingDecodingOperationQueue setName:@"com.apple.notes.drawing-decoding-queue"];
  v2 = ic_decodeWithCompletion__drawingDecodingOperationQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

void __46__UIImage_Utilities__ic_decodeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_decodeInBackground];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIImage_Utilities__ic_decodeWithCompletion___block_invoke_3;
  v5[3] = &unk_1E8468CD0;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

@end