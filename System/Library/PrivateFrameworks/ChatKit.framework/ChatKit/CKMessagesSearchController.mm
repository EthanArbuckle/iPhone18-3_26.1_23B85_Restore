@interface CKMessagesSearchController
+ (Class)cellClassForMode:(unint64_t)a3;
+ (id)reuseIdentifierForMode:(unint64_t)a3;
+ (id)sectionTitle;
- (BOOL)_shouldGroupResult:(id)a3 withOtherResult:(id)a4;
- (CKMessagesSearchController)init;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (double)interGroupSpacing;
- (double)widthForDeterminingAvatarVisibility;
- (id)_cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)customLayoutSectionForEnvironment:(id)a3;
@end

@implementation CKMessagesSearchController

- (CKMessagesSearchController)init
{
  v3 = objc_alloc_init(CKMessagesQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_MESSAGES_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)reuseIdentifierForMode:(unint64_t)a3
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSearchImprovementsEnabled];

  v5 = off_1E72E5220;
  if (!v4)
  {
    v5 = off_1E72E4C10;
  }

  v6 = [(__objc2_class *)*v5 reuseIdentifier];

  return v6;
}

+ (Class)cellClassForMode:(unint64_t)a3
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  [v3 isSearchImprovementsEnabled];

  v4 = objc_opt_class();

  return v4;
}

- (id)customLayoutSectionForEnvironment:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isSearchImprovementsEnabled];

  if (v6)
  {
    v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v8 = [MEMORY[0x1E6995558] estimatedDimension:100.0];
    v9 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v8];
    v10 = [MEMORY[0x1E6995578] itemWithLayoutSize:v9];
    v11 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v8];
    v12 = MEMORY[0x1E6995568];
    v26[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v14 = [v12 verticalGroupWithLayoutSize:v11 subitems:v13];

    v15 = [MEMORY[0x1E6995580] sectionWithGroup:v14];
    [v15 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      v16 = [v4 container];
      [v16 contentSize];
      v18 = v17;
      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 minConversationListWidth];
      v21 = v18 > v20;
    }

    else
    {
      v21 = 1;
    }

    v22 = [(CKSearchController *)self delegate];
    v23 = [v22 shouldInsetResultsForSearchController:self];

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD3F8]) initWithAppearanceStyle:v24 layoutEnvironment:v4];
    [v7 setSeparatorStyle:v21];
    v15 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v7 layoutEnvironment:v4];
  }

  return v15;
}

- (double)interGroupSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 searchMessagesInterGroupSpacing];
  v4 = v3;

  return v4;
}

- (NSDirectionalEdgeInsets)additionalGroupInsets
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSearchImprovementsEnabled];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 searchMessagesSectionInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v14 = [(CKSearchController *)self delegate];
    [v14 parentMarginInsetsForSearchController:self];
    v7 = v15;
    v11 = v16;

    v13 = 0.0;
    v9 = 0.0;
  }

  if ([(CKSearchController *)self mode]!= 1)
  {
    v17 = [(CKSearchController *)self results];
    v18 = [v17 count];

    if (!v18)
    {
      v7 = *MEMORY[0x1E69DC5C0];
      v9 = *(MEMORY[0x1E69DC5C0] + 8);
      v11 = *(MEMORY[0x1E69DC5C0] + 16);
      v13 = *(MEMORY[0x1E69DC5C0] + 24);
    }
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.trailing = v22;
  result.bottom = v21;
  result.leading = v20;
  result.top = v19;
  return result;
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v8 = MEMORY[0x1E69A8070];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sharedFeatureFlags];
  LODWORD(v8) = [v12 isSearchImprovementsEnabled];

  if (v8)
  {
    v13 = [(CKMessagesSearchController *)self _cellForItemInCollectionView:v11 atIndexPath:v10 withIdentifier:v9];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CKMessagesSearchController;
    v13 = [(CKSearchController *)&v18 cellForItemInCollectionView:v11 atIndexPath:v10 withIdentifier:v9];

    v14 = [(CKSearchController *)self delegate];
    [v13 setShouldInsetResults:{objc_msgSend(v14, "shouldInsetResultsForSearchController:", self)}];

    v15 = [v13 topHairline];
    [v15 setHidden:0];

    v16 = [v13 bottomHairline];
    [v16 setHidden:1];

    [v13 setDelegate:self];
  }

  return v13;
}

