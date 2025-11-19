@interface FAAgeRangeDaemonListener
+ (id)createAndReturnError:(id *)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FAAgeRangeDaemonListener)init;
@end

@implementation FAAgeRangeDaemonListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100026EFC(v7);

  return v9 & 1;
}

+ (id)createAndReturnError:(id *)a3
{
  v3 = objc_allocWithZone(type metadata accessor for AgeRangeDaemonListener());
  v4 = sub_100026624(sub_100026A9C, 0);

  return v4;
}

- (FAAgeRangeDaemonListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end