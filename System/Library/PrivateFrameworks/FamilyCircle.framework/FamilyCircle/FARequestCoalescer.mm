@interface FARequestCoalescer
+ (FARequestCoalescer)sharedInstance;
- (FARequestCoalescer)init;
- (id)performBlockForKey:(id)a3 force:(BOOL)a4 block:(id)a5;
@end

@implementation FARequestCoalescer

+ (FARequestCoalescer)sharedInstance
{
  if (qword_1000B99A0 != -1)
  {
    sub_10007932C();
  }

  v3 = qword_1000B9998;

  return v3;
}

- (FARequestCoalescer)init
{
  v9.receiver = self;
  v9.super_class = FARequestCoalescer;
  v2 = [(FARequestCoalescer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FACoalescedRequest Queue", v3);
    coalesceQueue = v2->_coalesceQueue;
    v2->_coalesceQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    inFlightRequests = v2->_inFlightRequests;
    v2->_inFlightRequests = v6;
  }

  return v2;
}

- (id)performBlockForKey:(id)a3 force:(BOOL)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [AAFPromise alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001B034;
  v15[3] = &unk_1000A70C0;
  v15[4] = self;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 initWithBlock:v15];

  return v13;
}

@end