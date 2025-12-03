@interface CKOrderMediaObject
+ (id)UTITypes;
+ (id)_modifyColor:(id)color lighten:(BOOL)lighten;
+ (id)_paddedImage:(id)image imageType:(unsigned __int8)type bubbleWidth:(double)width;
+ (void)_setTextForPresentationRow:(id)row representation:(id)representation;
+ (void)_updatePresentationPropertiesForRow:(id)row representation:(id)representation;
- (BOOL)generatePreviewOutOfProcess;
- (BOOL)isSupported;
- (BOOL)shouldShowViewer;
- (Class)balloonViewClassForWidth:(double)width orientation:(char)orientation;
- (Class)previewBalloonViewClass;
- (FKOrderMessagesPreviewMetadata)metadata;
- (id)_initWithOverrideFileURL:(id)l;
- (id)attachmentSummary:(unint64_t)summary;
- (id)generatePreviewMetadata;
- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation;
- (id)presentationPropertiesForReplyPreview;
- (id)presentationPropertiesForWidth:(double)width;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)previewItemTitle;
- (id)previewMetadata;
@end

@implementation CKOrderMediaObject

- (id)_initWithOverrideFileURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = CKOrderMediaObject;
  v5 = [(CKOrderMediaObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKOrderMediaObject *)v5 setOverrideFileURL:lCopy];
  }

  return v6;
}

- (BOOL)isSupported
{
  v2 = +[CKUIBehavior sharedBehaviors];
  supportsPassbookAttachments = [v2 supportsPassbookAttachments];

  return supportsPassbookAttachments;
}

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.finance.order";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Orders" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (id)previewMetadata
{
  overrideMetadataProperties = [(CKOrderMediaObject *)self overrideMetadataProperties];
  v4 = overrideMetadataProperties;
  if (overrideMetadataProperties)
  {
    previewMetadata = overrideMetadataProperties;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKOrderMediaObject;
    previewMetadata = [(CKMediaObject *)&v8 previewMetadata];
  }

  v6 = previewMetadata;

  return v6;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKOrderMediaObject *)self isSupported])
  {
    v9.receiver = self;
    v9.super_class = CKOrderMediaObject;
    v7 = [(CKMediaObject *)&v9 previewForWidth:orientationCopy orientation:width];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 thumbnailFillSizeForWidth:width imageSize:{4.0, 3.0}];
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailContentAlignmentInsetsForOrientation:orientationCopy];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [(CKOrderMediaObject *)self generateThumbnailFillToSize:v9 contentAlignmentInsets:v11, v14, v16, v18, v20];
}

- (BOOL)shouldShowViewer
{
  transfer = [(CKMediaObject *)self transfer];
  isFileDataReady = [transfer isFileDataReady];

  return isFileDataReady;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_ORDER" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (BOOL)generatePreviewOutOfProcess
{
  if ([(CKMediaObject *)self isFromMe])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKOrderMediaObject;
  return [(CKMediaObject *)&v4 generatePreviewOutOfProcess];
}

- (Class)balloonViewClassForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKOrderMediaObject *)self isSupported]&& ([(CKOrderMediaObject *)self previewMetadata], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = [(CKMediaObject *)self shouldSuppressPreview], v8, !v9))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKOrderMediaObject;
    v10 = [(CKMediaObject *)&v12 balloonViewClassForWidth:orientationCopy orientation:width];
  }

  return v10;
}

- (Class)previewBalloonViewClass
{
  if ([(CKOrderMediaObject *)self isSupported])
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
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Attempting to generate preview in MobileSMS. transcoderPreviewGenerationFailed = YES", buf, 2u);
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
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Generating thumbnail", v19, 2u);
      }
    }

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v16 = [(CKOrderMediaObject *)self presentationPropertiesForWidth:width];
    }

    else
    {
      v16 = self->_presentationProperties;
    }

    v17 = v16;
    right = [CKWalletMediaObjectMetadataHandler generateThumbnailFillToSize:v16 contentAlignmentInsets:width presentationProperties:height, top, left, bottom, right];
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
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Attempting to generate preview in MobileSMS. transcoderPreviewGenerationFailed = YES", buf, 2u);
      }
    }

