@interface CKLocationMediaObject
+ (id)UTITypes;
+ (id)placeholderPreviewCache;
+ (id)placeholderPreviewForWidth:(double)a3 orientation:(char)a4;
+ (id)vcardDataFromCLLocation:(id)a3;
- (BOOL)isDroppedPin;
- (CGSize)bbSize;
- (CKLocationMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5;
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (id)attachmentSummary:(unint64_t)a3;
- (id)bbPreviewFillToSize:(CGSize)a3;
- (id)generatePlaceholderThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)generatePlaceholderThumbnailForWidth:(double)a3 orientation:(char)a4;
- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)mapItem;
- (id)pasteboardItemProvider;
- (id)previewCacheKeyWithOrientation:(char)a3;
- (id)previewCachesFileURLWithOrientation:(char)a3 extension:(id)a4 generateIntermediaries:(BOOL)a5;
- (id)previewForWidth:(double)a3 orientation:(char)a4;
- (id)previewItemTitle;
- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4;
- (id)transcriptTraitCollection;
- (id)vCardURLProperties;
- (void)coordinate;
@end

@implementation CKLocationMediaObject

- (id)mapItem
{
  v3 = MEMORY[0x193AF5EC0](@"MKPlacemark", @"MapKit");
  v4 = MEMORY[0x193AF5EC0](@"MKMapItem", @"MapKit");
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = v4;
    v8 = [(CKMediaObject *)self data];
    v33 = 0;
    v9 = [MEMORY[0x1E695CE30] contactsWithData:v8 error:&v33];
    if ([v9 count])
    {
      v32 = v8;
      v10 = [v9 firstObject];
      v11 = [v10 postalAddresses];
      if ([v11 count])
      {
        v31 = [v11 objectAtIndex:0];
      }

      else
      {
        v31 = 0;
      }

      v15 = [v10 phoneNumbers];
      if ([v15 count])
      {
        v13 = [v15 objectAtIndex:0];
      }

      else
      {
        v13 = 0;
      }

      v16 = [v10 urlAddresses];
      if ([v16 count])
      {
        v12 = [v16 lastObject];
      }

      else
      {
        v12 = 0;
      }

      v14 = v31;
      v8 = v32;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    v17 = [v3 alloc];
    [(CKLocationMediaObject *)self coordinate];
    v19 = v18;
    v21 = v20;
    v22 = [v14 value];
    v23 = [v17 initWithCoordinate:v22 postalAddress:{v19, v21}];

    v6 = [[v7 alloc] initWithPlacemark:v23];
    v24 = [v13 value];
    v25 = [v24 stringValue];
    [v6 setPhoneNumber:v25];

    if (v12)
    {
      v26 = MEMORY[0x1E695DFF8];
      v27 = [v12 value];
      v28 = [v26 URLWithString:v27];
      [v6 setUrl:v28];
    }

    v29 = [(CKLocationMediaObject *)self title];
    [v6 setName:v29];
  }

  return v6;
}

+ (id)vcardDataFromCLLocation:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  [a3 coordinate];
  v3 = [MEMORY[0x1E696AEC0] __ck_appleMapsURLStringForCoordinate:0 coordinateName:?];
  v4 = objc_alloc_init(MEMORY[0x1E695CD58]);
  if (v3 && [v3 length])
  {
    v5 = [v4 mutableCopy];
    v6 = [v5 urlAddresses];
    v7 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"map url" value:v3];
    v8 = [v6 arrayByAddingObject:v7];

    [v5 setUrlAddresses:v8];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 locationRelativeDateFormatter];

    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [v10 stringFromDate:v11];

    v13 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [v13 stringWithFormat:v15, v12];

    v17 = [MEMORY[0x1E69DC668] sharedApplication];
    v18 = [v17 userInterfaceLayoutDirection];

    if (v18 == 1)
    {
      v19 = @"\u200F";
    }

    else
    {
      v19 = @"\u200E";
    }

    v20 = [(__CFString *)v19 stringByAppendingString:v16];

    [v5 setGivenName:v20];
    [v5 setUrlAddresses:v8];
    v21 = [v5 copy];

    v4 = v21;
  }

  v22 = MEMORY[0x1E695CE30];
  v27[0] = v4;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v26 = 0;
  v24 = [v22 dataWithContacts:v23 error:&v26];

  return v24;
}

