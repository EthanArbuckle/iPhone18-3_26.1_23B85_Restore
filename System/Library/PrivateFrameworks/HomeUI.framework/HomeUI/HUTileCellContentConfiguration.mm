@interface HUTileCellContentConfiguration
- (BOOL)descriptionHidden;
- (BOOL)prefixHidden;
- (BOOL)titleHidden;
- (HUTileCellContentConfiguration)init;
- (id)updatedForItem:(id)item;
- (void)setDescriptionHidden:(BOOL)hidden;
- (void)setPrefixHidden:(BOOL)hidden;
- (void)setTitleHidden:(BOOL)hidden;
@end

@implementation HUTileCellContentConfiguration

- (BOOL)prefixHidden
{
  v2 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return v2[32];
}

- (void)setPrefixHidden:(BOOL)hidden
{
  v4 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4[32] = hidden;
}

- (BOOL)titleHidden
{
  v2 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return v2[104];
}

- (void)setTitleHidden:(BOOL)hidden
{
  v4 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4[104] = hidden;
}

- (BOOL)descriptionHidden
{
  v2 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return v2[176];
}

- (void)setDescriptionHidden:(BOOL)hidden
{
  v4 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4[176] = hidden;
}

- (HUTileCellContentConfiguration)init
{
  sub_20D00CF4C(self + OBJC_IVAR___HUTileCellContentConfiguration_configuration);
  v4.receiver = self;
  v4.super_class = type metadata accessor for __TileCellContentConfiguration();
  return [(HUTileCellContentConfiguration *)&v4 init];
}

- (id)updatedForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_20D0118E0(itemCopy);

  return v6;
}

@end