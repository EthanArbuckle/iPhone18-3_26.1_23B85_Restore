@interface DBCalendarLeafIcon
- (_TtC9DashBoard18DBCalendarLeafIcon)initWithApplication:(id)a3 drawBorder:(BOOL)a4;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (void)localeChanged;
@end

@implementation DBCalendarLeafIcon

- (_TtC9DashBoard18DBCalendarLeafIcon)initWithApplication:(id)a3 drawBorder:(BOOL)a4
{
  v6 = objc_allocWithZone(MEMORY[0x277D660A8]);
  v7 = a3;
  v8 = [v6 init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) = v8;
  v9 = v7;
  v10 = DBLeafIcon.init(with:drawBorder:)();
  v11 = *&v10[OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider];
  v12 = v10;
  [v11 setDelegate_];

  return v12;
}

- (void)localeChanged
{
  v2 = self;
  [(SBIcon *)v2 reloadIconImage];
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DBCalendarLeafIcon();
  [(SBIcon *)&v3 localeChanged];
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v6 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) iconImageWithInfo:a3 traitCollection:a5 options:?];

  return v6;
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v6 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) iconLayerWithInfo:a3 traitCollection:a5 options:?];

  return v6;
}

@end