@interface HKOverlayRoomPillValueProviderBalance
- (HKOverlayRoomPillValueProviderBalance)init;
- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7;
@end

@implementation HKOverlayRoomPillValueProviderBalance

- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7
{
  sub_1C3C315FC();
  v11 = sub_1C3D202B4();
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = self;
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