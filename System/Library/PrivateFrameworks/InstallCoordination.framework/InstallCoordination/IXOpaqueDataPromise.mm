@interface IXOpaqueDataPromise
- (IXOpaqueDataPromise)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXOpaqueDataPromise

- (IXOpaqueDataPromise)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXOpaqueDataPromise;
  return [(IXDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXOpaqueDataPromise;
  [(IXDataPromise *)&v3 encodeWithCoder:coder];
}

@end