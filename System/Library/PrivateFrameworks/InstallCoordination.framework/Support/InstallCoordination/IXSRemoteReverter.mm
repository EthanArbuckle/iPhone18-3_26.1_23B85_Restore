@interface IXSRemoteReverter
- (IXSRemoteReverter)initWithBundleID:(id)d;
- (IXSRemoteReverterDelegate)delegate;
- (void)beginRevert;
@end

@implementation IXSRemoteReverter

- (IXSRemoteReverter)initWithBundleID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = IXSRemoteReverter;
  v5 = [(IXSRemoteReverter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IXSRemoteReverter *)v5 setBundleID:dCopy];
  }

  return v6;
}

- (void)beginRevert
{
  [(IXSRemoteReverter *)self bundleID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B0CC;
  v5 = v4[3] = &unk_100020880;
  selfCopy = self;
  v3 = v5;
  [IXAppInstallCoordinator revertAppWithBundleID:v3 completionWithApplicationRecord:v4];
}

- (IXSRemoteReverterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end