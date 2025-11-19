@interface CKLocationShareOfferChatItem
+ (id)placeholderPreviewCache;
+ (id)titleBarMaskImageForWidth:(double)a3;
- (BOOL)shouldUpdatePreviewWithLocation:(id)a3 lastKnownLocation:(id)a4 previewURL:(id)a5;
- (CKLocationShareOfferChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (IMHandle)sender;
- (NSString)locationText;
- (NSString)titleText;
- (id)_desaturatedImageForImage:(id)a3;
- (id)_generatePlaceholderThumbnailFillToSize:(CGSize)a3;
- (id)_generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4 withCoordinate:(CLLocationCoordinate2D)a5 forState:(int64_t)a6;
- (id)_placeholderCacheKey;
- (id)_previewCacheKey:(unint64_t)a3;
- (id)modificationDateForPreview:(id)a3;
- (id)previewForWidth:(double)a3 orientation:(char)a4;
- (id)previewURL;
- (id)previewURLForWidth:(unint64_t)a3;
- (id)savedPreviewFromURL:(id)a3;
- (id)time;
- (id)transcriptTraitCollection;
- (int64_t)offerState;
- (void)_generateMapPreview;
- (void)_handleLocationDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)savePreview:(id)a3 toURL:(id)a4;
@end

@implementation CKLocationShareOfferChatItem

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKLocationShareOfferChatItem;
  [(CKLocationShareOfferChatItem *)&v4 dealloc];
}

- (CKLocationShareOfferChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v13.receiver = self;
  v13.super_class = CKLocationShareOfferChatItem;
  v4 = [(CKChatItem *)&v13 initWithIMChatItem:a3 maxWidth:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__handleLocationDidChangeNotification_ name:*MEMORY[0x1E69A5988] object:0];

    v6 = [MEMORY[0x1E69A5B70] sharedInstance];
    v7 = [(CKLocationShareOfferChatItem *)v4 sender];
    v8 = [v6 findMyLocationForHandleOrSibling:v7];

    v9 = [v8 fmfLocation];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 location];

      if (v11)
      {
        [(CKLocationShareOfferChatItem *)v4 setLastKnownLocation:v10];
      }
    }
  }

  return v4;
}

- (id)time
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 time];

  return v3;
}

- (IMHandle)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 sender];

  return v3;
}

- (int64_t)offerState
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 offerState];

  return v3;
}

- (NSString)titleText
{
  v3 = [(CKLocationShareOfferChatItem *)self sender];
  v4 = [v3 _displayNameWithAbbreviation];

  if (![(CKLocationShareOfferChatItem *)self offerState])
  {
    v5 = @"SHARE_BUBBLE_ACTION_TEXT";
    goto LABEL_6;
  }

  if ([(CKLocationShareOfferChatItem *)self offerState]== 1 || [(CKLocationShareOfferChatItem *)self offerState]== 2)
  {
    v5 = @"SHARE_BUBBLE_LOCATION_TEXT";
LABEL_6:
    v6 = MEMORY[0x1E696AEC0];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [v6 stringWithFormat:v8, v4];

    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    if (v11 == 1)
    {
      v12 = @"\u200F";
    }

    else
    {
      v12 = @"\u200E";
    }

    v13 = [(__CFString *)v12 stringByAppendingString:v9];

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (NSString)locationText
{
  v2 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
  v3 = [v2 shortAddress];

  if (!v3 || [v3 isEqualToString:&stru_1F04268F8])
  {
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"LOCATING" value:&stru_1F04268F8 table:@"ChatKit"];

    v3 = v5;
  }

  return v3;
}

- (id)previewForWidth:(double)a3 orientation:(char)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = (v7 * a3);

  v9 = [(CKLocationShareOfferChatItem *)self _previewCacheKey:v8];
  v10 = +[CKPreviewDispatchCache transcriptPreviewCache];
  v11 = [v10 cachedPreviewForKey:v9];
  if (v11)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v12 = [(CKLocationShareOfferChatItem *)self previewURLForWidth:v8];
  v11 = [(CKLocationShareOfferChatItem *)self savedPreviewFromURL:v12];
  if (!v11)
  {
    goto LABEL_15;
  }

  if ([(CKLocationShareOfferChatItem *)self offerState]== 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CKLocationShareOfferChatItem *)self _desaturatedImageForImage:v11];

      v11 = v13;
    }
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = self;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_DEBUG, "%@ preview read from disk.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v25 = self;
    _CKLog();
  }

  [v10 setCachedPreview:v11 key:{v9, v25}];
  if (!v11)
  {
LABEL_15:
    v15 = [(CKLocationShareOfferChatItem *)self _placeholderCacheKey];
    v16 = +[CKLocationShareOfferChatItem placeholderPreviewCache];
    v11 = [v16 objectForKey:v15];

    if (v11)
    {
LABEL_28:

      goto LABEL_29;
    }

    if ([(CKLocationShareOfferChatItem *)self offerState]== 2)
    {
      v11 = [(CKLocationShareOfferChatItem *)self _desaturatedImageForImage:0];
      if (v11)
      {
        v17 = +[CKLocationShareOfferChatItem placeholderPreviewCache];
        [v17 setObject:v11 forKey:v15];

        goto LABEL_28;
      }

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = self;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Preview is nil for location chat item: %@ and state: IMLocationShareOfferStateExpired", buf, 0xCu);
        }

LABEL_26:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = self;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Preview is nil for location chat item: %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v11 = 0;
    goto LABEL_28;
  }

