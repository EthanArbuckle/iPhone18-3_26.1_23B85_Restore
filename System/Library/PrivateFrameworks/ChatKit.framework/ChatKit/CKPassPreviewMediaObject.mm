@interface CKPassPreviewMediaObject
+ (id)_colorFromColorString:(id)string;
+ (id)_darkenColor:(id)color;
+ (void)_setTextForPresentationRow:(id)row representation:(id)representation;
+ (void)_updatePresentationPropertiesForRow:(id)row representation:(id)representation;
+ (void)_updatePresentationPropertiesForRow:(id)row text:(id)text color:(id)color;
- (BOOL)generatePreviewOutOfProcess;
- (Class)balloonViewClassForWidth:(double)width orientation:(char)orientation;
- (Class)previewBalloonViewClass;
- (LPWebLinkPresentationProperties)presentationProperties;
- (PKPassSecurePreviewContext)passPreview;
- (id)_initWithOverrideFileURL:(id)l;
- (id)fileURL;
- (id)generatePreviewMetadata;
- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)presentationPropertiesForReplyPreview;
- (id)previewMetadata;
@end

@implementation CKPassPreviewMediaObject

- (id)_initWithOverrideFileURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = CKPassPreviewMediaObject;
  v5 = [(CKPassPreviewMediaObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKPassPreviewMediaObject *)v5 setOverrideFileURL:lCopy];
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
  overrideFileURL = [(CKPassPreviewMediaObject *)self overrideFileURL];
  v4 = overrideFileURL;
  if (overrideFileURL)
  {
    fileURL = overrideFileURL;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKPassPreviewMediaObject;
    fileURL = [(CKMediaObject *)&v8 fileURL];
  }

  v6 = fileURL;

  return v6;
}

- (id)previewMetadata
{
  overrideMetadataProperties = [(CKPassPreviewMediaObject *)self overrideMetadataProperties];
  v4 = overrideMetadataProperties;
  if (overrideMetadataProperties)
  {
    previewMetadata = overrideMetadataProperties;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKPassPreviewMediaObject;
    previewMetadata = [(CKMediaObject *)&v8 previewMetadata];
  }

  v6 = previewMetadata;

  return v6;
}

- (Class)balloonViewClassForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKPassbookMediaObject *)self isSupported]&& ([(CKPassPreviewMediaObject *)self previewMetadata], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = [(CKMediaObject *)self shouldSuppressPreview], v8, !v9))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKPassPreviewMediaObject;
    v10 = [(CKMediaObject *)&v12 balloonViewClassForWidth:orientationCopy orientation:width];
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

- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  transcoderPreviewGenerationFailed = [(CKMediaObject *)self transcoderPreviewGenerationFailed];
  v12 = IMOSLoggingEnabled();
  if (transcoderPreviewGenerationFailed)
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

    right = 0;
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

    right = [CKWalletMediaObjectMetadataHandler generateThumbnailFillToSize:self->_presentationProperties contentAlignmentInsets:width presentationProperties:height, top, left, bottom, right];
  }

  return right;
}

- (id)generatePreviewMetadata
{
  transcoderPreviewGenerationFailed = [(CKMediaObject *)self transcoderPreviewGenerationFailed];
  v4 = IMOSLoggingEnabled();
  if (transcoderPreviewGenerationFailed)
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

    passPreview = [(CKPassPreviewMediaObject *)self passPreview];
    if (passPreview)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = objc_opt_class();
      backgroundColor = [passPreview backgroundColor];
      v12 = [v10 _colorFromColorString:backgroundColor];
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
        [passPreview backgroundImage];
        v15 = IMCreatePNGImageDataFromCGImageRef();
        if (v15)
        {
          v16 = v15;
          CFDictionarySetValue(v9, *MEMORY[0x1E69A7E00], v15);
        }
      }

      primaryText = [passPreview primaryText];
      if (primaryText)
      {
        v18 = primaryText;
        primaryColor = [passPreview primaryColor];

        if (primaryColor)
        {
          primaryText2 = [passPreview primaryText];
          v21 = objc_opt_class();
          primaryColor2 = [passPreview primaryColor];
          v23 = [v21 _colorFromColorString:primaryColor2];
          v24 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:primaryText2 color:v23];

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

      secondaryText = [passPreview secondaryText];
      if (secondaryText)
      {
        v26 = secondaryText;
        secondaryColor = [passPreview secondaryColor];

        if (secondaryColor)
        {
          secondaryText2 = [passPreview secondaryText];
          v29 = objc_opt_class();
          secondaryColor2 = [passPreview secondaryColor];
          v31 = [v29 _colorFromColorString:secondaryColor2];
          v32 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:secondaryText2 color:v31];

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

      tertiaryText = [passPreview tertiaryText];
      if (tertiaryText)
      {
        v34 = tertiaryText;
        tertiaryColor = [passPreview tertiaryColor];

        if (tertiaryColor)
        {
          tertiaryText2 = [passPreview tertiaryText];
          v37 = objc_opt_class();
          tertiaryColor2 = [passPreview tertiaryColor];
          v39 = [v37 _colorFromColorString:tertiaryColor2];
          v40 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:tertiaryText2 color:v39];

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

      [passPreview image];
      v41 = IMCreatePNGImageDataFromCGImageRef();
      if (v41)
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E69A7E30], v41);
      }

      [passPreview icon];
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
  previewMetadata = [(CKPassPreviewMediaObject *)self previewMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ED20]);
    v4 = objc_alloc_init(MEMORY[0x1E696EC48]);
    [v3 setCaptionBar:v4];

    v5 = objc_opt_class();
    captionBar = [v3 captionBar];
    v7 = [captionBar top];
    v8 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E40]];
    [v5 _setTextForPresentationRow:v7 representation:v8];

    v9 = objc_opt_class();
    captionBar2 = [v3 captionBar];
    bottom = [captionBar2 bottom];
    v12 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E48]];
    [v9 _setTextForPresentationRow:bottom representation:v12];

    v13 = objc_opt_class();
    captionBar3 = [v3 captionBar];
    belowBottom = [captionBar3 belowBottom];
    v16 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E50]];
    [v13 _setTextForPresentationRow:belowBottom representation:v16];

    v17 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E28]];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [MEMORY[0x1E69DCAB8] imageWithData:v17];
        v19 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v18];
        captionBar4 = [v3 captionBar];
        [captionBar4 setLeadingIcon:v19];
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
        v24 = previewMetadata;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Invalid metadata file %@", &v23, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

