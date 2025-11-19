@interface GKMultiplayerPickerNearbyInstructionCell
+ (double)itemHeightFitting:(CGSize)a3 inTraitEnvironment:(id)a4;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerPickerNearbyInstructionCell

- (void)layoutSubviews
{
  v2 = self;
  GKMultiplayerPickerNearbyInstructionCell.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  GKMultiplayerPickerNearbyInstructionCell.measurements(fitting:in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

+ (double)itemHeightFitting:(CGSize)a3 inTraitEnvironment:(id)a4
{
  swift_getObjCClassMetadata();
  v4 = swift_unknownObjectRetain();
  static GKMultiplayerPickerNearbyInstructionCell.itemHeight(fitting:in:)(v4);
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

@end