LABEL_29:
  if ([(CKLocationShareOfferChatItem *)self offerState]!= 2)
  {
    v19 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    v20 = v19 == 0;

    if (v20)
    {
      goto LABEL_34;
    }

    if (!v12)
    {
      v12 = [(CKLocationShareOfferChatItem *)self previewURLForWidth:v8];
    }

    v21 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    v22 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    v23 = [(CKLocationShareOfferChatItem *)self shouldUpdatePreviewWithLocation:v21 lastKnownLocation:v22 previewURL:v12];

    if (v23)
    {
LABEL_34:
      [(CKLocationShareOfferChatItem *)self _generateMapPreview];
    }
  }

  return v11;
}

- (id)_previewCacheKey:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CKLocationShareOfferChatItem *)self sender];
  v7 = [v6 ID];
  v8 = [(CKLocationShareOfferChatItem *)self offerState];
  v9 = [(CKBalloonChatItem *)self balloonOrientation];
  v10 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v11 = [v5 stringWithFormat:@"%@-%d-%d-%d-%ld", v7, v8, a3, v9, objc_msgSend(v10, "userInterfaceStyle")];

  return v11;
}

- (id)_placeholderCacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKLocationShareOfferChatItem *)self offerState];
  v5 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v6 = [v3 stringWithFormat:@"placeholder-%d-%ld", v4, objc_msgSend(v5, "userInterfaceStyle")];

  return v6;
}

- (id)previewURL
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v5 = v4;

  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = (v5 * v7);

  return [(CKLocationShareOfferChatItem *)self previewURLForWidth:v8];
}

- (id)previewURLForWidth:(unint64_t)a3
{
  v5 = [(CKLocationShareOfferChatItem *)self sender];
  v6 = [v5 ID];
  v7 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v8 = CKLocationSharePreviewCachesFileURL(v6, a3, @"jpeg", [v7 userInterfaceStyle]);

  return v8;
}

- (void)_generateMapPreview
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 mapPreviewMaxWidth];
  v5 = v4;

  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = (v5 * v7);

  v9 = [(CKLocationShareOfferChatItem *)self _previewCacheKey:v8];
  v10 = +[CKPreviewDispatchCache transcriptPreviewCache];
  if ([v10 isGeneratingPreviewForKey:v9])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "%@ is already generating preview. Abort.", &buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke;
    v18[3] = &unk_1E72EBC10;
    *&v18[6] = v5;
    v18[4] = self;
    v18[5] = &buf;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_257;
    v12[3] = &unk_1E72EBC60;
    v13 = v10;
    v14 = v9;
    v15 = self;
    p_buf = &buf;
    v17 = v8;
    [v13 enqueueGenerationBlock:v18 completion:v12 withPriority:-1 forKey:v14];

    _Block_object_dispose(&buf, 8);
  }
}

