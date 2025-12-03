@interface CKLinkSearchController
+ (BOOL)handleSelectionForResult:(id)result;
+ (id)_additionalMenuElementsForResult:(id)result;
+ (id)indexingString;
+ (id)itemProviderForSearchResult:(id)result;
+ (id)sectionTitle;
- (BOOL)shouldStartMenuInteractionForResult:(id)result;
- (CKLinkSearchController)init;
- (Class)_richLinkDatasourceClass;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)result;
- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind;
- (id)layoutGroupWithEnvironment:(id)environment;
- (id)previewViewControllerForResult:(id)result;
- (void)deleteAttachmentForResult:(id)result;
- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth;
- (void)updateSupplementryViewIfNeeded:(id)needed atIndexPath:(id)path;
@end

@implementation CKLinkSearchController

- (CKLinkSearchController)init
{
  v3 = objc_alloc_init(CKLinkQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_LINKS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)indexingString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"LINKS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (double)interGroupSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 searchLinksInterItemSpacing];
  v4 = v3 * 0.5;

  return v4;
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

- (id)layoutGroupWithEnvironment:(id)environment
{
  v37[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0.0;
  [(CKLinkSearchController *)self fractionalWidth:&v36 count:&v35 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v36];
  v5 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v5 isAccessibilityPreferredContentSizeCategory];

  v7 = MEMORY[0x1E6995558];
  v8 = v36;
  if (isAccessibilityPreferredContentSizeCategory)
  {
    v9 = [MEMORY[0x1E6995558] fractionalWidthDimension:v36 * 1.2];
  }

  else
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 searchLinksFractionalHeightScale];
    v9 = [v7 fractionalWidthDimension:v8 * v11];
  }

  v12 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v9];
  if ([(CKSearchController *)self suppressAvatars])
  {
    v13 = [MEMORY[0x1E6995578] itemWithLayoutSize:v12];
  }

  else
  {
    v14 = MEMORY[0x1E6995558];
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 searchResultAvatarSize];
    v16 = [v14 absoluteDimension:?];

    v17 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v16 heightDimension:v16];
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection == 1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 9;
    }

    v20 = -8.0;
    if (userInterfaceLayoutDirection == 1)
    {
      v20 = 8.0;
    }

    v21 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:v19 absoluteOffset:v20];
    v22 = MEMORY[0x1E6995598];
    v23 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v24 = [v22 supplementaryItemWithLayoutSize:v17 elementKind:v23 containerAnchor:v21];

    v25 = MEMORY[0x1E6995578];
    v37[0] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v13 = [v25 itemWithLayoutSize:v12 supplementaryItems:v26];
  }

  v27 = MEMORY[0x1E6995588];
  v28 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v29 = [v27 sizeWithWidthDimension:v28 heightDimension:v9];

  v30 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v29 subitem:v13 count:v35];
  v31 = MEMORY[0x1E6995590];
  v32 = +[CKUIBehavior sharedBehaviors];
  [v32 searchLinksInterItemSpacing];
  v33 = [v31 fixedSpacing:?];
  [v30 setInterItemSpacing:v33];

  return v30;
}

- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth
{
  if (CKIsRunningInMacCatalyst())
  {
    if (width)
    {
      *width = 0.5;
    }

    if (count)
    {
      *count = 2;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKLinkSearchController;
    [(CKMessageTypeSearchController *)&v9 fractionalWidth:width count:count forLayoutWidth:layoutWidth];
  }
}

- (Class)_richLinkDatasourceClass
{
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v3 = [mEMORY[0x1E69A5AD0] dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

  return v3;
}

+ (id)_additionalMenuElementsForResult:(id)result
{
  v14[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
  v5 = MEMORY[0x1E69DC628];
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"SEARCH_OPEN_LINK" value:&stru_1F04268F8 table:@"ChatKit"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CKLinkSearchController__additionalMenuElementsForResult___block_invoke;
  v12[3] = &unk_1E72EC060;
  v13 = resultCopy;
  v8 = resultCopy;
  v9 = [v5 actionWithTitle:v7 image:v4 identifier:0 handler:v12];

  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  return v10;
}

void __59__CKLinkSearchController__additionalMenuElementsForResult___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) item];
  v2 = [v1 attributeSet];
  v4 = [v2 URL];

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 openURL:v4 withCompletionHandler:0];
}

