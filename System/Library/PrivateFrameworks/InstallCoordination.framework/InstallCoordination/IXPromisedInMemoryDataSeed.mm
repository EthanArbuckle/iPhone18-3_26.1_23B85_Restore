@interface IXPromisedInMemoryDataSeed
- (IXPromisedInMemoryDataSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedInMemoryDataSeed

- (IXPromisedInMemoryDataSeed)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDataSeed;
  return [(IXOwnedDataPromiseSeed *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedInMemoryDataSeed;
  [(IXOwnedDataPromiseSeed *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDataSeed;
  return [(IXOwnedDataPromiseSeed *)&v4 copyWithZone:a3];
}

@end