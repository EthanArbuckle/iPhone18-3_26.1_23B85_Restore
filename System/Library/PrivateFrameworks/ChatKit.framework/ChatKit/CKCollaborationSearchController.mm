@interface CKCollaborationSearchController
+ (BOOL)supportsQuicklookForResult:(id)result;
+ (id)indexingString;
+ (id)sectionTitle;
+ (id)supportedCellClasses;
- (BOOL)handleSelectionForResult:(id)result;
- (BOOL)shouldStartMenuInteractionForResult:(id)result;
- (CKCollaborationSearchController)init;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)result;
- (id)_additionalMenuElementsForResult:(id)result;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path supplementaryViewKind:(id)kind;
- (id)itemProviderForSearchResult:(id)result;
- (id)layoutGroupWithEnvironment:(id)environment;
- (id)linksController;
- (id)previewViewControllerForResult:(id)result;
- (id)reuseIdentifierForIndex:(int64_t)index;
- (void)deleteAttachmentForResult:(id)result;
- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth;
- (void)updateSupplementryViewIfNeeded:(id)needed atIndexPath:(id)path;
@end

@implementation CKCollaborationSearchController

- (CKCollaborationSearchController)init
{
  v3 = objc_alloc_init(CKCollaborationQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
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
  v3 = [v2 localizedStringForKey:@"SEARCH_COLLABORATION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)reuseIdentifierForIndex:(int64_t)index
{
  results = [(CKSearchController *)self results];
  v5 = [results objectAtIndexedSubscript:index];
  v6 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:v5];

  v7 = off_1E72E5020;
  if (([v6 isEqualToString:@"lnk"] & 1) == 0 && objc_msgSend(v6, "isEqualToString:", @"at"))
  {
    v7 = off_1E72E4848;
  }

  reuseIdentifier = [(__objc2_class *)*v7 reuseIdentifier];

  return reuseIdentifier;
}

+ (id)indexingString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"COLLABORATION_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)supportedCellClasses
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSWYAttachmentsEnabled = [mEMORY[0x1E69A8070] isSWYAttachmentsEnabled];

  v4 = objc_opt_class();
  if (isSWYAttachmentsEnabled)
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
  [v2 searchCollaborationInterItemSpacing];
  v4 = v3;

  return v4;
}

- (id)layoutGroupWithEnvironment:(id)environment
{
  v34[1] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0.0;
  [(CKCollaborationSearchController *)self fractionalWidth:&v33 count:&v32 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v33];
  v5 = MEMORY[0x1E6995558];
  v6 = v33;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 searchLinksFractionalHeightScale];
  v9 = [v5 fractionalWidthDimension:v6 * v8];

  v10 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v9];
  if ([(CKSearchController *)self suppressAvatars])
  {
    v11 = [MEMORY[0x1E6995578] itemWithLayoutSize:v10];
  }

  else
  {
    v12 = MEMORY[0x1E6995558];
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 searchResultAvatarSize];
    v14 = [v12 absoluteDimension:?];

    v15 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v14 heightDimension:v14];
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection == 1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 9;
    }

    v18 = -8.0;
    if (userInterfaceLayoutDirection == 1)
    {
      v18 = 8.0;
    }

    v19 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:v17 absoluteOffset:v18];
    v20 = MEMORY[0x1E6995598];
    v21 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v22 = [v20 supplementaryItemWithLayoutSize:v15 elementKind:v21 containerAnchor:v19];

    v23 = MEMORY[0x1E6995578];
    v34[0] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v11 = [v23 itemWithLayoutSize:v10 supplementaryItems:v24];
  }

  v25 = MEMORY[0x1E6995588];
  v26 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v27 = [v25 sizeWithWidthDimension:v26 heightDimension:v9];

  v28 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v27 subitem:v11 count:v32];
  v29 = MEMORY[0x1E6995590];
  [(CKCollaborationSearchController *)self interGroupSpacing];
  v30 = [v29 fixedSpacing:?];
  [v28 setInterItemSpacing:v30];

  return v28;
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
    v9.super_class = CKCollaborationSearchController;
    [(CKMessageTypeSearchController *)&v9 fractionalWidth:width count:count forLayoutWidth:layoutWidth];
  }
}

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  results = [(CKSearchController *)self results];
  v12 = [results objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  item = [v12 item];

  v14 = [CKSpotlightQueryResultUtilities indexItemTypeForItem:item];
  if ([v14 isEqualToString:@"lnk"])
  {
    v19.receiver = self;
    v19.super_class = CKCollaborationSearchController;
    [(CKSearchController *)&v19 cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy, v17.receiver, v17.super_class];
  }

  else
  {
    if ([v14 isEqualToString:@"at"])
    {
      v18.receiver = self;
      v18.super_class = CKCollaborationSearchController;
      v15 = [(CKSearchController *)&v18 cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy];
      [v15 setSuppressAvatars:{-[CKSearchController suppressAvatars](self, "suppressAvatars")}];
      goto LABEL_7;
    }

    [(CKSearchController *)&v17 cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy, self, CKCollaborationSearchController];
  }
  v15 = ;
LABEL_7:

  return v15;
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
    goto LABEL_6;
  }

  v25 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  v26 = [kindCopy isEqualToString:v25];

  if (v26)
  {
    v27 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v28 = +[CKSearchAvatarSupplementryView reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:pathCopy];

    v29 = [pathCopy row];
    results = [(CKSearchController *)self results];
    v31 = [results count];

    if (v29 < v31)
    {
      results2 = [(CKSearchController *)self results];
      sectionIdentifier = [results2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v33 = [CKSpotlightQueryResultUtilities contactForResult:sectionIdentifier];
      [v15 setContact:v33];
      [v15 setAssociatedResult:sectionIdentifier];
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

- (id)itemProviderForSearchResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:resultCopy];
    if ([v5 isEqualToString:@"lnk"])
    {
      linksController = [(CKCollaborationSearchController *)self linksController];
      v7 = [linksController itemProviderForSearchResult:resultCopy];
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

- (id)_activityItemProviderForResult:(id)result
{
  resultCopy = result;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:resultCopy];
  if ([v5 isEqualToString:@"lnk"])
  {
    linksController = [(CKCollaborationSearchController *)self linksController];
    v7 = [linksController _activityItemProviderForResult:resultCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleSelectionForResult:(id)result
{
  resultCopy = result;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:resultCopy];
  if ([v5 isEqualToString:@"lnk"])
  {
    linksController = [(CKCollaborationSearchController *)self linksController];
    v7 = [linksController handleSelectionForResult:resultCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_additionalMenuElementsForResult:(id)result
{
  resultCopy = result;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:resultCopy];
  if ([v5 isEqualToString:@"lnk"])
  {
    linksController = [(CKCollaborationSearchController *)self linksController];
    v7 = [linksController _additionalMenuElementsForResult:resultCopy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC628];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"HIDE_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__CKCollaborationSearchController__additionalMenuElementsForResult___block_invoke;
  v18[3] = &unk_1E72EBF48;
  objc_copyWeak(&v20, &location);
  v12 = resultCopy;
  v19 = v12;
  v13 = [v8 actionWithTitle:v10 image:v11 identifier:@"ckHideMenuItem" handler:v18];

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"HIDE_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  [v13 setTitle:v15];

  v16 = [v7 arrayByAddingObject:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

void __68__CKCollaborationSearchController__additionalMenuElementsForResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sendSyndicationActionForResult:*(a1 + 32) actionType:16];
}

- (void)deleteAttachmentForResult:(id)result
{
  resultCopy = result;
  item = [resultCopy item];
  uniqueIdentifier = [item uniqueIdentifier];

  mEMORY[0x1E69A5AE8] = [MEMORY[0x1E69A5AE8] sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CKCollaborationSearchController_deleteAttachmentForResult___block_invoke;
  v9[3] = &unk_1E72EC8A0;
  v9[4] = self;
  v10 = resultCopy;
  v8 = resultCopy;
  [mEMORY[0x1E69A5AE8] loadMessageItemWithGUID:uniqueIdentifier completionBlock:v9];
}

void __61__CKCollaborationSearchController_deleteAttachmentForResult___block_invoke(uint64_t a1, void *a2)
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
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:0];
    host = [v6 host];
    v8 = [host caseInsensitiveCompare:@"itunes.apple.com"];

    if (v8 && ([v6 host], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "caseInsensitiveCompare:", @"itunes.com"), v9, v10) && (objc_msgSend(v6, "host"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "caseInsensitiveCompare:", @"itun.es"), v11, v12) && (objc_msgSend(v6, "host"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "caseInsensitiveCompare:", @"appsto.re"), v13, v14))
    {
      iCloudSharingURL_noFragment = [v5 iCloudSharingURL_noFragment];

      v16 = iCloudSharingURL_noFragment == 0;
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

- (id)previewViewControllerForResult:(id)result
{
  resultCopy = result;
  v5 = [CKSpotlightQueryResultUtilities indexItemTypeForResult:resultCopy];
  if ([v5 isEqualToString:@"lnk"])
  {
    linksController = [(CKCollaborationSearchController *)self linksController];
    v7 = [linksController previewViewControllerForResult:resultCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)linksController
{
  v2 = objc_alloc_init(CKLinkSearchController);

  return v2;
}

@end