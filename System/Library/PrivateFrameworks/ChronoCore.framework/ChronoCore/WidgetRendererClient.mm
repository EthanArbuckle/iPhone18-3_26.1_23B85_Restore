@interface WidgetRendererClient
- (_TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient)init;
- (void)handleInteraction:(id)interaction authenticationPolicy:(id)policy action:(id)action handler:(id)handler;
- (void)reloadWidget:(id)widget reason:(id)reason;
- (void)reloadWidgetIfFailed:(id)failed reason:(id)reason;
- (void)setEnvironmentModifiers:(id)modifiers forSession:(id)session;
- (void)setVisiblySettled:(id)settled forSession:(id)session;
- (void)setWidgetTaskPriority:(id)priority forSession:(id)session;
- (void)subscribe:(id)subscribe completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation WidgetRendererClient

- (void)setVisiblySettled:(id)settled forSession:(id)session
{
  settledCopy = settled;
  sessionCopy = session;
  selfCopy = self;
  sub_224A6E6A4(settledCopy, sessionCopy);
}

- (void)subscribe:(id)subscribe completion:(id)completion
{
  v6 = _Block_copy(completion);
  subscribeCopy = subscribe;
  selfCopy = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  _Block_copy(v6);
  sub_224A73F30(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_224A78024(v8, v10);
}

- (void)reloadWidget:(id)widget reason:(id)reason
{
  widgetCopy = widget;
  reasonCopy = reason;
  selfCopy = self;
  sub_224A85004(widgetCopy, reasonCopy);
}

- (void)setWidgetTaskPriority:(id)priority forSession:(id)session
{
  priorityCopy = priority;
  sessionCopy = session;
  selfCopy = self;
  sub_224A8E510(priorityCopy, sessionCopy);
}

- (_TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)unsubscribe:(id)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  selfCopy = self;
  sub_224CCAD70(unsubscribeCopy);
}

- (void)reloadWidgetIfFailed:(id)failed reason:(id)reason
{
  failedCopy = failed;
  reasonCopy = reason;
  selfCopy = self;
  sub_224CCB034(failedCopy, reasonCopy);
}

- (void)handleInteraction:(id)interaction authenticationPolicy:(id)policy action:(id)action handler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  interactionCopy = interaction;
  policyCopy = policy;
  actionCopy = action;
  selfCopy = self;
  sub_224CCB1A4(interactionCopy, policyCopy, actionCopy, sub_224B67834, v11);
}

- (void)setEnvironmentModifiers:(id)modifiers forSession:(id)session
{
  modifiersCopy = modifiers;
  sessionCopy = session;
  selfCopy = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  sub_224CCB640(v8, v10, sessionCopy);
  sub_224A78024(v8, v10);
}

@end