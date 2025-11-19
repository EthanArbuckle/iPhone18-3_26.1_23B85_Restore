@interface CloudDeviceLibraryItemController
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelected;
- (_TtC14MobileSafariUI32CloudDeviceLibraryItemController)initWithConfiguration:(id)a3;
- (int64_t)hash;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation CloudDeviceLibraryItemController

- (void)updateListContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215A1FE2C(v4);
}

- (BOOL)isSelected
{
  v2 = self;
  v3 = sub_215A1FFF8();

  return v3 & 1;
}

- (void)didSelectItem
{
  v2 = self;
  sub_215A2024C();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_215A2035C(v8);

  sub_21583FDA0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_215A20688();

  return v3;
}

- (_TtC14MobileSafariUI32CloudDeviceLibraryItemController)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end