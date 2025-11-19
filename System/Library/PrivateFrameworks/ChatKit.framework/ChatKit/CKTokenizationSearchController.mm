@interface CKTokenizationSearchController
+ (id)supportedCellClasses;
- (CKTokenizationSearchController)init;
- (NSArray)searchTokens;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)customLayoutSectionForEnvironment:(id)a3;
- (void)discardSuggestionResults;
@end

@implementation CKTokenizationSearchController

- (CKTokenizationSearchController)init
{
  v3 = objc_alloc_init(CKTokenizationQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

- (NSArray)searchTokens
{
  v2 = [(CKSearchController *)self queryController];
  v3 = [v2 searchTokens];

  return v3;
}

+ (id)supportedCellClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)discardSuggestionResults
{
  v2 = [(CKSearchController *)self queryController];
  [v2 setResults:0];
}

- (id)customLayoutSectionForEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchController *)self delegate];
  LODWORD(self) = [v5 shouldInsetResultsForSearchController:self];

  if (self)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4;
  }

  v7 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:v6];
  [v7 setShowsSeparators:1];
  [v7 setItemSeparatorHandler:&__block_literal_global_158];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v4];

  return v8;
}

id __68__CKTokenizationSearchController_customLayoutSectionForEnvironment___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 searchSectionDirectionalMarginInsets];
  [v3 setTopSeparatorInsets:?];

  [v3 setTopSeparatorVisibility:1];
  [v3 setBottomSeparatorVisibility:2];

  return v3;
}

- (NSDirectionalEdgeInsets)additionalGroupInsets
{
  v2 = *MEMORY[0x1E69DC5C0];
  v3 = *(MEMORY[0x1E69DC5C0] + 8);
  v4 = *(MEMORY[0x1E69DC5C0] + 16);
  v5 = *(MEMORY[0x1E69DC5C0] + 24);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v7.receiver = self;
  v7.super_class = CKTokenizationSearchController;
  v5 = [(CKConversationSearchController *)&v7 cellForItemInCollectionView:a3 atIndexPath:a4 withIdentifier:a5];

  return v5;
}

@end