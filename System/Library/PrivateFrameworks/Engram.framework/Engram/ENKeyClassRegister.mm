@interface ENKeyClassRegister
+ (id)_queue;
+ (id)registeredKeyClasses;
+ (void)registerKeyClass:(Class)class;
@end

@implementation ENKeyClassRegister

+ (void)registerKeyClass:(Class)class
{
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24A04E8C0;
  block[3] = &unk_278FC3410;
  block[4] = class;
  dispatch_barrier_async(_queue, block);
}

+ (id)registeredKeyClasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_24A04E9E4;
  v10 = sub_24A04E9F4;
  v11 = 0;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24A04E9FC;
  block[3] = &unk_278FC3438;
  block[4] = &v6;
  dispatch_sync(_queue, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)_queue
{
  if (qword_27EF31C00 != -1)
  {
    sub_24A059524();
  }

  v3 = qword_27EF31C08;

  return v3;
}

@end