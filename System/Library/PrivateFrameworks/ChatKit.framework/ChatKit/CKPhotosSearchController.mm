@interface CKPhotosSearchController
+ (id)indexingString;
+ (id)relativeDateFormatter;
+ (id)sectionTitle;
- (BOOL)applyLayoutMarginsToLayoutGroup;
- (BOOL)wantsHeaderSection;
- (CKPhotosSearchController)init;
- (Class)headerOverrideClass;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (double)_internalInterGroupSpacing;
- (id)_activityItemProviderForResult:(id)result;
- (id)_additionalMenuElementsForResult:(id)result;
- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind;
- (id)itemProviderForSearchResult:(id)result;
- (id)layoutGroupWithEnvironment:(id)environment;
- (id)previewViewControllerForResult:(id)result;
- (id)sectionSubtitle;
- (unint64_t)contentMode;
- (void)_filterControlTapped:(id)tapped;
- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth;
- (void)saveAttachmentForResult:(id)result;
- (void)setContentMode:(unint64_t)mode;
- (void)updateSupplementryViewIfNeeded:(id)needed atIndexPath:(id)path;
@end

@implementation CKPhotosSearchController

- (CKPhotosSearchController)init
{
  v3 = objc_alloc_init(CKPhotosQueryController);
  v7.receiver = self;
  v7.super_class = CKPhotosSearchController;
  v4 = [(CKSearchController *)&v7 initWithQueryController:v3];

  if (v4)
  {
    [(CKPhotosSearchController *)v4 setContentMode:0];
    v5 = objc_alloc_init(CKQLPreviewControllerDataSource);
    [(CKSearchController *)v4 setQlPreviewDataSource:v5];
  }

  return v4;
}

- (unint64_t)contentMode
{
  queryController = [(CKSearchController *)self queryController];
  contentMode = [queryController contentMode];

  return contentMode;
}

- (void)setContentMode:(unint64_t)mode
{
  queryController = [(CKSearchController *)self queryController];
  [queryController setContentMode:mode];
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_PHOTOS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)sectionSubtitle
{
  results = [(CKSearchController *)self results];
  firstObject = [results firstObject];
  item = [firstObject item];
  attributeSet = [item attributeSet];
  contentCreationDate = [attributeSet contentCreationDate];

  v7 = +[CKPhotosSearchController relativeDateFormatter];
  v8 = [v7 stringFromDate:contentCreationDate];
  v9 = MEMORY[0x1E696AEC0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"LAST_UPDATED_TIMESTAMP" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [v9 stringWithFormat:v11, v8];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v15 = @"\u200F";
  }

  else
  {
    v15 = @"\u200E";
  }

  v16 = [(__CFString *)v15 stringByAppendingString:v12];

  return v16;
}

+ (id)relativeDateFormatter
{
  if (relativeDateFormatter_once != -1)
  {
    +[CKPhotosSearchController relativeDateFormatter];
  }

  v3 = relativeDateFormatter_sRelativeDateFormatter;

  return v3;
}

uint64_t __49__CKPhotosSearchController_relativeDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = relativeDateFormatter_sRelativeDateFormatter;
  relativeDateFormatter_sRelativeDateFormatter = v0;

  [relativeDateFormatter_sRelativeDateFormatter setTimeStyle:0];
  [relativeDateFormatter_sRelativeDateFormatter setDateStyle:1];
  v2 = relativeDateFormatter_sRelativeDateFormatter;
  v3 = [MEMORY[0x1E695DF58] __ck_currentLocale];
  [v2 setLocale:v3];

  [relativeDateFormatter_sRelativeDateFormatter setDoesRelativeDateFormatting:1];
  v4 = relativeDateFormatter_sRelativeDateFormatter;

  return [v4 setFormattingContext:2];
}

+ (id)indexingString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PHOTOS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (double)_internalInterGroupSpacing
{
  if ([(CKSearchController *)self mode]== 2 || [(CKSearchController *)self mode]== 4)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 searchPhotosZKWAndDetailsInterItemSpacing];
  }

  else
  {
    mode = [(CKSearchController *)self mode];
    v8 = +[CKUIBehavior sharedBehaviors];
    v3 = v8;
    if (mode == 3)
    {
      [v8 searchPhotosInterItemSpacingDetailsView];
    }

    else
    {
      [v8 searchPhotosInterItemSpacing];
    }
  }

  v5 = v4;

  return v5;
}

