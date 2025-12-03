@interface HFMatterCommandActionBuilder
- (BOOL)canUpdateWithActionBuilder:(id)builder;
- (BOOL)hasSameTargetAsAction:(id)action;
- (BOOL)updateWithActionBuilder:(id)builder;
- (HFMatterCommandActionBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (HFMatterCommandActionBuilder)initWithHome:(id)home commands:(id)commands accessory:(id)accessory enforceExecutionOrder:(BOOL)order;
- (NSString)description;
- (id)actionCommandFieldsFor:(id)for;
- (id)actionExpectedValuesFor:(id)for;
- (id)commitItem;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (void)updateCommandsWith:(id)with;
@end

@implementation HFMatterCommandActionBuilder

- (id)actionExpectedValuesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _sSo28HFMatterCommandActionBuilderC4HomeE20actionExpectedValues3forSaySDySSs8Sendable_pGGSgSo08HMMatterB0C_tF_0(forCopy);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
    v7 = sub_20DD64FB4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionCommandFieldsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _sSo28HFMatterCommandActionBuilderC4HomeE06actionB6Fields3forSDySSypGSgSo08HMMatterB0C_tF_0();

  if (v6)
  {
    v7 = sub_20DD64DB4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateCommandsWith:(id)with
{
  sub_20DA0BEB0();
  v4 = sub_20DD64FD4();
  selfCopy = self;
  HFMatterCommandActionBuilder.updateCommands(with:)(v4);
}

- (NSString)description
{
  selfCopy = self;
  HFMatterCommandActionBuilder.description.getter();

  v3 = sub_20DD64E74();

  return v3;
}

- (HFMatterCommandActionBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  objectCopy = object;
  home = [(HFItemBuilder *)self home];
  v16.receiver = self;
  v16.super_class = HFMatterCommandActionBuilder;
  v7 = [(HFItemBuilder *)&v16 initWithExistingObject:objectCopy inHome:home];

  if (v7)
  {
    action = [(HFActionBuilder *)v7 action];
    commands = [action commands];
    commands = v7->_commands;
    v7->_commands = commands;

    action2 = [(HFActionBuilder *)v7 action];
    v7->_enforceExecutionOrder = [action2 enforceExecutionOrder];

    action3 = [(HFActionBuilder *)v7 action];
    representedAccessory = [action3 representedAccessory];
    accessory = v7->_accessory;
    v7->_accessory = representedAccessory;
  }

  return v7;
}

- (id)copyForCreatingNewAction
{
  v3 = objc_alloc(objc_opt_class());
  home = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:home];

  commands = [(HFMatterCommandActionBuilder *)self commands];
  [v5 setCommands:commands];

  [v5 setEnforceExecutionOrder:{-[HFMatterCommandActionBuilder enforceExecutionOrder](self, "enforceExecutionOrder")}];
  accessory = [(HFMatterCommandActionBuilder *)self accessory];
  [v5 setAccessory:accessory];

  return v5;
}

- (HFMatterCommandActionBuilder)initWithHome:(id)home commands:(id)commands accessory:(id)accessory enforceExecutionOrder:(BOOL)order
{
  commandsCopy = commands;
  accessoryCopy = accessory;
  v13 = [(HFItemBuilder *)self initWithHome:home];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_commands, commands);
    objc_storeStrong(&v14->_accessory, accessory);
    v14->_enforceExecutionOrder = order;
  }

  return v14;
}

- (id)containedAccessoryRepresentables
{
  v2 = MEMORY[0x277CBEA60];
  accessory = [(HFMatterCommandActionBuilder *)self accessory];
  v4 = [v2 na_arrayWithSafeObject:accessory];

  return v4;
}

- (BOOL)canUpdateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  objc_opt_class();
  v5 = builderCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    accessory = [(HFMatterCommandActionBuilder *)self accessory];
    matterNodeID = [accessory matterNodeID];
    accessory2 = [v7 accessory];
    matterNodeID2 = [accessory2 matterNodeID];
    v12 = matterNodeID == matterNodeID2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  if ([(HFMatterCommandActionBuilder *)self canUpdateWithActionBuilder:builderCopy])
  {
    objc_opt_class();
    v5 = builderCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    commands = [v7 commands];
    [(HFMatterCommandActionBuilder *)self updateCommandsWith:commands];

    commands2 = [(HFMatterCommandActionBuilder *)self commands];
    commands3 = [v7 commands];
    if ([commands2 isEqualToArray:commands3])
    {
      enforceExecutionOrder = [(HFMatterCommandActionBuilder *)self enforceExecutionOrder];
      v12 = enforceExecutionOrder ^ [v7 enforceExecutionOrder];
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)createNewAction
{
  commands = [(HFMatterCommandActionBuilder *)self commands];
  if (commands)
  {
    v4 = commands;
    accessory = [(HFMatterCommandActionBuilder *)self accessory];
    if (accessory)
    {
      v6 = accessory;
      enforceExecutionOrder = [(HFMatterCommandActionBuilder *)self enforceExecutionOrder];

      if (enforceExecutionOrder)
      {
        v8 = objc_alloc(MEMORY[0x277CD1B70]);
        commands2 = [(HFMatterCommandActionBuilder *)self commands];
        v10 = [v8 initWithMatterCommands:commands2 enforceExecutionOrder:{-[HFMatterCommandActionBuilder enforceExecutionOrder](self, "enforceExecutionOrder")}];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  commands2 = [(HFMatterCommandActionBuilder *)self commands];
  accessory2 = [(HFMatterCommandActionBuilder *)self accessory];
  NSLog(&cfstr_Hfmattercomman.isa, self, commands2, accessory2, [(HFMatterCommandActionBuilder *)self enforceExecutionOrder]);

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)commitItem
{
  performValidation = [(HFMatterCommandActionBuilder *)self performValidation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HFMatterCommandActionBuilder_commitItem__block_invoke;
  v6[3] = &unk_277DF2CE0;
  v6[4] = self;
  v4 = [performValidation flatMap:v6];

  return v4;
}

id __42__HFMatterCommandActionBuilder_commitItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];

  if (!v2)
  {
    v3 = [*(a1 + 32) createNewAction];
    [*(a1 + 32) setAction:v3];
  }

  v4 = MEMORY[0x277D2C900];
  v5 = [*(a1 + 32) action];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (BOOL)hasSameTargetAsAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  v5 = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  action = [(HFActionBuilder *)self action];
  representedAccessory = [action representedAccessory];

  if (v7)
  {
    uniqueIdentifier = [representedAccessory uniqueIdentifier];
    accessory = [(HFMatterCommandActionBuilder *)self accessory];
    uniqueIdentifier2 = [accessory uniqueIdentifier];
    v13 = uniqueIdentifier == uniqueIdentifier2;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end