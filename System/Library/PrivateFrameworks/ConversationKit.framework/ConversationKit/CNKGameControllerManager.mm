@interface CNKGameControllerManager
+ (id)shared;
- (id)gameControllerContext;
- (void)addControl:(id)a3 withControlEvents:(unint64_t)a4 onButtonPress:(int)a5;
- (void)focus;
@end

@implementation CNKGameControllerManager

+ (id)shared
{
  swift_getObjCClassMetadata();
  v2 = static CNKGameControllerManager.shared()();

  return v2;
}

- (void)addControl:(id)a3 withControlEvents:(unint64_t)a4 onButtonPress:(int)a5
{
  v6 = a3;
  v7 = self;
  CNKGameControllerManager.addControl(_:event:when:)();
}

- (void)focus
{
  v2 = self;
  CNKGameControllerManager.focus()();
}

- (id)gameControllerContext
{
  v2 = self;
  CNKGameControllerManager.gameControllerContext()(v3);
  v5 = v4;

  return v5;
}

@end