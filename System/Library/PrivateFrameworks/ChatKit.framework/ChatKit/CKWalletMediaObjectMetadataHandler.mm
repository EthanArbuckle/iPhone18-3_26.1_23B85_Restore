@interface CKWalletMediaObjectMetadataHandler
+ (BOOL)writePreviewMetadata:(id)metadata toURL:(id)l error:(id *)error;
+ (double)colorValueForKey:(id)key inDictionary:(id)dictionary;
+ (id)colorDictionaryFromColor:(id)color;
+ (id)colorFromDictionaryRepresentation:(id)representation;
+ (id)dictionaryRepresentationForText:(id)text color:(id)color;
+ (id)dictionaryRepresentationForText:(id)text optionalColor:(id)color;
+ (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets presentationProperties:(id)properties;
+ (id)paddedImage:(id)image horizontalPadding:(double)padding verticalPadding:(double)verticalPadding;
+ (id)previewMetadataWithContentsOfURL:(id)l error:(id *)error;
+ (id)replyPreviewIconFromFullImage:(id)image;
@end

@implementation CKWalletMediaObjectMetadataHandler

+ (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets presentationProperties:(id)properties
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E696ECC8];
  propertiesCopy = properties;
  v9 = [[v7 alloc] initWithPresentationProperties:propertiesCopy URL:0];

  [v9 _setApplyCornerRadius:0];
  [v9 _setAction:0 withText:&stru_1F04268F8 buttonType:1];
  [v9 layoutIfNeeded];
  [v9 setFrame:{0.0, 0.0, width, height}];
  [v9 layoutIfNeeded];
  [v9 bounds];
  v16.width = v10;
  v16.height = v11;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  layer = [v9 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

+ (id)previewMetadataWithContentsOfURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v7 = [[v5 alloc] initWithContentsOfURL:lCopy];

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

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:13 userInfo:0];
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:11 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)writePreviewMetadata:(id)metadata toURL:(id)l error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:metadataCopy format:200 options:0 error:&v21];
    v10 = v21;
    if (v9)
    {
      path = [lCopy path];
      v12 = 1;
      v13 = [v9 writeToFile:path atomically:1];

      if (v13)
      {
LABEL_17:

        goto LABEL_19;
      }

      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CKWalletMediaObjectMetadataHandler writePreviewMetadata:lCopy toURL:v14 error:?];
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:9 userInfo:0];
        *error = v12 = 0;
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

      if (error)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E69A7878];
        v22 = *MEMORY[0x1E696AA08];
        v23[0] = v10;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        *error = [v17 errorWithDomain:v18 code:13 userInfo:v19];
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

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:13 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

+ (id)paddedImage:(id)image horizontalPadding:(double)padding verticalPadding:(double)verticalPadding
{
  imageCopy = image;
  [imageCopy size];
  v9 = v8 + padding * 2.0;
  [imageCopy size];
  v11 = v10 + verticalPadding * 2.0;
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [imageCopy scale];
  [preferredFormat setScale:?];
  [preferredFormat setOpaque:0];
  [preferredFormat setPreferredRange:0];
  v13 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{v9, v11}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__CKWalletMediaObjectMetadataHandler_paddedImage_horizontalPadding_verticalPadding___block_invoke;
  v17[3] = &unk_1E72F0EC8;
  v18 = imageCopy;
  paddingCopy = padding;
  verticalPaddingCopy = verticalPadding;
  v14 = imageCopy;
  v15 = [v13 imageWithActions:v17];

  return v15;
}

+ (id)replyPreviewIconFromFullImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [imageCopy size];
  v5 = [v4 initWithSize:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CKWalletMediaObjectMetadataHandler_replyPreviewIconFromFullImage___block_invoke;
  v9[3] = &unk_1E72EBBE8;
  v10 = imageCopy;
  v6 = imageCopy;
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

+ (id)colorFromDictionaryRepresentation:(id)representation
{
  v4 = MEMORY[0x1E69DC888];
  v5 = *MEMORY[0x1E69A7E20];
  representationCopy = representation;
  [self colorValueForKey:v5 inDictionary:representationCopy];
  v8 = v7;
  [self colorValueForKey:*MEMORY[0x1E69A7E18] inDictionary:representationCopy];
  v10 = v9;
  [self colorValueForKey:*MEMORY[0x1E69A7E10] inDictionary:representationCopy];
  v12 = v11;
  [self colorValueForKey:*MEMORY[0x1E69A7E08] inDictionary:representationCopy];
  v14 = v13;

  return [v4 colorWithRed:v8 green:v10 blue:v12 alpha:v14];
}

+ (id)dictionaryRepresentationForText:(id)text color:(id)color
{
  textCopy = text;
  v7 = MEMORY[0x1E695DF90];
  colorCopy = color;
  v9 = objc_alloc_init(v7);
  v10 = textCopy;
  if (v10)
  {
    CFDictionarySetValue(v9, *MEMORY[0x1E69A7E60], v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:color:];
  }

  v11 = [self colorDictionaryFromColor:colorCopy];

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

+ (id)dictionaryRepresentationForText:(id)text optionalColor:(id)color
{
  textCopy = text;
  colorCopy = color;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = textCopy;
  if (v9)
  {
    CFDictionarySetValue(v8, *MEMORY[0x1E69A7E60], v9);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:color:];
  }

  if (colorCopy)
  {
    v10 = [self colorDictionaryFromColor:colorCopy];
    if (v10)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E58], v10);
    }
  }

  return v8;
}

+ (id)colorDictionaryFromColor:(id)color
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [color getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
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

+ (double)colorValueForKey:(id)key inDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:key];
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