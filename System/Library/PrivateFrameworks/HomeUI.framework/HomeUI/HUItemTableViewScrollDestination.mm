@interface HUItemTableViewScrollDestination
- (HUItemTableViewScrollDestination)initWithItem:(id)item animated:(BOOL)animated;
@end

@implementation HUItemTableViewScrollDestination

- (HUItemTableViewScrollDestination)initWithItem:(id)item animated:(BOOL)animated
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = HUItemTableViewScrollDestination;
  v8 = [(HUItemTableViewScrollDestination *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, item);
    v9->_animated = animated;
  }

  return v9;
}

@end