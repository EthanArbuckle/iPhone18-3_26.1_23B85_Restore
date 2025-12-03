@interface HUHomeStatusDetailsItemAndPriorityTuple
- (HFItem)item;
- (HUHomeStatusDetailsItemAndPriorityTuple)initWithItem:(id)item priority:(int64_t)priority;
@end

@implementation HUHomeStatusDetailsItemAndPriorityTuple

- (HUHomeStatusDetailsItemAndPriorityTuple)initWithItem:(id)item priority:(int64_t)priority
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = HUHomeStatusDetailsItemAndPriorityTuple;
  v7 = [(HUHomeStatusDetailsItemAndPriorityTuple *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, itemCopy);
    v8->_priority = priority;
  }

  return v8;
}

- (HFItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end