LABEL_40:
    v54 = 0;
    goto LABEL_41;
  }

  if (v4)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v56 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Generating metadata", v56, 2u);
    }
  }

  metadata = [(CKOrderMediaObject *)self metadata];

  if (!metadata)
  {
    goto LABEL_40;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  metadata2 = [(CKOrderMediaObject *)self metadata];
  headerImage = [metadata2 headerImage];

  if (headerImage)
  {
    metadata3 = [(CKOrderMediaObject *)self metadata];
    headerImage2 = [metadata3 headerImage];
    data = [headerImage2 data];

    if (data)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E30], data);
    }

    v14 = MEMORY[0x1E696AD98];
    metadata4 = [(CKOrderMediaObject *)self metadata];
    headerImage3 = [metadata4 headerImage];
    v17 = [v14 numberWithInt:{objc_msgSend(headerImage3, "kind")}];

    if (v17)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E38], v17);
    }
  }

  metadata5 = [(CKOrderMediaObject *)self metadata];
  backgroundColor = [metadata5 backgroundColor];

  if (backgroundColor)
  {
    v20 = MEMORY[0x1E69DC888];
    metadata6 = [(CKOrderMediaObject *)self metadata];
    v22 = [v20 colorWithCGColor:{objc_msgSend(metadata6, "backgroundColor")}];
    v23 = [CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:v22];

    if (v23)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7DF8], v23);
    }
  }

  metadata7 = [(CKOrderMediaObject *)self metadata];
  primaryText = [metadata7 primaryText];

  if (primaryText)
  {
    metadata8 = [(CKOrderMediaObject *)self metadata];
    primaryText2 = [metadata8 primaryText];
    text = [primaryText2 text];
    v29 = MEMORY[0x1E69DC888];
    metadata9 = [(CKOrderMediaObject *)self metadata];
    primaryText3 = [metadata9 primaryText];
    v32 = [v29 colorWithCGColor:{objc_msgSend(primaryText3, "overrideColor")}];
    v33 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:text optionalColor:v32];

    if (v33)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E40], v33);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CKOrderMediaObject generatePreviewMetadata];
    }
  }

  metadata10 = [(CKOrderMediaObject *)self metadata];
  secondaryText = [metadata10 secondaryText];

  if (secondaryText)
  {
    metadata11 = [(CKOrderMediaObject *)self metadata];
    secondaryText2 = [metadata11 secondaryText];
    text2 = [secondaryText2 text];
    v39 = MEMORY[0x1E69DC888];
    metadata12 = [(CKOrderMediaObject *)self metadata];
    secondaryText3 = [metadata12 secondaryText];
    v42 = [v39 colorWithCGColor:{objc_msgSend(secondaryText3, "overrideColor")}];
    v43 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:text2 optionalColor:v42];

    if (v43)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E48], v43);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CKOrderMediaObject generatePreviewMetadata];
    }
  }

  metadata13 = [(CKOrderMediaObject *)self metadata];
  tertiaryText = [metadata13 tertiaryText];

  if (tertiaryText)
  {
    metadata14 = [(CKOrderMediaObject *)self metadata];
    tertiaryText2 = [metadata14 tertiaryText];
    text3 = [tertiaryText2 text];
    v49 = MEMORY[0x1E69DC888];
    metadata15 = [(CKOrderMediaObject *)self metadata];
    tertiaryText3 = [metadata15 tertiaryText];
    v52 = [v49 colorWithCGColor:{objc_msgSend(tertiaryText3, "overrideColor")}];
    v53 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:text3 optionalColor:v52];

    if (v53)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E50], v53);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CKOrderMediaObject generatePreviewMetadata];
    }
  }

  v54 = [(__CFDictionary *)v8 copy];

