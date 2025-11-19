@interface MUISearchSuggestionCategory
+ (id)allMailboxesCategory;
+ (id)contactCategory;
+ (id)documentCategory;
+ (id)genericCategory;
+ (id)instantAnswersCategory;
+ (id)linkCategory;
+ (id)locationCategory;
+ (id)recentGenericCategory;
+ (id)recentSearchCategory;
+ (id)suggestedSearchCategory;
+ (id)topHitsCategory;
- (BOOL)isGroupedInCategory:(id)a3;
- (MUISearchSuggestionCategory)groupingCategory;
- (MUISearchSuggestionCategory)initWithDisplayName:(id)a3 groupingCategory:(id)a4;
- (NSString)ef_publicDescription;
- (UIImage)image;
- (unint64_t)indexOfScopeWithIdentifier:(id)a3;
@end

@implementation MUISearchSuggestionCategory

+ (id)contactCategory
{
  if (contactCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUIContactSuggestion) contactCategory];
  }

  v3 = contactCategory_category;

  return v3;
}

void __68__MUISearchSuggestionCategory_MUIContactSuggestion__contactCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_PEOPLE" value:&stru_2826EE5B8 table:0];
  v3 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v2];
  v4 = contactCategory_category;
  contactCategory_category = v3;

  [contactCategory_category setParsecCategory:*MEMORY[0x277D25970]];
  v5 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v5 performBlock:&__block_literal_global_36];
}

void __68__MUISearchSuggestionCategory_MUIContactSuggestion__contactCategory__block_invoke_2()
{
  v0 = [MEMORY[0x277D755B8] mui_imageWithSystemSymbolName:@"person.crop.circle"];
  [contactCategory_category setAtomImage:v0];
}

+ (id)documentCategory
{
  if (documentCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUIDocumentSuggestion) documentCategory];
  }

  v3 = documentCategory_category;

  return v3;
}

uint64_t __70__MUISearchSuggestionCategory_MUIDocumentSuggestion__documentCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_DOCUMENTS" value:&stru_2826EE5B8 table:0];
  v3 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v2];
  v4 = documentCategory_category;
  documentCategory_category = v3;

  v5 = *MEMORY[0x277D25948];
  v6 = documentCategory_category;

  return [v6 setParsecCategory:v5];
}

+ (id)suggestedSearchCategory
{
  if (suggestedSearchCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUISearchSuggestion) suggestedSearchCategory];
  }

  v3 = suggestedSearchCategory_category;

  return v3;
}

uint64_t __75__MUISearchSuggestionCategory_MUISearchSuggestion__suggestedSearchCategory__block_invoke()
{
  v0 = [[MUISearchSuggestionCategory alloc] initWithDisplayName:0];
  v1 = suggestedSearchCategory_category;
  suggestedSearchCategory_category = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)genericCategory
{
  if (genericCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUIGenericSuggestion) genericCategory];
  }

  v3 = genericCategory_category;

  return v3;
}

uint64_t __68__MUISearchSuggestionCategory_MUIGenericSuggestion__genericCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = +[MUISearchSuggestionCategory suggestedSearchCategory];
  v2 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:0 groupingCategory:v1];
  v3 = genericCategory_category;
  genericCategory_category = v2;

  v4 = *MEMORY[0x277D25950];
  v5 = genericCategory_category;

  return [v5 setParsecCategory:v4];
}

+ (id)recentGenericCategory
{
  if (recentGenericCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUIRecentGenericSuggestion) recentGenericCategory];
  }

  v3 = recentGenericCategory_category;

  return v3;
}

uint64_t __80__MUISearchSuggestionCategory_MUIRecentGenericSuggestion__recentGenericCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = +[MUISearchSuggestionCategory recentSearchCategory];
  v2 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:0 groupingCategory:v1];
  v3 = recentGenericCategory_category;
  recentGenericCategory_category = v2;

  v4 = *MEMORY[0x277D25950];
  v5 = recentGenericCategory_category;

  return [v5 setParsecCategory:v4];
}

+ (id)linkCategory
{
  if (linkCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUILinkSuggestion) linkCategory];
  }

  v3 = linkCategory_category;

  return v3;
}

uint64_t __62__MUISearchSuggestionCategory_MUILinkSuggestion__linkCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 localizedStringForKey:@"Links" value:&stru_2826EE5B8 table:0];
  v3 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v2];
  v4 = linkCategory_category;
  linkCategory_category = v3;

  v5 = *MEMORY[0x277D25960];
  v6 = linkCategory_category;

  return [v6 setParsecCategory:v5];
}

+ (id)locationCategory
{
  if (locationCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUILocationSuggestion) locationCategory];
  }

  v3 = locationCategory_category;

  return v3;
}

uint64_t __70__MUISearchSuggestionCategory_MUILocationSuggestion__locationCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 localizedStringForKey:@"Locations" value:&stru_2826EE5B8 table:0];
  v3 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v2];
  v4 = locationCategory_category;
  locationCategory_category = v3;

  v5 = *MEMORY[0x277D25968];
  v6 = locationCategory_category;

  return [v6 setParsecCategory:v5];
}

