@interface CKLocationAttachmentItem
+ (id)UTITypes;
- (BOOL)isDroppedPin;
- (CKLocationAttachmentItem)initWithFileURL:(id)l size:(CGSize)size transferGUID:(id)d guid:(id)guid createdDate:(id)date;
- (CLLocationCoordinate2D)coordinate;
- (id)_generateThumbnailFillToSize:(CGSize)size;
- (id)vCardURLProperties;
- (void)generatePreviewWithCompletion:(id)completion;
@end

@implementation CKLocationAttachmentItem

+ (id)UTITypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"loc.vcf", *MEMORY[0x1E69638D8]);
  v5[0] = PreferredIdentifierForTag;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (CKLocationAttachmentItem)initWithFileURL:(id)l size:(CGSize)size transferGUID:(id)d guid:(id)guid createdDate:(id)date
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  guidCopy = guid;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = CKLocationAttachmentItem;
  height = [(CKAttachmentItem *)&v26 initWithFileURL:lCopy size:dCopy transferGUID:guidCopy guid:dateCopy createdDate:0 shareURL:width, height];
  if (height)
  {
    [(CKLocationAttachmentItem *)height setCoordinate:__IMWeakkCLLocationCoordinate2DInvalid()];
    v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
    if (v18)
    {
      v25 = 0;
      v19 = [MEMORY[0x1E695CE30] contactsWithData:v18 error:&v25];
      v20 = v25;
      if (v20)
      {
        absoluteString = [lCopy absoluteString];
        [absoluteString lastPathComponent];
      }

      else
      {
        absoluteString = [v19 firstObject];
        [absoluteString givenName];
      }
      v23 = ;

      [(CKLocationAttachmentItem *)height setLocationTitle:v23];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = lCopy;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Initializing CKLocationAttachmentItem at URL %@ with nil data", buf, 0xCu);
        }
      }

      v18 = height;
      height = 0;
    }
  }

  return height;
}

- (void)generatePreviewWithCompletion:(id)completion
{
  completionCopy = completion;
  previewCache = [objc_opt_class() previewCache];
  v6 = CKAttachmentPreviewCacheKey(self);
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 mapPreviewMaxWidth];
  v10 = v9;
  [(CKAttachmentItem *)self size];
  [v7 thumbnailFillSizeForWidth:v10 imageSize:{v11, v12}];
  v14 = v13;
  v16 = v15;

  if (([previewCache isGeneratingPreviewForKey:v6] & 1) == 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke;
    v22[3] = &unk_1E72EE7C8;
    v22[4] = self;
    v22[5] = v14;
    v22[6] = v16;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_45;
    v17[3] = &unk_1E72EDE00;
    v18 = previewCache;
    v19 = v6;
    selfCopy = self;
    v21 = completionCopy;
    [v18 enqueueGenerationBlock:v22 completion:v17 withPriority:1 forKey:v19];
  }
}

id __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _generateThumbnailFillToSize:{*(a1 + 40), *(a1 + 48)}];

  return v4;
}

void __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_45(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_2;
  block[3] = &unk_1E72EDE00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v4 = v2;
  if (v2)
  {
    [*(a1 + 48) _savePreview:v2];
    v2 = v4;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v4, v2);
    v2 = v4;
  }
}

