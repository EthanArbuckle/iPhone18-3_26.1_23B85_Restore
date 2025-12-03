@interface IMFileTransfer.DownloadEventListener
- (_TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener)init;
- (void)dealloc;
@end

@implementation IMFileTransfer.DownloadEventListener

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver_];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(IMFileTransfer.DownloadEventListener *)&v7 dealloc];
}

- (_TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end