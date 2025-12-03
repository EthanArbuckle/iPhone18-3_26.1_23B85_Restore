@interface CKWalletItemSearchController
+ (id)indexingString;
+ (id)sectionTitle;
+ (id)supportedCellClasses;
- (CKWalletItemSearchController)init;
- (id)_activityItemProviderForResult:(id)result;
- (id)_activityItemProviderForResult:(id)result thumbnail:(id)thumbnail;
- (id)_addOrderViewControllerForURL:(id)l;
- (id)_addPassViewControllerForURL:(id)l;
- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind;
- (id)layoutGroupWithEnvironment:(id)environment;
- (id)previewViewControllerForResult:(id)result;
- (void)updateSupplementryViewIfNeeded:(id)needed atIndexPath:(id)path;
@end

@implementation CKWalletItemSearchController

- (CKWalletItemSearchController)init
{
  v3 = objc_alloc_init(CKWalletItemQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_WALLET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)indexingString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"WALLET_ITEMS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)supportedCellClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = [self cellClass];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)previewViewControllerForResult:(id)result
{
  item = [result item];
  attributeSet = [item attributeSet];
  contentURL = [attributeSet contentURL];

  pathExtension = [contentURL pathExtension];
  LODWORD(attributeSet) = [pathExtension isEqualToString:@"pkpass"];

  if (attributeSet)
  {
    v8 = [(CKWalletItemSearchController *)self _addPassViewControllerForURL:contentURL];
LABEL_5:
    v11 = v8;
    goto LABEL_9;
  }

  pathExtension2 = [contentURL pathExtension];
  v10 = [pathExtension2 isEqualToString:@"order"];

  if (v10)
  {
    v8 = [(CKWalletItemSearchController *)self _addOrderViewControllerForURL:contentURL];
    goto LABEL_5;
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CKWalletItemSearchController previewViewControllerForResult:contentURL];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)_addPassViewControllerForURL:(id)l
{
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:8 error:0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x193AF5EC0](@"PKPass" @"PassKit"))];
    v5 = [CKPassKitHelper addPassesViewControllerForPass:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_addOrderViewControllerForURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getFKOrderImportPreviewControllerProviderClass_softClass_0;
  v17 = getFKOrderImportPreviewControllerProviderClass_softClass_0;
  if (!getFKOrderImportPreviewControllerProviderClass_softClass_0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getFKOrderImportPreviewControllerProviderClass_block_invoke_0;
    v13[3] = &unk_1E72EB968;
    v13[4] = &v14;
    __getFKOrderImportPreviewControllerProviderClass_block_invoke_0(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CKWalletItemSearchController__addOrderViewControllerForURL___block_invoke;
  v11[3] = &unk_1E72F3178;
  v12 = 0;
  v6 = [v4 makeViewControllerWithOrderURL:lCopy completion:v11 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKWalletItemSearchController _addOrderViewControllerForURL:lCopy];
    }
  }

  return v6;
}

void __62__CKWalletItemSearchController__addOrderViewControllerForURL___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = IMLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__CKWalletItemSearchController__addOrderViewControllerForURL___block_invoke_cold_1(v1);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Finished adding order file to Wallet", v5, 2u);
  }
}

- (id)_activityItemProviderForResult:(id)result
{
  resultCopy = result;
  delegate = [(CKSearchController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKSearchController *)self delegate];
    v8 = [delegate2 searchController:self cellForResult:resultCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      previewSnapshot = [v8 previewSnapshot];
    }

    else
    {
      previewSnapshot = 0;
    }
  }

  else
  {
    previewSnapshot = 0;
  }

  v10 = [(CKWalletItemSearchController *)self _activityItemProviderForResult:resultCopy thumbnail:previewSnapshot];

  return v10;
}

