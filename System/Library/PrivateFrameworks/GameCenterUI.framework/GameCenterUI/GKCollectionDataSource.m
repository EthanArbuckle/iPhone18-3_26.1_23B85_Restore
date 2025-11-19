@interface GKCollectionDataSource
- (BOOL)isValidAnalytics;
- (BOOL)searchMatchesItem:(id)a3 inSection:(int64_t)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (GKCollectionDataSource)init;
- (UIViewController)presentationViewController;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 didFocusItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnfocusItemAtIndexPath:(id)a4;
- (void)dismissViewController:(id)a3;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)setSearchText:(id)a3;
- (void)setupCollectionView:(id)a3;
- (void)showViewController:(id)a3 popoverSourceView:(id)a4;
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

- (void)setupCollectionView:(id)a3
{
  v5 = a3;
  if (self->_useStandardHeaders)
  {
    v4 = +[GKDashboardSectionHeaderView];
    [v5 registerNib:v4 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"GKCollectionDataSourceHeader"];
  }

  [v5 setDataSource:self];
  [v5 setDelegate:self];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

- (void)showViewController:(id)a3 popoverSourceView:(id)a4
{
  v5 = a3;
  v6 = [(GKCollectionDataSource *)self presentationViewController];
  [v6 _gkShowViewController:v5];
}

- (void)dismissViewController:(id)a3
{
  v4 = a3;
  v5 = [(GKCollectionDataSource *)self presentationViewController];
  [v5 _gkDismissViewController:v4 animated:1];
}

- (void)setSearchText:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_searchText isEqualToString:v4])
  {
    v5 = [v4 copy];
    searchText = self->_searchText;
    self->_searchText = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    if ([(GKCollectionDataSource *)self breakSearchInputTextIntoMultipleTerms])
    {
      v8 = self->_searchText;
      v9 = [(NSString *)v8 length];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__GKCollectionDataSource_setSearchText___block_invoke;
      v10[3] = &unk_27966ABE8;
      v11 = v7;
      [(NSString *)v8 enumerateSubstringsInRange:0 options:v9 usingBlock:1027, v10];
    }

    else if ([v4 length])
    {
      [v7 addObject:v4];
    }

    [(GKCollectionDataSource *)self setSearchTerms:v7];
    [(GKCollectionDataSource *)self searchTextHasChanged];
  }
}

- (BOOL)searchMatchesItem:(id)a3 inSection:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSArray *)self->_searchTerms count])
  {
    v7 = [(GKCollectionDataSource *)self searchKeyForSection:a4];
    v8 = [(GKCollectionDataSource *)self alternateSearchKeyForSection:a4];
    if ([v7 length])
    {
      v9 = [v6 valueForKeyPath:v7];
      if (v8)
      {
        v10 = [v6 valueForKeyPath:v8];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"subclass needs to override collectionView:cellForItemAtIndexPath:", a4];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionDataSource.m"];
  v7 = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v7, "UTF8String"), 199];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  return 0;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_useStandardHeaders && (v11 = *MEMORY[0x277D767D8], [v9 isEqualToString:*MEMORY[0x277D767D8]]))
  {
    v12 = [v8 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:@"GKCollectionDataSourceHeader" forIndexPath:v10];
    v13 = -[GKCollectionDataSource headerTextForSection:](self, "headerTextForSection:", [v10 section]);
    [v12 setTitle:v13];

    [v12 setOnDarkBackground:{-[GKCollectionDataSource onDarkBackground](self, "onDarkBackground")}];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"subclass needs to override collectionView:viewForSupplementaryElementOfKind:atIndexPath:"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionDataSource.m"];
    v17 = [v16 lastPathComponent];
    v18 = [v14 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v15, "-[GKCollectionDataSource collectionView:viewForSupplementaryElementOfKind:atIndexPath:]", objc_msgSend(v17, "UTF8String"), 218];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
    v12 = 0;
  }

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (self->_useStandardHeaders && [(GKCollectionDataSource *)self itemCount])
  {
    v10 = [(GKCollectionDataSource *)self headerTextForSection:a5];
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

- (void)collectionView:(id)a3 didUnfocusItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [a3 _gkFocusingLayout];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 focusedIndexPath];
    v8 = [v7 isEqual:v9];

    if (v8)
    {
      [v6 setFocusedIndexPath:0];
    }
  }
}

- (void)collectionView:(id)a3 didFocusItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [a3 _gkFocusingLayout];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 focusedIndexPath];
    v8 = [v7 isEqual:v9];

    if ((v8 & 1) == 0)
    {
      [v6 setFocusedIndexPath:v9];
    }
  }
}

- (BOOL)isValidAnalytics
{
  v3 = [(GKCollectionDataSource *)self analyticsEvent];
  if (v3)
  {
    v4 = [(GKCollectionDataSource *)self analyticsEvent];
    if ([v4 length])
    {
      v5 = [(GKCollectionDataSource *)self analyticsEventType];
      if (v5)
      {
        v6 = [(GKCollectionDataSource *)self analyticsEventType];
        v7 = [v6 length] != 0;
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