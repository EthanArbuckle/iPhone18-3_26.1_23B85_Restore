@interface GKCollectionDataSource
- (BOOL)isValidAnalytics;
- (BOOL)searchMatchesItem:(id)item inSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (GKCollectionDataSource)init;
- (UIViewController)presentationViewController;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didFocusItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnfocusItemAtIndexPath:(id)path;
- (void)dismissViewController:(id)controller;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)setSearchText:(id)text;
- (void)setupCollectionView:(id)view;
- (void)showViewController:(id)controller popoverSourceView:(id)view;
@end

@implementation GKCollectionDataSource

- (GKCollectionDataSource)init
{
  v5.receiver = self;
  v5.super_class = GKCollectionDataSource;
  v2 = [(GKCollectionDataSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKCollectionDataSource *)v2 setBreakSearchInputTextIntoMultipleTerms:1];
  }

  return v3;
}

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  if (self->_useStandardHeaders)
  {
    v4 = +[GKDashboardSectionHeaderView];
    [viewCopy registerNib:v4 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"GKCollectionDataSourceHeader"];
  }

  [viewCopy setDataSource:self];
  [viewCopy setDelegate:self];
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1, 0);
  }
}

- (void)showViewController:(id)controller popoverSourceView:(id)view
{
  controllerCopy = controller;
  presentationViewController = [(GKCollectionDataSource *)self presentationViewController];
  [presentationViewController _gkShowViewController:controllerCopy];
}

- (void)dismissViewController:(id)controller
{
  controllerCopy = controller;
  presentationViewController = [(GKCollectionDataSource *)self presentationViewController];
  [presentationViewController _gkDismissViewController:controllerCopy animated:1];
}

- (void)setSearchText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_searchText isEqualToString:textCopy])
  {
    v5 = [textCopy copy];
    searchText = self->_searchText;
    self->_searchText = v5;

    array = [MEMORY[0x277CBEB18] array];
    if ([(GKCollectionDataSource *)self breakSearchInputTextIntoMultipleTerms])
    {
      v8 = self->_searchText;
      v9 = [(NSString *)v8 length];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__GKCollectionDataSource_setSearchText___block_invoke;
      v10[3] = &unk_27966ABE8;
      v11 = array;
      [(NSString *)v8 enumerateSubstringsInRange:0 options:v9 usingBlock:1027, v10];
    }

    else if ([textCopy length])
    {
      [array addObject:textCopy];
    }

    [(GKCollectionDataSource *)self setSearchTerms:array];
    [(GKCollectionDataSource *)self searchTextHasChanged];
  }
}

- (BOOL)searchMatchesItem:(id)item inSection:(int64_t)section
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([(NSArray *)self->_searchTerms count])
  {
    v7 = [(GKCollectionDataSource *)self searchKeyForSection:section];
    v8 = [(GKCollectionDataSource *)self alternateSearchKeyForSection:section];
    if ([v7 length])
    {
      v9 = [itemCopy valueForKeyPath:v7];
      if (v8)
      {
        v10 = [itemCopy valueForKeyPath:v8];
      }

      else
      {
        v10 = 0;
      }

      if ([v9 length] || objc_msgSend(v10, "length"))
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = self->_searchTerms;
        v11 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v17 = v8;
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              if ([v15 length] && (objc_msgSend(v9, "length") && objc_msgSend(v9, "rangeOfString:options:", v15, 897) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "length") && objc_msgSend(v10, "rangeOfString:options:", v15, 897) != 0x7FFFFFFFFFFFFFFFLL))
              {
                LOBYTE(v11) = 1;
                goto LABEL_24;
              }
            }

            v11 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }

LABEL_24:
          v8 = v17;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v4 = MEMORY[0x277CCACA8];
  path = [MEMORY[0x277CCACA8] stringWithFormat:@"subclass needs to override collectionView:cellForItemAtIndexPath:", path];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionDataSource.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", path, "-[GKCollectionDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 199];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  return 0;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (self->_useStandardHeaders && (v11 = *MEMORY[0x277D767D8], [kindCopy isEqualToString:*MEMORY[0x277D767D8]]))
  {
    v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:@"GKCollectionDataSourceHeader" forIndexPath:pathCopy];
    v13 = -[GKCollectionDataSource headerTextForSection:](self, "headerTextForSection:", [pathCopy section]);
    [v12 setTitle:v13];

    [v12 setOnDarkBackground:{-[GKCollectionDataSource onDarkBackground](self, "onDarkBackground")}];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"subclass needs to override collectionView:viewForSupplementaryElementOfKind:atIndexPath:"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionDataSource.m"];
    lastPathComponent = [v16 lastPathComponent];
    v18 = [v14 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v15, "-[GKCollectionDataSource collectionView:viewForSupplementaryElementOfKind:atIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 218];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
    v12 = 0;
  }

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (self->_useStandardHeaders && [(GKCollectionDataSource *)self itemCount])
  {
    v10 = [(GKCollectionDataSource *)self headerTextForSection:section];
    [GKDashboardSectionHeaderView platformSizeForTitle:v10 withFont:0];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionView:(id)view didUnfocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  _gkFocusingLayout = [view _gkFocusingLayout];
  v6 = _gkFocusingLayout;
  if (_gkFocusingLayout)
  {
    focusedIndexPath = [_gkFocusingLayout focusedIndexPath];
    v8 = [focusedIndexPath isEqual:pathCopy];

    if (v8)
    {
      [v6 setFocusedIndexPath:0];
    }
  }
}

- (void)collectionView:(id)view didFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  _gkFocusingLayout = [view _gkFocusingLayout];
  v6 = _gkFocusingLayout;
  if (_gkFocusingLayout)
  {
    focusedIndexPath = [_gkFocusingLayout focusedIndexPath];
    v8 = [focusedIndexPath isEqual:pathCopy];

    if ((v8 & 1) == 0)
    {
      [v6 setFocusedIndexPath:pathCopy];
    }
  }
}

- (BOOL)isValidAnalytics
{
  analyticsEvent = [(GKCollectionDataSource *)self analyticsEvent];
  if (analyticsEvent)
  {
    analyticsEvent2 = [(GKCollectionDataSource *)self analyticsEvent];
    if ([analyticsEvent2 length])
    {
      analyticsEventType = [(GKCollectionDataSource *)self analyticsEventType];
      if (analyticsEventType)
      {
        analyticsEventType2 = [(GKCollectionDataSource *)self analyticsEventType];
        v7 = [analyticsEventType2 length] != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIViewController)presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

@end