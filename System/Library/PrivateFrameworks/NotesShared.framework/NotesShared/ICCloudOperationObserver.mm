@interface ICCloudOperationObserver
- (ICCloudOperationObserver)init;
- (ICCloudOperationObserver)initWithQueue:(id)queue;
@end

@implementation ICCloudOperationObserver

- (ICCloudOperationObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = sub_214F5CF50(queueCopy);

  return v4;
}

- (ICCloudOperationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end