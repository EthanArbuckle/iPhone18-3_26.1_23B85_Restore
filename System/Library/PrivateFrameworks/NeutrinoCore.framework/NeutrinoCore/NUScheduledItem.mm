@interface NUScheduledItem
- (NUScheduledItem)initWithScheduledTime:(unint64_t)time queue:(id)queue block:(id)block;
- (int64_t)compare:(id)compare;
@end

@implementation NUScheduledItem

- (int64_t)compare:(id)compare
{
  scheduledTime = [compare scheduledTime];
  scheduledTime2 = [(NUScheduledItem *)self scheduledTime];
  if (scheduledTime <= scheduledTime2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (scheduledTime < scheduledTime2)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (NUScheduledItem)initWithScheduledTime:(unint64_t)time queue:(id)queue block:(id)block
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = NUScheduledItem;
  blockCopy = block;
  v10 = [(NUScheduledItem *)&v16 init];
  queue = v10->_queue;
  v10->_scheduledTime = time;
  v10->_queue = queueCopy;
  v12 = queueCopy;

  v13 = MEMORY[0x1C68D98A0](blockCopy);
  block = v10->_block;
  v10->_block = v13;

  return v10;
}

@end