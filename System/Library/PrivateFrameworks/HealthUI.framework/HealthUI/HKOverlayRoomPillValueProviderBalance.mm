@interface HKOverlayRoomPillValueProviderBalance
- (HKOverlayRoomPillValueProviderBalance)init;
- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller;
@end

@implementation HKOverlayRoomPillValueProviderBalance

- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller
{
  sub_1C3C315FC();
  v11 = sub_1C3D202B4();
  unitCopy = unit;
  typeCopy = type;
  controllerCopy = controller;
  selfCopy = self;
  sub_1C3D0255C(v11);
  v17 = v16;

  return v17;
}

- (HKOverlayRoomPillValueProviderBalance)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OverlayRoomPillValueProviderBalance();
  return [(HKOverlayRoomPillValueProviderBalance *)&v3 init];
}

@end