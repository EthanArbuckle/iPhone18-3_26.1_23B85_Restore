@interface UIViewController
- (BOOL)safari_hasSavedTableViewScrollPosition;
- (BOOL)safari_restoreTableViewScrollPosition;
- (void)safari_saveTableViewScrollPosition;
@end

@implementation UIViewController

- (void)safari_saveTableViewScrollPosition
{
  v42[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    safari_tableViewForScrollPositionSaving = [self safari_tableViewForScrollPositionSaving];
    v3 = safari_tableViewForScrollPositionSaving;
    if (safari_tableViewForScrollPositionSaving)
    {
      numberOfSections = [safari_tableViewForScrollPositionSaving numberOfSections];
      if (numberOfSections)
      {
        [v3 rectForSection:numberOfSections - 1];
        MaxY = CGRectGetMaxY(v43);
        [v3 frame];
        Height = CGRectGetHeight(v44);
        [v3 adjustedContentInset];
        v8 = Height - v7;
        tableHeaderView = [v3 tableHeaderView];
        [tableHeaderView frame];
        v10 = v8 + CGRectGetHeight(v45);

        if (MaxY >= v10)
        {
          indexPathsForVisibleRows = [v3 indexPathsForVisibleRows];
          firstObject = [indexPathsForVisibleRows firstObject];

          if (firstObject)
          {
            [v3 contentOffset];
            v14 = v13;
            v16 = v15;
            [v3 rectForRowAtIndexPath:firstObject];
            v47 = CGRectOffset(v46, -v14, -v16);
            x = v47.origin.x;
            y = v47.origin.y;
            width = v47.size.width;
            v20 = v47.size.height;
            section = [firstObject section];
            [v3 rectForHeaderInSection:section];
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
            v34 = [MEMORY[0x277CCABB0] numberWithInteger:section];
            v42[0] = v34;
            v41[1] = @"VisibleIndexRow";
            v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "row")}];
            v42[1] = v35;
            v41[2] = @"VisibleIndexOffset";
            v36 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
            v42[2] = v36;
            v41[3] = @"Timestamp";
            date = [MEMORY[0x277CBEAA8] date];
            v42[3] = date;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

            standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
            _safari_tableViewScrollPositionKey = [self _safari_tableViewScrollPositionKey];
            [standardUserDefaults setObject:v38 forKey:_safari_tableViewScrollPositionKey];
          }
        }
      }
    }
  }
}

- (BOOL)safari_restoreTableViewScrollPosition
{
  if (!self)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _safari_tableViewScrollPositionKey = [self _safari_tableViewScrollPositionKey];
  v4 = [standardUserDefaults dictionaryForKey:_safari_tableViewScrollPositionKey];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForKey:@"Timestamp"];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v6];
    v9 = v8;

    v10 = v9 <= 480.0;
    if (v9 <= 480.0)
    {
      safari_tableViewForScrollPositionSaving = [self safari_tableViewForScrollPositionSaving];
      if (safari_tableViewForScrollPositionSaving)
      {
        v12 = [v5 safari_numberForKey:@"VisibleIndexSection"];
        v13 = [v5 safari_numberForKey:@"VisibleIndexRow"];
        v14 = v13;
        if (v12 && v13 && (v15 = [v12 integerValue], v15 < objc_msgSend(safari_tableViewForScrollPositionSaving, "numberOfSections")) && (v16 = objc_msgSend(v14, "integerValue"), v16 < objc_msgSend(safari_tableViewForScrollPositionSaving, "numberOfRowsInSection:", objc_msgSend(v12, "integerValue"))))
        {
          v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v14 inSection:{"integerValue"), objc_msgSend(v12, "integerValue")}];
          [safari_tableViewForScrollPositionSaving scrollToRowAtIndexPath:v17 atScrollPosition:1 animated:0];
          v18 = [v5 safari_numberForKey:@"VisibleIndexOffset"];
          if (v18)
          {
            [safari_tableViewForScrollPositionSaving contentOffset];
            v20 = v19;
            v22 = v21;
            [v18 floatValue];
            [safari_tableViewForScrollPositionSaving setContentOffset:{v20, v22 - v23}];
          }
        }

        else
        {
          [(UITableView *)safari_tableViewForScrollPositionSaving safari_adjustContentOffsetToTopHidingTableHeaderView];
        }
      }

      [standardUserDefaults removeObjectForKey:_safari_tableViewScrollPositionKey];
    }

    else
    {
      [standardUserDefaults removeObjectForKey:_safari_tableViewScrollPositionKey];
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
  selfCopy = self;
  if (self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    _safari_tableViewScrollPositionKey = [selfCopy _safari_tableViewScrollPositionKey];
    v4 = [standardUserDefaults objectForKey:_safari_tableViewScrollPositionKey];
    selfCopy = v4 != 0;
  }

  return selfCopy;
}

@end