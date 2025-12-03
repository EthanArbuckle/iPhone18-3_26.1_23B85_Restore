@interface IXPromisedTransferToPathSeed
- (IXPromisedTransferToPathSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedTransferToPathSeed

- (IXPromisedTransferToPathSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IXPromisedTransferToPathSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferPath"];
    transferPath = v5->_transferPath;
    v5->_transferPath = v6;

    v5->_shouldCopy = [coderCopy decodeBoolForKey:@"shouldCopy"];
    v5->_tryDeltaCopy = [coderCopy decodeBoolForKey:@"tryDeltaCopy"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IXPromisedTransferToPathSeed;
  coderCopy = coder;
  [(IXOwnedDataPromiseSeed *)&v6 encodeWithCoder:coderCopy];
  v5 = [(IXPromisedTransferToPathSeed *)self transferPath:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"transferPath"];

  [coderCopy encodeBool:-[IXPromisedTransferToPathSeed shouldCopy](self forKey:{"shouldCopy"), @"shouldCopy"}];
  [coderCopy encodeBool:-[IXPromisedTransferToPathSeed tryDeltaCopy](self forKey:{"tryDeltaCopy"), @"tryDeltaCopy"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IXPromisedTransferToPathSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v7 copyWithZone:zone];
  transferPath = [(IXPromisedTransferToPathSeed *)self transferPath];
  [v4 setTransferPath:transferPath];

  [v4 setShouldCopy:{-[IXPromisedTransferToPathSeed shouldCopy](self, "shouldCopy")}];
  [v4 setTryDeltaCopy:{-[IXPromisedTransferToPathSeed tryDeltaCopy](self, "tryDeltaCopy")}];
  return v4;
}

@end