LABEL_41:

  return v54;
}

- (FKOrderMessagesPreviewMetadata)metadata
{
  v27 = *MEMORY[0x1E69E9840];
  metadata = self->_metadata;
  if (metadata)
  {
    goto LABEL_20;
  }

  if (![(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v6 = MEMORY[0x1E695DEF0];
    fileURL = [(CKMediaObject *)self fileURL];
    v8 = [v6 dataWithContentsOfURL:fileURL];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v9 = getFKOrderMessagesPreviewMetadataClass_softClass_0;
    v22 = getFKOrderMessagesPreviewMetadataClass_softClass_0;
    if (!getFKOrderMessagesPreviewMetadataClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __getFKOrderMessagesPreviewMetadataClass_block_invoke_0;
      v25 = &unk_1E72EB968;
      v26 = &v19;
      __getFKOrderMessagesPreviewMetadataClass_block_invoke_0(&buf);
      v9 = v20[3];
    }

    v10 = v9;
    _Block_object_dispose(&v19, 8);
    v18 = 0;
    v11 = [[v9 alloc] initWithOrderData:v8 workingDirectory:0 error:&v18];
    v12 = v18;
    v13 = self->_metadata;
    self->_metadata = v11;

    v14 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v12 localizedDescription];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = localizedDescription;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Failed to load preview metadata in-process: %@", &buf, 0xCu);
        }

LABEL_18:
      }
    }

    else if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Unpacked order into metadata", &buf, 2u);
      }

      goto LABEL_18;
    }

    metadata = self->_metadata;
LABEL_20:
    v5 = metadata;
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Attempting to load FKOrderMessagesPreviewMetadata. transcoderPreviewGenerationFailed = YES", &buf, 2u);
    }
  }

  v5 = 0;
LABEL_21:

  return v5;
}

+ (id)_modifyColor:(id)color lighten:(BOOL)lighten
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [color getHue:&v12 saturation:&v11 brightness:&v10 alpha:&v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CKOrderMediaObject__modifyColor_lighten___block_invoke;
  v7[3] = &__block_descriptor_65_e36___UIColor_16__0__UITraitCollection_8l;
  lightenCopy = lighten;
  v7[4] = v11;
  v7[5] = v10;
  v7[6] = v12;
  v7[7] = v9;
  v5 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v7];

  return v5;
}

uint64_t __43__CKOrderMediaObject__modifyColor_lighten___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 userInterfaceStyle];
  v5 = *(a1 + 40);
  if (v4 == 2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v6 = v5 + 0.13;
      v3 = v3 + 0.03;
      goto LABEL_9;
    }

    v7 = -0.07;
  }

  else if (*(a1 + 64))
  {
    v7 = 0.03;
  }

  else
  {
    v7 = -0.1;
  }

  v6 = v5 + v7;
LABEL_9:
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v8 = fmin(v6, 1.0);
  if (v3 >= 0.0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = fmin(v9, 1.0);
  v11 = MEMORY[0x1E69DC888];
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);

  return [v11 colorWithHue:v12 saturation:v10 brightness:v8 alpha:v13];
}

