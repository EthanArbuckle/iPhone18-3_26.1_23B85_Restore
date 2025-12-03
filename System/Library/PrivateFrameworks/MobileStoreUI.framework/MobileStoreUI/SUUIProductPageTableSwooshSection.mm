@interface SUUIProductPageTableSwooshSection
- (SUUIColorScheme)colorScheme;
- (SUUIProductPageTableSwooshSection)initWithItems:(id)items title:(id)title;
- (SUUIProductPageTableSwooshSection)initWithLockups:(id)lockups title:(id)title;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_swooshViewController;
- (id)headerViewForTableView:(id)view;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)setColorScheme:(id)scheme;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
@end

@implementation SUUIProductPageTableSwooshSection

- (SUUIProductPageTableSwooshSection)initWithItems:(id)items title:(id)title
{
  itemsCopy = items;
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = SUUIProductPageTableSwooshSection;
  v8 = [(SUUIProductPageTableSwooshSection *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(SUUIItemList);
    [(SUUIItemList *)v9 setItems:itemsCopy];
    [(SUUIItemList *)v9 setTitle:titleCopy];
    v10 = [[SUUISwooshPageComponent alloc] initWithItemList:v9];
    swooshComponent = v8->_swooshComponent;
    v8->_swooshComponent = v10;
  }

  return v8;
}

- (SUUIProductPageTableSwooshSection)initWithLockups:(id)lockups title:(id)title
{
  lockupsCopy = lockups;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = SUUIProductPageTableSwooshSection;
  v8 = [(SUUIProductPageTableSwooshSection *)&v12 init];
  if (v8)
  {
    v9 = [[SUUISwooshPageComponent alloc] initWithLockups:lockupsCopy swooshType:0 title:titleCopy];
    swooshComponent = v8->_swooshComponent;
    v8->_swooshComponent = v9;
  }

  return v8;
}

- (void)dealloc
{
  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SUUILockupSwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIProductPageTableSwooshSection;
  [(SUUIProductPageTableSwooshSection *)&v3 dealloc];
}

- (SUUIColorScheme)colorScheme
{
  _swooshViewController = [(SUUIProductPageTableSwooshSection *)self _swooshViewController];
  colorScheme = [_swooshViewController colorScheme];

  return colorScheme;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  _swooshViewController = [(SUUIProductPageTableSwooshSection *)self _swooshViewController];
  [_swooshViewController setColorScheme:schemeCopy];
}

- (id)headerViewForTableView:(id)view
{
  if (!self->_missingItemLoader && [(SUUISwooshPageComponent *)self->_swooshComponent isMissingItemData])
  {
    _missingItemLoader = [(SUUIProductPageTableSwooshSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:self->_swooshComponent startIndex:0 reason:1];
  }

  _swooshViewController = [(SUUIProductPageTableSwooshSection *)self _swooshViewController];
  view = [_swooshViewController view];

  return view;
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v6 = [(SUUISwooshPageComponent *)self->_swooshComponent _updateLockupItemsWithItems:itemsCopy];
    swooshViewController = self->_swooshViewController;
    lockups = [(SUUISwooshPageComponent *)self->_swooshComponent lockups];
    [(SUUILockupSwooshViewController *)swooshViewController setLockups:lockups];

    _artworkLoader = [(SUUIProductPageTableSwooshSection *)self _artworkLoader];
    [_artworkLoader loadImagesForNextPageWithReason:0];
  }
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  if (self->_actionBlock)
  {
    lockups = [swoosh lockups];
    v9 = [lockups objectAtIndex:index];

    actionBlock = self->_actionBlock;
    item = [v9 item];
    actionBlock[2](actionBlock, item);
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  _artworkLoader = [(SUUIProductPageTableSwooshSection *)self _artworkLoader];
  lockups = [swooshCopy lockups];

  v9 = [lockups objectAtIndex:index];

  item = [v9 item];
  if (item)
  {
    v11 = [_artworkLoader cachedImageForItem:item];
    if (v11)
    {
      goto LABEL_6;
    }

    [_artworkLoader loadImageForItem:item reason:1];
    v12 = _artworkLoader;
    v13 = item;
  }

  else
  {
    v12 = _artworkLoader;
    v13 = 0;
  }

  v11 = [v12 placeholderImageForItem:v13];
LABEL_6:

  return v11;
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [SUUILockupSwooshArtworkLoader alloc];
    resourceLoader = [(SUUIProductPageTableSwooshSection *)self resourceLoader];
    _swooshViewController = [(SUUIProductPageTableSwooshSection *)self _swooshViewController];
    v7 = [(SUUILockupSwooshArtworkLoader *)v4 initWithArtworkLoader:resourceLoader swoosh:_swooshViewController];
    v8 = self->_artworkLoader;
    self->_artworkLoader = v7;

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SUUIMissingItemLoader alloc];
    resourceLoader = [(SUUIProductPageTableSwooshSection *)self resourceLoader];
    v6 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:resourceLoader];
    v7 = self->_missingItemLoader;
    self->_missingItemLoader = v6;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    v4 = [[SUUILockupSwooshViewController alloc] initWithSwoosh:self->_swooshComponent];
    v5 = self->_swooshViewController;
    self->_swooshViewController = v4;

    v6 = self->_swooshViewController;
    clientContext = [(SUUIProductPageTableSection *)self clientContext];
    [(SUUILockupSwooshViewController *)v6 setClientContext:clientContext];

    [(SUUILockupSwooshViewController *)self->_swooshViewController setDelegate:self];
    v8 = self->_swooshViewController;
    artworkContext = [(SUUILockupSwooshViewController *)v8 artworkContext];
    iconConsumer = [artworkContext iconConsumer];
    [iconConsumer imageSize];
    [(SUUILockupSwooshViewController *)v8 _setExpectedImageSize:?];

    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

@end