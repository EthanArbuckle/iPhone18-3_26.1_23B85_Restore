@interface CKConversationListTipManagerSwift
- (CKConversationListTipManagerSwift)init;
- (CKConversationListTipManagerSwift)initWithConversationListController:(id)a3;
- (UIView)miniTipUIView;
- (int64_t)presentedTip;
- (uint64_t)updateKtTipRules;
- (void)conversationListControllerDidAppear;
- (void)conversationListControllerDidDisappear;
- (void)setMiniTipUIView:(id)a3;
- (void)setPresentedTip:(int64_t)a3;
- (void)updateCloudTipRulesFor:(id)a3;
- (void)userDidPinConversation;
@end

@implementation CKConversationListTipManagerSwift

- (CKConversationListTipManagerSwift)initWithConversationListController:(id)a3
{
  v3 = a3;
  v4 = sub_190220610();

  return v4;
}

- (int64_t)presentedTip
{
  v3 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)conversationListControllerDidAppear
{
  v2 = self;
  sub_19022EC68();
}

- (UIView)miniTipUIView
{
  v3 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMiniTipUIView:(id)a3
{
  v5 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)setPresentedTip:(int64_t)a3
{
  v5 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)updateCloudTipRulesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190859390(v4);
}

- (void)conversationListControllerDidDisappear
{
  v3 = OBJC_IVAR___CKConversationListTipManagerSwift_tipObservationTask;
  if (*(&self->super.isa + OBJC_IVAR___CKConversationListTipManagerSwift_tipObservationTask))
  {
    v4 = self;
    sub_190D50920();
    sub_190D57330();
  }

  else
  {
    v5 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (void)userDidPinConversation
{
  v3 = sub_190D53710();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v9[0] = sub_190230C1C();
  v9[1] = v8;
  (*(v4 + 104))(v6, *MEMORY[0x1E6982AE0], v3);
  sub_190230D6C();
  sub_190D53520();

  (*(v4 + 8))(v6, v3);
}

- (CKConversationListTipManagerSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)updateKtTipRules
{
  v0 = CKIsWaitingForCloud();
  v1 = CKIsAppleIDNotUpdated();
  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D7F0);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v0;
    *(v5 + 8) = 1024;
    *(v5 + 10) = v1;
    _os_log_impl(&dword_19020E000, v3, v4, "Updating KT Tip Rules. ktWaitingForCloud=%{BOOL}d, updateAppleID=%{BOOL}d", v5, 0xEu);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  if (qword_1EAD457A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v6, qword_1EAD9D5A8);
  swift_beginAccess();
  sub_190D53850();
  swift_endAccess();
  if (qword_1EAD458D0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EAD9D5D8);
  swift_beginAccess();
  sub_190D53850();
  return swift_endAccess();
}

@end