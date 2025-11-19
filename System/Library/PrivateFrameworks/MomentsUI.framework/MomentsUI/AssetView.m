@interface AssetView
- (_TtC9MomentsUI9AssetView)initWithCoder:(id)a3;
- (_TtC9MomentsUI9AssetView)initWithFrame:(CGRect)a3;
- (void)handleTraitChange;
@end

@implementation AssetView

- (_TtC9MomentsUI9AssetView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MomentsUI9AssetView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTraitChange
{
  v4 = self;
  v2 = [(AssetView *)v4 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 1)
  {
    (*((*MEMORY[0x277D85000] & v4->super.super.super.isa) + 0xC0))();
  }

  else
  {
    (*((*MEMORY[0x277D85000] & v4->super.super.super.isa) + 0xC8))();
  }
}

@end