+ (id)placeholderPreviewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v6 = objc_alloc_init(CKLocationMediaObject);
  v7 = [(CKLocationMediaObject *)v6 previewForWidth:v4 orientation:a3];

  return v7;
}

+ (id)UTITypes
{
  v6[2] = *MEMORY[0x1E69E9840];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"loc.vcf", *MEMORY[0x1E69638D8]);
  v3 = *MEMORY[0x1E69A6890];
  v6[0] = PreferredIdentifierForTag;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Locations" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (CKLocationMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = CKLocationMediaObject;
  v5 = [(CKMediaObject *)&v7 initWithTransfer:a3 context:a4 forceInlinePreview:a5];
  if (v5)
  {
    [(CKLocationMediaObject *)v5 setCoordinate:__kCLLocationCoordinate2DInvalid()];
  }

  return v5;
}

- (NSString)title
{
  if ([(CKContactMediaObject *)self generatePreviewOutOfProcess])
  {
    v3 = [(CKContactMediaObject *)self contactMediaInfo];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"contactFormatterTitle"];
      if (v5 || ([v4 objectForKeyedSubscript:@"organizationNameTitle"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = v5;
LABEL_12:
        if (![v6 isEqualToString:@"Current Location"])
        {
          goto LABEL_28;
        }

        v12 = +[CKUIBehavior sharedBehaviors];
        v13 = [v12 locationRelativeDateFormatter];

        v14 = [(CKMediaObject *)self time];
        goto LABEL_22;
      }
    }

    v33.receiver = self;
    v33.super_class = CKLocationMediaObject;
    v11 = [(CKContactMediaObject *)&v33 title];
    v6 = v11;
    if (v4 || ![v11 isEqualToString:@"Current Location"])
    {
      goto LABEL_12;
    }

LABEL_17:
    v13 = CKFrameworkBundle();
    v16 = [v13 localizedStringForKey:@"LOCATING" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_27:

    v6 = v16;
    goto LABEL_28;
  }

  v7 = [(CKContactMediaObject *)self vCardSummary];
  v4 = v7;
  if (v7 && [v7 contactCount])
  {
    v8 = [v4 avatarContacts];
    v9 = [v8 firstObject];

    v10 = [MEMORY[0x1E695CD80] stringFromContact:v9 style:0];
    if (v10)
    {
      v6 = v10;

      goto LABEL_18;
    }

    v6 = [v9 organizationName];

    if (v6)
    {
      goto LABEL_18;
    }
  }

  v32.receiver = self;
  v32.super_class = CKLocationMediaObject;
  v15 = [(CKContactMediaObject *)&v32 title];
  v6 = v15;
  if (!v4 && [v15 isEqualToString:@"Current Location"])
  {
    goto LABEL_17;
  }

LABEL_18:
  if (([v6 isEqualToString:@"Current Location"] & 1) != 0 || (CKFrameworkBundle(), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "localizedStringForKey:value:table:", @"Current Location", &stru_1F04268F8, @"ChatKit"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v6, "isEqualToString:", v18), v18, v17, v19))
  {
    v20 = +[CKUIBehavior sharedBehaviors];
    v13 = [v20 locationRelativeDateFormatter];

    v21 = [(CKMediaObject *)self time];
    v22 = [v13 stringFromDate:v21];

    if (v22)
    {
LABEL_23:
      v24 = MEMORY[0x1E696AEC0];
      v25 = CKFrameworkBundle();
      v26 = [v25 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
      v27 = [v24 stringWithFormat:v26, v22];

      v28 = [MEMORY[0x1E69DC668] sharedApplication];
      v29 = [v28 userInterfaceLayoutDirection];

      if (v29 == 1)
      {
        v30 = @"\u200F";
      }

      else
      {
        v30 = @"\u200E";
      }

      v16 = [(__CFString *)v30 stringByAppendingString:v27];

      v6 = v22;
      goto LABEL_27;
    }

    v14 = [MEMORY[0x1E695DF00] now];
LABEL_22:
    v23 = v14;
    v22 = [v13 stringFromDate:v14];

    goto LABEL_23;
  }

LABEL_28:

  return v6;
}

- (id)previewCacheKeyWithOrientation:(char)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = CKOrientedPreviewCacheKey(self, a3);
  v6 = [(CKLocationMediaObject *)self transcriptTraitCollection];
  v7 = [v4 stringWithFormat:@"%@-%zd", v5, objc_msgSend(v6, "userInterfaceStyle")];

  return v7;
}

