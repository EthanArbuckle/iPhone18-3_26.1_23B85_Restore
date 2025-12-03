@interface HFMutablePriorityQueueEntry
- (HFMutablePriorityQueueEntry)initWithValue:(id)value priority:(int64_t)priority;
@end

@implementation HFMutablePriorityQueueEntry

- (HFMutablePriorityQueueEntry)initWithValue:(id)value priority:(int64_t)priority
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HFMutablePriorityQueueEntry;
  v8 = [(HFMutablePriorityQueueEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_priority = priority;
  }

  return v9;
}

@end