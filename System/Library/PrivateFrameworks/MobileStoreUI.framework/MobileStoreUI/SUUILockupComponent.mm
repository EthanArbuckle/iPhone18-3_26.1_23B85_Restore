@interface SUUILockupComponent
- (BOOL)_needsItemData;
- (SUUILockupComponent)initWithCustomPageContext:(id)context;
- (SUUILockupComponent)initWithItem:(id)item style:(SUUILockupStyle *)style;
- (SUUILockupComponent)initWithItemIdentifier:(int64_t)identifier style:(SUUILockupStyle *)style;
- (SUUILockupComponent)initWithViewElement:(id)element;
- (void)_setItem:(id)item;
- (void)_setLockupStyle:(SUUILockupStyle *)style;
@end

@implementation SUUILockupComponent

- (SUUILockupComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = SUUILockupComponent;
  v5 = [(SUUIPageComponent *)&v19 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [contextCopy itemForItemIdentifier:v7];
      item = v5->_item;
      v5->_item = v8;

      v5->_itemIdentifier = [v7 longLongValue];
    }

    v10 = [componentDictionary objectForKey:@"editorial"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [contextCopy copy];
      [v11 setComponentDictionary:v10];
      v12 = [[SUUIEditorialComponent alloc] initWithCustomPageContext:v11];
      editorial = v5->_editorial;
      v5->_editorial = v12;

      if ([(SUUIEditorialComponent *)v5->_editorial _usesLockupTitle])
      {
        v14 = v5->_editorial;
        title = [(SUUIItem *)v5->_item title];
        [(SUUIEditorialComponent *)v14 _setTitleText:title];
      }
    }

    SUUILockupStyleForDictionary(componentDictionary, contextCopy, &v17);
    *&v5->_lockupStyle.artworkSize = v17;
    v5->_lockupStyle.visibleFields = v18;
  }

  return v5;
}

- (SUUILockupComponent)initWithItemIdentifier:(int64_t)identifier style:(SUUILockupStyle *)style
{
  v8.receiver = self;
  v8.super_class = SUUILockupComponent;
  result = [(SUUILockupComponent *)&v8 init];
  if (result)
  {
    result->_itemIdentifier = identifier;
    v7 = *&style->artworkSize;
    result->_lockupStyle.visibleFields = style->visibleFields;
    *&result->_lockupStyle.artworkSize = v7;
  }

  return result;
}

- (SUUILockupComponent)initWithItem:(id)item style:(SUUILockupStyle *)style
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SUUILockupComponent;
  v8 = [(SUUILockupComponent *)&v11 init];
  if (v8)
  {
    v8->_itemIdentifier = [itemCopy itemIdentifier];
    objc_storeStrong(&v8->_item, item);
    visibleFields = style->visibleFields;
    *&v8->_lockupStyle.artworkSize = *&style->artworkSize;
    v8->_lockupStyle.visibleFields = visibleFields;
  }

  return v8;
}

- (SUUILockupComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUILockupComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

- (BOOL)_needsItemData
{
  artworksProvider = [(SUUIItem *)self->_item artworksProvider];
  v3 = artworksProvider;
  if (artworksProvider)
  {
    v4 = [artworksProvider hasArtwork] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_setItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self->_item != itemCopy)
  {
    v9 = itemCopy;
    objc_storeStrong(&self->_item, item);
    itemCopy = [(SUUIEditorialComponent *)self->_editorial _usesLockupTitle];
    v6 = v9;
    if (itemCopy)
    {
      editorial = self->_editorial;
      title = [(SUUIItem *)self->_item title];
      [(SUUIEditorialComponent *)editorial _setTitleText:title];

      v6 = v9;
    }
  }

  MEMORY[0x2821F96F8](itemCopy, v6);
}

- (void)_setLockupStyle:(SUUILockupStyle *)style
{
  visibleFields = style->visibleFields;
  *&self->_lockupStyle.artworkSize = *&style->artworkSize;
  self->_lockupStyle.visibleFields = visibleFields;
}

@end