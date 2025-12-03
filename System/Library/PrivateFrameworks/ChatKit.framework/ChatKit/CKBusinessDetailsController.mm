@interface CKBusinessDetailsController
- (BOOL)isShowingAddMemberPopover;
- (CKBusinessDetailsController)initWithCoder:(id)coder;
- (CKBusinessDetailsController)initWithConversation:(id)conversation detailsControllerDelegate:(id)delegate;
- (CKBusinessDetailsController)initWithNibName:(id)name bundle:(id)bundle;
- (CKConversation)conversation;
- (CKDetailsControllerDelegate)detailsControllerDelegate;
- (void)dismissDetailsController;
- (void)setConversation:(id)conversation;
- (void)setIsShowingAddMemberPopover:(BOOL)popover;
- (void)viewDidLoad;
@end

@implementation CKBusinessDetailsController

- (CKDetailsControllerDelegate)detailsControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CKConversation)conversation
{
  v3 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConversation:(id)conversation
{
  v5 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = conversation;
  conversationCopy = conversation;
}

- (BOOL)isShowingAddMemberPopover
{
  v3 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsShowingAddMemberPopover:(BOOL)popover
{
  v5 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  swift_beginAccess();
  *(self + v5) = popover;
}

- (CKBusinessDetailsController)initWithConversation:(id)conversation detailsControllerDelegate:(id)delegate
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover) = 0;
  *(self + OBJC_IVAR___CKBusinessDetailsController_conversation) = conversation;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = self;
  v8.super_class = type metadata accessor for BusinessDetailsController();
  conversationCopy = conversation;
  return [(CKBusinessDetailsController *)&v8 initWithNibName:0 bundle:0];
}

- (CKBusinessDetailsController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_190B1B5D0();
}

- (void)dismissDetailsController
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsNavigationController];
    swift_unknownObjectRelease();
  }
}

- (CKBusinessDetailsController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end