- (id)previewCachesFileURLWithOrientation:(char)a3 extension:(id)a4 generateIntermediaries:(BOOL)a5
{
  v12.receiver = self;
  v12.super_class = CKLocationMediaObject;
  v6 = [(CKMediaObject *)&v12 previewCachesFileURLWithOrientation:a3 extension:a4 generateIntermediaries:a5];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(CKLocationMediaObject *)self transcriptTraitCollection];
  v9 = [v7 stringWithFormat:@"%ld", objc_msgSend(v8, "userInterfaceStyle")];

  v10 = IMAttachmentPreviewFileURLFromURLWithSuffix();

  return v10;
}

- (id)previewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v36 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v7 = 0;
    goto LABEL_17;
  }

  if (previewForWidth_orientation___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationMediaObject previewForWidth:orientation:];
  }

  v8 = [(CKLocationMediaObject *)self previewCacheKeyWithOrientation:v4];
  v9 = [(CKMediaObject *)self transfer];
  if (!-[CKMediaObject isPreviewable](self, "isPreviewable") || ([v9 isFileDataReady] & 1) == 0 && (objc_msgSend(v9, "isRestoring") & 1) == 0)
  {
    *&buf = v4;
    *(&buf + 1) = [(CKLocationMediaObject *)self isDroppedPin];
    v10 = [(CKLocationMediaObject *)self transcriptTraitCollection];
    *(&buf + 1) = [v10 userInterfaceStyle];

    v11 = [MEMORY[0x1E696B098] value:&buf withObjCType:"{?=cBq}"];
    v12 = +[CKLocationMediaObject placeholderPreviewCache];
    v13 = [v12 objectForKey:v11];

    if (!v13)
    {
      v14 = [(CKLocationMediaObject *)self generatePlaceholderThumbnailForWidth:v4 orientation:a3];
      v34.receiver = self;
      v34.super_class = CKLocationMediaObject;
      v13 = [(CKMediaObject *)&v34 generatePreviewFromThumbnail:v14 width:v4 orientation:a3];

      if (v13)
      {
        if (v11)
        {
          v15 = +[CKLocationMediaObject placeholderPreviewCache];
          [v15 setObject:v13 forKey:v11];
        }
      }
    }

    v7 = v13;

    goto LABEL_16;
  }

  v33.receiver = self;
  v33.super_class = CKLocationMediaObject;
  v7 = [(CKMediaObject *)&v33 previewForWidth:v4 orientation:a3];
  if (!v7)
  {
    if ([(CKContactMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKMediaObject *)self generateOOPPreviewForWidth:v4 orientation:a3];
    }

    else if ((previewForWidth_orientation___CLLocationCoordinate2DIsValid)([(CKLocationMediaObject *)self coordinate]))
    {
      v17 = [(CKContactMediaObject *)self previewDispatchCache];
      if ([v17 isGeneratingPreviewForKey:v8])
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = self;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_DEBUG, "%@ is already generating preview. Abort.", &buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          v24 = self;
          _CKLog();
        }
      }

      else
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_257;
        v31[3] = &unk_1E72F00B0;
        v31[4] = self;
        *&v31[5] = a3;
        v32 = v4;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_271;
        v26[3] = &unk_1E72F2680;
        v27 = v17;
        v28 = v8;
        v29 = self;
        v30 = v4;
        [v27 enqueueGenerationBlock:v31 completion:v26 withPriority:-1 forKey:v28];
      }

      *&buf = v4;
      BYTE1(buf) = [(CKLocationMediaObject *)self isDroppedPin];
      v19 = [(CKLocationMediaObject *)self transcriptTraitCollection];
      *(&buf + 1) = [v19 userInterfaceStyle];

      v20 = [MEMORY[0x1E696B098] value:&buf withObjCType:"{?=cBq}"];
      v21 = +[CKLocationMediaObject placeholderPreviewCache];
      v7 = [v21 objectForKey:v20];

      if (!v7)
      {
        v22 = [(CKLocationMediaObject *)self generatePlaceholderThumbnailForWidth:v4 orientation:a3];
        v25.receiver = self;
        v25.super_class = CKLocationMediaObject;
        v7 = [(CKMediaObject *)&v25 generatePreviewFromThumbnail:v22 width:v4 orientation:a3];

        if (v7)
        {
          v23 = +[CKLocationMediaObject placeholderPreviewCache];
          [v23 setObject:v7 forKey:v20];
        }
      }

      goto LABEL_16;
    }

    v7 = 0;
  }

