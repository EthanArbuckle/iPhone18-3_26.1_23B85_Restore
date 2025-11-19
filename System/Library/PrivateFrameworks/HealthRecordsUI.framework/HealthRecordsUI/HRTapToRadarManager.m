@interface HRTapToRadarManager
+ (void)presentTapToRadarDialogueFromViewController:(id)a3;
- (HRTapToRadarManager)init;
@end

@implementation HRTapToRadarManager

+ (void)presentTapToRadarDialogueFromViewController:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static TapToRadarManager.presentTapToRadarDialogue(from:)(v4);
}

- (HRTapToRadarManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapToRadarManager();
  return [(HRTapToRadarManager *)&v3 init];
}

@end