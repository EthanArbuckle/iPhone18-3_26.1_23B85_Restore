@interface MUPlaceActionBarView
- (MUPlaceActionBarConfiguration)configuration;
- (MUPlaceActionBarView)initWithCoder:(id)coder;
- (MUPlaceActionBarView)initWithFrame:(CGRect)frame;
- (void)setConfiguration:(id)configuration;
- (void)updateVisibility;
@end

@implementation MUPlaceActionBarView

- (MUPlaceActionBarConfiguration)configuration
{
  v3 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = configuration;
  configurationCopy = configuration;
  selfCopy = self;

  sub_1C5704B18();
}

- (MUPlaceActionBarView)initWithCoder:(id)coder
{
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)updateVisibility
{
  selfCopy = self;
  traitCollection = [(MUPlaceActionBarView *)selfCopy traitCollection];
  shouldShowActionBarSbvg_0 = _sSo17UITraitCollectionC6MapsUIE27_mapsui_shouldShowActionBarSbvg_0();

  [(MUPlaceActionBarView *)selfCopy setHidden:(shouldShowActionBarSbvg_0 & 1) == 0];
}

- (MUPlaceActionBarView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end