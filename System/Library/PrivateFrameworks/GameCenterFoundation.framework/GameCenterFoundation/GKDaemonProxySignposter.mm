@interface GKDaemonProxySignposter
+ (void)endWithRequestId:(id)id;
+ (void)startWithRequestId:(id)id key:(id)key;
@end

@implementation GKDaemonProxySignposter

+ (void)startWithRequestId:(id)id key:(id)key
{
  idCopy = id;
  keyCopy = key;
  sub_227A3EF14(idCopy, keyCopy);
}

+ (void)endWithRequestId:(id)id
{
  swift_getObjCClassMetadata();
  idCopy = id;
  sub_227A3F22C(idCopy);
}

@end