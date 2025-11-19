@interface ULWeakProxy
- (ULWeakProxy)initWithObject:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)object;
@end

@implementation ULWeakProxy

- (ULWeakProxy)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ULWeakProxy;
  v5 = [(ULWeakProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULWeakProxy *)v5 setObject:v4];
    [(ULWeakProxy *)v6 setClass:objc_opt_class()];
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = objc_opt_class();

  return [v4 instanceMethodSignatureForSelector:a3];
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end