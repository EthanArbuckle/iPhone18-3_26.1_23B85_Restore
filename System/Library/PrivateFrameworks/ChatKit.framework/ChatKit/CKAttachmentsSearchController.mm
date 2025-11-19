@interface CKAttachmentsSearchController
+ (BOOL)supportsQuicklookForResult:(id)a3;
+ (id)indexingString;
+ (id)sectionTitle;
- (BOOL)handleSelectionForResult:(id)a3;
- (CKAttachmentsSearchController)init;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)a3;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5;
- (id)chatGUIDForSearchableItem:(id)a3;
- (id)layoutGroupWithEnvironment:(id)a3;
- (id)previewViewControllerForResult:(id)a3;
- (void)fractionalWidth:(double *)a3 count:(unint64_t *)a4 forLayoutWidth:(unint64_t)a5;
@end

@implementation CKAttachmentsSearchController

- (CKAttachmentsSearchController)init
{
  v3 = objc_alloc_init(CKAttachmentsQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

- (void)fractionalWidth:(double *)a3 count:(unint64_t *)a4 forLayoutWidth:(unint64_t)a5
{
  if (!a5)
  {
    v7 = 0.5;
    v9 = 2;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a5 != 2)
  {
    v9 = 3;
    v7 = 0.33;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v7;
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

  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v9;
  }
}

+ (BOOL)supportsQuicklookForResult:(id)a3
{
  v3 = [a3 item];
  v4 = [v3 attributeSet];
  v5 = [v4 __ck_spotlightItemSnippet];

  v6 = IMUTITypeForFilename();
  LOBYTE(v4) = IMUTTypeWantsQuicklook();

  return v4;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_ATTACHMENTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)chatGUIDForSearchableItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 accountIdentifier];

  return v4;
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

- (id)layoutGroupWithEnvironment:(id)a3
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

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = CKAttachmentsSearchController;
  v6 = [(CKSearchController *)&v8 cellForItemInCollectionView:a3 atIndexPath:a4 withIdentifier:a5];
  [v6 setSuppressAvatars:{-[CKSearchController suppressAvatars](self, "suppressAvatars")}];

  return v6;
}

- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v13 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
    v14 = [v7 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:v8];

    v15 = MEMORY[0x1E696AEC0];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"SEE_ALL_ATTACHMENTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v18 = [v15 stringWithFormat:v17];

    v19 = [MEMORY[0x1E69DC668] sharedApplication];
    v20 = [v19 userInterfaceLayoutDirection];

    if (v20 == 1)
    {
      v21 = @"\u200F";
    }

    else
    {
      v21 = @"\u200E";
    }

    v22 = [(__CFString *)v21 stringByAppendingString:v18];

    [v14 setTitle:v22];
    v23 = [objc_opt_class() sectionIdentifier];
    [v14 setSectionIdentifier:v23];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)previewViewControllerForResult:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [MEMORY[0x1E697A0D0] requestPreviewMockSceneActivation];
LABEL_5:
    [(QLPreviewController *)v5 setDelegate:self];
    v10 = objc_alloc_init(CKQLPreviewControllerDataSource);
    [(CKSearchController *)self setQlPreviewDataSource:v10];

    v11 = [(CKSearchController *)self qlPreviewDataSource];
    [(QLPreviewController *)v5 setDataSource:v11];

    v12 = [(CKSearchController *)self qlPreviewDataSource];
    v13 = [(CKSearchController *)self results];
    [v12 setPreviewItems:v13];

    [(QLPreviewController *)v5 reloadData];
    v14 = [(CKSearchController *)self results];
    -[QLPreviewController setCurrentPreviewItemIndex:](v5, "setCurrentPreviewItemIndex:", [v14 indexOfObject:v4]);

    [(QLPreviewController *)v5 refreshCurrentPreviewItem];
    goto LABEL_6;
  }

  v6 = [v4 item];
  v7 = [v6 attributeSet];
  v8 = [v7 __ck_spotlightItemSnippet];

  v9 = IMUTITypeForFilename();
  if (IMUTTypeWantsQuicklook())
  {
    v5 = objc_alloc_init(CKQLPreviewController);

    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)_activityItemProviderForResult:(id)a3
{
  v3 = a3;
  v4 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v5 = [v4 cachedPreviewForQueryResult:v3];

  if (v5)
  {
    v6 = [v3 item];
    v7 = [v6 attributeSet];

    v8 = [v7 contentURL];
    v9 = [v7 __ck_spotlightItemSnippet];
    v10 = objc_alloc_init(MEMORY[0x1E696EC58]);
    [v10 setName:v9];
    v11 = IMUTITypeForFilename();
    [v10 setType:v11];

    v12 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v5];
    [v10 setThumbnail:v12];
    v13 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v13 setSpecialization:v10];
    v14 = [[CKSearchActivityItemProvider alloc] initWithPlaceholderItem:v8 metadata:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)handleSelectionForResult:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v5 attributeSet];

  v7 = [v6 __ck_spotlightItemSnippet];
  v8 = IMUTITypeForFilename();
  v9 = [v6 contentURL];
  if (IMUTTypeIsWatchface())
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v13.receiver = self;
    v13.super_class = CKAttachmentsSearchController;
    v11 = [(CKSearchController *)&v13 handleSelectionForResult:v4];
  }

  else
  {
    [CKWatchfaceUtilities addWatchFaceAtURL:v9 completionHandler:&__block_literal_global_164];
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