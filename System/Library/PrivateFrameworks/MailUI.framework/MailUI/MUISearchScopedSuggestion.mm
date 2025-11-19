@interface MUISearchScopedSuggestion
+ (id)scopedSuggestion:(id)a3;
+ (id)scopedSuggestion:(id)a3 selectedScopeIndex:(unint64_t)a4;
- (MUISearchScopedSuggestion)initWithCoder:(id)a3;
- (MUISearchScopedSuggestion)initWithSuggestion:(id)a3 selectedScopeIndex:(unint64_t)a4;
- (MUISearchSuggestionCategoryScope)selectedScope;
- (NSPredicate)predicate;
- (id)atomImage;
- (id)atomTitle;
- (id)category;
- (id)contactIdentifier;
- (id)description;
- (id)image;
- (id)predicateWithSelectedScope:(id)a3;
- (id)subtitle;
- (id)title;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MUISearchScopedSuggestion

+ (id)scopedSuggestion:(id)a3
{
  v3 = a3;
  v4 = [[MUISearchScopedSuggestion alloc] initWithSuggestion:v3];

  return v4;
}

+ (id)scopedSuggestion:(id)a3 selectedScopeIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [[MUISearchScopedSuggestion alloc] initWithSuggestion:v5 selectedScopeIndex:a4];

  return v6;
}

- (MUISearchScopedSuggestion)initWithSuggestion:(id)a3 selectedScopeIndex:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUISearchScopedSuggestion;
  v8 = [(MUISearchScopedSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestion, a3);
    v9->_selectedScopeIndex = a4;
  }

  return v9;
}

- (MUISearchScopedSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestion"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedScopeIdentifier"];

  if (v6)
  {
    v7 = [v5 category];
    v8 = [v7 indexOfScopeWithIdentifier:v6];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(MUISearchScopedSuggestion *)self initWithSuggestion:v5 selectedScopeIndex:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  suggestion = self->_suggestion;
  v5 = a3;
  [v5 encodeObject:suggestion forKey:@"suggestion"];
  v7 = [(MUISearchScopedSuggestion *)self selectedScope];
  v6 = [v7 identifier];
  [v5 encodeObject:v6 forKey:@"selectedScopeIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  suggestion = self->_suggestion;
  v6 = [(MUISearchScopedSuggestion *)self selectedScope];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@ scope:%@", v4, self, suggestion, v6];

  return v7;
}

- (id)category
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 category];

  return v3;
}

- (id)title
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 title];

  return v3;
}

- (id)subtitle
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 subtitle];

  return v3;
}

- (id)contactIdentifier
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 contactIdentifier];

  return v3;
}

- (id)image
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 image];

  return v3;
}

- (id)atomTitle
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 atomTitle];

  return v3;
}

- (id)atomImage
{
  v2 = [(MUISearchScopedSuggestion *)self suggestion];
  v3 = [v2 atomImage];

  return v3;
}

- (id)predicateWithSelectedScope:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MUISearchScopedSuggestion *)a2 predicateWithSelectedScope:?];
  }

  v6 = [v5 predicateForSuggestion:self];

  return v6;
}

- (NSPredicate)predicate
{
  v3 = [(MUISearchSuggestion *)self->_suggestion category];
  v4 = [v3 scopes];

  if (v4 && self->_selectedScopeIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 objectAtIndexedSubscript:?];
    v5 = [(MUISearchAtomSuggestion *)self->_suggestion predicateWithSelectedScope:v6];
  }

  else
  {
    v5 = [(MUISearchSuggestion *)self->_suggestion predicate];
  }

  return v5;
}

- (MUISearchSuggestionCategoryScope)selectedScope
{
  v3 = [(MUISearchSuggestion *)self->_suggestion category];
  v4 = [v3 scopes];

  if ([v4 count] && self->_selectedScopeIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v4 objectAtIndexedSubscript:?];
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