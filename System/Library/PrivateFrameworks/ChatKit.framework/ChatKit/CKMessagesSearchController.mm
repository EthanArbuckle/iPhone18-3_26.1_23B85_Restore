@interface CKMessagesSearchController
+ (Class)cellClassForMode:(unint64_t)mode;
+ (id)reuseIdentifierForMode:(unint64_t)mode;
+ (id)sectionTitle;
- (BOOL)_shouldGroupResult:(id)result withOtherResult:(id)otherResult;
- (CKMessagesSearchController)init;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (double)interGroupSpacing;
- (double)widthForDeterminingAvatarVisibility;
- (id)_cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)customLayoutSectionForEnvironment:(id)environment;
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

+ (id)reuseIdentifierForMode:(unint64_t)mode
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSearchImprovementsEnabled = [mEMORY[0x1E69A8070] isSearchImprovementsEnabled];

  v5 = off_1E72E5220;
  if (!isSearchImprovementsEnabled)
  {
    v5 = off_1E72E4C10;
  }

  reuseIdentifier = [(__objc2_class *)*v5 reuseIdentifier];

  return reuseIdentifier;
}

+ (Class)cellClassForMode:(unint64_t)mode
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  [mEMORY[0x1E69A8070] isSearchImprovementsEnabled];

  v4 = objc_opt_class();

  return v4;
}

- (id)customLayoutSectionForEnvironment:(id)environment
{
  v26[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSearchImprovementsEnabled = [mEMORY[0x1E69A8070] isSearchImprovementsEnabled];

  if (isSearchImprovementsEnabled)
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
      container = [environmentCopy container];
      [container contentSize];
      v18 = v17;
      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 minConversationListWidth];
      v21 = v18 > v20;
    }

    else
    {
      v21 = 1;
    }

    delegate = [(CKSearchController *)self delegate];
    v23 = [delegate shouldInsetResultsForSearchController:self];

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD3F8]) initWithAppearanceStyle:v24 layoutEnvironment:environmentCopy];
    [v7 setSeparatorStyle:v21];
    v15 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v7 layoutEnvironment:environmentCopy];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSearchImprovementsEnabled = [mEMORY[0x1E69A8070] isSearchImprovementsEnabled];

  if (isSearchImprovementsEnabled)
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
    delegate = [(CKSearchController *)self delegate];
    [delegate parentMarginInsetsForSearchController:self];
    v7 = v15;
    v11 = v16;

    v13 = 0.0;
    v9 = 0.0;
  }

  if ([(CKSearchController *)self mode]!= 1)
  {
    results = [(CKSearchController *)self results];
    v18 = [results count];

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

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  v8 = MEMORY[0x1E69A8070];
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  sharedFeatureFlags = [v8 sharedFeatureFlags];
  LODWORD(v8) = [sharedFeatureFlags isSearchImprovementsEnabled];

  if (v8)
  {
    v13 = [(CKMessagesSearchController *)self _cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CKMessagesSearchController;
    v13 = [(CKSearchController *)&v18 cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy];

    delegate = [(CKSearchController *)self delegate];
    [v13 setShouldInsetResults:{objc_msgSend(delegate, "shouldInsetResultsForSearchController:", self)}];

    topHairline = [v13 topHairline];
    [topHairline setHidden:0];

    bottomHairline = [v13 bottomHairline];
    [bottomHairline setHidden:1];

    [v13 setDelegate:self];
  }

  return v13;
}

- (id)_cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  v9 = [pathCopy row];
  v10 = [objc_opt_class() reuseIdentifierForMode:{-[CKSearchController mode](self, "mode")}];
  results = [(CKSearchController *)self results];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  if (v9 >= [results count])
  {
    v13 = 0;
  }

  else
  {
    v13 = [results objectAtIndex:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = v12;
    v59 = v12;
    mode = [(CKSearchController *)self mode];
    v14 = [pathCopy row];
    v57 = [pathCopy row];
    v15 = [results count];
    isFromMe = [v13 isFromMe];
    if (v9 < 1 || v9 - 1 >= [results count])
    {
      v17 = 0;
    }

    else
    {
      v16 = [results objectAtIndex:v9 - 1];
      v17 = [(CKMessagesSearchController *)self _shouldGroupResult:v13 withOtherResult:v16];
    }

    v19 = v9 + 1;
    v64 = v13;
    if (v19 >= [results count])
    {
      v21 = 1;
    }

    else
    {
      v20 = [results objectAtIndex:v19];
      v21 = ![(CKMessagesSearchController *)self _shouldGroupResult:v13 withOtherResult:v20];
    }

    v63 = !v17;
    v61 = v10;
    v58 = pathCopy;
    v55 = v21;
    v56 = v17;
    if (isFromMe)
    {
      isGroupConversation = 0;
      v23 = v64;
    }

    else
    {
      v23 = v64;
      conversation = [v64 conversation];
      isGroupConversation = [conversation isGroupConversation];
    }

    v53 = v15 - 1;
    v54 = results;
    v25 = v14 != 0;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    item = [v23 item];
    attributeSet = [item attributeSet];
    contentCreationDate = [attributeSet contentCreationDate];
    v30 = v14;
    v31 = [currentCalendar isDateInToday:contentCreationDate];

    v32 = CKIsRunningInMacCatalyst();
    v33 = mode == 2;
    if (v32)
    {
      v33 = 0;
    }

    v34 = v33 & v25 & v63;
    v52 = isGroupConversation;
    if (mode == 2)
    {
      v35 = 10.0;
      v36 = 4.0;
      if (!isFromMe)
      {
        v36 = 10.0;
      }

      if (isGroupConversation)
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
    delegate = [(CKSearchController *)self delegate];
    v49 = [delegate containerGradientReferenceViewForSearchController:self];

    currentSearchText = [(CKSearchController *)self currentSearchText];
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
    [v59 configureWithQueryResult:v64 searchText:currentSearchText mode:mode visibilityContext:v66 gradientReferenceView:v49];

    v12 = v60;
    v10 = v61;
    pathCopy = v58;
    results = v54;
  }

  else
  {
    currentSearchText2 = [(CKSearchController *)self currentSearchText];
    [v12 configureWithQueryResult:v13 searchText:currentSearchText2 mode:{-[CKSearchController mode](self, "mode")}];
  }

  return v12;
}

- (BOOL)_shouldGroupResult:(id)result withOtherResult:(id)otherResult
{
  resultCopy = result;
  otherResultCopy = otherResult;
  conversation = [resultCopy conversation];
  chat = [conversation chat];
  guid = [chat guid];

  conversation2 = [otherResultCopy conversation];
  chat2 = [conversation2 chat];
  guid2 = [chat2 guid];

  if ([guid isEqualToString:guid2])
  {
    item = [resultCopy item];
    attributeSet = [item attributeSet];
    contentCreationDate = [attributeSet contentCreationDate];

    item2 = [otherResultCopy item];
    attributeSet2 = [item2 attributeSet];
    contentCreationDate2 = [attributeSet2 contentCreationDate];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v20 = [currentCalendar isDate:contentCreationDate inSameDayAsDate:contentCreationDate2];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (double)widthForDeterminingAvatarVisibility
{
  delegate = [(CKSearchController *)self delegate];
  [delegate widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

@end