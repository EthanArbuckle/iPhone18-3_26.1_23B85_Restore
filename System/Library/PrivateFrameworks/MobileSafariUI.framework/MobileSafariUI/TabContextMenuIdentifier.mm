@interface TabContextMenuIdentifier
- (BOOL)isEqual:(id)equal;
- (TabCollectionItem)sourceItem;
- (TabContextMenuIdentifier)initWithTabUUID:(id)d sourceItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TabContextMenuIdentifier

- (TabContextMenuIdentifier)initWithTabUUID:(id)d sourceItem:(id)item
{
  dCopy = d;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = TabContextMenuIdentifier;
  v9 = [(TabContextMenuIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tabUUID, d);
    objc_storeWeak(&v10->_sourceItem, itemCopy);
    v11 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  tabUUID = self->_tabUUID;
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);
  v7 = [v4 initWithTabUUID:tabUUID sourceItem:WeakRetained];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_tabUUID isEqual:equalCopy->_tabUUID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (TabCollectionItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end