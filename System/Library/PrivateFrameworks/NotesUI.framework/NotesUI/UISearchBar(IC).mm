@interface UISearchBar(IC)
- (BOOL)ic_containsQuery;
@end

@implementation UISearchBar(IC)

- (BOOL)ic_containsQuery
{
  text = [self text];
  v3 = [text length];

  searchTextField = [self searchTextField];
  tokens = [searchTextField tokens];
  v6 = [tokens count];

  return (v3 | v6) != 0;
}

@end