+ (id)instantAnswersCategory
{
  if (instantAnswersCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUISearchInstantAnswersSuggestion) instantAnswersCategory];
  }

  [instantAnswersCategory_category setParsecCategory:*MEMORY[0x277D25958]];
  v2 = instantAnswersCategory_category;

  return v2;
}

void __88__MUISearchSuggestionCategory_MUISearchInstantAnswersSuggestion__instantAnswersCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v4 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_INSTANT_ANSWERS" value:&stru_2826EE5B8 table:@"Main"];
  v2 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v1];
  v3 = instantAnswersCategory_category;
  instantAnswersCategory_category = v2;
}

+ (id)topHitsCategory
{
  if (topHitsCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory topHitsCategory];
  }

  [topHitsCategory_category setParsecCategory:*MEMORY[0x277D25978]];
  v2 = topHitsCategory_category;

  return v2;
}

void __46__MUISearchSuggestionCategory_topHitsCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v4 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_TOP_HITS" value:&stru_2826EE5B8 table:@"Main"];
  v2 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v1];
  v3 = topHitsCategory_category;
  topHitsCategory_category = v2;
}

- (MUISearchSuggestionCategory)initWithDisplayName:(id)a3 groupingCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MUISearchSuggestionCategory;
  v8 = [(MUISearchSuggestionCategory *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    displayName = v8->_displayName;
    v8->_displayName = v9;

    objc_storeWeak(&v8->_groupingCategory, v7);
  }

  return v8;
}

- (NSString)ef_publicDescription
{
  if ([(NSArray *)self->_scopes count])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@" (%ld scopes)", -[NSArray count](self->_scopes, "count")];
  }

  else
  {
    v3 = &stru_2826EE5B8;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  displayName = self->_displayName;
  v7 = NSStringFromMUISearchSuggestionCategory(self);
  v8 = [v4 stringWithFormat:@"<%@: %p> %@ (%@)%@", v5, self, displayName, v7, v3];

  return v8;
}

- (UIImage)image
{
  image = self->_image;
  if (image)
  {
    goto LABEL_2;
  }

  v5 = [(MUISearchSuggestionCategory *)self imageInstantiationBlock];

  if (!v5)
  {
    image = self->_image;
LABEL_2:
    v3 = image;
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p>.image", self];
  v7 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v8 = [(MUISearchSuggestionCategory *)self imageInstantiationBlock];
  v3 = [v7 cachedImage:v8 forKey:v6];

LABEL_5:

  return v3;
}

- (unint64_t)indexOfScopeWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_scopes count])
  {
    scopes = self->_scopes;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__MUISearchSuggestionCategory_indexOfScopeWithIdentifier___block_invoke;
    v8[3] = &unk_27818B0C0;
    v9 = v4;
    v6 = [(NSArray *)scopes indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

uint64_t __58__MUISearchSuggestionCategory_indexOfScopeWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (MUISearchSuggestionCategory)groupingCategory
{
  WeakRetained = objc_loadWeakRetained(&self->_groupingCategory);
  if (!WeakRetained)
  {
    WeakRetained = self;
  }

  return WeakRetained;
}

- (BOOL)isGroupedInCategory:(id)a3
{
  v4 = a3;
  if (([(MUISearchSuggestionCategory *)self isEqual:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(MUISearchSuggestionCategory *)self groupingCategory];
    v5 = [v6 isEqual:v4];
  }

  return v5;
}

+ (id)recentSearchCategory
{
  if (recentSearchCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MFSearchRecentSearchCategories) recentSearchCategory];
  }

  v3 = recentSearchCategory_category;

  return v3;
}

uint64_t __83__MUISearchSuggestionCategory_MFSearchRecentSearchCategories__recentSearchCategory__block_invoke()
{
  v0 = [[MUISearchSuggestionCategory alloc] initWithDisplayName:0];
  v1 = recentSearchCategory_category;
  recentSearchCategory_category = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)allMailboxesCategory
{
  if (allMailboxesCategory_onceToken != -1)
  {
    +[MUISearchSuggestionCategory(MUIAllMailboxesSuggestion) allMailboxesCategory];
  }

  v3 = allMailboxesCategory_category;

  return v3;
}

uint64_t __78__MUISearchSuggestionCategory_MUIAllMailboxesSuggestion__allMailboxesCategory__block_invoke()
{
  v0 = [MUISearchSuggestionCategory alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 localizedStringForKey:@"All Mailboxes" value:&stru_2826EE5B8 table:0];
  v3 = [(MUISearchSuggestionCategory *)v0 initWithDisplayName:v2];
  v4 = allMailboxesCategory_category;
  allMailboxesCategory_category = v3;

  v5 = allMailboxesCategory_category;

  return [v5 setParsecCategory:@"content"];
}

@end