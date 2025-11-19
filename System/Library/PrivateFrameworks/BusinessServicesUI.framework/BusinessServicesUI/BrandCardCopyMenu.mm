@interface BrandCardCopyMenu
- (_TtC18BusinessServicesUI17BrandCardCopyMenu)initWithFrame:(CGRect)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)handleLongPress:(id)a3;
@end

@implementation BrandCardCopyMenu

- (_TtC18BusinessServicesUI17BrandCardCopyMenu)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_name);
  *v8 = 0;
  v8[1] = 0;
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_sip);
  v10 = type metadata accessor for BrandCardCopyMenu();
  *v9 = 0;
  v9[1] = 0;
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(BrandCardCopyMenu *)&v13 initWithFrame:x, y, width, height];
  sub_24213E258();

  return v11;
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24213E754();
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_24213E838();

  return v10;
}

@end