LABEL_16:

LABEL_17:

  return v7;
}

void *__53__CKLocationMediaObject_previewForWidth_orientation___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  previewForWidth_orientation___CLLocationCoordinate2DIsValid = result;
  return result;
}

id __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_257(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%@ generate preview.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v27 = *(a1 + 32);
    _CKLog();
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 mapThumbnailFillSizeForWidth:*(a1 + 40)];
  v8 = v7;
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 thumbnailContentAlignmentInsetsForOrientation:*(a1 + 48)];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [*(a1 + 32) generateThumbnailFillToSize:v8 contentAlignmentInsets:{v10, v13, v15, v17, v19}];
  v21 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v21 startTimingForKey:@"CKLocationMediaObject_PreviewGenerationTime"];
  v22 = [*(a1 + 32) generatePreviewFromThumbnail:v20 width:*(a1 + 48) orientation:*(a1 + 40)];
  [v21 stopTimingForKey:@"CKLocationMediaObject_PreviewGenerationTime"];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [*(a1 + 32) UTIType];
      *buf = 138412546;
      v31 = v24;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_DEBUG, "Cache miss on UTI type %@ generated with timing: %@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v28 = [*(a1 + 32) UTIType];
    v29 = v21;
    _CKLog();
  }

  v25 = [MEMORY[0x1E69A8168] sharedInstance];
  [v25 trackEvent:*MEMORY[0x1E69A7580]];

  return v22;
}

void __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_271(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_2;
  v4[3] = &unk_1E72F2680;
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_3;
    v5[3] = &unk_1E72F0088;
    v5[4] = *(a1 + 48);
    v7 = *(a1 + 56);
    v6 = v2;
    [v4 enqueueSaveBlock:v5 forMediaObject:*(a1 + 48) withPriority:0];
    [*(a1 + 48) postPreviewDidChangeNotifications];
  }
}

void __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [v3 previewFilenameExtension];
  v7 = [v4 previewCachesFileURLWithOrientation:v5 extension:v6 generateIntermediaries:1];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Saving local preview to %@", &v9, 0xCu);
    }
  }

  [v3 savePreview:*(a1 + 40) toURL:v7 forOrientation:*(a1 + 48)];
}

- (id)transcriptTraitCollection
{
  v7.receiver = self;
  v7.super_class = CKLocationMediaObject;
  v2 = [(CKMediaObject *)&v7 transcriptTraitCollection];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E69DD2E8] keyWindow];
    v4 = [v5 traitCollection];
  }

  return v4;
}

- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4
{
  height = a3.height;
  width = a3.width;
  v45 = *MEMORY[0x1E69E9840];
  if (generateThumbnailFillToSize_contentAlignmentInsets___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationMediaObject generateThumbnailFillToSize:contentAlignmentInsets:];
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__38;
  v39 = __Block_byref_object_dispose__38;
  v40 = 0;
  v7 = [(CKLocationMediaObject *)self coordinate];
  v9 = v8;
  v11 = v10;
  if ((generateThumbnailFillToSize_contentAlignmentInsets___CLLocationCoordinate2DIsValid(v7) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = self;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "%@ has invalid coordinate. Abort preview generation.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    goto LABEL_30;
  }

  v12 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
  if (v12)
  {
    v13 = objc_alloc_init(v12);
    [v13 setMapType:0];
    v14 = [(CKLocationMediaObject *)self transcriptTraitCollection];
    [v13 setTraitCollection:v14];

    [v13 _setUseSnapshotService:1];
    if (generateThumbnailFillToSize_contentAlignmentInsets___pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
    {
      [CKLocationMediaObject generateThumbnailFillToSize:contentAlignmentInsets:];
    }

    generateThumbnailFillToSize_contentAlignmentInsets___MKCoordinateRegionMakeWithDistance(v9, v11, 500.0, 500.0);
    if (fabs(v18) > 180.0 || fabs(v15) > 90.0 || v16 < 0.0 || v16 > 180.0 || v17 < 0.0 || v17 > 360.0)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "CKLocationMediaObject - Map region is invalid, bailing!", buf, 2u);
        }
      }
    }

    else
    {
      [v13 setRegion:?];
      [v13 setSize:{width, height}];
      v19 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
      if (v19)
      {
        v20 = [[v19 alloc] initWithOptions:v13];
        v21 = dispatch_group_create();
        dispatch_group_enter(v21);
        v22 = +[CKPreviewDispatchCache mapThumbnailQueue];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke_296;
        v32[3] = &unk_1E72EBCB0;
        v34 = &v35;
        v23 = v21;
        v33 = v23;
        [v20 startWithQueue:v22 completionHandler:v32];

        v24 = dispatch_time(0, 20000000000);
        if (dispatch_group_wait(v23, v24))
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v42 = self;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            _CKLogExternal();
          }
        }

LABEL_30:
        v27 = v36[5];
        goto LABEL_46;
      }

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v42 = @"MKMapSnapshotter";
          v43 = 2112;
          v44 = @"MapKit";
          _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = @"MKMapSnapshotOptions";
      v43 = 2112;
      v44 = @"MapKit";
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
    }
  }

  v27 = 0;
LABEL_46:
  _Block_object_dispose(&v35, 8);

  return v27;
}

