@interface UITableView(CKUtilities)
- (double)__ck_contentSize;
- (id)__ck_indexPathForLastRow;
@end

@implementation UITableView(CKUtilities)

- (id)__ck_indexPathForLastRow
{
  v2 = [a1 numberOfSections];
  v3 = [a1 numberOfRowsInSection:v2 - 1];
  v4 = 0;
  if (v2 >= 1 && v3 >= 1)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:v3 - 1 inSection:v2 - 1];
  }

  return v4;
}

- (double)__ck_contentSize
{
  v2 = [a1 __ck_indexPathForLastRow];
  if (v2)
  {
    v3 = [a1 __ck_indexPathForLastRow];
    [a1 rectForRowAtIndexPath:v3];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    CGRectGetMaxY(v13);
  }

  else
  {
    v9 = *MEMORY[0x1E695F060];
  }

  return v9;
}

@end