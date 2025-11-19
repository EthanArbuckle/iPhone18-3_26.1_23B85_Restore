@interface TapbackEmojiKeyboardGlyphView
- (BOOL)isSelected;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (_TtC7ChatKit29TapbackEmojiKeyboardGlyphView)initWithFrame:(CGRect)a3;
- (void)interfaceStyleChanged;
- (void)setIsSelected:(BOOL)a3;
@end

@implementation TapbackEmojiKeyboardGlyphView

- (UIEdgeInsets)platterEdgeInsets
{
  v2 = *(self + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_platterEdgeInsets);
  v3 = *(self + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_platterEdgeInsets + 8);
  v4 = *(self + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_platterEdgeInsets + 16);
  v5 = *(self + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_platterEdgeInsets + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)isSelected
{
  v3 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CKTapbackViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7ChatKit29TapbackEmojiKeyboardGlyphView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)interfaceStyleChanged
{
  v2 = self;
  sub_190B789E8();
}

@end