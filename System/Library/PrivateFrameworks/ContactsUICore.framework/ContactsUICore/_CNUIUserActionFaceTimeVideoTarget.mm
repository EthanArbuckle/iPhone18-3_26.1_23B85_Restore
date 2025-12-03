@interface _CNUIUserActionFaceTimeVideoTarget
- (_CNUIUserActionFaceTimeVideoTarget)init;
- (id)actionsForContact:(id)contact discoveringEnvironment:(id)environment;
@end

@implementation _CNUIUserActionFaceTimeVideoTarget

- (_CNUIUserActionFaceTimeVideoTarget)init
{
  v2 = *MEMORY[0x1E695C118];
  v4.receiver = self;
  v4.super_class = _CNUIUserActionFaceTimeVideoTarget;
  return [(CNUIUserActionTarget *)&v4 initWithName:@"FaceTime" bundleIdentifier:v2 teamIdentifier:0];
}

- (id)actionsForContact:(id)contact discoveringEnvironment:(id)environment
{
  v24[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  environmentCopy = environment;
  idsContactPropertyResolver = [environmentCopy idsContactPropertyResolver];
  highLatencySchedulerProvider = [environmentCopy highLatencySchedulerProvider];

  v10 = [idsContactPropertyResolver resolveAllFaceTimeIDSPropertiesForContact:contactCopy schedulerProvider:highLatencySchedulerProvider];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __79___CNUIUserActionFaceTimeVideoTarget_actionsForContact_discoveringEnvironment___block_invoke;
  v21 = &unk_1E76E8E20;
  v22 = contactCopy;
  selfCopy = self;
  v11 = contactCopy;
  v12 = [v10 map:&v18];
  v13 = [v12 allObjects:{0, v18, v19, v20, v21}];
  v14 = MEMORY[0x1E6996798];
  v24[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [v14 observableWithResults:v15];

  return v16;
}

@end