+ (id)_colorFromColorString:(id)string
{
  stringCopy = string;
  if (_colorFromColorString__onceToken != -1)
  {
    +[CKPassPreviewMediaObject _colorFromColorString:];
  }

  v4 = [_colorFromColorString__sPKPassClass colorFromString:stringCopy];
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

  previewMetadata = [(CKPassPreviewMediaObject *)self previewMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ED20]);
    [v5 setStyle:44];
    v33 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E30]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E69DCAB8] ckImageWithData:v33];
      v7 = [CKWalletMediaObjectMetadataHandler paddedImage:v6 horizontalPadding:20.0 verticalPadding:20.0];
      v8 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v7];
      [v5 setImage:v8];
    }

    v9 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7DF8]];
    v32 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v9];

    [v5 setBackgroundColor:v32];
    v31 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E00]];
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
    captionBar = [v5 captionBar];
    v19 = [captionBar top];
    v20 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E40]];
    [v17 _updatePresentationPropertiesForRow:v19 representation:v20];

    v21 = objc_opt_class();
    captionBar2 = [v5 captionBar];
    bottom = [captionBar2 bottom];
    v24 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E48]];
    [v21 _updatePresentationPropertiesForRow:bottom representation:v24];

    v25 = objc_opt_class();
    captionBar3 = [v5 captionBar];
    belowBottom = [captionBar3 belowBottom];
    v28 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E50]];
    [v25 _updatePresentationPropertiesForRow:belowBottom representation:v28];

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
      v35 = previewMetadata;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKPassPreviewMediaObject: Invalid metadata file %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

+ (void)_updatePresentationPropertiesForRow:(id)row representation:(id)representation
{
  if (representation)
  {
    v6 = *MEMORY[0x1E69A7E58];
    representationCopy = representation;
    rowCopy = row;
    v9 = [representationCopy objectForKeyedSubscript:v6];
    v11 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v9];

    v10 = [representationCopy objectForKeyedSubscript:*MEMORY[0x1E69A7E60]];

    [self _updatePresentationPropertiesForRow:rowCopy text:v10 color:v11];
  }
}

+ (void)_setTextForPresentationRow:(id)row representation:(id)representation
{
  if (representation)
  {
    v5 = *MEMORY[0x1E69A7E60];
    rowCopy = row;
    v8 = [representation objectForKeyedSubscript:v5];
    leading = [rowCopy leading];

    [leading setText:v8];
  }
}

+ (void)_updatePresentationPropertiesForRow:(id)row text:(id)text color:(id)color
{
  colorCopy = color;
  textCopy = text;
  rowCopy = row;
  leading = [rowCopy leading];
  [leading setText:textCopy];

  leading2 = [rowCopy leading];

  [leading2 setColor:colorCopy];
}

+ (id)_darkenColor:(id)color
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [color getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
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
      path = [v6 path];
      v21[0] = path;
      v21[1] = @"PassPreview";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v9 = [v5 fileURLWithPathComponents:v8];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v18 = 0;
      LOBYTE(v8) = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
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

      fileURL = [(CKPassPreviewMediaObject *)self fileURL];
      MessagesPreview = PKPassSecurePreviewContextCreateMessagesPreview(fileURL, v9);
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