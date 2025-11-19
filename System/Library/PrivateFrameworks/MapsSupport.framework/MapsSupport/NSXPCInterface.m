@interface NSXPCInterface
+ (id)_maps_mapsCompanionDaemonXPCInterface;
@end

@implementation NSXPCInterface

+ (id)_maps_mapsCompanionDaemonXPCInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsCompanionDaemonXPCInterface];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"loadDirections:reply:" argumentIndex:0 ofReply:0];

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  [v2 setClasses:v6 forSelector:"loadDirections:reply:" argumentIndex:0 ofReply:1];

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  [v2 setClasses:v8 forSelector:"startPreparedNavigation:reply:" argumentIndex:0 ofReply:0];

  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  [v2 setClasses:v10 forSelector:"startPreparedNavigation:reply:" argumentIndex:0 ofReply:1];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v2 setClasses:v12 forSelector:"endNavigationWithReply:" argumentIndex:0 ofReply:1];

  return v2;
}

@end