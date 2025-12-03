@interface LACBiomeDialogEvent
- (LACBiomeDialogEvent)init;
- (id)description;
- (void)addAction:(int64_t)action failing:(BOOL)failing;
- (void)determineTimeSinceLastSystemUpdateWithCompletion:(id)completion;
- (void)failedAuthenticationWithMechanism:(int64_t)mechanism;
- (void)mergeBiomeEvent:(id)event;
- (void)startedAuthenticationWithMechanism:(int64_t)mechanism;
@end

@implementation LACBiomeDialogEvent

- (LACBiomeDialogEvent)init
{
  v9.receiver = self;
  v9.super_class = LACBiomeDialogEvent;
  v2 = [(LACBiomeDialogEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    mechanisms = v2->_mechanisms;
    v5 = MEMORY[0x1E695E0F0];
    v2->_mechanisms = MEMORY[0x1E695E0F0];

    failedMechanisms = v3->_failedMechanisms;
    v3->_successfulMechanism = 0;
    v3->_failedMechanisms = v5;

    actions = v3->_actions;
    v3->_actions = v5;

    v3->_failingAction = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  dialogID = [(LACBiomeDialogEvent *)self dialogID];
  bundleID = [(LACBiomeDialogEvent *)self bundleID];
  [(LACBiomeDialogEvent *)self timeSinceUpdate];
  v7 = v6;
  mechanisms = [(LACBiomeDialogEvent *)self mechanisms];
  successfulMechanism = [(LACBiomeDialogEvent *)self successfulMechanism];
  failedMechanisms = [(LACBiomeDialogEvent *)self failedMechanisms];
  actions = [(LACBiomeDialogEvent *)self actions];
  v12 = [v3 stringWithFormat:@"<LACBiomeDialogEvent dialogID: %@, bundleID: %@, timeSinceUpdate: %.0f, mechanisms: %@, successfulMechanism: %d, failedMechanisms: %@, actions: %@, failingAction: %d>", dialogID, bundleID, v7, mechanisms, successfulMechanism, failedMechanisms, actions, -[LACBiomeDialogEvent failingAction](self, "failingAction")];

  return v12;
}

- (void)startedAuthenticationWithMechanism:(int64_t)mechanism
{
  mechanisms = [(LACBiomeDialogEvent *)self mechanisms];
  lastObject = [mechanisms lastObject];
  integerValue = [lastObject integerValue];

  if (integerValue != mechanism)
  {
    mechanisms2 = [(LACBiomeDialogEvent *)self mechanisms];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
    v9 = [mechanisms2 arrayByAddingObject:v8];
    mechanisms = self->_mechanisms;
    self->_mechanisms = v9;
  }
}

- (void)failedAuthenticationWithMechanism:(int64_t)mechanism
{
  failedMechanisms = [(LACBiomeDialogEvent *)self failedMechanisms];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
  v6 = [failedMechanisms arrayByAddingObject:v5];
  failedMechanisms = self->_failedMechanisms;
  self->_failedMechanisms = v6;
}

- (void)addAction:(int64_t)action failing:(BOOL)failing
{
  failingCopy = failing;
  actions = [(LACBiomeDialogEvent *)self actions];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v9 = [actions arrayByAddingObject:v8];
  actions = self->_actions;
  self->_actions = v9;

  if (failingCopy)
  {
    self->_failingAction = action;
  }
}

- (void)determineTimeSinceLastSystemUpdateWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)mergeBiomeEvent:(id)event
{
  eventCopy = event;
  mechanisms = [eventCopy mechanisms];
  v5 = [mechanisms arrayByAddingObjectsFromArray:self->_mechanisms];
  mechanisms = self->_mechanisms;
  self->_mechanisms = v5;

  failedMechanisms = [eventCopy failedMechanisms];
  v8 = [failedMechanisms arrayByAddingObjectsFromArray:self->_failedMechanisms];
  failedMechanisms = self->_failedMechanisms;
  self->_failedMechanisms = v8;

  actions = [eventCopy actions];
  v11 = [actions arrayByAddingObjectsFromArray:self->_actions];
  actions = self->_actions;
  self->_actions = v11;

  if (!self->_successfulMechanism)
  {
    self->_successfulMechanism = [eventCopy successfulMechanism];
  }
}

@end