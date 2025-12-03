@interface IXPromisedOutOfBandTransferSeed
- (IXPromisedOutOfBandTransferSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedOutOfBandTransferSeed

- (IXPromisedOutOfBandTransferSeed)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXPromisedOutOfBandTransferSeed;
  return [(IXOpaqueDataPromiseSeed *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedOutOfBandTransferSeed;
  [(IXOpaqueDataPromiseSeed *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = IXPromisedOutOfBandTransferSeed;
  return [(IXOpaqueDataPromiseSeed *)&v4 copyWithZone:zone];
}

@end