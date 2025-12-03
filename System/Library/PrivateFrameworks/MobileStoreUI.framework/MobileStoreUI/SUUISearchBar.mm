@interface SUUISearchBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUISearchBar)init;
@end

@implementation SUUISearchBar

- (SUUISearchBar)init
{
  v8.receiver = self;
  v8.super_class = SUUISearchBar;
  v2 = [(SUUISearchBar *)&v8 init];
  if (v2)
  {
    v3 = storeSemanticContentAttribute();
    if (storeShouldReverseLayoutDirection())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    [(SUUISearchBar *)v2 setSemanticContentAttribute:v3];
    searchField = [(SUUISearchBar *)v2 searchField];
    [searchField setSemanticContentAttribute:v3];

    searchField2 = [(SUUISearchBar *)v2 searchField];
    [searchField2 setTextAlignment:v4];
  }

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = SUUISearchBar;
  [(SUUISearchBar *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(SUUISearchBar *)self intrinsicWidth];
  if (v8 > 0.0)
  {
    [(SUUISearchBar *)self intrinsicWidth];
    if (v9 < v5)
    {
      [(SUUISearchBar *)self intrinsicWidth];
      v5 = v10;
    }
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

@end