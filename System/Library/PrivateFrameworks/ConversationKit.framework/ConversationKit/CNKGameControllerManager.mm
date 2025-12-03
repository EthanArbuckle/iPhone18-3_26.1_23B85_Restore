@interface CNKGameControllerManager
+ (id)shared;
- (id)gameControllerContext;
- (void)addControl:(id)control withControlEvents:(unint64_t)events onButtonPress:(int)press;
- (void)focus;
@end

@implementation CNKGameControllerManager

+ (id)shared
{
  swift_getObjCClassMetadata();
  v2 = static CNKGameControllerManager.shared()();

  return v2;
}

- (void)addControl:(id)control withControlEvents:(unint64_t)events onButtonPress:(int)press
{
  controlCopy = control;
  selfCopy = self;
  CNKGameControllerManager.addControl(_:event:when:)();
}

- (void)focus
{
  selfCopy = self;
  CNKGameControllerManager.focus()();
}

- (id)gameControllerContext
{
  selfCopy = self;
  CNKGameControllerManager.gameControllerContext()(v3);
  v5 = v4;

  return v5;
}

@end