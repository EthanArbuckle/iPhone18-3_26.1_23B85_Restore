@interface CloudDeviceLibraryItemController
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelected;
- (_TtC14MobileSafariUI32CloudDeviceLibraryItemController)initWithConfiguration:(id)configuration;
- (int64_t)hash;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation CloudDeviceLibraryItemController

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_215A1FE2C(configurationCopy);
}

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = sub_215A1FFF8();

  return v3 & 1;
}

- (void)didSelectItem
{
  selfCopy = self;
  sub_215A2024C();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_215A2035C(v8);

  sub_21583FDA0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_215A20688();

  return v3;
}

- (_TtC14MobileSafariUI32CloudDeviceLibraryItemController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end