@interface CKPassPreviewMediaObject
+ (id)_colorFromColorString:(id)a3;
+ (id)_darkenColor:(id)a3;
+ (void)_setTextForPresentationRow:(id)a3 representation:(id)a4;
+ (void)_updatePresentationPropertiesForRow:(id)a3 representation:(id)a4;
+ (void)_updatePresentationPropertiesForRow:(id)a3 text:(id)a4 color:(id)a5;
- (BOOL)generatePreviewOutOfProcess;
- (Class)balloonViewClassForWidth:(double)a3 orientation:(char)a4;
- (Class)previewBalloonViewClass;
- (LPWebLinkPresentationProperties)presentationProperties;
- (PKPassSecurePreviewContext)passPreview;
- (id)_initWithOverrideFileURL:(id)a3;
- (id)fileURL;
- (id)generatePreviewMetadata;
- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)presentationPropertiesForReplyPreview;
- (id)previewMetadata;
@end

@implementation CKPassPreviewMediaObject

- (id)_initWithOverrideFileURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKPassPreviewMediaObject;
  v5 = [(CKPassPreviewMediaObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKPassPreviewMediaObject *)v5 setOverrideFileURL:v4];
  }

  return v6;
}

- (BOOL)generatePreviewOutOfProcess
{
  if ([(CKMediaObject *)self isFromMe])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKPassPreviewMediaObject;
  return [(CKMediaObject *)&v4 generatePreviewOutOfProcess];
}

- (id)fileURL
{
  v3 = [(CKPassPreviewMediaObject *)self overrideFileURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKPassPreviewMediaObject;
    v5 = [(CKMediaObject *)&v8 fileURL];
  }

  v6 = v5;

  return v6;
}

- (id)previewMetadata
{
  v3 = [(CKPassPreviewMediaObject *)self overrideMetadataProperties];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKPassPreviewMediaObject;
    v5 = [(CKMediaObject *)&v8 previewMetadata];
  }

  v6 = v5;

  return v6;
}

- (Class)balloonViewClassForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  if ([(CKPassbookMediaObject *)self isSupported]&& ([(CKPassPreviewMediaObject *)self previewMetadata], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = [(CKMediaObject *)self shouldSuppressPreview], v8, !v9))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKPassPreviewMediaObject;
    v10 = [(CKMediaObject *)&v12 balloonViewClassForWidth:v4 orientation:a3];
  }

  return v10;
}

- (Class)previewBalloonViewClass
{
  if ([(CKPassbookMediaObject *)self isSupported])
  {
    objc_opt_class();
  }

  else
  {
    [(CKMediaObject *)self placeholderBalloonViewClass];
  }
  v3 = ;

  return v3;
}

- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v11 = [(CKMediaObject *)self transcoderPreviewGenerationFailed];
  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Attempting to generate preview in MobileSMS. transcoderPreviewGenerationFailed = YES", buf, 2u);
      }
    }

    v14 = 0;
  }

  else
  {
    if (v12)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Generating thumbnail", v17, 2u);
      }
    }

    v14 = [CKWalletMediaObjectMetadataHandler generateThumbnailFillToSize:self->_presentationProperties contentAlignmentInsets:width presentationProperties:height, top, left, bottom, right];
  }

  return v14;
}

