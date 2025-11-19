@interface CKLocationSearchController
+ (id)indexingString;
+ (id)sectionTitle;
+ (id)supportedCellClasses;
- (BOOL)handleSelectionForResult:(id)a3;
- (BOOL)shouldStartMenuInteractionForResult:(id)a3;
- (CKLocationSearchController)init;
- (double)interGroupSpacing;
- (id)_activityItemProviderForResult:(id)a3;
- (id)_mapItemForResult:(id)a3;
- (id)additionalMenuElementsForResult:(id)a3;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 supplementaryViewKind:(id)a5;
- (id)itemProviderForSearchResult:(id)a3;
- (id)layoutGroupWithEnvironment:(id)a3;
- (id)previewViewControllerForResult:(id)a3;
- (id)reuseIdentifierForIndex:(int64_t)a3;
- (id)urlForQueryResult:(id)a3;
- (void)fractionalWidth:(double *)a3 count:(unint64_t *)a4 forLayoutWidth:(unint64_t)a5;
- (void)updateSupplementryViewIfNeeded:(id)a3 atIndexPath:(id)a4;
@end

@implementation CKLocationSearchController

- (CKLocationSearchController)init
{
  v3 = objc_alloc_init(CKLocationQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_LOCATIONS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)reuseIdentifierForIndex:(int64_t)a3
{
  v4 = [(CKSearchController *)self results];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [CKSpotlightQueryResultUtilities indexDomainForResult:v5];

  v7 = [v6 isEqualToString:@"attachmentDomain"];
  v8 = off_1E72E5060;
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
  v3 = [v2 localizedStringForKey:@"LOCATIONS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)supportedCellClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (double)interGroupSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 searchLocationsInterItemSpacing];
  v4 = v3 * 0.5;

  return v4;
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKSearchController *)self results];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
  v13 = [v12 item];

  v14 = [CKSpotlightQueryResultUtilities indexDomainForItem:v13];
  if ([v14 isEqualToString:@"attachmentDomain"])
  {
    v19 = self;
    v15 = &v19;
  }

  else
  {
    v18 = self;
    v15 = &v18;
  }

  v15[1] = CKLocationSearchController;
  v16 = objc_msgSendSuper2(v15, sel_cellForItemInCollectionView_atIndexPath_withIdentifier_, v10, v9, v8, v18);

  return v16;
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
    v18 = [v17 localizedStringForKey:@"SEE_ALL_LOCATIONS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
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
    [v15 setParentContentType:1];
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
  v35[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0.0;
  [(CKLocationSearchController *)self fractionalWidth:&v34 count:&v33 forLayoutWidth:[(CKSearchController *)self layoutWidth]];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:v34];
  v5 = MEMORY[0x1E6995558];
  v6 = v34;
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
    v16 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    if (v16 == 1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 9;
    }

    v18 = -8.0;
    if (v16 == 1)
    {
      v18 = 8.0;
    }

    v19 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:v17 absoluteOffset:v18];
    v20 = MEMORY[0x1E6995598];
    v21 = +[CKSearchAvatarSupplementryView supplementaryViewType];
    v22 = [v20 supplementaryItemWithLayoutSize:v15 elementKind:v21 containerAnchor:v19];

    v23 = MEMORY[0x1E6995578];
    v35[0] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v11 = [v23 itemWithLayoutSize:v10 supplementaryItems:v24];
  }

  v25 = MEMORY[0x1E6995588];
  v26 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v27 = [v25 sizeWithWidthDimension:v26 heightDimension:v9];

  v28 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v27 subitem:v11 count:v33];
  v29 = MEMORY[0x1E6995590];
  v30 = +[CKUIBehavior sharedBehaviors];
  [v30 searchLocationsInterItemSpacing];
  v31 = [v29 fixedSpacing:?];
  [v28 setInterItemSpacing:v31];

  return v28;
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
    v9.super_class = CKLocationSearchController;
    [(CKMessageTypeSearchController *)&v9 fractionalWidth:a3 count:a4 forLayoutWidth:a5];
  }
}

- (BOOL)shouldStartMenuInteractionForResult:(id)a3
{
  v3 = [(CKLocationSearchController *)self _mapItemForResult:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)previewViewControllerForResult:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x193AF5EC0](@"MUPlaceViewController", @"MapsUI");
  v6 = [(CKLocationSearchController *)self _mapItemForResult:v4];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [[v5 alloc] initWithMapItem:v6];
  }

  return v7;
}

