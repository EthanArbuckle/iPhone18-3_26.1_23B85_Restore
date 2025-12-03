@interface CalLimitingQueue
- (CalLimitingQueue)initWithQueue:(id)queue andBlock:(id)block;
@end

@implementation CalLimitingQueue

- (CalLimitingQueue)initWithQueue:(id)queue andBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = CalLimitingQueue;
  v8 = [(CalLimitingQueue *)&v14 init];
  if (v8)
  {
    if (queueCopy)
    {
      v9 = queueCopy;
    }

    else
    {
      v9 = dispatch_queue_create("CalLimitingQueue", 0);
    }

    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v8 + 1));
    v12 = *(v8 + 2);
    *(v8 + 2) = v11;

    dispatch_source_set_event_handler(*(v8 + 2), blockCopy);
    dispatch_resume(*(v8 + 2));
  }

  return v8;
}

@end