- (id)generatePreviewMetadata
{
  v3 = [(CKMediaObject *)self transcoderPreviewGenerationFailed];
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Attempting to generate preview in MobileSMS. transcoderPreviewGenerationFailed = YES", buf, 2u);
      }
    }

    v6 = 0;
  }

  else
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v45 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Generating metadata", v45, 2u);
      }
    }

    v8 = [(CKPassPreviewMediaObject *)self passPreview];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = objc_opt_class();
      v11 = [v8 backgroundColor];
      v12 = [v10 _colorFromColorString:v11];
      v13 = [CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:v12];

      if (v13)
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E69A7DF8], v13);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [CKPassPreviewMediaObject generatePreviewMetadata];
      }

      if (objc_opt_respondsToSelector())
      {
        [v8 backgroundImage];
        v15 = IMCreatePNGImageDataFromCGImageRef();
        if (v15)
        {
          v16 = v15;
          CFDictionarySetValue(v9, *MEMORY[0x1E69A7E00], v15);
        }
      }

      v17 = [v8 primaryText];
      if (v17)
      {
        v18 = v17;
        v19 = [v8 primaryColor];

        if (v19)
        {
          v20 = [v8 primaryText];
          v21 = objc_opt_class();
          v22 = [v8 primaryColor];
          v23 = [v21 _colorFromColorString:v22];
          v24 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:v20 color:v23];

          if (v24)
          {
            CFDictionarySetValue(v9, *MEMORY[0x1E69A7E40], v24);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [CKPassPreviewMediaObject generatePreviewMetadata];
          }
        }
      }

      v25 = [v8 secondaryText];
      if (v25)
      {
        v26 = v25;
        v27 = [v8 secondaryColor];

        if (v27)
        {
          v28 = [v8 secondaryText];
          v29 = objc_opt_class();
          v30 = [v8 secondaryColor];
          v31 = [v29 _colorFromColorString:v30];
          v32 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:v28 color:v31];

          if (v32)
          {
            CFDictionarySetValue(v9, *MEMORY[0x1E69A7E48], v32);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [CKPassPreviewMediaObject generatePreviewMetadata];
          }
        }
      }

      v33 = [v8 tertiaryText];
      if (v33)
      {
        v34 = v33;
        v35 = [v8 tertiaryColor];

        if (v35)
        {
          v36 = [v8 tertiaryText];
          v37 = objc_opt_class();
          v38 = [v8 tertiaryColor];
          v39 = [v37 _colorFromColorString:v38];
          v40 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:v36 color:v39];

          if (v40)
          {
            CFDictionarySetValue(v9, *MEMORY[0x1E69A7E50], v40);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [CKPassPreviewMediaObject generatePreviewMetadata];
          }
        }
      }

      [v8 image];
      v41 = IMCreatePNGImageDataFromCGImageRef();
      if (v41)
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E69A7E30], v41);
      }

      [v8 icon];
      v42 = IMCreatePNGImageDataFromCGImageRef();
      if (v42)
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E69A7E28], v42);
      }

      v6 = [(__CFDictionary *)v9 copy];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v44 = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Unable to generate pass preview", v44, 2u);
        }
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)presentationPropertiesForReplyPreview
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(CKPassPreviewMediaObject *)self previewMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ED20]);
    v4 = objc_alloc_init(MEMORY[0x1E696EC48]);
    [v3 setCaptionBar:v4];

    v5 = objc_opt_class();
    v6 = [v3 captionBar];
    v7 = [v6 top];
    v8 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69A7E40]];
    [v5 _setTextForPresentationRow:v7 representation:v8];

    v9 = objc_opt_class();
    v10 = [v3 captionBar];
    v11 = [v10 bottom];
    v12 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69A7E48]];
    [v9 _setTextForPresentationRow:v11 representation:v12];

    v13 = objc_opt_class();
    v14 = [v3 captionBar];
    v15 = [v14 belowBottom];
    v16 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69A7E50]];
    [v13 _setTextForPresentationRow:v15 representation:v16];

    v17 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69A7E28]];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [MEMORY[0x1E69DCAB8] imageWithData:v17];
        v19 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v18];
        v20 = [v3 captionBar];
        [v20 setLeadingIcon:v19];
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v2;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Invalid metadata file %@", &v23, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

+ (id)_colorFromColorString:(id)a3
{
  v3 = a3;
  if (_colorFromColorString__onceToken != -1)
  {
    +[CKPassPreviewMediaObject _colorFromColorString:];
  }

  v4 = [_colorFromColorString__sPKPassClass colorFromString:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v4, "CGColor")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __50__CKPassPreviewMediaObject__colorFromColorString___block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"PKColor", @"PassKitCore");
  _colorFromColorString__sPKPassClass = result;
  return result;
}

