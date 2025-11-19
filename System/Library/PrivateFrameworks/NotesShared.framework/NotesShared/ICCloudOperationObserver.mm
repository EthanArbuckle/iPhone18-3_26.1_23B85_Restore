@interface ICCloudOperationObserver
- (ICCloudOperationObserver)init;
- (ICCloudOperationObserver)initWithQueue:(id)a3;
@end

@implementation ICCloudOperationObserver

- (ICCloudOperationObserver)initWithQueue:(id)a3
{
  v3 = a3;
  v4 = sub_214F5CF50(v3);

  return v4;
}

- (ICCloudOperationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end