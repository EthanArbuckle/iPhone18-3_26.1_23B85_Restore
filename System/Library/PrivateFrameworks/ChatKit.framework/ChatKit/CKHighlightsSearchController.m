@interface CKHighlightsSearchController
+ (BOOL)supportsQuicklookForResult:(id)a3;
+ (id)indexingString;
+ (id)sectionTitle;
+ (id)supportedCellClasses;
- (BOOL)handleSelectionForResult:(id)a3;
- (BOOL)shouldStartMenuInteractionForResult:(id)a3;
- (CKHighlightsSearchController)init;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)a3;
- (id)_additionalMenuElementsForResult:(id)a3;
- (id)attachmentsController;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5;
- (id)itemProviderForSearchResult:(id)a3;
- (id)layoutGroupWithEnvironment:(id)a3;
- (id)linksController;
- (id)previewViewControllerForResult:(id)a3;
- (id)reuseIdentifierForIndex:(int64_t)a3;
- (void)deleteAttachmentForResult:(id)a3;
- (void)fractionalWidth:(double *)a3 count:(unint64_t *)a4 forLayoutWidth:(unint64_t)a5;
- (void)updateSupplementryViewIfNeeded:(id)a3 atIndexPath:(id)a4;
@end

@implementation CKHighlightsSearchController

- (CKHighlightsSearchController)init
{
  v3 = objc_alloc_init(CKHighlightsQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
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
  v3 = [v2 localizedStringForKey:@"SEARCH_PINS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)reuseIdentifierForIndex:(int64_t)a3
{
  v4 = [(CKSearchController *)self results];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v5];

  v7 = [v6 isEqualToString:@"at"];
  v8 = off_1E72E4848;
  if (!v7)
  {
    v8 = off_1E72E5020;
  }

  v9 = [(__objc2_class *)*v8 reuseIdentifier];

  return v9;
}

+ (id)indexingString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PINS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)supportedCellClasses
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isSWYAttachmentsEnabled];

  v4 = objc_opt_class();
  if (v3)
  {
    v11 = v4;
    v12 = objc_opt_class();
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v11;
    v7 = 2;
  }

  else
  {
    v10 = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v10;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:{v7, v10, v11, v12}];

  return v8;
}

- (double)interGroupSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 searchHighlightsInterItemSpacing];
  v4 = v3;

  return v4;
}

- (id)layoutGroupWithEnvironment:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0.0;
  [(CKHighlightsSearchController *)self fractionalWidth:&v50 count:&v49 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v50];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isSWYAttachmentsEnabled];

  if (v6)
  {
    v7 = [(CKSearchController *)self delegate];
    [v7 containerWidthForController:self];
    v9 = v8;

    v10 = [(CKSearchController *)self delegate];
    [v10 parentMarginInsetsForSearchController:self];
    v12 = v11;
    v14 = v13;

    v15 = v9 - (v12 + v14);
    v16 = (v49 - 1);
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 searchCollaborationInterItemSpacing];
    v19 = v15 - v16 * v18;

    v20 = v19 / v49;
    v21 = objc_opt_new();
    [v21 setFrame:{0.0, 0.0, v20, 1.79769313e308}];
    v22 = objc_alloc_init(CKDetailsAttachmentsSearchController);
    v23 = [(CKDetailsAttachmentsSearchController *)v22 sizingCell];
    v24 = [v23 preferredLayoutAttributesFittingAttributes:v21];

    [v24 frame];
    v25 = [MEMORY[0x1E6995558] absoluteDimension:CGRectGetHeight(v53)];
    v26 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v25];
  }

  else
  {
    v25 = v4;
    v26 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v25 heightDimension:v25];
  }

  if ([(CKSearchController *)self suppressAvatars])
  {
    v27 = [MEMORY[0x1E6995578] itemWithLayoutSize:v26];
  }

  else
  {
    v28 = MEMORY[0x1E6995558];
    v29 = +[CKUIBehavior sharedBehaviors];
    [v29 searchResultAvatarSize];
    v30 = [v28 absoluteDimension:?];

    v31 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v30 heightDimension:v30];
    v32 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (v32 == 1)
    {
      v33 = 3;
    }

    else
    {
      v33 = 9;
    }

    v34 = -8.0;
    if (v32 == 1)
    {
      v34 = 8.0;
    }

    v35 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:v33 absoluteOffset:v34];
    v36 = MEMORY[0x1E6995598];
    v37 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v38 = [v36 supplementaryItemWithLayoutSize:v31 elementKind:v37 containerAnchor:v35];

    v39 = MEMORY[0x1E6995578];
    v51[0] = v38;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v27 = [v39 itemWithLayoutSize:v26 supplementaryItems:v40];
  }

  v41 = MEMORY[0x1E6995588];
  v42 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v43 = [v41 sizeWithWidthDimension:v42 heightDimension:v25];

  v44 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v43 subitem:v27 count:v49];
  v45 = MEMORY[0x1E6995590];
  v46 = +[CKUIBehavior sharedBehaviors];
  [v46 searchHighlightsInterItemSpacing];
  v47 = [v45 fixedSpacing:?];
  [v44 setInterItemSpacing:v47];

  return v44;
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
    v9.super_class = CKHighlightsSearchController;
    [(CKMessageTypeSearchController *)&v9 fractionalWidth:a3 count:a4 forLayoutWidth:a5];
  }
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKSearchController *)self results];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
  v13 = [v12 item];

  v14 = [CKSpotlightQueryResultUtilities indexItemTypeForItem:v13];
  if ([v14 isEqualToString:@"lnk"])
  {
    v19.receiver = self;
    v19.super_class = CKHighlightsSearchController;
    [(CKSearchController *)&v19 cellForItemInCollectionView:v8 atIndexPath:v9 withIdentifier:v10, v17.receiver, v17.super_class];
  }

  else
  {
    if ([v14 isEqualToString:@"at"])
    {
      v18.receiver = self;
      v18.super_class = CKHighlightsSearchController;
      v15 = [(CKSearchController *)&v18 cellForItemInCollectionView:v8 atIndexPath:v9 withIdentifier:v10];
      [v15 setSuppressAvatars:{-[CKSearchController suppressAvatars](self, "suppressAvatars")}];
      goto LABEL_7;
    }

    [(CKSearchController *)&v17 cellForItemInCollectionView:v8 atIndexPath:v9 withIdentifier:v10, self, CKHighlightsSearchController];
  }
  v15 = ;
