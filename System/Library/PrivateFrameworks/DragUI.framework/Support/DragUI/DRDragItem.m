@interface DRDragItem
- (DRDragItem)initWithPasteboardItem:(id)a3;
@end

@implementation DRDragItem

- (DRDragItem)initWithPasteboardItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DRDragItem;
  v6 = [(DRDragItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pasteboardItem, a3);
  }

  return v7;
}

@end