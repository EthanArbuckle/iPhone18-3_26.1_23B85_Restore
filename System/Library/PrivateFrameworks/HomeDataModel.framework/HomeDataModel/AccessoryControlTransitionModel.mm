@interface AccessoryControlTransitionModel
- (_TtC13HomeDataModel31AccessoryControlTransitionModel)init;
@end

@implementation AccessoryControlTransitionModel

- (_TtC13HomeDataModel31AccessoryControlTransitionModel)init
{
  v3 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(*(v4 - 8) + 56);
  v5(self + v3, 1, 1, v4);
  v5(self + OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer, 1, 1, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessoryControlTransitionModel();
  return [(AccessoryControlTransitionModel *)&v7 init];
}

@end