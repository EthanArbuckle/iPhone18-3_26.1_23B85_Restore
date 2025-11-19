@interface CKLinkSearchController
+ (BOOL)handleSelectionForResult:(id)a3;
+ (id)_additionalMenuElementsForResult:(id)a3;
+ (id)indexingString;
+ (id)itemProviderForSearchResult:(id)a3;
+ (id)sectionTitle;
- (BOOL)shouldStartMenuInteractionForResult:(id)a3;
- (CKLinkSearchController)init;
- (Class)_richLinkDatasourceClass;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)a3;
- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5;
- (id)layoutGroupWithEnvironment:(id)a3;
- (id)previewViewControllerForResult:(id)a3;
- (void)deleteAttachmentForResult:(id)a3;
- (void)fractionalWidth:(double *)a3 count:(unint64_t *)a4 forLayoutWidth:(unint64_t)a5;
- (void)updateSupplementryViewIfNeeded:(id)a3 atIndexPath:(id)a4;
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

- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v14 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
    v15 = [v10 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:v8];

    v16 = MEMORY[0x1E696AEC0];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"SEE_ALL_LINKS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [v16 stringWithFormat:v18];

    v20 = [MEMORY[0x1E69DC668] sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection];

    if (v21 == 1)
    {
      v22 = @"\u200F";
    }

    else
    {
      v22 = @"\u200E";
    }

    v23 = [(__CFString *)v22 stringByAppendingString:v19];

    [v15 setTitle:v23];
    v24 = [objc_opt_class() sectionIdentifier];
    [v15 setSectionIdentifier:v24];
  }

  else
  {
    v25 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v26 = +[CKSearchAvatarSupplementryView reuseIdentifier];
    v15 = [v10 dequeueReusableSupplementaryViewOfKind:v25 withReuseIdentifier:v26 forIndexPath:v8];

    v27 = [v8 row];
    v28 = [(CKSearchController *)self results];
    v29 = [v28 count];

    if (v27 >= v29)
    {
      goto LABEL_9;
    }

    v30 = [(CKSearchController *)self results];
    v24 = [v30 objectAtIndex:{objc_msgSend(v8, "row")}];

    v31 = [CKSpotlightQueryResultUtilities contactForResult:v24];
    [v15 setContact:v31];
    [v15 setAssociatedResult:v24];
    [v15 setParentContentType:2];
  }

LABEL_9:

  return v15;
}

- (void)updateSupplementryViewIfNeeded:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = v6;
  v8 = [v7 row];
  v9 = [(CKSearchController *)self results];
  v10 = [v9 count];

  if (v8 >= v10)
  {
    v12 = 0;
  }

  else
  {
    v11 = [(CKSearchController *)self results];
    v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];

    v13 = [v16 associatedResult];
    v14 = [v12 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [CKSpotlightQueryResultUtilities contactForResult:v12];
      [v16 setContact:v15];
      [v16 setAssociatedResult:v12];
      [v16 setNeedsLayout];
    }
  }
}

- (id)layoutGroupWithEnvironment:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0.0;
  [(CKLinkSearchController *)self fractionalWidth:&v36 count:&v35 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v36];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 isAccessibilityPreferredContentSizeCategory];

  v7 = MEMORY[0x1E6995558];
  v8 = v36;
  if (v6)
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
    v18 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (v18 == 1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 9;
    }

    v20 = -8.0;
    if (v18 == 1)
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

- (void)fractionalWidth:(double *)a3 count:(unint64_t *)a4 forLayoutWidth:(unint64_t)a5
{
  if (CKIsRunningInMacCatalyst())
  {
    if (a3)
    {
      *a3 = 0.5;
    }

    if (a4)
    {
      *a4 = 2;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKLinkSearchController;
    [(CKMessageTypeSearchController *)&v9 fractionalWidth:a3 count:a4 forLayoutWidth:a5];
  }
}

- (Class)_richLinkDatasourceClass
{
  v2 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v3 = [v2 dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

  return v3;
}

+ (id)_additionalMenuElementsForResult:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
  v5 = MEMORY[0x1E69DC628];
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"SEARCH_OPEN_LINK" value:&stru_1F04268F8 table:@"ChatKit"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CKLinkSearchController__additionalMenuElementsForResult___block_invoke;
  v12[3] = &unk_1E72EC060;
  v13 = v3;
  v8 = v3;
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

+ (id)itemProviderForSearchResult:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 item];
    v6 = [v5 attributeSet];
    v7 = [v6 URL];

    if (v7)
    {
      v8 = [v7 absoluteString];
      v9 = [v8 dataUsingEncoding:4];
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

- (id)_activityItemProviderForResult:(id)a3
{
  v3 = a3;
  v4 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v5 = [v4 cachedLinkMetadataForQueryResult:v3];

  if (v5)
  {
    v6 = [v3 item];
    v7 = [v6 attributeSet];

    v8 = [v7 URL];
    v9 = [[CKSearchActivityItemProvider alloc] initWithPlaceholderItem:v8 metadata:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAttachmentForResult:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v5 uniqueIdentifier];

  v7 = [MEMORY[0x1E69A5AE8] sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__CKLinkSearchController_deleteAttachmentForResult___block_invoke;
  v9[3] = &unk_1E72EC8A0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 loadMessageItemWithGUID:v6 completionBlock:v9];
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

- (BOOL)shouldStartMenuInteractionForResult:(id)a3
{
  v3 = [a3 item];
  v4 = [v3 attributeSet];

  v5 = [v4 URL];
  v6 = shouldDisable3DTouchPreviewWithNegativeFeedbackForURL(v5);

  return !v6;
}

- (id)previewViewControllerForResult:(id)a3
{
  v3 = [a3 item];
  v4 = [v3 attributeSet];

  v5 = [v4 URL];
  if (shouldDisable3DTouchPreviewWithNegativeFeedbackForURL(v5) || (v6 = MEMORY[0x193AF5EC0](@"MLULookupItem", @"MobileLookup")) == 0)
  {
    v8 = 0;
  }

  else
  {
    v7 = [[v6 alloc] initWithURL:v5 dataDetectorsResult:0 text:&stru_1F04268F8 range:{0, 0}];
    [v7 resolve];
    v8 = [v7 viewControllerToPresent];
  }

  return v8;
}

+ (BOOL)handleSelectionForResult:(id)a3
{
  v3 = a3;
  v4 = [v3 item];
  v5 = [v4 attributeSet];
  v6 = [v5 URL];

  v7 = MEMORY[0x1E69A5AC8];
  v8 = [v3 conversation];
  v9 = [v8 chat];
  v10 = [v9 lastAddressedHandleID];
  v11 = [v3 linkMetadata];

  v12 = [v7 URLForDugongShareURL:v6 handle:v10 metadata:v11];

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  [v13 openURL:v12 withCompletionHandler:0];

  return 1;
}

@end