LABEL_7:

  return v15;
}

- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v14 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:v9];

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
    goto LABEL_6;
  }

  v25 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  v26 = [v10 isEqualToString:v25];

  if (v26)
  {
    v27 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v28 = +[CKSearchAvatarSupplementryView reuseIdentifier];
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:v9];

    v29 = [v9 row];
    v30 = [(CKSearchController *)self results];
    v31 = [v30 count];

    if (v29 < v31)
    {
      v32 = [(CKSearchController *)self results];
      v24 = [v32 objectAtIndex:{objc_msgSend(v9, "row")}];

      v33 = [CKSpotlightQueryResultUtilities contactForResult:v24];
      [v15 setContact:v33];
      [v15 setAssociatedResult:v24];
      [v15 setParentContentType:2];

LABEL_6:
    }
  }

  else
  {
    v15 = 0;
  }

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

- (id)itemProviderForSearchResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v4];
    if ([v5 isEqualToString:@"lnk"])
    {
      v6 = [(CKHighlightsSearchController *)self linksController];
      v7 = [v6 itemProviderForSearchResult:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Unexpected nil search result when trying to create NSItemProvider for link", v10, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)_activityItemProviderForResult:(id)a3
{
  v4 = a3;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v4];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isSWYAttachmentsEnabled];

  v8 = [v5 isEqualToString:@"lnk"];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v9 = [(CKHighlightsSearchController *)self linksController];
    goto LABEL_7;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"at"])
  {
    v9 = [(CKHighlightsSearchController *)self attachmentsController];
LABEL_7:
    v10 = v9;
    v11 = [v9 _activityItemProviderForResult:v4];

    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)handleSelectionForResult:(id)a3
{
  v4 = a3;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v4];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isSWYAttachmentsEnabled];

  v8 = [v5 isEqualToString:@"lnk"];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v9 = [(CKHighlightsSearchController *)self linksController];
    goto LABEL_7;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  if (![v5 isEqualToString:@"at"])
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(CKHighlightsSearchController *)self attachmentsController];
LABEL_7:
  v10 = v9;
  v11 = [v9 handleSelectionForResult:v4];

LABEL_9:
  return v11;
}

- (id)_additionalMenuElementsForResult:(id)a3
{
  v4 = a3;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v4];
  if ([v5 isEqualToString:@"lnk"])
  {
    v6 = [(CKHighlightsSearchController *)self linksController];
    v7 = [v6 _additionalMenuElementsForResult:v4];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)deleteAttachmentForResult:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v5 uniqueIdentifier];

  v7 = [MEMORY[0x1E69A5AE8] sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CKHighlightsSearchController_deleteAttachmentForResult___block_invoke;
  v9[3] = &unk_1E72EC8A0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 loadMessageItemWithGUID:v6 completionBlock:v9];
}

void __58__CKHighlightsSearchController_deleteAttachmentForResult___block_invoke(uint64_t a1, void *a2)
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
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:0];
    v7 = [v6 host];
    v8 = [v7 caseInsensitiveCompare:@"itunes.apple.com"];

    if (v8 && ([v6 host], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "caseInsensitiveCompare:", @"itunes.com"), v9, v10) && (objc_msgSend(v6, "host"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "caseInsensitiveCompare:", @"itun.es"), v11, v12) && (objc_msgSend(v6, "host"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "caseInsensitiveCompare:", @"appsto.re"), v13, v14))
    {
      v15 = [v5 iCloudSharingURL_noFragment];

      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)previewViewControllerForResult:(id)a3
{
  v4 = a3;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v4];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isSWYAttachmentsEnabled];

  v8 = [v5 isEqualToString:@"lnk"];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v9 = [(CKHighlightsSearchController *)self linksController];
    goto LABEL_7;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"at"])
  {
    v9 = [(CKHighlightsSearchController *)self attachmentsController];
LABEL_7:
    v10 = v9;
    v11 = [v9 previewViewControllerForResult:v4];

    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

- (id)attachmentsController
{
  v2 = objc_alloc_init(CKAttachmentsSearchController);

  return v2;
}

- (id)linksController
{
  v2 = objc_alloc_init(CKLinkSearchController);

  return v2;
}

@end