id __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
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
    v29 = *(a1 + 32);
    _CKLog();
  }

  v6 = [MEMORY[0x1E69A5B70] sharedInstance];
  v7 = [*(a1 + 32) sender];
  v8 = [v6 findMyLocationForHandleOrSibling:v7];
  v9 = [v8 fmfLocation];

  if (v9)
  {
    [*(a1 + 32) setLastKnownLocation:v9];
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 locationOfferMapThumbnailFillSizeForWidth:*(a1 + 48)];
    v12 = v11;
    v14 = v13;

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 thumbnailContentAlignmentInsetsForOrientation:{objc_msgSend(*(a1 + 32), "balloonOrientation")}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = *(a1 + 32);
    [v9 coordinate];
    v27 = [v24 _generateThumbnailFillToSize:objc_msgSend(*(a1 + 32) contentAlignmentInsets:"offerState") withCoordinate:v12 forState:{v14, v17, v19, v21, v23, v25, v26}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_257(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_2;
  block[3] = &unk_1E72EBC60;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_3;
    v7[3] = &unk_1E72EBC38;
    v5 = *(a1 + 64);
    v7[4] = *(a1 + 48);
    v9 = v5;
    v8 = v2;
    [v4 enqueueSaveBlock:v7 withPriority:-1];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:@"CKPreviewDidChangeNotification" object:*(a1 + 48)];
    }
  }
}

void __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) sender];
  v3 = [v2 ID];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) transcriptTraitCollection];
  v6 = CKLocationSharePreviewCachesFileURL(v3, v4, @"jpeg", [v5 userInterfaceStyle]);

  [*(a1 + 32) savePreview:*(a1 + 40) toURL:v6];
}

- (id)_generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4 withCoordinate:(CLLocationCoordinate2D)a5 forState:(int64_t)a6
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v88 = *MEMORY[0x1E69E9840];
  if (_generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__1;
  v79 = __Block_byref_object_dispose__1;
  v80 = 0;
  if ((_generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___CLLocationCoordinate2DIsValid(latitude, longitude) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        LODWORD(v83) = 138412290;
        *(&v83 + 4) = self;
        _os_log_impl(&dword_19020E000, v55, OS_LOG_TYPE_INFO, "%@ has invalid coordinate. Abort preview generation.", &v83, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    goto LABEL_36;
  }

  v13 = objc_alloc_init(MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit"));
  [v13 setMapType:0];
  if (_generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
  {
    [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
  }

  _generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___MKCoordinateRegionMakeWithDistance(latitude, longitude, 500.0, 500.0);
  if (fabs(v17) <= 180.0 && fabs(v14) <= 90.0 && v15 >= 0.0 && v15 <= 180.0 && v16 >= 0.0 && v16 <= 360.0)
  {
    [v13 setRegion:?];
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 locationShareBalloonButtonHeight];
    v20 = v19;
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 locationShareBalloonLabelMaxHeightForOfferState:0];
    v23 = v22;

    v59 = v20 + v23;
    v24 = height + v20 + v23;
    [v13 setSize:{width, v24}];
    v25 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
    [v13 setTraitCollection:v25];

    v26 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"fmf_disc"];
    *&v83 = 0;
    *(&v83 + 1) = &v83;
    v84 = 0x4010000000;
    v85 = &unk_190F92BB2;
    v86 = 0u;
    v87 = 0u;
    [v26 size];
    v28 = v27;
    v30 = v29;
    if (CKMainScreenScale_once_1 != -1)
    {
      [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
    }

    v31 = left + *MEMORY[0x1E695EFF8];
    v32 = width - (left + right);
    v33 = top + bottom;
    v34 = top + *(MEMORY[0x1E695EFF8] + 8);
    v35 = v24 - v33;
    v36 = v31;
    v37 = *&CKMainScreenScale_sMainScreenScale_1;
    if (*&CKMainScreenScale_sMainScreenScale_1 == 0.0)
    {
      v37 = 1.0;
    }

    *&v86 = floor((v31 + (v32 - v28) * 0.5) * v37) / v37;
    *(&v86 + 1) = floor((v34 + (v35 - v30) * 0.5) * v37) / v37;
    *&v87 = v28;
    *(&v87 + 1) = v30;
    v38 = [CKEntity alloc];
    v39 = [(CKLocationShareOfferChatItem *)self sender];
    v40 = [(CKEntity *)v38 initWithIMHandle:v39];

    v41 = [(CKEntity *)v40 locationShareBalloonContactImage];
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x4010000000;
    v72[3] = &unk_190F92BB2;
    v73 = 0u;
    v74 = 0u;
    [v41 size];
    v43 = v42;
    v45 = v44;
    if (CKMainScreenScale_once_1 != -1)
    {
      [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
    }

    v46 = *&CKMainScreenScale_sMainScreenScale_1;
    if (*&CKMainScreenScale_sMainScreenScale_1 == 0.0)
    {
      v46 = 1.0;
    }

    *&v73 = floor((v36 + (v32 - v43) * 0.5) * v46) / v46;
    *(&v73 + 1) = floor((v34 + (v35 - v45) * 0.5) * v46) / v46;
    *&v74 = v43;
    *(&v74 + 1) = v45;
    v47 = [objc_alloc(MEMORY[0x193AF5EC0](@"MKMapSnapshotter" @"MapKit"))];
    v48 = dispatch_group_create();
    dispatch_group_enter(v48);
    v49 = +[CKPreviewDispatchCache mapThumbnailQueue];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke_284;
    v62[3] = &unk_1E72EBC88;
    v69 = width;
    v70 = height;
    v71 = v59;
    v66 = &v75;
    v67 = &v83;
    v68 = v72;
    v50 = v26;
    v63 = v50;
    v51 = v41;
    v64 = v51;
    v52 = v48;
    v65 = v52;
    [v47 startWithQueue:v49 completionHandler:v62];

    v53 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v52, v53))
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v82 = self;
          _os_log_impl(&dword_19020E000, v54, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal();
      }
    }

    _Block_object_dispose(v72, 8);
    _Block_object_dispose(&v83, 8);

LABEL_36:
    v56 = v76[5];
    goto LABEL_42;
  }

  if (IMOSLoggingEnabled())
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      LOWORD(v83) = 0;
      _os_log_impl(&dword_19020E000, v57, OS_LOG_TYPE_INFO, "CKLocationShareOfferChatItem - Map region is invalid, bailing!", &v83, 2u);
    }
  }

  v56 = 0;