- (id)_activityItemProviderForResult:(id)result thumbnail:(id)thumbnail
{
  if (thumbnail)
  {
    thumbnailCopy = thumbnail;
    item = [result item];
    attributeSet = [item attributeSet];

    contentURL = [attributeSet contentURL];
    __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];
    v10 = objc_alloc_init(MEMORY[0x1E696EC58]);
    [v10 setName:__ck_spotlightItemSnippet];
    v11 = IMUTITypeForFilename();
    [v10 setType:v11];

    v12 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:thumbnailCopy];
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

- (id)layoutGroupWithEnvironment:(id)environment
{
  v38[1] = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0.0;
  [(CKMessageTypeSearchController *)self fractionalWidth:&v37 count:&v36 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v37];
  v5 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v5 isAccessibilityPreferredContentSizeCategory];

  v7 = MEMORY[0x1E6995558];
  v8 = v37;
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (isAccessibilityPreferredContentSizeCategory)
  {
    [v9 searchLinksFractionalWidthScale];
  }

  else
  {
    [v9 searchLinksFractionalHeightScale];
  }

  v12 = [v7 fractionalWidthDimension:v8 * v11];

  v13 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v12];
  if ([(CKSearchController *)self suppressAvatars])
  {
    v14 = [MEMORY[0x1E6995578] itemWithLayoutSize:v13];
  }

  else
  {
    v15 = MEMORY[0x1E6995558];
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 searchResultAvatarSize];
    v17 = [v15 absoluteDimension:?];

    v18 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v17 heightDimension:v17];
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection == 1)
    {
      v20 = 3;
    }

    else
    {
      v20 = 9;
    }

    v21 = -8.0;
    if (userInterfaceLayoutDirection == 1)
    {
      v21 = 8.0;
    }

    v22 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:v20 absoluteOffset:v21];
    v23 = MEMORY[0x1E6995598];
    v24 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v25 = [v23 supplementaryItemWithLayoutSize:v18 elementKind:v24 containerAnchor:v22];

    v26 = MEMORY[0x1E6995578];
    v38[0] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v14 = [v26 itemWithLayoutSize:v13 supplementaryItems:v27];
  }

  v28 = MEMORY[0x1E6995588];
  v29 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v30 = [v28 sizeWithWidthDimension:v29 heightDimension:v12];

  v31 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v30 subitem:v14 count:v36];
  v32 = MEMORY[0x1E6995590];
  v33 = +[CKUIBehavior sharedBehaviors];
  [v33 searchLinksInterItemSpacing];
  v34 = [v32 fixedSpacing:?];
  [v31 setInterItemSpacing:v34];

  return v31;
}

- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  v11 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v12 = [kindCopy isEqualToString:v11];

  if (v12)
  {
    v13 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v14 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:pathCopy];

    v16 = MEMORY[0x1E696AEC0];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"SEE_ALL_LINKS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
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
  }

  else
  {
    v25 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v26 = +[CKSearchAvatarSupplementryView reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v25 withReuseIdentifier:v26 forIndexPath:pathCopy];

    v27 = [pathCopy row];
    results = [(CKSearchController *)self results];
    v29 = [results count];

    if (v27 >= v29)
    {
      goto LABEL_9;
    }

    results2 = [(CKSearchController *)self results];
    sectionIdentifier = [results2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v31 = [CKSpotlightQueryResultUtilities contactForResult:sectionIdentifier];
    [v15 setContact:v31];
    [v15 setAssociatedResult:sectionIdentifier];
    [v15 setParentContentType:2];
  }

LABEL_9:

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

- (void)previewViewControllerForResult:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 pathExtension];
  OUTLINED_FUNCTION_0_5(&dword_19020E000, v2, v3, "Unknown wallet file with extension .%@", v4, v5, v6, v7, 2u);
}

- (void)_addOrderViewControllerForURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_0_5(&dword_19020E000, v2, v3, "Failed to create Add to Wallet VC for order at %@", v4, v5, v6, v7, 2u);
}

void __62__CKWalletItemSearchController__addOrderViewControllerForURL___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_0_5(&dword_19020E000, v2, v3, "Failed to add order file to Wallet: %@", v4, v5, v6, v7, 2u);
}

@end