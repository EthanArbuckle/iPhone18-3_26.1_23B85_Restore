@interface MUISearchSuggestionCategoryScope
+ (MUISearchSuggestionCategoryScope)scopeWithTitle:(id)title identifier:(id)identifier;
@end

@implementation MUISearchSuggestionCategoryScope

+ (MUISearchSuggestionCategoryScope)scopeWithTitle:(id)title identifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  v7 = objc_alloc_init(MUISearchSuggestionCategoryScope);
  [(MUISearchSuggestionCategoryScope *)v7 setTitle:titleCopy];

  [(MUISearchSuggestionCategoryScope *)v7 setIdentifier:identifierCopy];

  return v7;
}

@end