@interface AutomateHomeIntentHandler
- (_TtC22HomeAutomationInternal25AutomateHomeIntentHandler)init;
- (void)confirmAutomateHome:(id)home completion:(id)completion;
- (void)handleAutomateHome:(id)home completion:(id)completion;
- (void)resolveAutomatableTaskForAutomateHome:(id)home withCompletion:(id)completion;
- (void)resolveTriggerForAutomateHome:(id)home withCompletion:(id)completion;
@end

@implementation AutomateHomeIntentHandler

- (void)resolveTriggerForAutomateHome:(id)home withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  homeCopy = home;
  selfCopy = self;
  sub_252DD91C0(homeCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveAutomatableTaskForAutomateHome:(id)home withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  homeCopy = home;
  selfCopy = self;
  sub_252DDA6CC(homeCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmAutomateHome:(id)home completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  homeCopy = home;
  selfCopy = self;
  sub_252DDC524(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleAutomateHome:(id)home completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  homeCopy = home;
  selfCopy = self;
  sub_252DDCAE0(homeCopy, sub_252CD8440, v7);
}

- (_TtC22HomeAutomationInternal25AutomateHomeIntentHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC22HomeAutomationInternal25AutomateHomeIntentHandler_climateAttributes) = &unk_2864AFDB8;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutomateHomeIntentHandler();
  return [(AutomateHomeIntentHandler *)&v3 init];
}

@end