- (id)_cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 row];
  v10 = [objc_opt_class() reuseIdentifierForMode:{-[CKSearchController mode](self, "mode")}];
  v11 = [(CKSearchController *)self results];
  v12 = [v8 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v7];

  if (v9 >= [v11 count])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v11 objectAtIndex:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = v12;
    v59 = v12;
    v65 = [(CKSearchController *)self mode];
    v14 = [v7 row];
    v57 = [v7 row];
    v15 = [v11 count];
    v62 = [v13 isFromMe];
    if (v9 < 1 || v9 - 1 >= [v11 count])
    {
      v17 = 0;
    }

    else
    {
      v16 = [v11 objectAtIndex:v9 - 1];
      v17 = [(CKMessagesSearchController *)self _shouldGroupResult:v13 withOtherResult:v16];
    }

    v19 = v9 + 1;
    v64 = v13;
    if (v19 >= [v11 count])
    {
      v21 = 1;
    }

    else
    {
      v20 = [v11 objectAtIndex:v19];
      v21 = ![(CKMessagesSearchController *)self _shouldGroupResult:v13 withOtherResult:v20];
    }

    v63 = !v17;
    v61 = v10;
    v58 = v7;
    v55 = v21;
    v56 = v17;
    if (v62)
    {
      v22 = 0;
      v23 = v64;
    }

    else
    {
      v23 = v64;
      v24 = [v64 conversation];
      v22 = [v24 isGroupConversation];
    }

    v53 = v15 - 1;
    v54 = v11;
    v25 = v14 != 0;
    v26 = [MEMORY[0x1E695DEE8] currentCalendar];
    v27 = [v23 item];
    v28 = [v27 attributeSet];
    v29 = [v28 contentCreationDate];
    v30 = v14;
    v31 = [v26 isDateInToday:v29];

    v32 = CKIsRunningInMacCatalyst();
    v33 = v65 == 2;
    if (v32)
    {
      v33 = 0;
    }

    v34 = v33 & v25 & v63;
    v52 = v22;
    if (v65 == 2)
    {
      v35 = 10.0;
      v36 = 4.0;
      if (!v62)
      {
        v36 = 10.0;
      }

      if (v22)
      {
        v35 = 8.0;
      }

      v37 = v55;
      v38 = v56;
      if (!v56)
      {
        v35 = 0.0;
      }

      if (v30)
      {
        v39 = v33 & v25 & v63;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 12.0;
      }

      else
      {
        v40 = v35;
      }

      if (v55)
      {
        v41 = 18.0;
      }

      else
      {
        v41 = v36;
      }

      v42 = v57;
      v43 = v53;
    }

    else
    {
      if (v30)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 4.0;
      }

      v44 = CKIsRunningInMacCatalyst();
      v42 = v57;
      v43 = v53;
      if (v57 == v53)
      {
        v45 = 16.0;
        v46 = 20.0;
      }

      else
      {
        v45 = 12.0;
        v46 = 16.0;
      }

      if (v44)
      {
        v41 = v45;
      }

      else
      {
        v41 = v46;
      }

      v37 = v55;
      v38 = v56;
    }

    v47 = v42 == v43;
    v48 = [(CKSearchController *)self delegate];
    v49 = [v48 containerGradientReferenceViewForSearchController:self];

    v50 = [(CKSearchController *)self currentSearchText];
    v66[0] = v38;
    v66[1] = v30 == 0;
    v66[2] = v47;
    v66[3] = v37;
    v66[4] = v63;
    v66[5] = v52;
    v66[6] = (v63 | v31) & 1;
    v66[7] = v34;
    v67 = v40;
    v68 = v41;
    v13 = v64;
    [v59 configureWithQueryResult:v64 searchText:v50 mode:v65 visibilityContext:v66 gradientReferenceView:v49];

    v12 = v60;
    v10 = v61;
    v7 = v58;
    v11 = v54;
  }

  else
  {
    v18 = [(CKSearchController *)self currentSearchText];
    [v12 configureWithQueryResult:v13 searchText:v18 mode:{-[CKSearchController mode](self, "mode")}];
  }

  return v12;
}

- (BOOL)_shouldGroupResult:(id)a3 withOtherResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 conversation];
  v8 = [v7 chat];
  v9 = [v8 guid];

  v10 = [v6 conversation];
  v11 = [v10 chat];
  v12 = [v11 guid];

  if ([v9 isEqualToString:v12])
  {
    v13 = [v5 item];
    v14 = [v13 attributeSet];
    v15 = [v14 contentCreationDate];

    v16 = [v6 item];
    v17 = [v16 attributeSet];
    v18 = [v17 contentCreationDate];

    v19 = [MEMORY[0x1E695DEE8] currentCalendar];
    v20 = [v19 isDate:v15 inSameDayAsDate:v18];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (double)widthForDeterminingAvatarVisibility
{
  v2 = [(CKSearchController *)self delegate];
  [v2 widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

@end