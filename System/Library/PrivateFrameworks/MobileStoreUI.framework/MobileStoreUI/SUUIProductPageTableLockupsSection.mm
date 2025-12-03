@interface SUUIProductPageTableLockupsSection
- (SUUIProductPageTableLockupsSection)initWithLockups:(id)lockups title:(id)title;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)_missingItemLoader;
- (id)_productImageForItem:(id)item;
- (id)footerViewForTableView:(id)view;
- (id)headerViewForTableView:(id)view;
- (id)selectionActionForTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
@end

@implementation SUUIProductPageTableLockupsSection

- (SUUIProductPageTableLockupsSection)initWithLockups:(id)lockups title:(id)title
{
  lockupsCopy = lockups;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = SUUIProductPageTableLockupsSection;
  v8 = [(SUUIProductPageTableLockupsSection *)&v16 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    artworkRequests = v8->_artworkRequests;
    v8->_artworkRequests = v9;

    v11 = [lockupsCopy copy];
    lockups = v8->_lockups;
    v8->_lockups = v11;

    if (titleCopy)
    {
      v13 = objc_alloc_init(SUUIProductPageTableHeaderView);
      headerView = v8->_headerView;
      v8->_headerView = v13;

      [(SUUIProductPageTableHeaderView *)v8->_headerView setContentInsets:11.0, 15.0, 5.0, 15.0];
      [(SUUIProductPageTableHeaderView *)v8->_headerView setTitle:titleCopy];
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

- (id)footerViewForTableView:(id)view
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

- (id)headerViewForTableView:(id)view
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
    _missingItemLoader = [(SUUIProductPageTableLockupsSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsWithIdentifiers:v4 reason:1];
  }

  headerView = self->_headerView;
  v14 = headerView;

  return headerView;
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  v4 = [(SUUIProductPageTableSection *)self clientContext:view];
  v5 = dbl_259FCAC40[SUUIUserInterfaceIdiom(v4) == 1];

  return v5;
}

- (id)selectionActionForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v6 = [SUUIProductPageAction actionWithType:4];
  lockups = self->_lockups;
  v8 = [pathCopy row];

  v9 = [(NSArray *)lockups objectAtIndex:v8];
  item = [v9 item];
  [v6 setItem:item];

  return v6;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"LOCKUP"];
  clientContext = [(SUUIProductPageTableSection *)self clientContext];
  if (!v7)
  {
    v7 = [[SUUILockupItemTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"LOCKUP"];
    layout = [(SUUILockupItemTableViewCell *)v7 layout];
    clientContext2 = [(SUUIProductPageTableSection *)self clientContext];
    v11 = SUUIUserInterfaceIdiom(clientContext2);

    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [(SUUILockupItemTableViewCell *)v7 setAccessoryType:v11 != 1];
    [layout setItemOfferStyle:v12];
    [layout setClientContext:clientContext];
    [layout setContentInsets:{0.0, 15.0, 0.0, 5.0}];
    [layout setLayoutStyle:1];
    [layout setVerticalAlignment:1];
    v13 = SUUIUserInterfaceIdiom(clientContext);
    v14 = 64.0;
    if (v13 == 1)
    {
      v14 = 72.0;
    }

    [layout setImageBoundingSize:{v14, v14}];
  }

  v15 = [pathCopy row];
  lockups = self->_lockups;
  v17 = [pathCopy row];

  v18 = [(NSArray *)lockups objectAtIndex:v17];
  layout2 = [(SUUILockupItemTableViewCell *)v7 layout];
  if (v18)
  {
    [v18 lockupStyle];
    v20 = v24;
  }

  else
  {
    v20 = 0;
  }

  [layout2 setVisibleFields:v20];
  item = [v18 item];
  if (item)
  {
    [(SUUILockupItemTableViewCell *)v7 configureForItem:item clientContext:clientContext rowIndex:v15];
    v22 = [(SUUIProductPageTableLockupsSection *)self _productImageForItem:item];
    [layout2 setIconImage:v22];
  }

  else
  {
    [layout2 resetLayout];
    [layout2 setIconImage:0];
  }

  return v7;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  delegate = [(SUUITableViewSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v24 = imageCopy;
    v22 = requestCopy;
    requestIdentifier = [requestCopy requestIdentifier];
    sectionIndex = [(SUUITableViewSection *)self sectionIndex];
    v21 = delegate;
    v23 = [delegate tableViewForTableViewSection:self];
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
          if ([v14 section] == sectionIndex)
          {
            v15 = -[NSArray objectAtIndex:](self->_lockups, "objectAtIndex:", [v14 row]);
            item = [v15 item];
            if (item)
            {
              v17 = [(NSMapTable *)self->_artworkRequests objectForKey:item];
              unsignedIntegerValue = [v17 unsignedIntegerValue];

              if (requestIdentifier == unsignedIntegerValue)
              {
                v19 = [v23 cellForRowAtIndexPath:v14];
                layout = [v19 layout];
                [layout setIconImage:v24];

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

    delegate = v21;
    requestCopy = v22;
    imageCopy = v24;
  }
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v19 = 0uLL;
    v20 = 0;
    SUUILockupStyleDefault(&v19);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sectionIndex = [(SUUITableViewSection *)self sectionIndex];
    lockups = self->_lockups;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__SUUIProductPageTableLockupsSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
    v13[3] = &unk_2798F6A80;
    v14 = itemsCopy;
    v16 = v19;
    v17 = v20;
    v10 = v7;
    v15 = v10;
    v18 = sectionIndex;
    [(NSArray *)lockups enumerateObjectsUsingBlock:v13];
    if ([v10 count])
    {
      delegate = [(SUUITableViewSection *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v12 = [delegate tableViewForTableViewSection:self];
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
    resourceLoader = [(SUUIProductPageTableLockupsSection *)self resourceLoader];
    v6 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:resourceLoader];
    v7 = self->_missingItemLoader;
    self->_missingItemLoader = v6;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_productImageForItem:(id)item
{
  itemCopy = item;
  if (!self->_productImageDataConsumer)
  {
    v5 = +[SUUIStyledImageDataConsumer parentBundleIconConsumer];
    productImageDataConsumer = self->_productImageDataConsumer;
    self->_productImageDataConsumer = v5;
  }

  resourceLoader = [(SUUIProductPageTableLockupsSection *)self resourceLoader];
  v8 = [(NSMapTable *)self->_artworkRequests objectForKey:itemCopy];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (!unsignedIntegerValue || ([resourceLoader cachedResourceForRequestIdentifier:unsignedIntegerValue], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([resourceLoader trySetReason:1 forRequestWithIdentifier:unsignedIntegerValue])
    {
      v10 = 0;
    }

    else
    {
      artworksProvider = [itemCopy artworksProvider];
      [(SUUIStyledImageDataConsumer *)self->_productImageDataConsumer imageSize];
      v12 = [artworksProvider bestArtworkForScaledSize:?];

      v13 = [v12 URL];
      if (v13)
      {
        v14 = objc_alloc_init(SUUIArtworkRequest);
        [(SUUIArtworkRequest *)v14 setDelegate:self];
        [(SUUIArtworkRequest *)v14 setDataConsumer:self->_productImageDataConsumer];
        [(SUUIArtworkRequest *)v14 setURL:v13];
        artworkRequests = self->_artworkRequests;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v14, "requestIdentifier")}];
        [(NSMapTable *)artworkRequests setObject:v16 forKey:itemCopy];

        [resourceLoader loadResourceWithRequest:v14 reason:1];
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