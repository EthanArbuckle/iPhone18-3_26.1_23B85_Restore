@interface SUUILockupComponent
- (BOOL)_needsItemData;
- (SUUILockupComponent)initWithCustomPageContext:(id)a3;
- (SUUILockupComponent)initWithItem:(id)a3 style:(SUUILockupStyle *)a4;
- (SUUILockupComponent)initWithItemIdentifier:(int64_t)a3 style:(SUUILockupStyle *)a4;
- (SUUILockupComponent)initWithViewElement:(id)a3;
- (void)_setItem:(id)a3;
- (void)_setLockupStyle:(SUUILockupStyle *)a3;
@end

@implementation SUUILockupComponent

- (SUUILockupComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUUILockupComponent;
  v5 = [(SUUIPageComponent *)&v19 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v4 itemForItemIdentifier:v7];
      item = v5->_item;
      v5->_item = v8;

      v5->_itemIdentifier = [v7 longLongValue];
    }

    v10 = [v6 objectForKey:@"editorial"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 copy];
      [v11 setComponentDictionary:v10];
      v12 = [[SUUIEditorialComponent alloc] initWithCustomPageContext:v11];
      editorial = v5->_editorial;
      v5->_editorial = v12;

      if ([(SUUIEditorialComponent *)v5->_editorial _usesLockupTitle])
      {
        v14 = v5->_editorial;
        v15 = [(SUUIItem *)v5->_item title];
        [(SUUIEditorialComponent *)v14 _setTitleText:v15];
      }
    }

    SUUILockupStyleForDictionary(v6, v4, &v17);
    *&v5->_lockupStyle.artworkSize = v17;
    v5->_lockupStyle.visibleFields = v18;
  }

  return v5;
}

- (SUUILockupComponent)initWithItemIdentifier:(int64_t)a3 style:(SUUILockupStyle *)a4
{
  v8.receiver = self;
  v8.super_class = SUUILockupComponent;
  result = [(SUUILockupComponent *)&v8 init];
  if (result)
  {
    result->_itemIdentifier = a3;
    v7 = *&a4->artworkSize;
    result->_lockupStyle.visibleFields = a4->visibleFields;
    *&result->_lockupStyle.artworkSize = v7;
  }

  return result;
}

- (SUUILockupComponent)initWithItem:(id)a3 style:(SUUILockupStyle *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SUUILockupComponent;
  v8 = [(SUUILockupComponent *)&v11 init];
  if (v8)
  {
    v8->_itemIdentifier = [v7 itemIdentifier];
    objc_storeStrong(&v8->_item, a3);
    visibleFields = a4->visibleFields;
    *&v8->_lockupStyle.artworkSize = *&a4->artworkSize;
    v8->_lockupStyle.visibleFields = visibleFields;
  }

  return v8;
}

- (SUUILockupComponent)initWithViewElement:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUILockupComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:a3];
}

- (BOOL)_needsItemData
{
  v2 = [(SUUIItem *)self->_item artworksProvider];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasArtwork] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_setItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_item != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_item, a3);
    v5 = [(SUUIEditorialComponent *)self->_editorial _usesLockupTitle];
    v6 = v9;
    if (v5)
    {
      editorial = self->_editorial;
      v8 = [(SUUIItem *)self->_item title];
      [(SUUIEditorialComponent *)editorial _setTitleText:v8];

      v6 = v9;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_setLockupStyle:(SUUILockupStyle *)a3
{
  visibleFields = a3->visibleFields;
  *&self->_lockupStyle.artworkSize = *&a3->artworkSize;
  self->_lockupStyle.visibleFields = visibleFields;
}

@end