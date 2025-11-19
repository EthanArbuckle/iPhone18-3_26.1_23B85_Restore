@interface MSStructuredPageTableDataSource
- (BOOL)canDoubleTapIndexPath:(id)a3;
- (BOOL)canShowPreviewForItem:(id)a3;
- (Class)cellClassForItem:(id)a3 reuseIdentifier:(id *)a4;
- (void)configureCell:(id)a3 forIndexPath:(id)a4;
@end

@implementation MSStructuredPageTableDataSource

- (BOOL)canShowPreviewForItem:(id)a3
{
  v4 = [a3 itemType];
  v5 = (v4 - 1005) > 6 || ((1 << (v4 + 19)) & 0x4D) == 0;
  if (v5 || [a3 itemDisplayType] == 2)
  {
    return 0;
  }

  v7 = [a3 itemMediaKind];
  return [v7 isEqualToString:*MEMORY[0x277D6A290]] ^ 1;
}

- (BOOL)canDoubleTapIndexPath:(id)a3
{
  v4 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")];
  v5 = [objc_msgSend(objc_msgSend(v4 "defaultStoreOffer")];
  if (v5)
  {

    LOBYTE(v5) = [(MSStructuredPageTableDataSource *)self canShowPreviewForItem:v4];
  }

  return v5;
}

- (Class)cellClassForItem:(id)a3 reuseIdentifier:(id *)a4
{
  v7.receiver = self;
  v7.super_class = MSStructuredPageTableDataSource;
  v8 = 0;
  v5 = [(SUStructuredPageGroupedTableDataSource *)&v7 cellClassForItem:a3 reuseIdentifier:&v8];
  if (v5 == objc_opt_class())
  {
    v5 = objc_opt_class();
  }

  if (a4)
  {
    *a4 = v8;
  }

  return v5;
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = MSStructuredPageTableDataSource;
  [SUStructuredPageGroupedTableDataSource configureCell:sel_configureCell_forIndexPath_ forIndexPath:?];
  v7 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")];
  if ([objc_msgSend(objc_msgSend(v7 "defaultStoreOffer")])
  {
    v8 = [(MSStructuredPageTableDataSource *)self canShowPreviewForItem:v7];
    [a3 setHighlightsOnlyContentView:v8];
    if (v8 && [a3 accessoryType] == 1)
    {
      [a3 setAccessoryType:0];
    }
  }

  else
  {
    [a3 setHighlightsOnlyContentView:0];
  }
}

@end