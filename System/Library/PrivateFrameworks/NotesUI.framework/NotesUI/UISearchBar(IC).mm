@interface UISearchBar(IC)
- (BOOL)ic_containsQuery;
@end

@implementation UISearchBar(IC)

- (BOOL)ic_containsQuery
{
  v2 = [a1 text];
  v3 = [v2 length];

  v4 = [a1 searchTextField];
  v5 = [v4 tokens];
  v6 = [v5 count];

  return (v3 | v6) != 0;
}

@end