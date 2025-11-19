@interface CKMomentSharePreviewAsset
- (BOOL)isPreviewImageDataAvailable;
- (CGRect)bestCropRectForAspectRatio:(double)a3;
- (CGRect)bestCropRectForAspectRatio:(double)a3 verticalContentMode:(int64_t)a4 cropMode:(int64_t)a5;
- (CGSize)size;
- (CKMomentSharePreviewAsset)initWithMomentShare:(id)a3;
- (Class)defaultImageProviderClass;
- (NSData)previewImageData;
- (UIImage)previewImage;
- (double)aspectRatio;
- (int64_t)isContentEqualTo:(id)a3;
@end

@implementation CKMomentSharePreviewAsset

- (CKMomentSharePreviewAsset)initWithMomentShare:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKMomentSharePreviewAsset;
  v6 = [(CKMomentSharePreviewAsset *)&v9 initWithConfiguration:&__block_literal_global_125];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentShare, a3);
  }

  return v7;
}

- (Class)defaultImageProviderClass
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (int64_t)isContentEqualTo:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    momentShare = self->_momentShare;
    v6 = [v4 momentShare];
    LODWORD(momentShare) = [(PHMomentShare *)momentShare isEqual:v6];

    if (momentShare)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isPreviewImageDataAvailable
{
  v3 = [(PHMomentShare *)self->_momentShare preview];
  v4 = [v3 thumbnailImageData];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PHMomentShare *)self->_momentShare preview];
    v7 = [v6 previewImageData];
    v8 = [v7 firstObject];
    v5 = v8 != 0;
  }

  return v5;
}

- (NSData)previewImageData
{
  v3 = [(PHMomentShare *)self->_momentShare preview];
  v4 = [v3 previewImageData];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PHMomentShare *)self->_momentShare preview];
    v7 = [v8 thumbnailImageData];
  }

  return v7;
}

- (UIImage)previewImage
{
  if (!self->_cachedImage && [(CKMomentSharePreviewAsset *)self isPreviewImageDataAvailable])
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v4 = [(CKMomentSharePreviewAsset *)self previewImageData];
    v5 = [v3 initWithData:v4];
    cachedImage = self->_cachedImage;
    self->_cachedImage = v5;
  }

  v7 = self->_cachedImage;

  return v7;
}

- (CGRect)bestCropRectForAspectRatio:(double)a3
{
  [(CKMomentSharePreviewAsset *)self bestCropRectForAspectRatio:0 verticalContentMode:3 cropMode:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)size
{
  v2 = [(CKMomentSharePreviewAsset *)self previewImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)aspectRatio
{
  [(CKMomentSharePreviewAsset *)self size];
  result = v2 / v3;
  if (v3 <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (CGRect)bestCropRectForAspectRatio:(double)a3 verticalContentMode:(int64_t)a4 cropMode:(int64_t)a5
{
  [(CKMomentSharePreviewAsset *)self aspectRatio:a4];
  if (PXFloatApproximatelyEqualToFloat())
  {
    v6 = *MEMORY[0x1E69C48E0];
    v7 = *(MEMORY[0x1E69C48E0] + 8);
    v8 = *(MEMORY[0x1E69C48E0] + 16);
    v9 = *(MEMORY[0x1E69C48E0] + 24);
  }

  else
  {
    [(CKMomentSharePreviewAsset *)self size];
    v11 = v10;
    v13 = v12;
    v14 = [(PHMomentShare *)self->_momentShare preview];
    [v14 cropRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v33.origin.x = v16;
    v33.origin.y = v18;
    v33.size.width = v20;
    v33.size.height = v22;
    IsEmpty = CGRectIsEmpty(v33);
    v24 = MEMORY[0x1E69C48E0];
    if (IsEmpty)
    {
      v25 = *MEMORY[0x1E695F058];
      v26 = *(MEMORY[0x1E695F058] + 8);
      v27 = *(MEMORY[0x1E695F058] + 16);
      v28 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      PXRectFlippedVertically();
      PXRectFlippedVertically();
      PXLargestSalientAspectFilledCropRect();
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v28 = v32;
    }

    v34.origin.x = v25;
    v34.origin.y = v26;
    v34.size.width = v27;
    v34.size.height = v28;
    if (CGRectIsEmpty(v34) || (v35.origin.x = 0.0, v35.origin.y = 0.0, v35.size.width = v11, v35.size.height = v13, CGRectIsEmpty(v35)))
    {
      v6 = *v24;
      v7 = v24[1];
      v8 = v24[2];
      v9 = v24[3];
    }

    else
    {
      PXRectNormalize();
    }
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end