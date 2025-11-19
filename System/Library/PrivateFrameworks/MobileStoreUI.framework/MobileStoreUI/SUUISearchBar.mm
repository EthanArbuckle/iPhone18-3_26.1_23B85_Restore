@interface SUUISearchBar
- (CGSize)sizeThatFits:(CGSize)a3;
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
    v5 = [(SUUISearchBar *)v2 searchField];
    [v5 setSemanticContentAttribute:v3];

    v6 = [(SUUISearchBar *)v2 searchField];
    [v6 setTextAlignment:v4];
  }

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v13.receiver = self;
  v13.super_class = SUUISearchBar;
  [(SUUISearchBar *)&v13 sizeThatFits:a3.width, a3.height];
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