+ (id)itemProviderForSearchResult:(id)result
{
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy)
  {
    item = [resultCopy item];
    attributeSet = [item attributeSet];
    v7 = [attributeSet URL];

    if (v7)
    {
      absoluteString = [v7 absoluteString];
      v9 = [absoluteString dataUsingEncoding:4];
      v10 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v11 = *MEMORY[0x1E69638B8];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__CKLinkSearchController_itemProviderForSearchResult___block_invoke;
      v20[3] = &unk_1E72EC878;
      v12 = v9;
      v21 = v12;
      [v10 registerDataRepresentationForTypeIdentifier:v11 visibility:0 loadHandler:v20];
      v13 = *MEMORY[0x1E69638C8];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__CKLinkSearchController_itemProviderForSearchResult___block_invoke_2;
      v18[3] = &unk_1E72EC878;
      v19 = v12;
      v14 = v12;
      [v10 registerDataRepresentationForTypeIdentifier:v13 visibility:0 loadHandler:v18];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Unexpected nil URL for link search results", buf, 2u);
        }
      }

      v10 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Unexpected nil search result when trying to create NSItemProvider for link", buf, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)_activityItemProviderForResult:(id)result
{
  resultCopy = result;
  v4 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v5 = [v4 cachedLinkMetadataForQueryResult:resultCopy];

  if (v5)
  {
    item = [resultCopy item];
    attributeSet = [item attributeSet];

    v8 = [attributeSet URL];
    v9 = [[CKSearchActivityItemProvider alloc] initWithPlaceholderItem:v8 metadata:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAttachmentForResult:(id)result
{
  resultCopy = result;
  item = [resultCopy item];
  uniqueIdentifier = [item uniqueIdentifier];

  mEMORY[0x1E69A5AE8] = [MEMORY[0x1E69A5AE8] sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__CKLinkSearchController_deleteAttachmentForResult___block_invoke;
  v9[3] = &unk_1E72EC8A0;
  v9[4] = self;
  v10 = resultCopy;
  v8 = resultCopy;
  [mEMORY[0x1E69A5AE8] loadMessageItemWithGUID:uniqueIdentifier completionBlock:v9];
}

void __52__CKLinkSearchController_deleteAttachmentForResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 removeResult:v4];
  v6 = [*(a1 + 32) delegate];
  [v6 searchControllerContentsDidChange:*(a1 + 32)];

  v7 = [*(a1 + 32) delegate];
  [v7 deleteMessageItem:v5];
}

- (BOOL)shouldStartMenuInteractionForResult:(id)result
{
  item = [result item];
  attributeSet = [item attributeSet];

  v5 = [attributeSet URL];
  v6 = shouldDisable3DTouchPreviewWithNegativeFeedbackForURL(v5);

  return !v6;
}

- (id)previewViewControllerForResult:(id)result
{
  item = [result item];
  attributeSet = [item attributeSet];

  v5 = [attributeSet URL];
  if (shouldDisable3DTouchPreviewWithNegativeFeedbackForURL(v5) || (v6 = MEMORY[0x193AF5EC0](@"MLULookupItem", @"MobileLookup")) == 0)
  {
    viewControllerToPresent = 0;
  }

  else
  {
    v7 = [[v6 alloc] initWithURL:v5 dataDetectorsResult:0 text:&stru_1F04268F8 range:{0, 0}];
    [v7 resolve];
    viewControllerToPresent = [v7 viewControllerToPresent];
  }

  return viewControllerToPresent;
}

+ (BOOL)handleSelectionForResult:(id)result
{
  resultCopy = result;
  item = [resultCopy item];
  attributeSet = [item attributeSet];
  v6 = [attributeSet URL];

  v7 = MEMORY[0x1E69A5AC8];
  conversation = [resultCopy conversation];
  chat = [conversation chat];
  lastAddressedHandleID = [chat lastAddressedHandleID];
  linkMetadata = [resultCopy linkMetadata];

  v12 = [v7 URLForDugongShareURL:v6 handle:lastAddressedHandleID metadata:linkMetadata];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] openURL:v12 withCompletionHandler:0];

  return 1;
}

@end