@interface MUPlaceActionBarView
- (MUPlaceActionBarConfiguration)configuration;
- (MUPlaceActionBarView)initWithCoder:(id)a3;
- (MUPlaceActionBarView)initWithFrame:(CGRect)a3;
- (void)setConfiguration:(id)a3;
- (void)updateVisibility;
@end

@implementation MUPlaceActionBarView

- (MUPlaceActionBarConfiguration)configuration
{
  v3 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_1C5704B18();
}

- (MUPlaceActionBarView)initWithCoder:(id)a3
{
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)updateVisibility
{
  v4 = self;
  v2 = [(MUPlaceActionBarView *)v4 traitCollection];
  shouldShowActionBarSbvg_0 = _sSo17UITraitCollectionC6MapsUIE27_mapsui_shouldShowActionBarSbvg_0();

  [(MUPlaceActionBarView *)v4 setHidden:(shouldShowActionBarSbvg_0 & 1) == 0];
}

- (MUPlaceActionBarView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end