- (id)_activityItemProviderForResult:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchController *)self delegate];
  v6 = [v5 containerTraitCollectionForController:self];

  v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v8 = [v7 cachedMapPreviewForQueryResult:v4 traitCollection:v6];

  if (v8)
  {
    v9 = [v4 item];
    v10 = [v9 attributeSet];

    v11 = [v10 contentURL];
    v12 = [v11 lastPathComponent];
    v13 = [v10 __ck_spotlightItemSnippet];
    v14 = objc_alloc_init(MEMORY[0x1E696EC58]);
    [v14 setName:v13];
    v15 = IMUTITypeForFilename();
    [v14 setType:v15];

    v16 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v8];
    [v14 setThumbnail:v16];

    v17 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v17 setSpecialization:v14];
    v18 = [[CKSearchActivityItemProvider alloc] initWithPlaceholderItem:v11 metadata:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)additionalMenuElementsForResult:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKLocationSearchController *)self _mapItemForResult:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"mappin.and.ellipse"];
    v5 = MEMORY[0x1E69DC628];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SEARCH_OPEN_IN_MAPS" value:&stru_1F04268F8 table:@"ChatKit"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__CKLocationSearchController_additionalMenuElementsForResult___block_invoke;
    v11[3] = &unk_1E72EC060;
    v12 = v3;
    v8 = [v5 actionWithTitle:v7 image:v4 identifier:0 handler:v11];

    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_mapItemForResult:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x193AF5EC0](@"MKPlacemark", @"MapKit");
  v5 = MEMORY[0x193AF5EC0](@"MKMapItem", @"MapKit");
  v6 = v5;
  if (v4 && v5)
  {
    if (_mapItemForResult___pred_CLLocationCoordinate2DMakeCoreLocation != -1)
    {
      [CKLocationSearchController _mapItemForResult:];
    }

    v7 = [v3 item];
    v8 = [v7 attributeSet];

    v9 = [v8 latitude];
    v10 = [v8 longitude];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = [v8 latitude];
      [v12 floatValue];
      v14 = v13;

      v15 = [v8 longitude];
      [v15 floatValue];
      v17 = v16;

      v18 = _mapItemForResult___CLLocationCoordinate2DMake(v14, v17);
      v20 = [[v4 alloc] initWithCoordinate:{v18, v19}];
      v21 = [[v6 alloc] initWithPlacemark:v20];
      v22 = [v8 __ck_spotlightItemSnippet];
      v23 = CKFrameworkBundle();
      v24 = [v23 localizedStringForKey:@"Current Location" value:&stru_1F04268F8 table:@"ChatKit"];
      v25 = [v22 isEqualToString:v24];

      if (v25)
      {
        v39 = [v8 __ck_itemContentCreationDate];
        v26 = +[CKUIBehavior sharedBehaviors];
        v38 = [v26 locationRelativeDateFormatter];

        v27 = [v38 stringFromDate:v39];
        v28 = MEMORY[0x1E696AEC0];
        v29 = CKFrameworkBundle();
        [v29 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
        v30 = v40 = v20;
        v31 = [v28 stringWithFormat:v30, v27];

        v32 = [MEMORY[0x1E69DC668] sharedApplication];
        v33 = [v32 userInterfaceLayoutDirection];

        if (v33 == 1)
        {
          v34 = @"\u200F";
        }

        else
        {
          v34 = @"\u200E";
        }

        v35 = [(__CFString *)v34 stringByAppendingString:v31];

        v22 = v35;
        v20 = v40;
      }

      [v21 setName:v22];
    }

    else
    {
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [CKLocationSearchController _mapItemForResult:];
      }

      v21 = 0;
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKLocationSearchController _mapItemForResult:];
    }

    v21 = 0;
  }

  return v21;
}

void *__48__CKLocationSearchController__mapItemForResult___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  _mapItemForResult___CLLocationCoordinate2DMake = result;
  return result;
}

- (id)urlForQueryResult:(id)a3
{
  v3 = a3;
  [CKSpotlightQueryResultUtilities coordinateForResult:v3];
  v5 = v4;
  v7 = v6;
  v8 = [v3 item];

  v9 = [v8 attributeSet];
  v10 = [v9 __ck_spotlightItemSnippet];

  v11 = [MEMORY[0x1E695DFF8] __ck_appleMapsURLForCoordinate:v10 coordinateName:{v5, v7}];

  return v11;
}

- (BOOL)handleSelectionForResult:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [(CKLocationSearchController *)self urlForQueryResult:v4];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [MEMORY[0x1E69DC668] sharedApplication];
      [v7 openURL:v5 withCompletionHandler:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)itemProviderForSearchResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 item];
    v7 = [v6 attributeSet];
    v8 = [v7 contentURL];

    if (v8)
    {
      v9 = [(CKLocationSearchController *)self urlForQueryResult:v5];
      v10 = [MEMORY[0x1E696ACA0] __ck_itemProviderForAppleMapsCoordinateURL:v9 vCardURL:v8];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(CKLocationSearchController *)v27 itemProviderForSearchResult:v28, v29, v30, v31, v32, v33, v34];
        }
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CKLocationSearchController *)v9 itemProviderForSearchResult:v20, v21, v22, v23, v24, v25, v26];
      }

      v11 = 0;
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CKLocationSearchController *)v8 itemProviderForSearchResult:v13, v14, v15, v16, v17, v18, v19];
    }

    v11 = 0;
  }

  return v11;
}

@end