- (id)presentationPropertiesForWidth:(double)width
{
  v42 = *MEMORY[0x1E69E9840];
  presentationProperties = self->_presentationProperties;
  if (presentationProperties)
  {
LABEL_18:
    v12 = presentationProperties;
    goto LABEL_19;
  }

  previewMetadata = [(CKOrderMediaObject *)self previewMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ED20]);
    [v7 setStyle:53];
    v8 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E30]];
    v9 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E38]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v9 intValue];
    }

    else
    {
      intValue = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x1E69DCAB8] ckImageWithData:v8];
      v14 = [objc_opt_class() _paddedImage:v13 imageType:intValue bubbleWidth:width];

      v15 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v14];
      [v7 setImage:v15];
    }

    v16 = *MEMORY[0x1E69A7DF8];
    v17 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7DF8]];

    if (v17)
    {
      v18 = [previewMetadata objectForKeyedSubscript:v16];
      v19 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v18];

      [v7 setBackgroundColor:v19];
      if (intValue == 1)
      {
        [v19 _luminance];
        v21 = [objc_opt_class() _modifyColor:v19 lighten:v20 > 0.5];
        [v7 setBackgroundColor:v21];
      }

      v22 = MEMORY[0x1E696EC70];
      v23 = v19;
      v24 = objc_alloc_init(v22);
      [v24 setBackgroundColor:v23];

      [v7 setImageProperties:v24];
    }

    v25 = objc_alloc_init(MEMORY[0x1E696EC48]);
    [v7 setCaptionBar:v25];

    v26 = objc_opt_class();
    captionBar = [v7 captionBar];
    v28 = [captionBar top];
    v29 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E40]];
    [v26 _updatePresentationPropertiesForRow:v28 representation:v29];

    v30 = objc_opt_class();
    captionBar2 = [v7 captionBar];
    bottom = [captionBar2 bottom];
    v33 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E48]];
    [v30 _updatePresentationPropertiesForRow:bottom representation:v33];

    v34 = objc_opt_class();
    captionBar3 = [v7 captionBar];
    belowBottom = [captionBar3 belowBottom];
    v37 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E50]];
    [v34 _updatePresentationPropertiesForRow:belowBottom representation:v37];

    v38 = self->_presentationProperties;
    self->_presentationProperties = v7;

    presentationProperties = self->_presentationProperties;
    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v40 = 138412290;
      v41 = previewMetadata;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Invalid metadata file %@", &v40, 0xCu);
    }
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)presentationPropertiesForReplyPreview
{
  v26 = *MEMORY[0x1E69E9840];
  previewMetadata = [(CKOrderMediaObject *)self previewMetadata];
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

    v17 = [previewMetadata objectForKeyedSubscript:*MEMORY[0x1E69A7E30]];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [MEMORY[0x1E69DCAB8] imageWithData:v17];
        v19 = [CKWalletMediaObjectMetadataHandler replyPreviewIconFromFullImage:v18];
        v20 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v19];
        captionBar4 = [v3 captionBar];
        [captionBar4 setLeadingIcon:v20];
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = previewMetadata;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Invalid metadata file %@", &v24, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

+ (void)_updatePresentationPropertiesForRow:(id)row representation:(id)representation
{
  rowCopy = row;
  if (representation)
  {
    v6 = *MEMORY[0x1E69A7E60];
    v13 = rowCopy;
    representationCopy = representation;
    v8 = [representationCopy objectForKeyedSubscript:v6];
    leading = [v13 leading];
    [leading setText:v8];

    v10 = [representationCopy objectForKeyedSubscript:*MEMORY[0x1E69A7E58]];

    if (v10)
    {
      v11 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v10];
      leading2 = [v13 leading];
      [leading2 setColor:v11];
    }

    rowCopy = v13;
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

+ (id)_paddedImage:(id)image imageType:(unsigned __int8)type bubbleWidth:(double)width
{
  typeCopy = type;
  v14 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (typeCopy == 1)
  {
    v10 = (width + -100.0) * 0.5;
    if (v10 < 20.0)
    {
      v10 = 20.0;
    }

    v9 = [CKWalletMediaObjectMetadataHandler paddedImage:imageCopy horizontalPadding:v10 verticalPadding:?];
  }

  else
  {
    if (typeCopy && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13[0] = 67109120;
        v13[1] = typeCopy;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Invalid image type %d. Not applying padding.", v13, 8u);
      }
    }

    v9 = imageCopy;
  }

  v11 = v9;

  return v11;
}

@end