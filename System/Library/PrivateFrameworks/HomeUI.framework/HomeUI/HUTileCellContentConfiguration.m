@interface HUTileCellContentConfiguration
- (BOOL)descriptionHidden;
- (BOOL)prefixHidden;
- (BOOL)titleHidden;
- (HUTileCellContentConfiguration)init;
- (id)updatedForItem:(id)a3;
- (void)setDescriptionHidden:(BOOL)a3;
- (void)setPrefixHidden:(BOOL)a3;
- (void)setTitleHidden:(BOOL)a3;
@end

@implementation HUTileCellContentConfiguration

- (BOOL)prefixHidden
{
  v2 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return v2[32];
}

- (void)setPrefixHidden:(BOOL)a3
{
  v4 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4[32] = a3;
}

- (BOOL)titleHidden
{
  v2 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return v2[104];
}

- (void)setTitleHidden:(BOOL)a3
{
  v4 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4[104] = a3;
}

- (BOOL)descriptionHidden
{
  v2 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return v2[176];
}

- (void)setDescriptionHidden:(BOOL)a3
{
  v4 = self + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4[176] = a3;
}

- (HUTileCellContentConfiguration)init
{
  sub_20D00CF4C(self + OBJC_IVAR___HUTileCellContentConfiguration_configuration);
  v4.receiver = self;
  v4.super_class = type metadata accessor for __TileCellContentConfiguration();
  return [(HUTileCellContentConfiguration *)&v4 init];
}

- (id)updatedForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D0118E0(v4);

  return v6;
}

@end