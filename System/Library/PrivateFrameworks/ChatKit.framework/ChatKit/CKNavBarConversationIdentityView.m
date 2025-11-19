@interface CKNavBarConversationIdentityView
- (BOOL)avatarWantsTapAtPoint:(CGPoint)a3 fromView:(id)a4;
- (BOOL)chevronHidden;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)subtitleHidden;
- (CGSize)intrinsicContentSize;
- (CKNavBarConversationIdentityView)initWithConversation:(id)a3;
- (CKNavBarConversationIdentityView)initWithFrame:(CGRect)a3;
- (CKNavBarConversationIdentityViewDelegate)delegate;
- (NSString)subtitle;
- (int64_t)style;
- (void)chatIsFilteredChangedWithNotification:(id)a3;
- (void)chatItemsChangedWithNotification:(id)a3;
- (void)didMoveToWindow;
- (void)handleTapWithRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)nicknameStoreChangedWithNotification:(id)a3;
- (void)performAnimationForPhotoUpdate;
- (void)preferredContentSizeCategoryDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
- (void)setChevronHidden:(BOOL)a3;
- (void)setConversation:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleHidden:(BOOL)a3;
- (void)updateAvatarViewVisualIdentity;
@end

@implementation CKNavBarConversationIdentityView

- (CKNavBarConversationIdentityViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  sub_190CBC7D8();
  swift_unknownObjectRelease();
}

- (void)setConversation:(id)a3
{
  v5 = *(self + OBJC_IVAR___CKNavBarConversationIdentityView_conversation);
  *(self + OBJC_IVAR___CKNavBarConversationIdentityView_conversation) = a3;
  sub_1902188FC(0, &qword_1EAD466B0);
  v6 = a3;
  v7 = self;
  if ((sub_190D57D90() & 1) == 0)
  {
    sub_190CBCB70();
    sub_190CBCF68();
  }
}

- (NSString)subtitle
{
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D56ED0();

  return v2;
}

- (void)setSubtitle:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  CKNavBarConversationIdentityView.subtitle.setter(v4, v6);
}

- (BOOL)subtitleHidden
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubtitleHidden:(BOOL)a3
{
  v4 = self;
  CKNavBarConversationIdentityView.subtitleHidden.setter(a3);
}

- (BOOL)chevronHidden
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_chevronHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setChevronHidden:(BOOL)a3
{
  v4 = self;
  CKNavBarConversationIdentityView.chevronHidden.setter(a3);
}

- (int64_t)style
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_style;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStyle:(int64_t)a3
{
  v4 = self;
  CKNavBarConversationIdentityView.style.setter(a3);
}

- (CKNavBarConversationIdentityView)initWithConversation:(id)a3
{
  v3 = a3;
  v4 = sub_190CC1444(v3);

  return v4;
}

- (void)didMoveToWindow
{
  v2 = self;
  CKNavBarConversationIdentityView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v2 = self;
  CKNavBarConversationIdentityView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = CKNavBarConversationIdentityView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)handleTapWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190CBE3CC(v4);
}

- (void)preferredContentSizeCategoryDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  sub_1902188FC(0, &qword_1EAD46500);
  v6 = a3;
  v7 = self;
  if (sub_190D57D90())
  {
    [(CKNavBarConversationIdentityView *)v7 invalidateIntrinsicContentSize];
    [(CKNavBarConversationIdentityView *)v7 setNeedsLayout];
  }
}

- (void)updateAvatarViewVisualIdentity
{
  v2 = self;
  CKNavBarConversationIdentityView.updateAvatarViewVisualIdentity()();
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CKNavBarConversationIdentityView.gestureRecognizer(_:shouldReceive:)(v6, v7);

  return v9;
}

- (BOOL)avatarWantsTapAtPoint:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = CKNavBarConversationIdentityView.avatarWantsTap(at:from:)(__PAIR128__(*&y, *&x), v7);

  return self & 1;
}

- (void)performAnimationForPhotoUpdate
{
  v2 = self;
  CKNavBarConversationIdentityView.performAnimationForPhotoUpdate()();
}

- (CKNavBarConversationIdentityView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)chatIsFilteredChangedWithNotification:(id)a3
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = self;
  sub_190CBC7D8();
  sub_190CBCF68();

  (*(v5 + 8))(v7, v4);
}

- (void)chatItemsChangedWithNotification:(id)a3
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = self;
  sub_190CC03FC();

  (*(v5 + 8))(v7, v4);
}

- (void)nicknameStoreChangedWithNotification:(id)a3
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  [(CKNavBarConversationIdentityView *)self performAnimationForPhotoUpdate];
  (*(v5 + 8))(v7, v4);
}

@end