@interface NPKTileActionItem
- (NPKTileActionItem)initWithTile:(id)tile action:(id)action;
- (id)description;
@end

@implementation NPKTileActionItem

- (NPKTileActionItem)initWithTile:(id)tile action:(id)action
{
  tileCopy = tile;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = NPKTileActionItem;
  v9 = [(NPKTileActionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tile, tile);
    objc_storeStrong(&v10->_action, action);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  tile = [(NPKTileActionItem *)self tile];
  action = [(NPKTileActionItem *)self action];
  v7 = [v3 stringWithFormat:@"<%@: %p\n\tTile: %@\n\tAction: %@\n>", v4, self, tile, action];

  return v7;
}

@end