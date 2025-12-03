@interface ENCypher
+ (id)_queue;
+ (id)registeredCypherClasses;
+ (void)registerCypherClass:(Class)class;
@end

@implementation ENCypher

+ (void)registerCypherClass:(Class)class
{
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24A05877C;
  block[3] = &unk_278FC3410;
  block[4] = class;
  dispatch_barrier_async(_queue, block);
}

+ (id)registeredCypherClasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_24A0588A0;
  v10 = sub_24A0588B0;
  v11 = 0;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24A0588B8;
  block[3] = &unk_278FC3438;
  block[4] = &v6;
  dispatch_sync(_queue, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)_queue
{
  if (qword_27EF31C68 != -1)
  {
    sub_24A059714();
  }

  v3 = qword_27EF31C70;

  return v3;
}

@end