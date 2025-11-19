@interface AutomateHomeIntentHandler
- (_TtC22HomeAutomationInternal25AutomateHomeIntentHandler)init;
- (void)confirmAutomateHome:(id)a3 completion:(id)a4;
- (void)handleAutomateHome:(id)a3 completion:(id)a4;
- (void)resolveAutomatableTaskForAutomateHome:(id)a3 withCompletion:(id)a4;
- (void)resolveTriggerForAutomateHome:(id)a3 withCompletion:(id)a4;
@end

@implementation AutomateHomeIntentHandler

- (void)resolveTriggerForAutomateHome:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_252DD91C0(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveAutomatableTaskForAutomateHome:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_252DDA6CC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmAutomateHome:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_252DDC524(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleAutomateHome:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_252DDCAE0(v8, sub_252CD8440, v7);
}

- (_TtC22HomeAutomationInternal25AutomateHomeIntentHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC22HomeAutomationInternal25AutomateHomeIntentHandler_climateAttributes) = &unk_2864AFDB8;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutomateHomeIntentHandler();
  return [(AutomateHomeIntentHandler *)&v3 init];
}

@end