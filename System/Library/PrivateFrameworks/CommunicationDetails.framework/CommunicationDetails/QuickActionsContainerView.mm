@interface QuickActionsContainerView
- (_TtC20CommunicationDetails25QuickActionsContainerView)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails25QuickActionsContainerView)initWithFrame:(CGRect)frame;
- (id)viewForActionType:(id)type;
- (void)handleAction:(id)action;
@end

@implementation QuickActionsContainerView

- (_TtC20CommunicationDetails25QuickActionsContainerView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model) = 0;
  v4 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + v4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMd);
  v6 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
  *(&self->super.super.super.isa + v6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(v5, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMd);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)viewForActionType:(id)type
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = QuickActionsContainerView.view(forActionType:)(v4, v6);

  return v8;
}

- (void)handleAction:(id)action
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  actionCopy = action;
  selfCopy = self;
  QuickActionsContainerView.handleAction(_:)(actionCopy);
}

- (_TtC20CommunicationDetails25QuickActionsContainerView)initWithFrame:(CGRect)frame
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end