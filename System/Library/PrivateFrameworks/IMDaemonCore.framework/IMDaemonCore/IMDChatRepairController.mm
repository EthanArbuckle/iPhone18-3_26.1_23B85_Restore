@interface IMDChatRepairController
- (BOOL)repairChatIfNecessary:(id)necessary;
- (IMDChatRepairController)init;
- (IMDChatRepairController)initWithDelegate:(id)delegate;
- (IMDChatRepairControllerDelegate)delegate;
@end

@implementation IMDChatRepairController

- (IMDChatRepairControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (IMDChatRepairController)initWithDelegate:(id)delegate
{
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = IMDChatRepairController;
  swift_unknownObjectRetain();
  v4 = [(IMDChatRepairController *)&v6 init];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)repairChatIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  selfCopy = self;
  sub_22B76F074(necessaryCopy);
  if (v6 & 1) != 0 || (sub_22B76FDA0(necessaryCopy), (v7))
  {
    v8 = 1;
  }

  else
  {
    sub_22B770878(necessaryCopy);
    v8 = v9;
  }

  return v8 & 1;
}

- (IMDChatRepairController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end