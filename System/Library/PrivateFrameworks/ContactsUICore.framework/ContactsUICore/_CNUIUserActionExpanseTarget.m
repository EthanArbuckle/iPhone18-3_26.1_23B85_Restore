@interface _CNUIUserActionExpanseTarget
- (_CNUIUserActionExpanseTarget)init;
- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4;
@end

@implementation _CNUIUserActionExpanseTarget

- (_CNUIUserActionExpanseTarget)init
{
  v2 = *MEMORY[0x1E695C118];
  v4.receiver = self;
  v4.super_class = _CNUIUserActionExpanseTarget;
  return [(CNUIUserActionTarget *)&v4 initWithName:@"Expanse" bundleIdentifier:v2 teamIdentifier:0];
}

- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 idsContactPropertyResolver];
  v9 = [v6 highLatencySchedulerProvider];

  v10 = [v8 resolveBestExpanseIDSPropertyForContact:v7 schedulerProvider:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___CNUIUserActionExpanseTarget_actionsForContact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E8988;
  v14[4] = self;
  v11 = [v10 map:v14];
  v12 = [v11 startWith:&unk_1F1646018];

  return v12;
}

@end