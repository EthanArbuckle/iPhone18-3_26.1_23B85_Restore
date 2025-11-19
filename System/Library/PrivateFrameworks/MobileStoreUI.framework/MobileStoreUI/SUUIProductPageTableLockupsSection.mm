@interface SUUIProductPageTableLockupsSection
- (SUUIProductPageTableLockupsSection)initWithLockups:(id)a3 title:(id)a4;
- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4;
- (id)_missingItemLoader;
- (id)_productImageForItem:(id)a3;
- (id)footerViewForTableView:(id)a3;
- (id)headerViewForTableView:(id)a3;
- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
@end

@implementation SUUIProductPageTableLockupsSection

- (SUUIProductPageTableLockupsSection)initWithLockups:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SUUIProductPageTableLockupsSection;
  v8 = [(SUUIProductPageTableLockupsSection *)&v16 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    artworkRequests = v8->_artworkRequests;
    v8->_artworkRequests = v9;

    v11 = [v6 copy];
    lockups = v8->_lockups;
    v8->_lockups = v11;

    if (v7)
    {
      v13 = objc_alloc_init(SUUIProductPageTableHeaderView);
      headerView = v8->_headerView;
      v8->_headerView = v13;

      [(SUUIProductPageTableHeaderView *)v8->_headerView setContentInsets:11.0, 15.0, 5.0, 15.0];
      [(SUUIProductPageTableHeaderView *)v8->_headerView setTitle:v7];
      [(SUUIProductPageTableHeaderView *)v8->_headerView sizeToFit];
    }
  }

  return v8;
}

- (void)dealloc
{
  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIProductPageTableLockupsSection;
  [(SUUIProductPageTableLockupsSection *)&v3 dealloc];
}

- (id)footerViewForTableView:(id)a3
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v5 = [[SUUIProductPageTableSeparatorView alloc] initWithFrame:0.0, 0.0, 0.0, 10.0];
    v6 = self->_footerView;
    self->_footerView = v5;

    footerView = self->_footerView;
  }

  return footerView;
}

- (id)headerViewForTableView:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_lockups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 _needsItemData])
        {
          v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v10, "itemIdentifier")}];
          [v4 addObject:v11];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v12 = [(SUUIProductPageTableLockupsSection *)self _missingItemLoader];
    [v12 loadItemsWithIdentifiers:v4 reason:1];
  }

  headerView = self->_headerView;
  v14 = headerView;

  return headerView;
}

- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4
{
  v4 = [(SUUIProductPageTableSection *)self clientContext:a3];
  v5 = dbl_259FCAC40[SUUIUserInterfaceIdiom(v4) == 1];

  return v5;
}

- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4
{
  v5 = a4;
  v6 = [SUUIProductPageAction actionWithType:4];
  lockups = self->_lockups;
  v8 = [v5 row];

  v9 = [(NSArray *)lockups objectAtIndex:v8];
  v10 = [v9 item];
  [v6 setItem:v10];

  return v6;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"LOCKUP"];
  v8 = [(SUUIProductPageTableSection *)self clientContext];
  if (!v7)
  {
    v7 = [[SUUILockupItemTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"LOCKUP"];
    v9 = [(SUUILockupItemTableViewCell *)v7 layout];
    v10 = [(SUUIProductPageTableSection *)self clientContext];
    v11 = SUUIUserInterfaceIdiom(v10);

    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [(SUUILockupItemTableViewCell *)v7 setAccessoryType:v11 != 1];
    [v9 setItemOfferStyle:v12];
    [v9 setClientContext:v8];
    [v9 setContentInsets:{0.0, 15.0, 0.0, 5.0}];
    [v9 setLayoutStyle:1];
    [v9 setVerticalAlignment:1];
    v13 = SUUIUserInterfaceIdiom(v8);
    v14 = 64.0;
    if (v13 == 1)
    {
      v14 = 72.0;
    }

    [v9 setImageBoundingSize:{v14, v14}];
  }

  v15 = [v6 row];
  lockups = self->_lockups;
  v17 = [v6 row];

  v18 = [(NSArray *)lockups objectAtIndex:v17];
  v19 = [(SUUILockupItemTableViewCell *)v7 layout];
  if (v18)
  {
    [v18 lockupStyle];
    v20 = v24;
  }

  else
  {
    v20 = 0;
  }

  [v19 setVisibleFields:v20];
  v21 = [v18 item];
  if (v21)
  {
    [(SUUILockupItemTableViewCell *)v7 configureForItem:v21 clientContext:v8 rowIndex:v15];
    v22 = [(SUUIProductPageTableLockupsSection *)self _productImageForItem:v21];
    [v19 setIconImage:v22];
  }

  else
  {
    [v19 resetLayout];
    [v19 setIconImage:0];
  }

  return v7;
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUUITableViewSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v24 = v7;
    v22 = v6;
    v25 = [v6 requestIdentifier];
    v9 = [(SUUITableViewSection *)self sectionIndex];
    v21 = v8;
    v23 = [v8 tableViewForTableViewSection:self];
    [v23 indexPathsForVisibleRows];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          if ([v14 section] == v9)
          {
            v15 = -[NSArray objectAtIndex:](self->_lockups, "objectAtIndex:", [v14 row]);
            v16 = [v15 item];
            if (v16)
            {
              v17 = [(NSMapTable *)self->_artworkRequests objectForKey:v16];
              v18 = [v17 unsignedIntegerValue];

              if (v25 == v18)
              {
                v19 = [v23 cellForRowAtIndexPath:v14];
                v20 = [v19 layout];
                [v20 setIconImage:v24];

                goto LABEL_15;
              }
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v8 = v21;
    v6 = v22;
    v7 = v24;
  }
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v6 = a4;
  if ([v6 count])
  {
    v19 = 0uLL;
    v20 = 0;
    SUUILockupStyleDefault(&v19);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [(SUUITableViewSection *)self sectionIndex];
    lockups = self->_lockups;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__SUUIProductPageTableLockupsSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
    v13[3] = &unk_2798F6A80;
    v14 = v6;
    v16 = v19;
    v17 = v20;
    v10 = v7;
    v15 = v10;
    v18 = v8;
    [(NSArray *)lockups enumerateObjectsUsingBlock:v13];
    if ([v10 count])
    {
      v11 = [(SUUITableViewSection *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v12 = [v11 tableViewForTableViewSection:self];
        [v12 reloadRowsAtIndexPaths:v10 withRowAnimation:100];
      }
    }
  }
}

void __92__SUUIProductPageTableLockupsSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 _needsItemData])
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v5, "itemIdentifier")}];
    v7 = [*(a1 + 32) objectForKey:v6];
    if (v7)
    {
      v14 = 0uLL;
      v15 = 0;
      if (v5)
      {
        [v5 lockupStyle];
      }

      if ([v7 itemKind] == 17)
      {
        v12 = *(a1 + 48);
        v13 = *(a1 + 64);
        v10 = v14;
        v11 = v15;
        if (SUUILockupStyleEqualToLockupStyle(&v12, &v10))
        {
          v15 = 214;
          v12 = v14;
          v13 = 214;
          [v5 _setLockupStyle:&v12];
        }
      }

      [v5 _setItem:v7];
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 72)];
      [v8 addObject:v9];
    }
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SUUIMissingItemLoader alloc];
    v5 = [(SUUIProductPageTableLockupsSection *)self resourceLoader];
    v6 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:v5];
    v7 = self->_missingItemLoader;
    self->_missingItemLoader = v6;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_productImageForItem:(id)a3
{
  v4 = a3;
  if (!self->_productImageDataConsumer)
  {
    v5 = +[SUUIStyledImageDataConsumer parentBundleIconConsumer];
    productImageDataConsumer = self->_productImageDataConsumer;
    self->_productImageDataConsumer = v5;
  }

  v7 = [(SUUIProductPageTableLockupsSection *)self resourceLoader];
  v8 = [(NSMapTable *)self->_artworkRequests objectForKey:v4];
  v9 = [v8 unsignedIntegerValue];

  if (!v9 || ([v7 cachedResourceForRequestIdentifier:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v7 trySetReason:1 forRequestWithIdentifier:v9])
    {
      v10 = 0;
    }

    else
    {
      v11 = [v4 artworksProvider];
      [(SUUIStyledImageDataConsumer *)self->_productImageDataConsumer imageSize];
      v12 = [v11 bestArtworkForScaledSize:?];

      v13 = [v12 URL];
      if (v13)
      {
        v14 = objc_alloc_init(SUUIArtworkRequest);
        [(SUUIArtworkRequest *)v14 setDelegate:self];
        [(SUUIArtworkRequest *)v14 setDataConsumer:self->_productImageDataConsumer];
        [(SUUIArtworkRequest *)v14 setURL:v13];
        artworkRequests = self->_artworkRequests;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v14, "requestIdentifier")}];
        [(NSMapTable *)artworkRequests setObject:v16 forKey:v4];

        [v7 loadResourceWithRequest:v14 reason:1];
      }

      placeholderImage = self->_placeholderImage;
      if (!placeholderImage)
      {
        v18 = self->_productImageDataConsumer;
        v19 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
        v20 = [(SUUIStyledImageDataConsumer *)v18 imageForColor:v19];
        v21 = self->_placeholderImage;
        self->_placeholderImage = v20;

        placeholderImage = self->_placeholderImage;
      }

      v10 = placeholderImage;
    }
  }

  return v10;
}

@end