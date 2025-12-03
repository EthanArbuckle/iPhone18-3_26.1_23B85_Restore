@interface DRDragItem
- (DRDragItem)initWithPasteboardItem:(id)item;
@end

@implementation DRDragItem

- (DRDragItem)initWithPasteboardItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = DRDragItem;
  v6 = [(DRDragItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pasteboardItem, item);
  }

  return v7;
}

@end