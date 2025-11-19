@interface GKDaemonProxySignposter
+ (void)endWithRequestId:(id)a3;
+ (void)startWithRequestId:(id)a3 key:(id)a4;
@end

@implementation GKDaemonProxySignposter

+ (void)startWithRequestId:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_227A3EF14(v5, v6);
}

+ (void)endWithRequestId:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_227A3F22C(v4);
}

@end