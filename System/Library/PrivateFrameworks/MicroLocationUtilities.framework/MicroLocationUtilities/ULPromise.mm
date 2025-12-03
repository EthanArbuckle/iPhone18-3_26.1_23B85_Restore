@interface ULPromise
+ (id)promise;
- (BOOL)respondsToSelector:(SEL)selector;
- (ULPromise)init;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation ULPromise

+ (id)promise
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (ULPromise)init
{
  v6.receiver = self;
  v6.super_class = ULPromise;
  v2 = [(ULPromise *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ULFuture);
    future = v2->_future;
    v2->_future = v3;
  }

  return v2;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = ULPromise;
  if ([(ULPromise *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    future = self->_future;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = ULPromise;
  v5 = [(ULPromise *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(ULFuture *)self->_future methodSignatureForSelector:selector];
  }

  v8 = v7;

  return v8;
}

@end