@interface CKPendingMomentShareImageProvider
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
@end

@implementation CKPendingMomentShareImageProvider

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 || (v13)
  {
    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_10:
    [CKPendingMomentShareImageProvider requestImageForAsset:a2 targetSize:self contentMode:? options:? resultHandler:?];
    if (isKindOfClass)
    {
      goto LABEL_5;
    }

LABEL_11:
    placeholderImage = [assetCopy placeholderImage];
    handlerCopy[2](handlerCopy, placeholderImage, 0);
    goto LABEL_12;
  }

  [CKPendingMomentShareImageProvider requestImageForAsset:a2 targetSize:self contentMode:? options:? resultHandler:?];
  if (!handlerCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  placeholderImage = assetCopy;
  if ([placeholderImage isPreviewImageDataAvailable])
  {
    previewImage = [placeholderImage previewImage];
    handlerCopy[2](handlerCopy, previewImage, 0);
  }

  else
  {
    v16 = MEMORY[0x1E696AEC0];
    momentShare = [placeholderImage momentShare];
    previewImage = [v16 stringWithFormat:@"No preview image data available for moment share: %@", momentShare];

    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = previewImage;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v20 = [v18 errorWithDomain:@"CKPendingMomentShareImageProviderErrorDomain" code:-1 userInfo:v19];

    v23 = *MEMORY[0x1E6978DF0];
    v24 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

LABEL_12:
  return 0;
}

- (void)requestImageForAsset:(uint64_t)a1 targetSize:(uint64_t)a2 contentMode:options:resultHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKPendingMomentShareImageProvider.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"isPreviewAsset || isPlaceholderAsset"}];
}

- (void)requestImageForAsset:(uint64_t)a1 targetSize:(uint64_t)a2 contentMode:options:resultHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKPendingMomentShareImageProvider.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];
}

@end