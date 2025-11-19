@interface CKOrderMediaObject
+ (id)UTITypes;
+ (id)_modifyColor:(id)a3 lighten:(BOOL)a4;
+ (id)_paddedImage:(id)a3 imageType:(unsigned __int8)a4 bubbleWidth:(double)a5;
+ (void)_setTextForPresentationRow:(id)a3 representation:(id)a4;
+ (void)_updatePresentationPropertiesForRow:(id)a3 representation:(id)a4;
- (BOOL)generatePreviewOutOfProcess;
- (BOOL)isSupported;
- (BOOL)shouldShowViewer;
- (Class)balloonViewClassForWidth:(double)a3 orientation:(char)a4;
- (Class)previewBalloonViewClass;
- (FKOrderMessagesPreviewMetadata)metadata;
- (id)_initWithOverrideFileURL:(id)a3;
- (id)attachmentSummary:(unint64_t)a3;
- (id)generatePreviewMetadata;
- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4;
- (id)presentationPropertiesForReplyPreview;
- (id)presentationPropertiesForWidth:(double)a3;
- (id)previewForWidth:(double)a3 orientation:(char)a4;
- (id)previewItemTitle;
- (id)previewMetadata;
@end

@implementation CKOrderMediaObject

- (id)_initWithOverrideFileURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKOrderMediaObject;
  v5 = [(CKOrderMediaObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKOrderMediaObject *)v5 setOverrideFileURL:v4];
  }

  return v6;
}

- (BOOL)isSupported
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 supportsPassbookAttachments];

  return v3;
}

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.finance.order";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Orders" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (id)previewMetadata
{
  v3 = [(CKOrderMediaObject *)self overrideMetadataProperties];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKOrderMediaObject;
    v5 = [(CKMediaObject *)&v8 previewMetadata];
  }

  v6 = v5;

  return v6;
}

- (id)previewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  if ([(CKOrderMediaObject *)self isSupported])
  {
    v9.receiver = self;
    v9.super_class = CKOrderMediaObject;
    v7 = [(CKMediaObject *)&v9 previewForWidth:v4 orientation:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 thumbnailFillSizeForWidth:a3 imageSize:{4.0, 3.0}];
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailContentAlignmentInsetsForOrientation:v4];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [(CKOrderMediaObject *)self generateThumbnailFillToSize:v9 contentAlignmentInsets:v11, v14, v16, v18, v20];
}

- (BOOL)shouldShowViewer
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 isFileDataReady];

  return v3;
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

