@interface IXPromisedTransferToPathSeed
- (IXPromisedTransferToPathSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedTransferToPathSeed

- (IXPromisedTransferToPathSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IXPromisedTransferToPathSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferPath"];
    transferPath = v5->_transferPath;
    v5->_transferPath = v6;

    v5->_shouldCopy = [v4 decodeBoolForKey:@"shouldCopy"];
    v5->_tryDeltaCopy = [v4 decodeBoolForKey:@"tryDeltaCopy"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IXPromisedTransferToPathSeed;
  v4 = a3;
  [(IXOwnedDataPromiseSeed *)&v6 encodeWithCoder:v4];
  v5 = [(IXPromisedTransferToPathSeed *)self transferPath:v6.receiver];
  [v4 encodeObject:v5 forKey:@"transferPath"];

  [v4 encodeBool:-[IXPromisedTransferToPathSeed shouldCopy](self forKey:{"shouldCopy"), @"shouldCopy"}];
  [v4 encodeBool:-[IXPromisedTransferToPathSeed tryDeltaCopy](self forKey:{"tryDeltaCopy"), @"tryDeltaCopy"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = IXPromisedTransferToPathSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v7 copyWithZone:a3];
  v5 = [(IXPromisedTransferToPathSeed *)self transferPath];
  [v4 setTransferPath:v5];

  [v4 setShouldCopy:{-[IXPromisedTransferToPathSeed shouldCopy](self, "shouldCopy")}];
  [v4 setTryDeltaCopy:{-[IXPromisedTransferToPathSeed tryDeltaCopy](self, "tryDeltaCopy")}];
  return v4;
}

@end