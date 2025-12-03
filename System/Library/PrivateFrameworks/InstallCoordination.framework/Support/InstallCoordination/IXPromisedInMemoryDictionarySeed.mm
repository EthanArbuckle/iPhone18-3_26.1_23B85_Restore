@interface IXPromisedInMemoryDictionarySeed
- (IXPromisedInMemoryDictionarySeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedInMemoryDictionarySeed

- (IXPromisedInMemoryDictionarySeed)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDictionarySeed;
  return [(IXOwnedDataPromiseSeed *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedInMemoryDictionarySeed;
  [(IXOwnedDataPromiseSeed *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDictionarySeed;
  return [(IXOwnedDataPromiseSeed *)&v4 copyWithZone:zone];
}

@end