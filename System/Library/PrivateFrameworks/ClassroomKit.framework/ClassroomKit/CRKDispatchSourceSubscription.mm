@interface CRKDispatchSourceSubscription
+ (id)subscriptionWithSource:(id)a3 handler:(id)a4;
- (CRKDispatchSourceSubscription)initWithSource:(id)a3 handler:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)resume;
@end

@implementation CRKDispatchSourceSubscription

- (void)dealloc
{
  [(CRKDispatchSourceSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKDispatchSourceSubscription;
  [(CRKDispatchSourceSubscription *)&v3 dealloc];
}

- (CRKDispatchSourceSubscription)initWithSource:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKDispatchSourceSubscription;
  v9 = [(CRKDispatchSourceSubscription *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, a3);
    v11 = MEMORY[0x245D3AAD0](v8);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

+ (id)subscriptionWithSource:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CRKDispatchSourceSubscription alloc] initWithSource:v6 handler:v5];

  [(CRKDispatchSourceSubscription *)v7 resume];

  return v7;
}

- (void)cancel
{
  v3 = [(CRKDispatchSourceSubscription *)self source];
  dispatch_source_cancel(v3);

  [(CRKDispatchSourceSubscription *)self setHandler:0];
}

- (void)resume
{
  objc_initWeak(&location, self);
  v3 = [(CRKDispatchSourceSubscription *)self source];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __39__CRKDispatchSourceSubscription_resume__block_invoke;
  v8 = &unk_278DC1870;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v3, &v5);

  v4 = [(CRKDispatchSourceSubscription *)self source:v5];
  dispatch_resume(v4);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__CRKDispatchSourceSubscription_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained handler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 handler];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

@end