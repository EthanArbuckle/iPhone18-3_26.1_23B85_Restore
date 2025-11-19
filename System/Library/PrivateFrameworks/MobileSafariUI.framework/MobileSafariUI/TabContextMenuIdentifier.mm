@interface TabContextMenuIdentifier
- (BOOL)isEqual:(id)a3;
- (TabCollectionItem)sourceItem;
- (TabContextMenuIdentifier)initWithTabUUID:(id)a3 sourceItem:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TabContextMenuIdentifier

- (TabContextMenuIdentifier)initWithTabUUID:(id)a3 sourceItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TabContextMenuIdentifier;
  v9 = [(TabContextMenuIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tabUUID, a3);
    objc_storeWeak(&v10->_sourceItem, v8);
    v11 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  tabUUID = self->_tabUUID;
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);
  v7 = [v4 initWithTabUUID:tabUUID sourceItem:WeakRetained];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_tabUUID isEqual:v4->_tabUUID];
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