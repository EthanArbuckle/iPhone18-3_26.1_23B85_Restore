@interface IXOpaqueDataPromiseSeed
- (IXOpaqueDataPromiseSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXOpaqueDataPromiseSeed

- (IXOpaqueDataPromiseSeed)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXOpaqueDataPromiseSeed;
  return [(IXDataPromiseSeed *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXOpaqueDataPromiseSeed;
  [(IXDataPromiseSeed *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = IXOpaqueDataPromiseSeed;
  return [(IXDataPromiseSeed *)&v4 copyWithZone:zone];
}

@end