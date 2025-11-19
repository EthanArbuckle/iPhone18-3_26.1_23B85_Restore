@interface _MTSerialQueueScheduler
- (_MTSerialQueueScheduler)initWithQueue:(id)a3;
@end

@implementation _MTSerialQueueScheduler

- (_MTSerialQueueScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _MTSerialQueueScheduler;
  v6 = [(_MTSerialQueueScheduler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalQueue, a3);
    v8 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v5];
    internalScheduler = v7->_internalScheduler;
    v7->_internalScheduler = v8;
  }

  return v7;
}

@end