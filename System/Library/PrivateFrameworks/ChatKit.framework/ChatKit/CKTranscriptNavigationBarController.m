@interface CKTranscriptNavigationBarController
- (CKTranscriptNavigationBarController)init;
- (CKTranscriptNavigationBarController)initWithDelegate:(id)a3 contextProviders:(id)a4 navigationItem:(id)a5 backNavigationItem:(id)a6;
- (CKTranscriptNavigationBarDelegate)delegate;
- (_TtC7ChatKit34CKTranscriptNavigationBarViewProxy)viewProxy;
- (void)applyChange:(id)a3;
- (void)applyChange:(id)a3 animation:(id)a4;
- (void)configureFindMySessionCoordinatorIfNeededForConversation:(id)a3;
- (void)configurePocketInteractionForScrollView:(id)a3;
- (void)setCurrentState:(id)a3;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)transcriptDidDismiss;
@end

@implementation CKTranscriptNavigationBarController

- (CKTranscriptNavigationBarDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setCurrentState:(id)a3
{
  v4 = *(self + OBJC_IVAR___CKTranscriptNavigationBarController_currentState);
  *(self + OBJC_IVAR___CKTranscriptNavigationBarController_currentState) = a3;
  v3 = a3;
}

- (CKTranscriptNavigationBarController)initWithDelegate:(id)a3 contextProviders:(id)a4 navigationItem:(id)a5 backNavigationItem:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return sub_190A7B878(a3, v10, v11, a6);
}

- (void)transcriptDidDismiss
{
  v2 = *(self + OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem);
  if (v2)
  {
    [v2 setBackBarButtonItem_];
  }
}

- (void)applyChange:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = a3;
  v6 = qword_1EAD46808;
  v7 = a3;
  v8 = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)applyChange:(id)a3 animation:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = a3;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_190A7BEF0(inited, v9);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  sub_190A7C878(a3);
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

- (void)configurePocketInteractionForScrollView:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_190C249F4(v5);
}

- (void)configureFindMySessionCoordinatorIfNeededForConversation:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190A7CB2C(a3);
}

- (CKTranscriptNavigationBarController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end