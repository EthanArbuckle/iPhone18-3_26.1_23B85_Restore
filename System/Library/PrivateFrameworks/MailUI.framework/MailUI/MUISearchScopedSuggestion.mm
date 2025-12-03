@interface MUISearchScopedSuggestion
+ (id)scopedSuggestion:(id)suggestion;
+ (id)scopedSuggestion:(id)suggestion selectedScopeIndex:(unint64_t)index;
- (MUISearchScopedSuggestion)initWithCoder:(id)coder;
- (MUISearchScopedSuggestion)initWithSuggestion:(id)suggestion selectedScopeIndex:(unint64_t)index;
- (MUISearchSuggestionCategoryScope)selectedScope;
- (NSPredicate)predicate;
- (id)atomImage;
- (id)atomTitle;
- (id)category;
- (id)contactIdentifier;
- (id)description;
- (id)image;
- (id)predicateWithSelectedScope:(id)scope;
- (id)subtitle;
- (id)title;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MUISearchScopedSuggestion

+ (id)scopedSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = [[MUISearchScopedSuggestion alloc] initWithSuggestion:suggestionCopy];

  return v4;
}

+ (id)scopedSuggestion:(id)suggestion selectedScopeIndex:(unint64_t)index
{
  suggestionCopy = suggestion;
  v6 = [[MUISearchScopedSuggestion alloc] initWithSuggestion:suggestionCopy selectedScopeIndex:index];

  return v6;
}

- (MUISearchScopedSuggestion)initWithSuggestion:(id)suggestion selectedScopeIndex:(unint64_t)index
{
  suggestionCopy = suggestion;
  v11.receiver = self;
  v11.super_class = MUISearchScopedSuggestion;
  v8 = [(MUISearchScopedSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestion, suggestion);
    v9->_selectedScopeIndex = index;
  }

  return v9;
}

- (MUISearchScopedSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedScopeIdentifier"];

  if (v6)
  {
    category = [v5 category];
    v8 = [category indexOfScopeWithIdentifier:v6];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(MUISearchScopedSuggestion *)self initWithSuggestion:v5 selectedScopeIndex:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  suggestion = self->_suggestion;
  coderCopy = coder;
  [coderCopy encodeObject:suggestion forKey:@"suggestion"];
  selectedScope = [(MUISearchScopedSuggestion *)self selectedScope];
  identifier = [selectedScope identifier];
  [coderCopy encodeObject:identifier forKey:@"selectedScopeIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  suggestion = self->_suggestion;
  selectedScope = [(MUISearchScopedSuggestion *)self selectedScope];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@ scope:%@", v4, self, suggestion, selectedScope];

  return v7;
}

- (id)category
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  category = [suggestion category];

  return category;
}

- (id)title
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  title = [suggestion title];

  return title;
}

- (id)subtitle
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  subtitle = [suggestion subtitle];

  return subtitle;
}

- (id)contactIdentifier
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  contactIdentifier = [suggestion contactIdentifier];

  return contactIdentifier;
}

- (id)image
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  image = [suggestion image];

  return image;
}

- (id)atomTitle
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  atomTitle = [suggestion atomTitle];

  return atomTitle;
}

- (id)atomImage
{
  suggestion = [(MUISearchScopedSuggestion *)self suggestion];
  atomImage = [suggestion atomImage];

  return atomImage;
}

- (id)predicateWithSelectedScope:(id)scope
{
  scopeCopy = scope;
  if (!scopeCopy)
  {
    [(MUISearchScopedSuggestion *)a2 predicateWithSelectedScope:?];
  }

  v6 = [scopeCopy predicateForSuggestion:self];

  return v6;
}

- (NSPredicate)predicate
{
  category = [(MUISearchSuggestion *)self->_suggestion category];
  scopes = [category scopes];

  if (scopes && self->_selectedScopeIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [scopes objectAtIndexedSubscript:?];
    predicate = [(MUISearchAtomSuggestion *)self->_suggestion predicateWithSelectedScope:v6];
  }

  else
  {
    predicate = [(MUISearchSuggestion *)self->_suggestion predicate];
  }

  return predicate;
}

- (MUISearchSuggestionCategoryScope)selectedScope
{
  category = [(MUISearchSuggestion *)self->_suggestion category];
  scopes = [category scopes];

  if ([scopes count] && self->_selectedScopeIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [scopes objectAtIndexedSubscript:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)predicateWithSelectedScope:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUISearchScopedSuggestion.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"scope"}];
}

@end