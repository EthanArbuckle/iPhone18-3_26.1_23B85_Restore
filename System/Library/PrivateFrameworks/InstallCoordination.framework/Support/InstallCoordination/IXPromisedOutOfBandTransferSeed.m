@interface IXPromisedOutOfBandTransferSeed
- (IXPromisedOutOfBandTransferSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedOutOfBandTransferSeed

- (IXPromisedOutOfBandTransferSeed)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedOutOfBandTransferSeed;
  return [(IXOpaqueDataPromiseSeed *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedOutOfBandTransferSeed;
  [(IXOpaqueDataPromiseSeed *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedOutOfBandTransferSeed;
  return [(IXOpaqueDataPromiseSeed *)&v4 copyWithZone:a3];
}

@end