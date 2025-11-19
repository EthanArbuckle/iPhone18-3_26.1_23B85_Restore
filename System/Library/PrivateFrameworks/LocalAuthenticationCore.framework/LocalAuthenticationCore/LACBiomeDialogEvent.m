@interface LACBiomeDialogEvent
- (LACBiomeDialogEvent)init;
- (id)description;
- (void)addAction:(int64_t)a3 failing:(BOOL)a4;
- (void)determineTimeSinceLastSystemUpdateWithCompletion:(id)a3;
- (void)failedAuthenticationWithMechanism:(int64_t)a3;
- (void)mergeBiomeEvent:(id)a3;
- (void)startedAuthenticationWithMechanism:(int64_t)a3;
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
  v4 = [(LACBiomeDialogEvent *)self dialogID];
  v5 = [(LACBiomeDialogEvent *)self bundleID];
  [(LACBiomeDialogEvent *)self timeSinceUpdate];
  v7 = v6;
  v8 = [(LACBiomeDialogEvent *)self mechanisms];
  v9 = [(LACBiomeDialogEvent *)self successfulMechanism];
  v10 = [(LACBiomeDialogEvent *)self failedMechanisms];
  v11 = [(LACBiomeDialogEvent *)self actions];
  v12 = [v3 stringWithFormat:@"<LACBiomeDialogEvent dialogID: %@, bundleID: %@, timeSinceUpdate: %.0f, mechanisms: %@, successfulMechanism: %d, failedMechanisms: %@, actions: %@, failingAction: %d>", v4, v5, v7, v8, v9, v10, v11, -[LACBiomeDialogEvent failingAction](self, "failingAction")];

  return v12;
}

- (void)startedAuthenticationWithMechanism:(int64_t)a3
{
  v5 = [(LACBiomeDialogEvent *)self mechanisms];
  v6 = [v5 lastObject];
  v7 = [v6 integerValue];

  if (v7 != a3)
  {
    v11 = [(LACBiomeDialogEvent *)self mechanisms];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v11 arrayByAddingObject:v8];
    mechanisms = self->_mechanisms;
    self->_mechanisms = v9;
  }
}

- (void)failedAuthenticationWithMechanism:(int64_t)a3
{
  v8 = [(LACBiomeDialogEvent *)self failedMechanisms];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v8 arrayByAddingObject:v5];
  failedMechanisms = self->_failedMechanisms;
  self->_failedMechanisms = v6;
}

- (void)addAction:(int64_t)a3 failing:(BOOL)a4
{
  v4 = a4;
  v7 = [(LACBiomeDialogEvent *)self actions];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 arrayByAddingObject:v8];
  actions = self->_actions;
  self->_actions = v9;

  if (v4)
  {
    self->_failingAction = a3;
  }
}

- (void)determineTimeSinceLastSystemUpdateWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)mergeBiomeEvent:(id)a3
{
  v13 = a3;
  v4 = [v13 mechanisms];
  v5 = [v4 arrayByAddingObjectsFromArray:self->_mechanisms];
  mechanisms = self->_mechanisms;
  self->_mechanisms = v5;

  v7 = [v13 failedMechanisms];
  v8 = [v7 arrayByAddingObjectsFromArray:self->_failedMechanisms];
  failedMechanisms = self->_failedMechanisms;
  self->_failedMechanisms = v8;

  v10 = [v13 actions];
  v11 = [v10 arrayByAddingObjectsFromArray:self->_actions];
  actions = self->_actions;
  self->_actions = v11;

  if (!self->_successfulMechanism)
  {
    self->_successfulMechanism = [v13 successfulMechanism];
  }
}

@end