- (Class)balloonViewClassForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  if ([(CKOrderMediaObject *)self isSupported]&& ([(CKOrderMediaObject *)self previewMetadata], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = [(CKMediaObject *)self shouldSuppressPreview], v8, !v9))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKOrderMediaObject;
    v10 = [(CKMediaObject *)&v12 balloonViewClassForWidth:v4 orientation:a3];
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
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Attempting to generate preview in MobileSMS. transcoderPreviewGenerationFailed = YES", buf, 2u);
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
    v14 = [CKWalletMediaObjectMetadataHandler generateThumbnailFillToSize:v16 contentAlignmentInsets:width presentationProperties:height, top, left, bottom, right];
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

  v7 = [(CKOrderMediaObject *)self metadata];

  if (!v7)
  {
    goto LABEL_40;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [(CKOrderMediaObject *)self metadata];
  v10 = [v9 headerImage];

  if (v10)
  {
    v11 = [(CKOrderMediaObject *)self metadata];
    v12 = [v11 headerImage];
    v13 = [v12 data];

    if (v13)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E30], v13);
    }

    v14 = MEMORY[0x1E696AD98];
    v15 = [(CKOrderMediaObject *)self metadata];
    v16 = [v15 headerImage];
    v17 = [v14 numberWithInt:{objc_msgSend(v16, "kind")}];

    if (v17)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E38], v17);
    }
  }

  v18 = [(CKOrderMediaObject *)self metadata];
  v19 = [v18 backgroundColor];

  if (v19)
  {
    v20 = MEMORY[0x1E69DC888];
    v21 = [(CKOrderMediaObject *)self metadata];
    v22 = [v20 colorWithCGColor:{objc_msgSend(v21, "backgroundColor")}];
    v23 = [CKWalletMediaObjectMetadataHandler colorDictionaryFromColor:v22];

    if (v23)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7DF8], v23);
    }
  }

  v24 = [(CKOrderMediaObject *)self metadata];
  v25 = [v24 primaryText];

  if (v25)
  {
    v26 = [(CKOrderMediaObject *)self metadata];
    v27 = [v26 primaryText];
    v28 = [v27 text];
    v29 = MEMORY[0x1E69DC888];
    v30 = [(CKOrderMediaObject *)self metadata];
    v31 = [v30 primaryText];
    v32 = [v29 colorWithCGColor:{objc_msgSend(v31, "overrideColor")}];
    v33 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:v28 optionalColor:v32];

    if (v33)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E40], v33);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CKOrderMediaObject generatePreviewMetadata];
    }
  }

  v34 = [(CKOrderMediaObject *)self metadata];
  v35 = [v34 secondaryText];

  if (v35)
  {
    v36 = [(CKOrderMediaObject *)self metadata];
    v37 = [v36 secondaryText];
    v38 = [v37 text];
    v39 = MEMORY[0x1E69DC888];
    v40 = [(CKOrderMediaObject *)self metadata];
    v41 = [v40 secondaryText];
    v42 = [v39 colorWithCGColor:{objc_msgSend(v41, "overrideColor")}];
    v43 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:v38 optionalColor:v42];

    if (v43)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7E48], v43);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CKOrderMediaObject generatePreviewMetadata];
    }
  }

  v44 = [(CKOrderMediaObject *)self metadata];
  v45 = [v44 tertiaryText];

  if (v45)
  {
    v46 = [(CKOrderMediaObject *)self metadata];
    v47 = [v46 tertiaryText];
    v48 = [v47 text];
    v49 = MEMORY[0x1E69DC888];
    v50 = [(CKOrderMediaObject *)self metadata];
    v51 = [v50 tertiaryText];
    v52 = [v49 colorWithCGColor:{objc_msgSend(v51, "overrideColor")}];
    v53 = [CKWalletMediaObjectMetadataHandler dictionaryRepresentationForText:v48 optionalColor:v52];

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
    v7 = [(CKMediaObject *)self fileURL];
    v8 = [v6 dataWithContentsOfURL:v7];

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
          v16 = [v12 localizedDescription];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
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

+ (id)_modifyColor:(id)a3 lighten:(BOOL)a4
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [a3 getHue:&v12 saturation:&v11 brightness:&v10 alpha:&v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CKOrderMediaObject__modifyColor_lighten___block_invoke;
  v7[3] = &__block_descriptor_65_e36___UIColor_16__0__UITraitCollection_8l;
  v8 = a4;
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

- (id)presentationPropertiesForWidth:(double)a3
{
  v42 = *MEMORY[0x1E69E9840];
  presentationProperties = self->_presentationProperties;
  if (presentationProperties)
  {
LABEL_18:
    v12 = presentationProperties;
    goto LABEL_19;
  }

  v6 = [(CKOrderMediaObject *)self previewMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ED20]);
    [v7 setStyle:53];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7E30]];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7E38]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 intValue];
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x1E69DCAB8] ckImageWithData:v8];
      v14 = [objc_opt_class() _paddedImage:v13 imageType:v10 bubbleWidth:a3];

      v15 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v14];
      [v7 setImage:v15];
    }

    v16 = *MEMORY[0x1E69A7DF8];
    v17 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7DF8]];

    if (v17)
    {
      v18 = [v6 objectForKeyedSubscript:v16];
      v19 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v18];

      [v7 setBackgroundColor:v19];
      if (v10 == 1)
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
    v27 = [v7 captionBar];
    v28 = [v27 top];
    v29 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7E40]];
    [v26 _updatePresentationPropertiesForRow:v28 representation:v29];

    v30 = objc_opt_class();
    v31 = [v7 captionBar];
    v32 = [v31 bottom];
    v33 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7E48]];
    [v30 _updatePresentationPropertiesForRow:v32 representation:v33];

    v34 = objc_opt_class();
    v35 = [v7 captionBar];
    v36 = [v35 belowBottom];
    v37 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7E50]];
    [v34 _updatePresentationPropertiesForRow:v36 representation:v37];

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
      v41 = v6;
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
  v2 = [(CKOrderMediaObject *)self previewMetadata];
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

    v17 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69A7E30]];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [MEMORY[0x1E69DCAB8] imageWithData:v17];
        v19 = [CKWalletMediaObjectMetadataHandler replyPreviewIconFromFullImage:v18];
        v20 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v19];
        v21 = [v3 captionBar];
        [v21 setLeadingIcon:v20];
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
        v25 = v2;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Invalid metadata file %@", &v24, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

+ (void)_updatePresentationPropertiesForRow:(id)a3 representation:(id)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = *MEMORY[0x1E69A7E60];
    v13 = v5;
    v7 = a4;
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = [v13 leading];
    [v9 setText:v8];

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A7E58]];

    if (v10)
    {
      v11 = [CKWalletMediaObjectMetadataHandler colorFromDictionaryRepresentation:v10];
      v12 = [v13 leading];
      [v12 setColor:v11];
    }

    v5 = v13;
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

+ (id)_paddedImage:(id)a3 imageType:(unsigned __int8)a4 bubbleWidth:(double)a5
{
  v6 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v6 == 1)
  {
    v10 = (a5 + -100.0) * 0.5;
    if (v10 < 20.0)
    {
      v10 = 20.0;
    }

    v9 = [CKWalletMediaObjectMetadataHandler paddedImage:v7 horizontalPadding:v10 verticalPadding:?];
  }

  else
  {
    if (v6 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13[0] = 67109120;
        v13[1] = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKOrderMediaObject: Invalid image type %d. Not applying padding.", v13, 8u);
      }
    }

    v9 = v7;
  }

  v11 = v9;

  return v11;
}

@end