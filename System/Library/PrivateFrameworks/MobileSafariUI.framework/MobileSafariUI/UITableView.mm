@interface UITableView
- (void)safari_adjustContentOffsetToTopHidingTableHeaderView;
- (void)safari_dismissContextMenu;
- (void)safari_moveSelectionByRowOffset:(void *)a1;
- (void)safari_moveSelectionBySectionOffset:(void *)a1;
@end

@implementation UITableView

- (void)safari_moveSelectionByRowOffset:(void *)a1
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      if ([a1 numberOfSections])
      {
        v10 = [a1 indexPathForSelectedRow];
        v4 = [v10 section];
        if (v10)
        {
          v5 = [v10 row];
        }

        else
        {
          v5 = -1;
        }

        v6 = [a1 numberOfRowsInSection:v4];
        while (1)
        {
          while (1)
          {
            v7 = v2 + v5;
            v8 = v10;
            if (v2 + v5 >= 0)
            {
              break;
            }

            if (v4 <= 0)
            {
              [a1 deselectRowAtIndexPath:v10 animated:0];
              goto LABEL_19;
            }

            v5 = [a1 numberOfRowsInSection:--v4];
            v6 = v5;
            v2 = v7;
          }

          if (v7 < v6)
          {
            break;
          }

          if (v4 + 1 == [a1 numberOfSections])
          {
            v7 = v6 - 1;
            v8 = v10;
            break;
          }

          v2 += v5 - v6;
          v6 = [a1 numberOfRowsInSection:v4 + 1];
          v5 = 0;
          ++v4;
        }

        if (v4 < 0)
        {
          goto LABEL_20;
        }

        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:v4];
        [a1 selectRowAtIndexPath:v9 animated:0 scrollPosition:0];
        [a1 scrollToRowAtIndexPath:v9 atScrollPosition:0 animated:0];

LABEL_19:
        v8 = v10;
LABEL_20:
      }
    }
  }
}

- (void)safari_moveSelectionBySectionOffset:(void *)a1
{
  if (a1 && a2)
  {
    v4 = [a1 indexPathForSelectedRow];
    v8 = v4;
    if (v4)
    {
      v5 = [v4 section];
      v4 = v8;
    }

    else
    {
      v5 = -1;
    }

    v6 = [v4 row];
    if (a2 <= 0 && v6)
    {
      goto LABEL_12;
    }

    v5 += a2;
    if (v5 >= [a1 numberOfSections] - 1)
    {
      v5 = [a1 numberOfSections] - 1;
    }

    if (v5 < 0)
    {
      [a1 deselectRowAtIndexPath:v8 animated:0];
    }

    else
    {
LABEL_12:
      v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v5];
      [a1 selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
      [a1 scrollToRowAtIndexPath:v7 atScrollPosition:0 animated:0];
    }
  }
}

- (void)safari_adjustContentOffsetToTopHidingTableHeaderView
{
  if (a1)
  {
    [a1 adjustedContentInset];
    v3 = v2;
    v6 = [a1 tableHeaderView];
    [v6 bounds];
    v4 = CGRectGetHeight(v8) - v3;
    [a1 contentInset];
    [a1 setContentOffset:{0.0, v4 + v5}];
  }
}

- (void)safari_dismissContextMenu
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = [a1 interactions];
    v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v7 + 1) + 8 * v5);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 dismissMenu];
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v3);
    }
  }
}

@end