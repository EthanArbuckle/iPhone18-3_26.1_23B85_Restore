@interface IXPromisedInMemoryDataSeed
- (IXPromisedInMemoryDataSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedInMemoryDataSeed

- (IXPromisedInMemoryDataSeed)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDataSeed;
  return [(IXOwnedDataPromiseSeed *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedInMemoryDataSeed;
  [(IXOwnedDataPromiseSeed *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDataSeed;
  return [(IXOwnedDataPromiseSeed *)&v4 copyWithZone:zone];
}

@end