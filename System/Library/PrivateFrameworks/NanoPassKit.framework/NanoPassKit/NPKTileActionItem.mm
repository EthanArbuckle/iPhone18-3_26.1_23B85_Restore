@interface NPKTileActionItem
- (NPKTileActionItem)initWithTile:(id)a3 action:(id)a4;
- (id)description;
@end

@implementation NPKTileActionItem

- (NPKTileActionItem)initWithTile:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NPKTileActionItem;
  v9 = [(NPKTileActionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tile, a3);
    objc_storeStrong(&v10->_action, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NPKTileActionItem *)self tile];
  v6 = [(NPKTileActionItem *)self action];
  v7 = [v3 stringWithFormat:@"<%@: %p\n\tTile: %@\n\tAction: %@\n>", v4, self, v5, v6];

  return v7;
}

@end