- (LPWebLinkPresentationProperties)presentationProperties
{
  v36 = *MEMORY[0x1E69E9840];
  presentationProperties = self->_presentationProperties;
  if (presentationProperties)
  {
LABEL_14:
    v14 = presentationProperties;
    goto LABEL_15;
  }

  v4 = [(CKPassPreviewMediaObject *)self previewMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ED20]);
    [v5 setStyle:44];
    v33 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7E30]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E69DCAB8] ckImageWithData:v33];
      v7 = [CKWalletMediaObjectMetadataHandler paddedImage:v6 horizontalPadding:20.0 verticalPadding:20.0];
      v8 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v7];
      [v5 setImage:v8];
    }

    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7DF8]];
    v32 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v9];

    [v5 setBackgroundColor:v32];
    v31 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7E00]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x1E69DCAB8] ckImageWithData:v31];
      v11 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v10];
      [v5 setBackgroundImage:v11];

      v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.05];
    }

    else
    {
      v12 = [objc_opt_class() _darkenColor:v32];
    }

    v15 = objc_alloc_init(MEMORY[0x1E696EC70]);
    [v15 setBackgroundColor:v12];
    [v5 setImageProperties:v15];
    v16 = objc_alloc_init(MEMORY[0x1E696EC48]);
    [v5 setCaptionBar:v16];

    v17 = objc_opt_class();
    v18 = [v5 captionBar];
    v19 = [v18 top];
    v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7E40]];
    [v17 _updatePresentationPropertiesForRow:v19 representation:v20];

    v21 = objc_opt_class();
    v22 = [v5 captionBar];
    v23 = [v22 bottom];
    v24 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7E48]];
    [v21 _updatePresentationPropertiesForRow:v23 representation:v24];

    v25 = objc_opt_class();
    v26 = [v5 captionBar];
    v27 = [v26 belowBottom];
    v28 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7E50]];
    [v25 _updatePresentationPropertiesForRow:v27 representation:v28];

    v29 = self->_presentationProperties;
    self->_presentationProperties = v5;

    presentationProperties = self->_presentationProperties;
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v4;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Invalid metadata file %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

+ (void)_updatePresentationPropertiesForRow:(id)a3 representation:(id)a4
{
  if (a4)
  {
    v6 = *MEMORY[0x1E69A7E58];
    v7 = a4;
    v8 = a3;
    v9 = [v7 objectForKeyedSubscript:v6];
    v11 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v9];

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A7E60]];

    [a1 _updatePresentationPropertiesForRow:v8 text:v10 color:v11];
  }
}

+ (void)_setTextForPresentationRow:(id)a3 representation:(id)a4
{
  if (a4)
  {
    v5 = *MEMORY[0x1E69A7E60];
    v6 = a3;
    v8 = [a4 objectForKeyedSubscript:v5];
    v7 = [v6 leading];

    [v7 setText:v8];
  }
}

+ (void)_updatePresentationPropertiesForRow:(id)a3 text:(id)a4 color:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 leading];
  [v10 setText:v8];

  v11 = [v9 leading];

  [v11 setColor:v7];
}

+ (id)_darkenColor:(id)a3
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [a3 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:v8 * 0.8 green:v7 * 0.8 blue:v6 * 0.8 alpha:v5];

  return v3;
}

- (PKPassSecurePreviewContext)passPreview
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (![(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    passPreview = self->_passPreview;
    if (!passPreview)
    {
      v5 = MEMORY[0x1E695DFF8];
      v6 = IMSafeTemporaryDirectory();
      v7 = [v6 path];
      v21[0] = v7;
      v21[1] = @"PassPreview";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v9 = [v5 fileURLWithPathComponents:v8];

      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = 0;
      LOBYTE(v8) = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
      v11 = v18;

      if ((v8 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Failed to create temp directory: %@", buf, 0xCu);
          }
        }

        goto LABEL_15;
      }

      v12 = [(CKPassPreviewMediaObject *)self fileURL];
      MessagesPreview = PKPassSecurePreviewContextCreateMessagesPreview(v12, v9);
      v14 = self->_passPreview;
      self->_passPreview = MessagesPreview;

      passPreview = self->_passPreview;
    }

    v15 = passPreview;
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Attempting to load PKPassSecurePreviewContext. transcoderPreviewGenerationFailed = YES", buf, 2u);
    }
  }

LABEL_15:
  v15 = 0;
LABEL_16:

  return v15;
}

@end