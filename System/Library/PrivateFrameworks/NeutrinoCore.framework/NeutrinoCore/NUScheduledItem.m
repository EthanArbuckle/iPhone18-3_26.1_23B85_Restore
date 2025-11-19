@interface NUScheduledItem
- (NUScheduledItem)initWithScheduledTime:(unint64_t)a3 queue:(id)a4 block:(id)a5;
- (int64_t)compare:(id)a3;
@end

@implementation NUScheduledItem

- (int64_t)compare:(id)a3
{
  v4 = [a3 scheduledTime];
  v5 = [(NUScheduledItem *)self scheduledTime];
  if (v4 <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 < v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (NUScheduledItem)initWithScheduledTime:(unint64_t)a3 queue:(id)a4 block:(id)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NUScheduledItem;
  v9 = a5;
  v10 = [(NUScheduledItem *)&v16 init];
  queue = v10->_queue;
  v10->_scheduledTime = a3;
  v10->_queue = v8;
  v12 = v8;

  v13 = MEMORY[0x1C68D98A0](v9);
  block = v10->_block;
  v10->_block = v13;

  return v10;
}

@end