LABEL_42:
  _Block_object_dispose(&v75, 8);

  return v56;
}

void *__108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  _generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke_272()
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  _generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke_284(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationShareOfferChatItem for map snapshot: %@", &v24, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  UIGraphicsBeginImageContextWithOptions(*(a1 + 80), 0, 0.0);
  [*(*(*(a1 + 56) + 8) + 40) size];
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  if (CKMainScreenScale_once_1 != -1)
  {
    [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
  }

  v17 = *&CKMainScreenScale_sMainScreenScale_1;
  if (*&CKMainScreenScale_sMainScreenScale_1 == 0.0)
  {
    v17 = 1.0;
  }

  v18 = floor((*MEMORY[0x1E695EFF8] + (v15 - v12) * 0.5) * v17) / v17;
  v19 = floor((*(MEMORY[0x1E695EFF8] + 8) + (v16 - v14) * 0.5) * v17) / v17;
  v20 = *(a1 + 96);
  *(*(*(a1 + 64) + 8) + 40) = *(*(*(a1 + 64) + 8) + 40) - v20;
  *(*(*(a1 + 72) + 8) + 40) = *(*(*(a1 + 72) + 8) + 40) - *(a1 + 96);
  [*(*(*(a1 + 56) + 8) + 40) drawAtPoint:{v18, v19 - v20 * 0.5}];
  [*(a1 + 32) drawAtPoint:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
  [*(a1 + 40) drawAtPoint:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  UIGraphicsEndImageContext();
  dispatch_group_leave(*(a1 + 48));
}

- (id)transcriptTraitCollection
{
  v7.receiver = self;
  v7.super_class = CKLocationShareOfferChatItem;
  v2 = [(CKChatItem *)&v7 transcriptTraitCollection];
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

- (id)_generatePlaceholderThumbnailFillToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v50 = *MEMORY[0x1E69E9840];
  v6 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v7 = CKLocationSharePreviewPlaceHolderCacheFileURL(v6, width, @"jpeg");

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = 0;
  v39[0] = [(CKBalloonChatItem *)self balloonOrientation];
  v8 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v39[1] = [v8 userInterfaceStyle];

  v9 = [MEMORY[0x1E696B098] value:v39 withObjCType:"{?=cq}"];
  v10 = +[CKLocationMediaObject placeholderPreviewCache];
  v11 = [v10 objectForKey:v9];
  v12 = v41[5];
  v41[5] = v11;

  if (v41[5])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Found cached thumbnail in memory", buf, 2u);
      }
    }

    if (!os_log_shim_legacy_logging_enabled() || !_CKShouldLogExternal())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = [(CKLocationShareOfferChatItem *)self savedPreviewFromURL:v7];
  v15 = v41[5];
  v41[5] = v14;

  if (v41[5])
  {
    v16 = +[CKLocationMediaObject placeholderPreviewCache];
    [v16 setObject:v41[5] forKey:v9];

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Found cached thumnail on disk.", buf, 2u);
      }
    }

    if (!os_log_shim_legacy_logging_enabled() || !_CKShouldLogExternal())
    {
      goto LABEL_17;
    }

LABEL_16:
    _CKLogExternal();
LABEL_17:
    v18 = v41[5];
    goto LABEL_18;
  }

  v20 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
  if (v20)
  {
    v21 = objc_alloc_init(v20);
    [v21 setMapType:105];
    v22 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
    [v21 setTraitCollection:v22];

    [v21 setSize:{width, height}];
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 scale];
    [v21 setScale:?];

    v24 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
    if (v24)
    {
      v25 = [[v24 alloc] initWithOptions:v21];
      v26 = dispatch_group_create();
      dispatch_group_enter(v26);
      v27 = dispatch_get_global_queue(0, 0);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __72__CKLocationShareOfferChatItem__generatePlaceholderThumbnailFillToSize___block_invoke;
      v36[3] = &unk_1E72EBCB0;
      v38 = &v40;
      v28 = v26;
      v37 = v28;
      [v25 startWithQueue:v27 completionHandler:v36];

      v29 = dispatch_time(0, 5000000000);
      if (dispatch_group_wait(v28, v29))
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v47 = self;
            _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
        {
          _CKLogExternal();
        }
      }

      v31 = v41[5];
      if (v31)
      {
        [(CKLocationShareOfferChatItem *)self savePreview:v31 toURL:v7];
        v32 = +[CKLocationMediaObject placeholderPreviewCache];
        [v32 setObject:v41[5] forKey:v9];

        v33 = v41[5];
      }

      else
      {
        v33 = 0;
      }

      v18 = v33;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v47 = @"MKMapSnapshotter";
          v48 = 2112;
          v49 = @"MapKit";
          _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }

      v18 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v47 = @"MKMapSnapshotOptions";
        v48 = 2112;
        v49 = @"MapKit";
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
      }
    }

    v18 = 0;
  }

