@interface CKBusinessDetailsController
- (BOOL)isShowingAddMemberPopover;
- (CKBusinessDetailsController)initWithCoder:(id)a3;
- (CKBusinessDetailsController)initWithConversation:(id)a3 detailsControllerDelegate:(id)a4;
- (CKBusinessDetailsController)initWithNibName:(id)a3 bundle:(id)a4;
- (CKConversation)conversation;
- (CKDetailsControllerDelegate)detailsControllerDelegate;
- (void)dismissDetailsController;
- (void)setConversation:(id)a3;
- (void)setIsShowingAddMemberPopover:(BOOL)a3;
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

- (void)setConversation:(id)a3
{
  v5 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)isShowingAddMemberPopover
{
  v3 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsShowingAddMemberPopover:(BOOL)a3
{
  v5 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CKBusinessDetailsController)initWithConversation:(id)a3 detailsControllerDelegate:(id)a4
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover) = 0;
  *(self + OBJC_IVAR___CKBusinessDetailsController_conversation) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = self;
  v8.super_class = type metadata accessor for BusinessDetailsController();
  v6 = a3;
  return [(CKBusinessDetailsController *)&v8 initWithNibName:0 bundle:0];
}

- (CKBusinessDetailsController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
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

- (CKBusinessDetailsController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end