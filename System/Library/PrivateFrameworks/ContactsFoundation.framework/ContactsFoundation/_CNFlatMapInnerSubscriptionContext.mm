@interface _CNFlatMapInnerSubscriptionContext
- (_CNFlatMapInnerSubscriptionContext)initWithDecorator:(id)decorator token:(id)token;
@end

@implementation _CNFlatMapInnerSubscriptionContext

- (_CNFlatMapInnerSubscriptionContext)initWithDecorator:(id)decorator token:(id)token
{
  decoratorCopy = decorator;
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = _CNFlatMapInnerSubscriptionContext;
  v9 = [(_CNFlatMapInnerSubscriptionContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decorator, decorator);
    objc_storeStrong(&v10->_token, token);
    v11 = v10;
  }

  return v10;
}

@end