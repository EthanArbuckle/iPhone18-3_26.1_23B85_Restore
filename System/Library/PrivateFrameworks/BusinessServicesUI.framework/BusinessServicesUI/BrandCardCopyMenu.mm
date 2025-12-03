@interface BrandCardCopyMenu
- (_TtC18BusinessServicesUI17BrandCardCopyMenu)initWithFrame:(CGRect)frame;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)handleLongPress:(id)press;
@end

@implementation BrandCardCopyMenu

- (_TtC18BusinessServicesUI17BrandCardCopyMenu)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(BrandCardCopyMenu *)&v13 initWithFrame:x, y, width, height];
  sub_24213E258();

  return height;
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_24213E754();
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_24213E838();

  return v10;
}

@end