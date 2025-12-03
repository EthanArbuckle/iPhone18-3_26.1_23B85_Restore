@interface RichLinkCardStackItemView
- (CGRect)clippingRect;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (NSCopying)userData;
- (void)becomeReusable;
- (void)chatBotActionButton:(id)button didSelectChipAction:(id)action;
- (void)configureForMessagePart:(id)part;
- (void)didTapLinkView:(id)view;
- (void)didTapTruncatedCaptionForRichCard:(id)card;
- (void)layoutSubviews;
- (void)openAppFromNotificationExtensionWith:(id)with;
- (void)prepareForReuse;
- (void)setUserData:(id)data;
@end

@implementation RichLinkCardStackItemView

- (CGRect)clippingRect
{
  v2 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  v3 = *(&self->super.super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  v4 = *(&self->super.super.super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  v5 = *(&self->super.super.super.super.super._cachedTraitCollection + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSCopying)userData
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)data
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData) = data;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  sub_1908DD9C4();
  swift_unknownObjectRelease();
}

- (void)didTapLinkView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1908DDB8C(viewCopy);
}

- (void)becomeReusable
{
  selfCopy = self;
  sub_1908DE3EC();
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  selfCopy = self;
  sub_1908DE4E0(part);
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1908DF3D4(width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1908DE89C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1908DEDA4();
}

- (void)openAppFromNotificationExtensionWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_1908DEF84(withCopy);
}

- (void)chatBotActionButton:(id)button didSelectChipAction:(id)action
{
  buttonCopy = button;
  actionCopy = action;
  selfCopy = self;
  sub_1908DF0A8(buttonCopy, actionCopy);
}

- (void)didTapTruncatedCaptionForRichCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  sub_1908DF1E8(cardCopy);
}

@end