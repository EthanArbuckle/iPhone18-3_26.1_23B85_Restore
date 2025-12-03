@interface SUUIItemList
- (NSMutableDictionary)cacheRepresentation;
- (SUUIItemList)initWithCacheRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setItems:(id)items;
@end

@implementation SUUIItemList

- (void)setItems:(id)items
{
  if (self->_items != items)
  {
    v5 = [items mutableCopy];
    items = self->_items;
    self->_items = v5;

    MEMORY[0x2821F96F8](v5, items);
  }
}

- (SUUIItemList)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23.receiver = self;
    v23.super_class = SUUIItemList;
    v5 = [(SUUIItemList *)&v23 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        title = v5->_title;
        v5->_title = v7;
      }

      v9 = [representationCopy objectForKey:@"seeallt"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        seeAllTitle = v5->_seeAllTitle;
        v5->_seeAllTitle = v10;
      }

      v12 = [representationCopy objectForKey:@"seeall"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        seeAllURLString = v5->_seeAllURLString;
        v5->_seeAllURLString = v13;
      }

      v15 = [representationCopy objectForKey:@"items"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_opt_class();
        v17 = SUUICacheCodingDecodeArray(v15, v16);
        items = v5->_items;
        v5->_items = v17;
      }

      v19 = [representationCopy objectForKey:@"unavail"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v19];
        unavailableItemIdentifiers = v5->_unavailableItemIdentifiers;
        v5->_unavailableItemIdentifiers = v20;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  items = self->_items;
  if (items)
  {
    v5 = SUUICacheCodingEncodeArray(items);
    [dictionary setObject:v5 forKey:@"items"];
  }

  seeAllTitle = self->_seeAllTitle;
  if (seeAllTitle)
  {
    [dictionary setObject:seeAllTitle forKey:@"seeallt"];
  }

  seeAllURLString = self->_seeAllURLString;
  if (seeAllURLString)
  {
    [dictionary setObject:seeAllURLString forKey:@"seeall"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  unavailableItemIdentifiers = self->_unavailableItemIdentifiers;
  if (unavailableItemIdentifiers)
  {
    allObjects = [(NSSet *)unavailableItemIdentifiers allObjects];
    [dictionary setObject:allObjects forKey:@"unavail"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSMutableArray *)self->_items mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_seeAllTitle copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_seeAllURLString copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_title copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSSet *)self->_unavailableItemIdentifiers copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

@end