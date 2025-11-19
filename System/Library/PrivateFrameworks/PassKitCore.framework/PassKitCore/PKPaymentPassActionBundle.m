@interface PKPaymentPassActionBundle
- (id)actionsMatchingTypes:(id)a3;
- (void)setOrAddActionGroups:(id)a3;
- (void)setOrAddActions:(id)a3;
@end

@implementation PKPaymentPassActionBundle

- (id)actionsMatchingTypes:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  actions = self->_actions;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PKPaymentPassActionBundle_actionsMatchingTypes___block_invoke;
  v9[3] = &unk_1E79DA788;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)actions pk_objectsPassingTest:v9];

  return v7;
}

uint64_t __50__PKPaymentPassActionBundle_actionsMatchingTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "type")}];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

- (void)setOrAddActions:(id)a3
{
  v9 = a3;
  actions = self->_actions;
  if (actions)
  {
    v5 = [(NSArray *)actions mutableCopy];
    [(NSArray *)v5 addObjectsFromArray:v9];
    v6 = [(NSArray *)v5 copy];
    v7 = self->_actions;
    self->_actions = v6;
  }

  else
  {
    v8 = v9;
    v5 = self->_actions;
    self->_actions = v8;
  }
}

- (void)setOrAddActionGroups:(id)a3
{
  v9 = a3;
  actionGroups = self->_actionGroups;
  if (actionGroups)
  {
    v5 = [(NSArray *)actionGroups mutableCopy];
    [(NSArray *)v5 addObjectsFromArray:v9];
    v6 = [(NSArray *)v5 copy];
    v7 = self->_actionGroups;
    self->_actionGroups = v6;
  }

  else
  {
    v8 = v9;
    v5 = self->_actionGroups;
    self->_actionGroups = v8;
  }
}

@end