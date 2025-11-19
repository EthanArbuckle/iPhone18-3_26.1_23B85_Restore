@interface _CNFlatMapInnerSubscriptionContext
- (_CNFlatMapInnerSubscriptionContext)initWithDecorator:(id)a3 token:(id)a4;
@end

@implementation _CNFlatMapInnerSubscriptionContext

- (_CNFlatMapInnerSubscriptionContext)initWithDecorator:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNFlatMapInnerSubscriptionContext;
  v9 = [(_CNFlatMapInnerSubscriptionContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decorator, a3);
    objc_storeStrong(&v10->_token, a4);
    v11 = v10;
  }

  return v10;
}

@end