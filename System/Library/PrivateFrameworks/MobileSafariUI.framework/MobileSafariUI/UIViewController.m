@interface UIViewController
- (BOOL)safari_hasSavedTableViewScrollPosition;
- (BOOL)safari_restoreTableViewScrollPosition;
- (void)safari_saveTableViewScrollPosition;
@end

@implementation UIViewController

- (void)safari_saveTableViewScrollPosition
{
  v42[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 safari_tableViewForScrollPositionSaving];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 numberOfSections];
      if (v4)
      {
        [v3 rectForSection:v4 - 1];
        MaxY = CGRectGetMaxY(v43);
        [v3 frame];
        Height = CGRectGetHeight(v44);
        [v3 adjustedContentInset];
        v8 = Height - v7;
        v9 = [v3 tableHeaderView];
        [v9 frame];
        v10 = v8 + CGRectGetHeight(v45);

        if (MaxY >= v10)
        {
          v11 = [v3 indexPathsForVisibleRows];
          v12 = [v11 firstObject];

          if (v12)
          {
            [v3 contentOffset];
            v14 = v13;
            v16 = v15;
            [v3 rectForRowAtIndexPath:v12];
            v47 = CGRectOffset(v46, -v14, -v16);
            x = v47.origin.x;
            y = v47.origin.y;
            width = v47.size.width;
            v20 = v47.size.height;
            v21 = [v12 section];
            [v3 rectForHeaderInSection:v21];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v48.origin.x = x;
            v48.origin.y = y;
            v48.size.width = width;
            v48.size.height = v20;
            MinY = CGRectGetMinY(v48);
            v49.origin.x = v23;
            v49.origin.y = v25;
            v49.size.width = v27;
            v49.size.height = v29;
            v31 = MinY - CGRectGetHeight(v49);
            [v3 adjustedContentInset];
            v33 = v31 - v32;
            v41[0] = @"VisibleIndexSection";
            v34 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
            v42[0] = v34;
            v41[1] = @"VisibleIndexRow";
            v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "row")}];
            v42[1] = v35;
            v41[2] = @"VisibleIndexOffset";
            v36 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
            v42[2] = v36;
            v41[3] = @"Timestamp";
            v37 = [MEMORY[0x277CBEAA8] date];
            v42[3] = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

            v39 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v40 = [a1 _safari_tableViewScrollPositionKey];
            [v39 setObject:v38 forKey:v40];
          }
        }
      }
    }
  }
}

- (BOOL)safari_restoreTableViewScrollPosition
{
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [a1 _safari_tableViewScrollPositionKey];
  v4 = [v2 dictionaryForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForKey:@"Timestamp"];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceDate:v6];
    v9 = v8;

    v10 = v9 <= 480.0;
    if (v9 <= 480.0)
    {
      v11 = [a1 safari_tableViewForScrollPositionSaving];
      if (v11)
      {
        v12 = [v5 safari_numberForKey:@"VisibleIndexSection"];
        v13 = [v5 safari_numberForKey:@"VisibleIndexRow"];
        v14 = v13;
        if (v12 && v13 && (v15 = [v12 integerValue], v15 < objc_msgSend(v11, "numberOfSections")) && (v16 = objc_msgSend(v14, "integerValue"), v16 < objc_msgSend(v11, "numberOfRowsInSection:", objc_msgSend(v12, "integerValue"))))
        {
          v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v14 inSection:{"integerValue"), objc_msgSend(v12, "integerValue")}];
          [v11 scrollToRowAtIndexPath:v17 atScrollPosition:1 animated:0];
          v18 = [v5 safari_numberForKey:@"VisibleIndexOffset"];
          if (v18)
          {
            [v11 contentOffset];
            v20 = v19;
            v22 = v21;
            [v18 floatValue];
            [v11 setContentOffset:{v20, v22 - v23}];
          }
        }

        else
        {
          [(UITableView *)v11 safari_adjustContentOffsetToTopHidingTableHeaderView];
        }
      }

      [v2 removeObjectForKey:v3];
    }

    else
    {
      [v2 removeObjectForKey:v3];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)safari_hasSavedTableViewScrollPosition
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v1 _safari_tableViewScrollPositionKey];
    v4 = [v2 objectForKey:v3];
    v1 = v4 != 0;
  }

  return v1;
}

@end