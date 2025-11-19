@interface IMDChatRepairController
- (BOOL)repairChatIfNecessary:(id)a3;
- (IMDChatRepairController)init;
- (IMDChatRepairController)initWithDelegate:(id)a3;
- (IMDChatRepairControllerDelegate)delegate;
@end

@implementation IMDChatRepairController

- (IMDChatRepairControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (IMDChatRepairController)initWithDelegate:(id)a3
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

- (BOOL)repairChatIfNecessary:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B76F074(v4);
  if (v6 & 1) != 0 || (sub_22B76FDA0(v4), (v7))
  {
    v8 = 1;
  }

  else
  {
    sub_22B770878(v4);
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