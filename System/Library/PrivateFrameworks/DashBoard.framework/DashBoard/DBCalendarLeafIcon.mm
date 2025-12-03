@interface DBCalendarLeafIcon
- (_TtC9DashBoard18DBCalendarLeafIcon)initWithApplication:(id)application drawBorder:(BOOL)border;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (void)localeChanged;
@end

@implementation DBCalendarLeafIcon

- (_TtC9DashBoard18DBCalendarLeafIcon)initWithApplication:(id)application drawBorder:(BOOL)border
{
  v6 = objc_allocWithZone(MEMORY[0x277D660A8]);
  applicationCopy = application;
  v8 = [v6 init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) = v8;
  v9 = applicationCopy;
  v10 = DBLeafIcon.init(with:drawBorder:)();
  v11 = *&v10[OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider];
  v12 = v10;
  [v11 setDelegate_];

  return v12;
}

- (void)localeChanged
{
  selfCopy = self;
  [(SBIcon *)selfCopy reloadIconImage];
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for DBCalendarLeafIcon();
  [(SBIcon *)&v3 localeChanged];
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v6 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) iconImageWithInfo:info traitCollection:context options:?];

  return v6;
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v6 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) iconLayerWithInfo:info traitCollection:context options:?];

  return v6;
}

@end