LABEL_18:

  _Block_object_dispose(&v40, 8);

  return v18;
}

void __72__CKLocationShareOfferChatItem__generatePlaceholderThumbnailFillToSize___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)savePreview:(id)a3 toURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    im_perform_with_task_assertion();
  }
}

void __50__CKLocationShareOfferChatItem_savePreview_toURL___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CKUIImageJPEGRepresentationWithHardwareAcceleration(*(a1 + 32));
  CKFreeSpaceWriteDataToURL(v2, *(a1 + 40), 1);
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%@ preview saved to %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }
}

- (id)savedPreviewFromURL:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DEF0];
    v4 = a3;
    v5 = [[v3 alloc] initWithContentsOfURL:v4 options:1 error:0];

    if (v5)
    {
      v6 = [MEMORY[0x1E69DCAB8] ckImageWithData:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)modificationDateForPreview:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  v7 = [v5 attributesOfItemAtPath:v6 error:0];
  v8 = [v7 objectForKey:*MEMORY[0x1E696A350]];

  return v8;
}

- (void)_handleLocationDidChangeNotification:(id)a3
{
  v14 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v14 fmfHandle];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CKLocationShareOfferChatItem *)self sender];
  v6 = [v5 findMySiblingHandles];
  v7 = [v6 __im_fmfHandles];

  if (v4 && [v7 containsObject:v4])
  {
    v8 = [MEMORY[0x1E69A5B70] sharedInstance];
    v9 = [(CKLocationShareOfferChatItem *)self sender];
    v10 = [v8 findMyLocationForHandleOrSibling:v9];
    v11 = [v10 fmfLocation];

    v12 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    v13 = [(CKLocationShareOfferChatItem *)self previewURL];
    LODWORD(v10) = [(CKLocationShareOfferChatItem *)self shouldUpdatePreviewWithLocation:v11 lastKnownLocation:v12 previewURL:v13];

    [(CKLocationShareOfferChatItem *)self setLastKnownLocation:v11];
    if (v10)
    {
      [(CKLocationShareOfferChatItem *)self _generateMapPreview];
    }
  }
}