void *__76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  generateThumbnailFillToSize_contentAlignmentInsets___CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke_288()
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  generateThumbnailFillToSize_contentAlignmentInsets___MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke_296(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationMediaObject for map snapshot: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (CGSize)bbSize
{
  v2 = 270.0;
  v3 = 130.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)bbPreviewFillToSize:(CGSize)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed:a3.width])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [(CKMediaObject *)self transferGUID];
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Transfer %@ was marked as failed for preview generation, not showing preview in notification", &v12, 0xCu);
      }
    }

    v6 = 0;
  }

  else
  {
    v7 = [(CKMediaObject *)self fileURL];
    v8 = [(CKMediaObject *)self previewFilenameExtension];
    v9 = IMAttachmentPreviewFileURL();

    v6 = [(CKMediaObject *)self savedPreviewFromURL:v9 forOrientation:0];
    if (!v6 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Expected OOP preview for SB at %@, got nil", &v12, 0xCu);
      }
    }
  }

  return v6;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  v31 = *MEMORY[0x1E69E9840];
  if (coordinate__pred_CLLocationCoordinate2DIsValidCoreLocation_0 != -1)
  {
    [CKLocationMediaObject coordinate];
  }

  if (coordinate__pred_CLLocationCoordinate2DMakeCoreLocation_0 != -1)
  {
    [CKLocationMediaObject coordinate];
  }

  v27[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v27[1] = MEMORY[0x1E69E9820];
    v27[2] = 3221225472;
    v27[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v27[4] = &__block_descriptor_40_e5_v8__0l;
    v27[5] = v27;
    v29 = xmmword_1E72F3C58;
    v30 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    [(CKLocationMediaObject *)v27 coordinate];
  }

  if (v27[0])
  {
    free(v27[0]);
  }

  p_coordinate = &self->_coordinate;
  if (!coordinate__CLLocationCoordinate2DIsValid_0(self->_coordinate.latitude, self->_coordinate.longitude) || (latitude = p_coordinate->latitude, p_coordinate->latitude == 0.0) || (longitude = self->_coordinate.longitude, longitude == 0.0))
  {
    v6 = __kCLLocationCoordinate2DInvalid();
    v8 = v7;
    [(CKLocationMediaObject *)self vCardURLProperties];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x1E69A80F8] coordinatesFromString:{*(*(&v23 + 1) + 8 * i), v23}];
          if ([v14 count] == 2)
          {
            v15 = coordinate__CLLocationCoordinate2DMake_0;
            v16 = [v14 objectAtIndex:0];
            [v16 doubleValue];
            v18 = v17;
            v19 = [v14 objectAtIndex:1];
            v20 = [v19 doubleValue];
            v6 = v15(v20, v18, v21);
            v8 = v22;

            goto LABEL_23;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    p_coordinate->latitude = v6;
    p_coordinate->longitude = v8;

    latitude = p_coordinate->latitude;
    longitude = p_coordinate->longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

void *__35__CKLocationMediaObject_coordinate__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  coordinate__CLLocationCoordinate2DIsValid_0 = result;
  return result;
}

void *__35__CKLocationMediaObject_coordinate__block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  coordinate__CLLocationCoordinate2DMake_0 = result;
  return result;
}

- (id)vCardURLProperties
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(CKMediaObject *)self data];
  if (v2)
  {
    v20 = 0;
    v3 = [MEMORY[0x1E695CE30] contactsWithData:v2 error:&v20];
    v4 = v20;
    if ([v3 count])
    {
      v5 = [v3 firstObject];
      v6 = [v5 urlAddresses];
    }

    else
    {
      v6 = 0;
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) value];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)placeholderPreviewCache
{
  if (placeholderPreviewCache_once_0 != -1)
  {
    +[CKLocationMediaObject placeholderPreviewCache];
  }

  v3 = placeholderPreviewCache_sPlaceholderPreviews_0;

  return v3;
}

void __48__CKLocationMediaObject_placeholderPreviewCache__block_invoke()
{
  v0 = CKCreateNSCache(4);
  v1 = placeholderPreviewCache_sPlaceholderPreviews_0;
  placeholderPreviewCache_sPlaceholderPreviews_0 = v0;
}

- (BOOL)isDroppedPin
{
  v3 = CKIsRunningInMacCatalyst();
  v4 = [(CKMediaObject *)self filename];
  v5 = v4;
  v6 = MEMORY[0x1E69A6E98];
  if (v3)
  {
    v6 = MEMORY[0x1E69A6A78];
  }

  v7 = [v4 isEqualToString:*v6];

  return v7;
}

- (id)generatePlaceholderThumbnailForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 mapThumbnailFillSizeForWidth:a3];
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailContentAlignmentInsetsForOrientation:v4];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [(CKLocationMediaObject *)self generatePlaceholderThumbnailFillToSize:v9 contentAlignmentInsets:v11, v14, v16, v18, v20];
}