- (BOOL)applyLayoutMarginsToLayoutGroup
{
  if (CKIsRunningInMacCatalyst())
  {
    return 1;
  }

  if ([(CKSearchController *)self mode]== 2)
  {
    return 0;
  }

  return [(CKSearchController *)self mode]!= 4;
}

- (BOOL)wantsHeaderSection
{
  if ([(CKSearchController *)self mode]== 2 || [(CKSearchController *)self mode]== 4)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CKPhotosSearchController;
  return [(CKSearchController *)&v4 wantsHeaderSection];
}

- (Class)headerOverrideClass
{
  if (CKIsRunningInMacCatalyst() || [(CKSearchController *)self mode]== 2 || [(CKSearchController *)self mode]== 4)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  v11 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v12 = [kindCopy isEqualToString:v11];

  if (v12)
  {
    v13 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v14 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:pathCopy];

    v16 = MEMORY[0x1E696AEC0];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"SEE_ALL_PHOTOS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [v16 stringWithFormat:v18];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v22 = @"\u200F";
    }

    else
    {
      v22 = @"\u200E";
    }

    v23 = [(__CFString *)v22 stringByAppendingString:v19];

    [v15 setTitle:v23];
    sectionIdentifier = [objc_opt_class() sectionIdentifier];
    [v15 setSectionIdentifier:sectionIdentifier];
    goto LABEL_6;
  }

  v26 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  v27 = [kindCopy isEqualToString:v26];

  if (v27)
  {
    v28 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v29 = +[CKSearchAvatarSupplementryView reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v28 withReuseIdentifier:v29 forIndexPath:pathCopy];

    v30 = [pathCopy row];
    results = [(CKSearchController *)self results];
    v32 = [results count];

    if (v30 < v32)
    {
      results2 = [(CKSearchController *)self results];
      sectionIdentifier = [results2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v34 = [CKSpotlightQueryResultUtilities contactForResult:sectionIdentifier];
      [v15 setContact:v34];
      [v15 setAssociatedResult:sectionIdentifier];
      [v15 setParentContentType:0];

LABEL_6:
    }
  }

  else
  {
    v35 = +[CKPhotosSearchResultsModeHeaderReusableView supplementaryViewType];
    v36 = [kindCopy isEqualToString:v35];

    if (v36)
    {
      v37 = +[CKPhotosSearchResultsModeHeaderReusableView supplementaryViewType];
      v38 = +[CKPhotosSearchResultsModeHeaderReusableView reuseIdentifier];
      v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v37 withReuseIdentifier:v38 forIndexPath:pathCopy];

      sectionIdentifier = [v15 control];
      [sectionIdentifier addTarget:self action:sel__filterControlTapped_ forControlEvents:4096];
      goto LABEL_6;
    }

    v15 = 0;
  }

  return v15;
}