- (BOOL)shouldUpdatePreviewWithLocation:(id)a3 lastKnownLocation:(id)a4 previewURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 location];

    if (v11)
    {
      if (v9 && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v12 = objc_claimAutoreleasedReturnValue(), [v12 locationValidInterval], v14 = v13, v12, objc_msgSend(v8, "timestamp"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timestamp"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSinceDate:", v16), v18 = v17, v16, v15, v18 <= v14))
      {
        v19 = [(CKLocationShareOfferChatItem *)self modificationDateForPreview:v10];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = [MEMORY[0x1E695DF00] distantPast];
        }

        v22 = v21;

        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:v22];
        v24 = v23;

        LOBYTE(v11) = v24 > v14;
      }

      else
      {
        LOBYTE(v11) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_desaturatedImageForImage:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  [v4 size];
  v9 = v7 * v8;
  [v4 size];
  v11 = v7 * v10;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v13 = CGBitmapContextCreate(0, v9, v11, 8uLL, 0, DeviceGray, 0);
  v14 = [v4 CGImage];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v9;
  v19.size.height = v11;
  CGContextDrawImage(v13, v19, v14);
  Image = CGBitmapContextCreateImage(v13);
  v16 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v7];
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v13);
  if (Image)
  {
    CFRelease(Image);
  }

  return v16;
}

+ (id)titleBarMaskImageForWidth:(double)a3
{
  v4 = *&titleBarMaskImageForWidth__sWidth;
  if (*&titleBarMaskImageForWidth__sWidth != a3)
  {
    titleBarMaskImageForWidth__sWidth = *&a3;
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 locationOfferMapThumbnailFillSizeForWidth:a3];
    v7 = v6;
    v9 = v8;

    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 locationShareBalloonButtonHeight];
    v12 = v11;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 locationShareBalloonLabelMaxHeightForOfferState:0];
    v15 = v12 + v14;

    v22.width = v7;
    v22.height = v9;
    UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
    v16 = [MEMORY[0x1E69DC888] blackColor];
    [v16 set];

    v23.origin.x = 0.0;
    v23.origin.y = v9 - v15;
    v23.size.width = v7;
    v23.size.height = v15;
    UIRectFill(v23);
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    v18 = titleBarMaskImageForWidth__sTitleBarMaskImage;
    titleBarMaskImageForWidth__sTitleBarMaskImage = v17;

    UIGraphicsEndImageContext();
  }

  v19 = titleBarMaskImageForWidth__sTitleBarMaskImage;

  return v19;
}

+ (id)placeholderPreviewCache
{
  if (placeholderPreviewCache_once != -1)
  {
    +[CKLocationShareOfferChatItem placeholderPreviewCache];
  }

  v3 = placeholderPreviewCache_sPlaceholderPreviews;

  return v3;
}

void __55__CKLocationShareOfferChatItem_placeholderPreviewCache__block_invoke()
{
  v0 = CKCreateNSCache(0);
  v1 = placeholderPreviewCache_sPlaceholderPreviews;
  placeholderPreviewCache_sPlaceholderPreviews = v0;
}

@end