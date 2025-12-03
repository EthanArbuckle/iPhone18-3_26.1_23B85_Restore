@interface HRTapToRadarManager
+ (void)presentTapToRadarDialogueFromViewController:(id)controller;
- (HRTapToRadarManager)init;
@end

@implementation HRTapToRadarManager

+ (void)presentTapToRadarDialogueFromViewController:(id)controller
{
  swift_getObjCClassMetadata();
  controllerCopy = controller;
  static TapToRadarManager.presentTapToRadarDialogue(from:)(controllerCopy);
}

- (HRTapToRadarManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapToRadarManager();
  return [(HRTapToRadarManager *)&v3 init];
}

@end