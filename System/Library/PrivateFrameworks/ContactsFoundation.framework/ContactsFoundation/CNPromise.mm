@interface CNPromise
- (CNPromise)init;
- (CNPromise)initWithSchedulerProvider:(id)provider;
@end

@implementation CNPromise

- (CNPromise)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(CNPromise *)self initWithSchedulerProvider:v3];

  return v4;
}

- (CNPromise)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = CNPromise;
  v5 = [(CNPromise *)&v10 init];
  if (v5)
  {
    v6 = [[CNFuture alloc] initWithSchedulerProvider:providerCopy];
    future = v5->_future;
    v5->_future = v6;

    v8 = v5;
  }

  return v5;
}

@end