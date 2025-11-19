@interface _CNFlatMapSubscriptionContext
- (_CNFlatMapSubscriptionContext)initWithSchedulerProvider:(id)a3;
@end

@implementation _CNFlatMapSubscriptionContext

- (_CNFlatMapSubscriptionContext)initWithSchedulerProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _CNFlatMapSubscriptionContext;
  v5 = [(_CNFlatMapSubscriptionContext *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(CNQueue);
    decorators = v5->_decorators;
    v5->_decorators = v6;

    v8 = objc_alloc_init(CNWeakArray);
    tokens = v5->_tokens;
    v5->_tokens = v8;

    v10 = [v4 newSerialSchedulerWithName:@"com.apple.contacts.reactive.flat-map.downstream"];
    downstream = v5->_downstream;
    v5->_downstream = v10;

    v12 = [v4 newSynchronousSerialSchedulerWithName:@"com.apple.contacts.reactive.flat-map.resource"];
    resourceLock = v5->_resourceLock;
    v5->_resourceLock = v12;

    *&v5->_operatorReceiving = 257;
    v14 = v5;
  }

  return v5;
}

@end