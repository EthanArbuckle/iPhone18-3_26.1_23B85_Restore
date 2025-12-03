@interface CKNavBarConversationIdentityView
- (BOOL)avatarWantsTapAtPoint:(CGPoint)point fromView:(id)view;
- (BOOL)chevronHidden;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)subtitleHidden;
- (CGSize)intrinsicContentSize;
- (CKNavBarConversationIdentityView)initWithConversation:(id)conversation;
- (CKNavBarConversationIdentityView)initWithFrame:(CGRect)frame;
- (CKNavBarConversationIdentityViewDelegate)delegate;
- (NSString)subtitle;
- (int64_t)style;
- (void)chatIsFilteredChangedWithNotification:(id)notification;
- (void)chatItemsChangedWithNotification:(id)notification;
- (void)didMoveToWindow;
- (void)handleTapWithRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)nicknameStoreChangedWithNotification:(id)notification;
- (void)performAnimationForPhotoUpdate;
- (void)preferredContentSizeCategoryDidChangeWithView:(id)view previousTraitCollection:(id)collection;
- (void)setChevronHidden:(BOOL)hidden;
- (void)setConversation:(id)conversation;
- (void)setDelegate:(id)delegate;
- (void)setStyle:(int64_t)style;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleHidden:(BOOL)hidden;
- (void)updateAvatarViewVisualIdentity;
@end

@implementation CKNavBarConversationIdentityView

- (CKNavBarConversationIdentityViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_190CBC7D8();
  swift_unknownObjectRelease();
}

- (void)setConversation:(id)conversation
{
  v5 = *(self + OBJC_IVAR___CKNavBarConversationIdentityView_conversation);
  *(self + OBJC_IVAR___CKNavBarConversationIdentityView_conversation) = conversation;
  sub_1902188FC(0, &qword_1EAD466B0);
  conversationCopy = conversation;
  selfCopy = self;
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

- (void)setSubtitle:(id)subtitle
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  CKNavBarConversationIdentityView.subtitle.setter(v4, v6);
}

- (BOOL)subtitleHidden
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubtitleHidden:(BOOL)hidden
{
  selfCopy = self;
  CKNavBarConversationIdentityView.subtitleHidden.setter(hidden);
}

- (BOOL)chevronHidden
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_chevronHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setChevronHidden:(BOOL)hidden
{
  selfCopy = self;
  CKNavBarConversationIdentityView.chevronHidden.setter(hidden);
}

- (int64_t)style
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_style;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStyle:(int64_t)style
{
  selfCopy = self;
  CKNavBarConversationIdentityView.style.setter(style);
}

- (CKNavBarConversationIdentityView)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v4 = sub_190CC1444(conversationCopy);

  return v4;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  CKNavBarConversationIdentityView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  CKNavBarConversationIdentityView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = CKNavBarConversationIdentityView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)handleTapWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_190CBE3CC(recognizerCopy);
}

- (void)preferredContentSizeCategoryDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  sub_1902188FC(0, &qword_1EAD46500);
  viewCopy = view;
  selfCopy = self;
  if (sub_190D57D90())
  {
    [(CKNavBarConversationIdentityView *)selfCopy invalidateIntrinsicContentSize];
    [(CKNavBarConversationIdentityView *)selfCopy setNeedsLayout];
  }
}

- (void)updateAvatarViewVisualIdentity
{
  selfCopy = self;
  CKNavBarConversationIdentityView.updateAvatarViewVisualIdentity()();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = CKNavBarConversationIdentityView.gestureRecognizer(_:shouldReceive:)(recognizerCopy, touchCopy);

  return v9;
}

- (BOOL)avatarWantsTapAtPoint:(CGPoint)point fromView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = CKNavBarConversationIdentityView.avatarWantsTap(at:from:)(__PAIR128__(*&y, *&x), viewCopy);

  return self & 1;
}

- (void)performAnimationForPhotoUpdate
{
  selfCopy = self;
  CKNavBarConversationIdentityView.performAnimationForPhotoUpdate()();
}

- (CKNavBarConversationIdentityView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)chatIsFilteredChangedWithNotification:(id)notification
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
  sub_190CBC7D8();
  sub_190CBCF68();

  (*(v5 + 8))(v7, v4);
}

- (void)chatItemsChangedWithNotification:(id)notification
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
  sub_190CC03FC();

  (*(v5 + 8))(v7, v4);
}

- (void)nicknameStoreChangedWithNotification:(id)notification
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