- (id)_generateThumbnailFillToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v48 = *MEMORY[0x1E69E9840];
  if (_generateThumbnailFillToSize___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationAttachmentItem _generateThumbnailFillToSize:];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__9;
  v41 = __Block_byref_object_dispose__9;
  v42 = 0;
  coordinate = [(CKLocationAttachmentItem *)self coordinate];
  v8 = v7;
  v10 = v9;
  if ((_generateThumbnailFillToSize___CLLocationCoordinate2DIsValid(coordinate) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "%@ has invalid coordinate. Abort preview generation.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    goto LABEL_45;
  }

  v11 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
  if (v11)
  {
    v12 = objc_alloc_init(v11);
    [v12 setMapType:0];
    if (_generateThumbnailFillToSize___pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
    {
      [CKLocationAttachmentItem _generateThumbnailFillToSize:];
    }

    _generateThumbnailFillToSize___MKCoordinateRegionMakeWithDistance(v8, v10, 500.0, 500.0);
    if (fabs(v16) > 180.0 || fabs(v13) > 90.0 || v14 < 0.0 || v14 > 180.0 || v15 < 0.0 || v15 > 360.0)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKLocationAttachmentItem - Map region is invalid, bailing!", buf, 2u);
        }
      }
    }

    else
    {
      [v12 setRegion:?];
      [v12 setSize:{width, height}];
      v17 = MEMORY[0x193AF5EC0](@"MKMapSnapshotFeatureAnnotation", @"MapKit");
      if (v17)
      {
        v18 = [[v17 alloc] initWithCoordinate:0 title:2 representation:{v8, v10}];
        v43 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        [v12 _setCustomFeatureAnnotations:v19];
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy2 = @"MKMapSnapshotFeatureAnnotation";
          v46 = 2112;
          v47 = @"MapKit";
          _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }

      v24 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
      if (v24)
      {
        v25 = [[v24 alloc] initWithOptions:v12];
        v26 = dispatch_group_create();
        dispatch_group_enter(v26);
        v27 = +[CKPreviewDispatchCache mapThumbnailQueue];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke_71;
        v34[3] = &unk_1E72EBCB0;
        v36 = &v37;
        v28 = v26;
        v35 = v28;
        [v25 startWithQueue:v27 completionHandler:v34];

        v29 = dispatch_time(0, 10000000000);
        if (dispatch_group_wait(v28, v29))
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy2 = self;
              _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            _CKLogExternal();
          }
        }

LABEL_45:
        v31 = v38[5];
        goto LABEL_52;
      }

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy2 = @"MKMapSnapshotter";
          v46 = 2112;
          v47 = @"MapKit";
          _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy2 = @"MKMapSnapshotOptions";
      v46 = 2112;
      v47 = @"MapKit";
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
    }
  }

  v31 = 0;
LABEL_52:
  _Block_object_dispose(&v37, 8);

  return v31;
}

void *__57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  _generateThumbnailFillToSize___CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke_60()
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  _generateThumbnailFillToSize___MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke_71(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationAttachmentItem for map snapshot: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (CLLocationCoordinate2D)coordinate
{
  v28 = *MEMORY[0x1E69E9840];
  if (coordinate__pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationAttachmentItem coordinate];
  }

  if (coordinate__pred_CLLocationCoordinate2DMakeCoreLocation != -1)
  {
    [CKLocationAttachmentItem coordinate];
  }

  p_coordinate = &self->_coordinate;
  if ((coordinate__CLLocationCoordinate2DIsValid(self->_coordinate.latitude, self->_coordinate.longitude) & 1) == 0)
  {
    v4 = __IMWeakkCLLocationCoordinate2DInvalid();
    v6 = v5;
    [(CKLocationAttachmentItem *)self vCardURLProperties];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x1E69A80F8] coordinatesFromString:{*(*(&v23 + 1) + 8 * i), v23}];
          if ([v12 count] == 2)
          {
            v13 = coordinate__CLLocationCoordinate2DMake;
            v14 = [v12 objectAtIndex:0];
            [v14 doubleValue];
            v16 = v15;
            v17 = [v12 objectAtIndex:1];
            doubleValue = [v17 doubleValue];
            v4 = v13(doubleValue, v16, v19);
            v6 = v20;

            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    p_coordinate->latitude = v4;
    p_coordinate->longitude = v6;
  }

  latitude = p_coordinate->latitude;
  longitude = p_coordinate->longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

void *__38__CKLocationAttachmentItem_coordinate__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  coordinate__CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__38__CKLocationAttachmentItem_coordinate__block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  coordinate__CLLocationCoordinate2DMake = result;
  return result;
}

- (id)vCardURLProperties
{
  fileURL = [(CKAttachmentItem *)self fileURL];
  if (fileURL)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL options:8 error:0];
    if (v3)
    {
      v8 = 0;
      v4 = [MEMORY[0x1E695CE30] contactsWithData:v3 error:&v8];
      if ([v4 count])
      {
        firstObject = [v4 firstObject];
        urlAddresses = [firstObject urlAddresses];
      }

      else
      {
        urlAddresses = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  urlAddresses = 0;
LABEL_9:

  return urlAddresses;
}

- (BOOL)isDroppedPin
{
  fileURL = [(CKAttachmentItem *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];
  v4 = [lastPathComponent isEqualToString:*MEMORY[0x1E69A6E98]];

  return v4;
}

@end