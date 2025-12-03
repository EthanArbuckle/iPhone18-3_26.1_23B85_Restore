@interface ULWeakProxy
- (ULWeakProxy)initWithObject:(id)object;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)object;
@end

@implementation ULWeakProxy

- (ULWeakProxy)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = ULWeakProxy;
  v5 = [(ULWeakProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULWeakProxy *)v5 setObject:objectCopy];
    [(ULWeakProxy *)v6 setClass:objc_opt_class()];
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = objc_opt_class();

  return [v4 instanceMethodSignatureForSelector:selector];
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end