- (id)generatePlaceholderThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4
{
  height = a3.height;
  width = a3.width;
  v42 = *MEMORY[0x1E69E9840];
  v7 = [(CKLocationMediaObject *)self transcriptTraitCollection:a3.width];
  v8 = CKLocationSharePreviewPlaceHolderCacheFileURL(v7, width, @"jpeg");

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__38;
  v36 = __Block_byref_object_dispose__38;
  v37 = 0;
  v9 = [(CKMediaObject *)self savedPreviewFromURL:v8 forOrientation:0];
  v10 = v33[5];
  v33[5] = v9;

  if (v33[5])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Found cached thumnail on disk.", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    v12 = v33[5];
  }

  else
  {
    v13 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
    if (v13)
    {
      v14 = objc_alloc_init(v13);
      [v14 setMapType:105];
      v15 = [(CKLocationMediaObject *)self transcriptTraitCollection];
      [v14 setTraitCollection:v15];

      [v14 setSize:{width, height}];
      v16 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v16 scale];
      [v14 setScale:?];

      v17 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
      if (v17)
      {
        v18 = [[v17 alloc] initWithOptions:v14];
        v19 = dispatch_group_create();
        dispatch_group_enter(v19);
        v20 = dispatch_get_global_queue(0, 0);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __87__CKLocationMediaObject_generatePlaceholderThumbnailFillToSize_contentAlignmentInsets___block_invoke;
        v29[3] = &unk_1E72EBCB0;
        v31 = &v32;
        v21 = v19;
        v30 = v21;
        [v18 startWithQueue:v20 completionHandler:v29];

        v22 = dispatch_time(0, 5000000000);
        if (dispatch_group_wait(v21, v22))
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = self;
              _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            _CKLogExternal();
          }
        }

        v24 = v33[5];
        if (v24)
        {
          [(CKMediaObject *)self savePreview:v24 toURL:v8 forOrientation:0];
          v25 = v33[5];
        }

        else
        {
          v25 = 0;
        }

        v12 = v25;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v39 = @"MKMapSnapshotter";
            v40 = 2112;
            v41 = @"MapKit";
            _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
          }
        }

        v12 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v39 = @"MKMapSnapshotOptions";
          v40 = 2112;
          v41 = @"MapKit";
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }

      v12 = 0;
    }
  }

  _Block_object_dispose(&v32, 8);

  return v12;
}

void __87__CKLocationMediaObject_generatePlaceholderThumbnailFillToSize_contentAlignmentInsets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationMediaObject for map snapshot: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (id)pasteboardItemProvider
{
  [(CKLocationMediaObject *)self coordinate];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x1E695DFF8];
  v8 = [(CKMediaObject *)self filename];
  v9 = [v7 __ck_appleMapsURLForCoordinate:v8 coordinateName:{v4, v6}];

  v10 = MEMORY[0x1E696ACA0];
  v11 = [(CKMediaObject *)self fileURL];
  v12 = [v10 __ck_itemProviderForAppleMapsCoordinateURL:v9 vCardURL:v11];

  if (v12)
  {
    v13 = v12;
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Unexpected ItemProvider in LocationMediaObject", v16, 2u);
    }
  }

  return v12;
}

- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4
{
  v24[3] = *MEMORY[0x1E69E9840];
  [(CKLocationMediaObject *)self coordinate:a3];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E695DFF8];
  v10 = [(CKMediaObject *)self filename];
  v11 = [v9 __ck_appleMapsURLForCoordinate:v10 coordinateName:{v6, v8}];

  v12 = objc_alloc(MEMORY[0x1E696AD40]);
  v13 = [v11 absoluteString];
  v14 = [v12 initWithString:v13];

  v15 = [v14 length];
  v23[0] = *MEMORY[0x1E69A68A0];
  v16 = [(CKMediaObject *)self filename];
  v24[0] = v16;
  v23[1] = *MEMORY[0x1E69A6898];
  v17 = [(CKMediaObject *)self fileURL];
  v24[1] = v17;
  v23[2] = *MEMORY[0x1E69A6890];
  v18 = [(CKMediaObject *)self UTIType];
  v24[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  [v14 addAttribute:*MEMORY[0x1E69A6880] value:v19 range:{0, v15}];
  v22 = v14;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  return v20;
}

- (void)coordinate
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKLocationMediaObject.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
}

@end