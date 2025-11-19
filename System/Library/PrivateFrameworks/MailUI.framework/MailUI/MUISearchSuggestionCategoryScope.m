@interface MUISearchSuggestionCategoryScope
+ (MUISearchSuggestionCategoryScope)scopeWithTitle:(id)a3 identifier:(id)a4;
@end

@implementation MUISearchSuggestionCategoryScope

+ (MUISearchSuggestionCategoryScope)scopeWithTitle:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MUISearchSuggestionCategoryScope);
  [(MUISearchSuggestionCategoryScope *)v7 setTitle:v6];

  [(MUISearchSuggestionCategoryScope *)v7 setIdentifier:v5];

  return v7;
}

@end