- (void)updateSupplementryViewIfNeeded:(id)needed atIndexPath:(id)path
{
  neededCopy = needed;
  pathCopy = path;
  v16 = neededCopy;
  v8 = [pathCopy row];
  results = [(CKSearchController *)self results];
  v10 = [results count];

  if (v8 >= v10)
  {
    v12 = 0;
  }

  else
  {
    results2 = [(CKSearchController *)self results];
    v12 = [results2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    associatedResult = [v16 associatedResult];
    v14 = [v12 isEqual:associatedResult];

    if ((v14 & 1) == 0)
    {
      v15 = [CKSpotlightQueryResultUtilities contactForResult:v12];
      [v16 setContact:v15];
      [v16 setAssociatedResult:v12];
      [v16 setNeedsLayout];
    }
  }
}

- (void)_filterControlTapped:(id)tapped
{
  selectedSegmentIndex = [tapped selectedSegmentIndex];
  if (selectedSegmentIndex == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (selectedSegmentIndex == 2);
  }

  if ([(CKPhotosSearchController *)self contentMode]!= v5)
  {
    [(CKPhotosSearchController *)self setContentMode:v5];
    currentSearchText = [(CKSearchController *)self currentSearchText];
    [(CKSearchController *)self searchWithText:currentSearchText mode:[(CKSearchController *)self mode]];
  }
}

- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth
{
  if ([(CKSearchController *)self mode]== 2 || [(CKSearchController *)self mode]== 4)
  {
    if (layoutWidth)
    {
      if (layoutWidth == 2)
      {
        if (CKIsRunningInMacCatalyst())
        {
          v9 = 0.33;
        }

        else
        {
          v9 = 0.25;
        }

        v10 = CKIsRunningInMacCatalyst();
        v11 = 3;
        if (!v10)
        {
          v11 = 4;
        }

        if (!width)
        {
LABEL_14:
          if (!count)
          {
            return;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v9 = 0.33;
        v11 = 3;
        if (!width)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v9 = 0.5;
      v11 = 2;
      if (!width)
      {
        goto LABEL_14;
      }
    }

    *width = v9;
    goto LABEL_14;
  }

  if ([(CKSearchController *)self mode]!= 3 && !CKIsRunningInMacCatalyst())
  {
    v12.receiver = self;
    v12.super_class = CKPhotosSearchController;
    [(CKMessageTypeSearchController *)&v12 fractionalWidth:width count:count forLayoutWidth:layoutWidth];
    return;
  }

  if (width)
  {
    *width = 0.33;
  }

  if (count)
  {
    v11 = 3;
LABEL_22:
    *count = v11;
  }
}

- (id)layoutGroupWithEnvironment:(id)environment
{
  v29[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0.0;
  [(CKPhotosSearchController *)self fractionalWidth:&v28 count:&v27 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v28];
  v5 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v4];
  if ([(CKSearchController *)self suppressAvatars])
  {
    v6 = [MEMORY[0x1E6995578] itemWithLayoutSize:v5];
  }

  else
  {
    v7 = MEMORY[0x1E6995558];
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 searchResultAvatarSize];
    v9 = [v7 absoluteDimension:?];

    v10 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v9 heightDimension:v9];
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection == 1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 9;
    }

    v13 = -6.0;
    if (userInterfaceLayoutDirection == 1)
    {
      v13 = 6.0;
    }

    v14 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:v12 absoluteOffset:v13];
    v15 = MEMORY[0x1E6995598];
    v16 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v17 = [v15 supplementaryItemWithLayoutSize:v10 elementKind:v16 containerAnchor:v14];

    [v17 setZIndex:2];
    v18 = MEMORY[0x1E6995578];
    v29[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v6 = [v18 itemWithLayoutSize:v5 supplementaryItems:v19];
  }

  v20 = MEMORY[0x1E6995588];
  v21 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v22 = [v20 sizeWithWidthDimension:v21 heightDimension:v4];

  v23 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v22 subitem:v6 count:v27];
  v24 = MEMORY[0x1E6995590];
  [(CKPhotosSearchController *)self _internalInterGroupSpacing];
  v25 = [v24 fixedSpacing:?];
  [v23 setInterItemSpacing:v25];

  return v23;
}

- (id)_additionalMenuElementsForResult:(id)result
{
  resultCopy = result;
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
  objc_initWeak(&location, self);
  if (CKIsRunningInMacCatalyst())
  {
    v6 = CKFrameworkBundle();
    [v6 localizedStringForKey:@"SEARCH_ADD_TO_PHOTOS_LIBRARY" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v6 = CKFrameworkBundle();
    [v6 localizedStringForKey:@"SEARCH_SAVE" value:&stru_1F04268F8 table:@"ChatKit"];
  }
  v7 = ;

  v8 = MEMORY[0x1E69DC628];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__CKPhotosSearchController__additionalMenuElementsForResult___block_invoke;
  v15[3] = &unk_1E72EBF48;
  objc_copyWeak(&v17, &location);
  v9 = resultCopy;
  v16 = v9;
  v10 = [v8 actionWithTitle:v7 image:v5 identifier:0 handler:v15];
  array = [MEMORY[0x1E695DF70] array];
  v12 = array;
  if (v10)
  {
    [array addObject:v10];
  }

  v13 = [v12 copy];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __61__CKPhotosSearchController__additionalMenuElementsForResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained saveAttachmentForResult:*(a1 + 32)];
}

