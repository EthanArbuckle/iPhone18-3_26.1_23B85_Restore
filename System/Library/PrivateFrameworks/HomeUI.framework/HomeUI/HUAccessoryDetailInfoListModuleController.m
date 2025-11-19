@interface HUAccessoryDetailInfoListModuleController
- (Class)cellClassForItem:(id)a3;
- (HUAccessoryDetailInfoListModuleController)initWithModule:(id)a3;
- (id)init:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)accessoryButtonTappedForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUAccessoryDetailInfoListModuleController

- (id)init:(id)a3
{
  v5 = self + OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  v6 = type metadata accessor for AccessoryDetailInfoListModuleController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(HUItemModuleController *)&v8 initWithModule:a3];
}

- (Class)cellClassForItem:(id)a3
{
  sub_20D08472C();

  return swift_getObjCClassFromMetadata();
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for AccessoryDetailInfoListModuleController();
  v6 = a3;
  v7 = a4;
  v8 = v13.receiver;
  [(HUItemModuleController *)&v13 setupCell:v6 forItem:v7];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v6;
    [v10 setHideIcon_];
    v12 = v11;
    [v10 setAccessoryType_];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_20D08488C(v8, v9, a5);
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D084CDC(v4);

  return 0;
}

- (void)accessoryButtonTappedForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D084DF0(v4);
}

- (HUAccessoryDetailInfoListModuleController)initWithModule:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end