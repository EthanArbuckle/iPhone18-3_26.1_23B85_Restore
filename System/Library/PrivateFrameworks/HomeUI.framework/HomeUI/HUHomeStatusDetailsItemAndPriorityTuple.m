@interface HUHomeStatusDetailsItemAndPriorityTuple
- (HFItem)item;
- (HUHomeStatusDetailsItemAndPriorityTuple)initWithItem:(id)a3 priority:(int64_t)a4;
@end

@implementation HUHomeStatusDetailsItemAndPriorityTuple

- (HUHomeStatusDetailsItemAndPriorityTuple)initWithItem:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUHomeStatusDetailsItemAndPriorityTuple;
  v7 = [(HUHomeStatusDetailsItemAndPriorityTuple *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, v6);
    v8->_priority = a4;
  }

  return v8;
}

- (HFItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end