@interface CKTranscriptNavigationBarController
- (CKTranscriptNavigationBarController)init;
- (CKTranscriptNavigationBarController)initWithDelegate:(id)delegate contextProviders:(id)providers navigationItem:(id)item backNavigationItem:(id)navigationItem;
- (CKTranscriptNavigationBarDelegate)delegate;
- (_TtC7ChatKit34CKTranscriptNavigationBarViewProxy)viewProxy;
- (void)applyChange:(id)change;
- (void)applyChange:(id)change animation:(id)animation;
- (void)configureFindMySessionCoordinatorIfNeededForConversation:(id)conversation;
- (void)configurePocketInteractionForScrollView:(id)view;
- (void)setCurrentState:(id)state;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)transcriptDidDismiss;
@end

@implementation CKTranscriptNavigationBarController

- (CKTranscriptNavigationBarDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setCurrentState:(id)state
{
  v4 = *(self + OBJC_IVAR___CKTranscriptNavigationBarController_currentState);
  *(self + OBJC_IVAR___CKTranscriptNavigationBarController_currentState) = state;
  stateCopy = state;
}

- (CKTranscriptNavigationBarController)initWithDelegate:(id)delegate contextProviders:(id)providers navigationItem:(id)item backNavigationItem:(id)navigationItem
{
  swift_unknownObjectRetain();
  providersCopy = providers;
  itemCopy = item;
  navigationItemCopy = navigationItem;
  return sub_190A7B878(delegate, providersCopy, itemCopy, navigationItem);
}

- (void)transcriptDidDismiss
{
  v2 = *(self + OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem);
  if (v2)
  {
    [v2 setBackBarButtonItem_];
  }
}

- (void)applyChange:(id)change
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = change;
  v6 = qword_1EAD46808;
  changeCopy = change;
  selfCopy = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)applyChange:(id)change animation:(id)animation
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = change;
  changeCopy = change;
  animationCopy = animation;
  selfCopy = self;
  sub_190A7BEF0(inited, animationCopy);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  sub_190A7C878(style);
}

- (_TtC7ChatKit34CKTranscriptNavigationBarViewProxy)viewProxy
{
  v2 = *(*(self + OBJC_IVAR___CKTranscriptNavigationBarController_titleView) + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView);
  v3 = *(v2 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton);
  v4 = *(v2 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
  v5 = type metadata accessor for CKTranscriptNavigationBarViewProxy();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_avatarView] = v3;
  *&v6[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_conversationTitleView] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v3;
  v8 = v4;
  v9 = [(CKTranscriptNavigationBarController *)&v11 init];

  return v9;
}

- (void)configurePocketInteractionForScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_190C249F4(viewCopy);
}

- (void)configureFindMySessionCoordinatorIfNeededForConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_190A7CB2C(conversation);
}

- (CKTranscriptNavigationBarController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end