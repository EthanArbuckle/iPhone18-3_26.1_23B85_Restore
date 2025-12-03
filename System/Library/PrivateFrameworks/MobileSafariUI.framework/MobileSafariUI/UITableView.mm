@interface UITableView
- (void)safari_adjustContentOffsetToTopHidingTableHeaderView;
- (void)safari_dismissContextMenu;
- (void)safari_moveSelectionByRowOffset:(void *)offset;
- (void)safari_moveSelectionBySectionOffset:(void *)offset;
@end

@implementation UITableView

- (void)safari_moveSelectionByRowOffset:(void *)offset
{
  if (offset)
  {
    v2 = a2;
    if (a2)
    {
      if ([offset numberOfSections])
      {
        indexPathForSelectedRow = [offset indexPathForSelectedRow];
        section = [indexPathForSelectedRow section];
        if (indexPathForSelectedRow)
        {
          v5 = [indexPathForSelectedRow row];
        }

        else
        {
          v5 = -1;
        }

        v6 = [offset numberOfRowsInSection:section];
        while (1)
        {
          while (1)
          {
            v7 = v2 + v5;
            v8 = indexPathForSelectedRow;
            if (v2 + v5 >= 0)
            {
              break;
            }

            if (section <= 0)
            {
              [offset deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
              goto LABEL_19;
            }

            v5 = [offset numberOfRowsInSection:--section];
            v6 = v5;
            v2 = v7;
          }

          if (v7 < v6)
          {
            break;
          }

          if (section + 1 == [offset numberOfSections])
          {
            v7 = v6 - 1;
            v8 = indexPathForSelectedRow;
            break;
          }

          v2 += v5 - v6;
          v6 = [offset numberOfRowsInSection:section + 1];
          v5 = 0;
          ++section;
        }

        if (section < 0)
        {
          goto LABEL_20;
        }

        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:section];
        [offset selectRowAtIndexPath:v9 animated:0 scrollPosition:0];
        [offset scrollToRowAtIndexPath:v9 atScrollPosition:0 animated:0];

LABEL_19:
        v8 = indexPathForSelectedRow;
LABEL_20:
      }
    }
  }
}

- (void)safari_moveSelectionBySectionOffset:(void *)offset
{
  if (offset && a2)
  {
    indexPathForSelectedRow = [offset indexPathForSelectedRow];
    v8 = indexPathForSelectedRow;
    if (indexPathForSelectedRow)
    {
      section = [indexPathForSelectedRow section];
      indexPathForSelectedRow = v8;
    }

    else
    {
      section = -1;
    }

    v6 = [indexPathForSelectedRow row];
    if (a2 <= 0 && v6)
    {
      goto LABEL_12;
    }

    section += a2;
    if (section >= [offset numberOfSections] - 1)
    {
      section = [offset numberOfSections] - 1;
    }

    if (section < 0)
    {
      [offset deselectRowAtIndexPath:v8 animated:0];
    }

    else
    {
LABEL_12:
      v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:section];
      [offset selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
      [offset scrollToRowAtIndexPath:v7 atScrollPosition:0 animated:0];
    }
  }
}

- (void)safari_adjustContentOffsetToTopHidingTableHeaderView
{
  if (self)
  {
    [self adjustedContentInset];
    v3 = v2;
    tableHeaderView = [self tableHeaderView];
    [tableHeaderView bounds];
    v4 = CGRectGetHeight(v8) - v3;
    [self contentInset];
    [self setContentOffset:{0.0, v4 + v5}];
  }
}

- (void)safari_dismissContextMenu
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    interactions = [self interactions];
    v2 = [interactions countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(interactions);
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
        v3 = [interactions countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v3);
    }
  }
}

@end