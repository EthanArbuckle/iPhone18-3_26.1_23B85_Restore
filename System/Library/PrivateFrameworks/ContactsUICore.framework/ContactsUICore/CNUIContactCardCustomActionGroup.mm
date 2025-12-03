@interface CNUIContactCardCustomActionGroup
- (CNUIContactCardCustomActionGroup)initWithCustomActions:(id)actions;
- (void)removeCustomAction:(id)action;
@end

@implementation CNUIContactCardCustomActionGroup

- (CNUIContactCardCustomActionGroup)initWithCustomActions:(id)actions
{
  actionsCopy = actions;
  v10.receiver = self;
  v10.super_class = CNUIContactCardCustomActionGroup;
  v5 = [(CNUIContactCardCustomActionGroup *)&v10 init];
  if (v5)
  {
    v6 = [actionsCopy mutableCopy];
    customActions = v5->_customActions;
    v5->_customActions = v6;

    v8 = v5;
  }

  return v5;
}

- (void)removeCustomAction:(id)action
{
  actionCopy = action;
  customActions = self->_customActions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CNUIContactCardCustomActionGroup_removeCustomAction___block_invoke;
  v7[3] = &unk_1E76EA1F0;
  v8 = actionCopy;
  v6 = actionCopy;
  [(NSMutableArray *)customActions _cn_removeObjectsPassingTest:v7];
}

@end