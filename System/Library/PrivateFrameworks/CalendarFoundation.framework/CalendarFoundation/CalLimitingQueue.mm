@interface CalLimitingQueue
- (CalLimitingQueue)initWithQueue:(id)a3 andBlock:(id)a4;
@end

@implementation CalLimitingQueue

- (CalLimitingQueue)initWithQueue:(id)a3 andBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CalLimitingQueue;
  v8 = [(CalLimitingQueue *)&v14 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
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

    dispatch_source_set_event_handler(*(v8 + 2), v7);
    dispatch_resume(*(v8 + 2));
  }

  return v8;
}

@end