@interface CKWalletMediaObjectMetadataHandler
+ (BOOL)writePreviewMetadata:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (double)colorValueForKey:(id)a3 inDictionary:(id)a4;
+ (id)colorDictionaryFromColor:(id)a3;
+ (id)colorFromDictionaryRepresentation:(id)a3;
+ (id)dictionaryRepresentationForText:(id)a3 color:(id)a4;
+ (id)dictionaryRepresentationForText:(id)a3 optionalColor:(id)a4;
+ (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4 presentationProperties:(id)a5;
+ (id)paddedImage:(id)a3 horizontalPadding:(double)a4 verticalPadding:(double)a5;
+ (id)previewMetadataWithContentsOfURL:(id)a3 error:(id *)a4;
+ (id)replyPreviewIconFromFullImage:(id)a3;
@end

@implementation CKWalletMediaObjectMetadataHandler

+ (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4 presentationProperties:(id)a5
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x1E696ECC8];
  v8 = a5;
  v9 = [[v7 alloc] initWithPresentationProperties:v8 URL:0];

  [v9 _setApplyCornerRadius:0];
  [v9 _setAction:0 withText:&stru_1F04268F8 buttonType:1];
  [v9 layoutIfNeeded];
  [v9 setFrame:{0.0, 0.0, width, height}];
  [v9 layoutIfNeeded];
  [v9 bounds];
  v16.width = v10;
  v16.height = v11;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  v12 = [v9 layer];
  [v12 renderInContext:UIGraphicsGetCurrentContext()];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

+ (id)previewMetadataWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DEF0];
  v6 = a3;
  v7 = [[v5 alloc] initWithContentsOfURL:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CKWalletMediaObjectMetadataHandler previewMetadataWithContentsOfURL:v10 error:?];
      }

      if (a4)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:13 userInfo:0];
        *a4 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:11 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)writePreviewMetadata:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v21];
    v10 = v21;
    if (v9)
    {
      v11 = [v8 path];
      v12 = 1;
      v13 = [v9 writeToFile:v11 atomically:1];

      if (v13)
      {
LABEL_17:

        goto LABEL_19;
      }

      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CKWalletMediaObjectMetadataHandler writePreviewMetadata:v8 toURL:v14 error:?];
      }

      if (a5)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:9 userInfo:0];
        *a5 = v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CKWalletMediaObjectMetadataHandler writePreviewMetadata:v10 toURL:v16 error:?];
      }

      if (a5)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E69A7878];
        v22 = *MEMORY[0x1E696AA08];
        v23[0] = v10;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        *a5 = [v17 errorWithDomain:v18 code:13 userInfo:v19];
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CKAudioMediaObject writePreviewMetadata:v15 toURL:? error:?];
  }

  if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:13 userInfo:0];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

+ (id)paddedImage:(id)a3 horizontalPadding:(double)a4 verticalPadding:(double)a5
{
  v7 = a3;
  [v7 size];
  v9 = v8 + a4 * 2.0;
  [v7 size];
  v11 = v10 + a5 * 2.0;
  v12 = [MEMORY[0x1E69DCA80] preferredFormat];
  [v7 scale];
  [v12 setScale:?];
  [v12 setOpaque:0];
  [v12 setPreferredRange:0];
  v13 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v12 format:{v9, v11}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__CKWalletMediaObjectMetadataHandler_paddedImage_horizontalPadding_verticalPadding___block_invoke;
  v17[3] = &unk_1E72F0EC8;
  v18 = v7;
  v19 = a4;
  v20 = a5;
  v14 = v7;
  v15 = [v13 imageWithActions:v17];

  return v15;
}

+ (id)replyPreviewIconFromFullImage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v3 size];
  v5 = [v4 initWithSize:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CKWalletMediaObjectMetadataHandler_replyPreviewIconFromFullImage___block_invoke;
  v9[3] = &unk_1E72EBBE8;
  v10 = v3;
  v6 = v3;
  v7 = [v5 imageWithActions:v9];

  return v7;
}

void __68__CKWalletMediaObjectMetadataHandler_replyPreviewIconFromFullImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) size];
  v3 = v2;
  [*(a1 + 32) size];
  v5 = v4;
  [*(a1 + 32) size];
  v8 = [MEMORY[0x1E69DC728] roundedRectBezierPath:-1 withRoundedCorners:0.0 withCornerRadius:{0.0, v3, v5, fmin(v6, v7) * 0.0416666667}];
  [v8 addClip];
  [*(a1 + 32) drawInRect:{0.0, 0.0, v3, v5}];
}

+ (id)colorFromDictionaryRepresentation:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = *MEMORY[0x1E69A7E20];
  v6 = a3;
  [a1 colorValueForKey:v5 inDictionary:v6];
  v8 = v7;
  [a1 colorValueForKey:*MEMORY[0x1E69A7E18] inDictionary:v6];
  v10 = v9;
  [a1 colorValueForKey:*MEMORY[0x1E69A7E10] inDictionary:v6];
  v12 = v11;
  [a1 colorValueForKey:*MEMORY[0x1E69A7E08] inDictionary:v6];
  v14 = v13;

  return [v4 colorWithRed:v8 green:v10 blue:v12 alpha:v14];
}

+ (id)dictionaryRepresentationForText:(id)a3 color:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = v6;
  if (v10)
  {
    CFDictionarySetValue(v9, *MEMORY[0x1E69A7E60], v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:color:];
  }

  v11 = [a1 colorDictionaryFromColor:v8];

  if (v11)
  {
    CFDictionarySetValue(v9, *MEMORY[0x1E69A7E58], v11);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:color:];
  }

  return v9;
}

+ (id)dictionaryRepresentationForText:(id)a3 optionalColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v6;
  if (v9)
  {
    CFDictionarySetValue(v8, *MEMORY[0x1E69A7E60], v9);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:color:];
  }

  if (v7)
  {
    v10 = [a1 colorDictionaryFromColor:v7];
    if (v10)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E58], v10);
    }
  }

  return v8;
}

+ (id)colorDictionaryFromColor:(id)a3
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [a3 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  if (v4)
  {
    CFDictionarySetValue(v3, *MEMORY[0x1E69A7E20], v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  if (v5)
  {
    CFDictionarySetValue(v3, *MEMORY[0x1E69A7E18], v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  if (v6)
  {
    CFDictionarySetValue(v3, *MEMORY[0x1E69A7E10], v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  if (v7)
  {
    CFDictionarySetValue(v3, *MEMORY[0x1E69A7E08], v7);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:];
  }

  return v3;
}

+ (double)colorValueForKey:(id)a3 inDictionary:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  objc_opt_class();
  v5 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v5 = v6;
  }

  return v5;
}

+ (void)writePreviewMetadata:(void *)a1 toURL:(NSObject *)a2 error:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to save metadata to %@", &v4, 0xCu);
}

+ (void)writePreviewMetadata:(uint64_t)a1 toURL:(NSObject *)a2 error:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed serializing metadata %@", &v2, 0xCu);
}

@end