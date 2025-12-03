@interface CKAttachmentsSearchController
+ (BOOL)supportsQuicklookForResult:(id)result;
+ (id)indexingString;
+ (id)sectionTitle;
- (BOOL)handleSelectionForResult:(id)result;
- (CKAttachmentsSearchController)init;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)result;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind;
- (id)chatGUIDForSearchableItem:(id)item;
- (id)layoutGroupWithEnvironment:(id)environment;
- (id)previewViewControllerForResult:(id)result;
- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth;
@end

@implementation CKAttachmentsSearchController

- (CKAttachmentsSearchController)init
{
  v3 = objc_alloc_init(CKAttachmentsQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth
{
  if (!layoutWidth)
  {
    v7 = 0.5;
    v9 = 2;
    if (!width)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (layoutWidth != 2)
  {
    v9 = 3;
    v7 = 0.33;
    if (!width)
    {
      goto LABEL_12;
    }

LABEL_11:
    *width = v7;
    goto LABEL_12;
  }

  if (CKIsRunningInMacCatalyst())
  {
    v7 = 0.33;
  }

  else
  {
    v7 = 0.25;
  }

  v8 = CKIsRunningInMacCatalyst();
  v9 = 3;
  if (!v8)
  {
    v9 = 4;
  }

  if (width)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (count)
  {
    *count = v9;
  }
}

+ (BOOL)supportsQuicklookForResult:(id)result
{
  item = [result item];
  attributeSet = [item attributeSet];
  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];

  v6 = IMUTITypeForFilename();
  LOBYTE(attributeSet) = IMUTTypeWantsQuicklook();

  return attributeSet;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_ATTACHMENTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)chatGUIDForSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  accountIdentifier = [attributeSet accountIdentifier];

  return accountIdentifier;
}

+ (id)indexingString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATTACHMENTS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (double)interGroupSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 searchAttachmentsInterItemSpacing];
  v4 = v3 * 0.5;

  return v4;
}

- (id)layoutGroupWithEnvironment:(id)environment
{
  v15 = 0;
  v16 = 0.0;
  [(CKAttachmentsSearchController *)self fractionalWidth:&v16 count:&v15 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v3 = [MEMORY[0x1E6995558] fractionalWidthDimension:v16];
  v4 = [MEMORY[0x1E6995558] estimatedDimension:300.0];
  v5 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v3 heightDimension:v4];
  v6 = [MEMORY[0x1E6995578] itemWithLayoutSize:v5];
  v7 = MEMORY[0x1E6995588];
  v8 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v9 = [v7 sizeWithWidthDimension:v8 heightDimension:v4];

  v10 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v9 subitem:v6 count:v15];
  v11 = MEMORY[0x1E6995590];
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 searchAttachmentsInterItemSpacing];
  v13 = [v11 fixedSpacing:?];
  [v10 setInterItemSpacing:v13];

  return v10;
}

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CKAttachmentsSearchController;
  v6 = [(CKSearchController *)&v8 cellForItemInCollectionView:view atIndexPath:path withIdentifier:identifier];
  [v6 setSuppressAvatars:{-[CKSearchController suppressAvatars](self, "suppressAvatars")}];

  return v6;
}

- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  v10 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v11 = [kindCopy isEqualToString:v10];

  if (v11)
  {
    v12 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v13 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
    v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:pathCopy];

    v15 = MEMORY[0x1E696AEC0];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"SEE_ALL_ATTACHMENTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v18 = [v15 stringWithFormat:v17];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v21 = @"\u200F";
    }

    else
    {
      v21 = @"\u200E";
    }

    v22 = [(__CFString *)v21 stringByAppendingString:v18];

    [v14 setTitle:v22];
    sectionIdentifier = [objc_opt_class() sectionIdentifier];
    [v14 setSectionIdentifier:sectionIdentifier];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)previewViewControllerForResult:(id)result
{
  resultCopy = result;
  if (CKIsRunningInMacCatalyst())
  {
    requestPreviewMockSceneActivation = [MEMORY[0x1E697A0D0] requestPreviewMockSceneActivation];
LABEL_5:
    [(QLPreviewController *)requestPreviewMockSceneActivation setDelegate:self];
    v10 = objc_alloc_init(CKQLPreviewControllerDataSource);
    [(CKSearchController *)self setQlPreviewDataSource:v10];

    qlPreviewDataSource = [(CKSearchController *)self qlPreviewDataSource];
    [(QLPreviewController *)requestPreviewMockSceneActivation setDataSource:qlPreviewDataSource];

    qlPreviewDataSource2 = [(CKSearchController *)self qlPreviewDataSource];
    results = [(CKSearchController *)self results];
    [qlPreviewDataSource2 setPreviewItems:results];

    [(QLPreviewController *)requestPreviewMockSceneActivation reloadData];
    results2 = [(CKSearchController *)self results];
    -[QLPreviewController setCurrentPreviewItemIndex:](requestPreviewMockSceneActivation, "setCurrentPreviewItemIndex:", [results2 indexOfObject:resultCopy]);

    [(QLPreviewController *)requestPreviewMockSceneActivation refreshCurrentPreviewItem];
    goto LABEL_6;
  }

  item = [resultCopy item];
  attributeSet = [item attributeSet];
  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];

  v9 = IMUTITypeForFilename();
  if (IMUTTypeWantsQuicklook())
  {
    requestPreviewMockSceneActivation = objc_alloc_init(CKQLPreviewController);

    goto LABEL_5;
  }

  requestPreviewMockSceneActivation = 0;
LABEL_6:

  return requestPreviewMockSceneActivation;
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
    [v10 setName:__ck_spotlightItemSnippet];
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

- (BOOL)handleSelectionForResult:(id)result
{
  resultCopy = result;
  item = [resultCopy item];
  attributeSet = [item attributeSet];

  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];
  v8 = IMUTITypeForFilename();
  contentURL = [attributeSet contentURL];
  if (IMUTTypeIsWatchface())
  {
    v10 = contentURL == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v13.receiver = self;
    v13.super_class = CKAttachmentsSearchController;
    v11 = [(CKSearchController *)&v13 handleSelectionForResult:resultCopy];
  }

  else
  {
    [CKWatchfaceUtilities addWatchFaceAtURL:contentURL completionHandler:&__block_literal_global_164];
    v11 = 1;
  }

  return v11;
}

void __58__CKAttachmentsSearchController_handleSelectionForResult___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(25);
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v5 = v2;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "Failed to import URL: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }
}

@end