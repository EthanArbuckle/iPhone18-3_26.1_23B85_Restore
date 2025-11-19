@interface SharedItem_Outbox
- (SharedItem_Outbox)init;
- (id)itemID;
- (id)itemURLString;
@end

@implementation SharedItem_Outbox

- (SharedItem_Outbox)init
{
  v3.receiver = self;
  v3.super_class = SharedItem_Outbox;
  return [(FavoriteItem *)&v3 initWithType:6];
}

- (id)itemID
{
  itemID = self->super._itemID;
  if (!itemID)
  {
    if (self->super._collectionID)
    {
      collectionID = self->super._collectionID;
    }

    else
    {
      collectionID = &stru_10015BEC8;
    }

    v5 = [NSString stringWithFormat:@"%@-%ld", collectionID, [(FavoriteItem *)self type]];
    v6 = self->super._itemID;
    self->super._itemID = v5;

    itemID = self->super._itemID;
  }

  return itemID;
}

- (id)itemURLString
{
  v2 = [(SharedItem_Outbox *)self itemID];
  v3 = [NSString stringWithFormat:@"favoriteitem://outbox/%@", v2];

  return v3;
}

@end