- (id)previewViewControllerForResult:(id)result
{
  resultCopy = result;
  if (CKIsRunningInMacCatalyst())
  {
    requestPreviewMockSceneActivation = [MEMORY[0x1E697A0D0] requestPreviewMockSceneActivation];
  }

  else
  {
    requestPreviewMockSceneActivation = objc_alloc_init(CKQLPreviewController);
  }

  v6 = requestPreviewMockSceneActivation;
  qlPreviewDataSource = [(CKSearchController *)self qlPreviewDataSource];
  results = [(CKSearchController *)self results];
  [qlPreviewDataSource setPreviewItems:results];

  qlPreviewDataSource2 = [(CKSearchController *)self qlPreviewDataSource];
  [(QLPreviewController *)v6 setDataSource:qlPreviewDataSource2];

  [(QLPreviewController *)v6 reloadData];
  results2 = [(CKSearchController *)self results];
  v11 = [results2 indexOfObject:resultCopy];

  [(QLPreviewController *)v6 setCurrentPreviewItemIndex:v11];
  [(QLPreviewController *)v6 refreshCurrentPreviewItem];
  [(QLPreviewController *)v6 setDelegate:self];

  return v6;
}

- (id)itemProviderForSearchResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = CKPhotosSearchController;
  v5 = [(CKMessageTypeSearchController *)&v17 itemProviderForSearchResult:resultCopy];
  if (!v5)
  {
LABEL_6:
    v11 = v5;
    goto LABEL_12;
  }

  item = [resultCopy item];
  attributeSet = [item attributeSet];
  contentURL = [attributeSet contentURL];

  if (contentURL)
  {
    v9 = [CKLivePhotoBundleUtilities calculateLivePhotoVideoPath:contentURL];
    v10 = v9;
    if (v9)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__CKPhotosSearchController_itemProviderForSearchResult___block_invoke;
      v14[3] = &unk_1E72EC878;
      v15 = v9;
      [v5 registerDataRepresentationForTypeIdentifier:@"com.apple.MobileSMS.appendedURL" visibility:0 loadHandler:v14];
    }

    goto LABEL_6;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "search result returned nil URL while create NSItemProvider", buf, 2u);
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

uint64_t __56__CKPhotosSearchController_itemProviderForSearchResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataUsingEncoding:4];
  v3[2](v3, v4, 0);

  return 0;
}

- (id)_activityItemProviderForResult:(id)result
{
  resultCopy = result;
  v4 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v5 = [v4 cachedPreviewForQueryResult:resultCopy];

  if (v5)
  {
    item = [resultCopy item];
    attributeSet = [item attributeSet];

    contentURL = [attributeSet contentURL];
    __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];
    v10 = objc_alloc_init(MEMORY[0x1E696EC58]);
    v11 = IMUTITypeForFilename();
    [v10 setType:v11];

    v12 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v5];
    [v10 setThumbnail:v12];
    v13 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v13 setSpecialization:v10];
    v14 = [[CKSearchActivityItemProvider alloc] initWithPlaceholderItem:contentURL metadata:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)saveAttachmentForResult:(id)result
{
  v16[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  item = [resultCopy item];
  attributeSet = [item attributeSet];

  contentURL = [attributeSet contentURL];
  item2 = [resultCopy item];

  uniqueIdentifier = [item2 uniqueIdentifier];

  ownerIdentifier = [attributeSet ownerIdentifier];
  contentCreationDate = [attributeSet contentCreationDate];
  v11 = [CKAttachmentItem alloc];
  v12 = [(CKAttachmentItem *)v11 initWithFileURL:contentURL size:uniqueIdentifier transferGUID:ownerIdentifier guid:contentCreationDate createdDate:0 shareURL:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v13 = [CKAttachmentSaver alloc];
  v16[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15 = [(CKAttachmentSaver *)v13 initWithAttachments:v14];

  [(CKAttachmentSaver *)v15 runToCompletion];
}

- (NSDirectionalEdgeInsets)additionalGroupInsets
{
  delegate = [(CKSearchController *)self delegate];
  [delegate parentMarginInsetsForSearchController:self];
  v5 = v4;
  v7 = v6;

  if ([(CKSearchController *)self mode]== 3)
  {
    v7 = v5;
  }

  else
  {
    [(CKSearchController *)self mode];
    v5 = 0.0;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = v5;
  v11 = v7;
  result.trailing = v9;
  result.bottom = v11;
  result.leading = v8;
  result.top = v10;
  return result;
}

@end