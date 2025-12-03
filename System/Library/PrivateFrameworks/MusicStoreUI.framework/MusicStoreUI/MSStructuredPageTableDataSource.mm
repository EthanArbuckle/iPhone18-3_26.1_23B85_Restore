@interface MSStructuredPageTableDataSource
- (BOOL)canDoubleTapIndexPath:(id)path;
- (BOOL)canShowPreviewForItem:(id)item;
- (Class)cellClassForItem:(id)item reuseIdentifier:(id *)identifier;
- (void)configureCell:(id)cell forIndexPath:(id)path;
@end

@implementation MSStructuredPageTableDataSource

- (BOOL)canShowPreviewForItem:(id)item
{
  itemType = [item itemType];
  v5 = (itemType - 1005) > 6 || ((1 << (itemType + 19)) & 0x4D) == 0;
  if (v5 || [item itemDisplayType] == 2)
  {
    return 0;
  }

  itemMediaKind = [item itemMediaKind];
  return [itemMediaKind isEqualToString:*MEMORY[0x277D6A290]] ^ 1;
}

- (BOOL)canDoubleTapIndexPath:(id)path
{
  v4 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")];
  v5 = [objc_msgSend(objc_msgSend(v4 "defaultStoreOffer")];
  if (v5)
  {

    LOBYTE(v5) = [(MSStructuredPageTableDataSource *)self canShowPreviewForItem:v4];
  }

  return v5;
}

- (Class)cellClassForItem:(id)item reuseIdentifier:(id *)identifier
{
  v7.receiver = self;
  v7.super_class = MSStructuredPageTableDataSource;
  v8 = 0;
  v5 = [(SUStructuredPageGroupedTableDataSource *)&v7 cellClassForItem:item reuseIdentifier:&v8];
  if (v5 == objc_opt_class())
  {
    v5 = objc_opt_class();
  }

  if (identifier)
  {
    *identifier = v8;
  }

  return v5;
}

- (void)configureCell:(id)cell forIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = MSStructuredPageTableDataSource;
  [SUStructuredPageGroupedTableDataSource configureCell:sel_configureCell_forIndexPath_ forIndexPath:?];
  v7 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")];
  if ([objc_msgSend(objc_msgSend(v7 "defaultStoreOffer")])
  {
    v8 = [(MSStructuredPageTableDataSource *)self canShowPreviewForItem:v7];
    [cell setHighlightsOnlyContentView:v8];
    if (v8 && [cell accessoryType] == 1)
    {
      [cell setAccessoryType:0];
    }
  }

  else
  {
    [cell setHighlightsOnlyContentView:0];
  }
}

@end