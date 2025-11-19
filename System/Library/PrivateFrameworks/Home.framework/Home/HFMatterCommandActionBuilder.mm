@interface HFMatterCommandActionBuilder
- (BOOL)canUpdateWithActionBuilder:(id)a3;
- (BOOL)hasSameTargetAsAction:(id)a3;
- (BOOL)updateWithActionBuilder:(id)a3;
- (HFMatterCommandActionBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (HFMatterCommandActionBuilder)initWithHome:(id)a3 commands:(id)a4 accessory:(id)a5 enforceExecutionOrder:(BOOL)a6;
- (NSString)description;
- (id)actionCommandFieldsFor:(id)a3;
- (id)actionExpectedValuesFor:(id)a3;
- (id)commitItem;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (void)updateCommandsWith:(id)a3;
@end

@implementation HFMatterCommandActionBuilder

- (id)actionExpectedValuesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo28HFMatterCommandActionBuilderC4HomeE20actionExpectedValues3forSaySDySSs8Sendable_pGGSgSo08HMMatterB0C_tF_0(v4);

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

- (id)actionCommandFieldsFor:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (void)updateCommandsWith:(id)a3
{
  sub_20DA0BEB0();
  v4 = sub_20DD64FD4();
  v5 = self;
  HFMatterCommandActionBuilder.updateCommands(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  HFMatterCommandActionBuilder.description.getter();

  v3 = sub_20DD64E74();

  return v3;
}

- (HFMatterCommandActionBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = [(HFItemBuilder *)self home];
  v16.receiver = self;
  v16.super_class = HFMatterCommandActionBuilder;
  v7 = [(HFItemBuilder *)&v16 initWithExistingObject:v5 inHome:v6];

  if (v7)
  {
    v8 = [(HFActionBuilder *)v7 action];
    v9 = [v8 commands];
    commands = v7->_commands;
    v7->_commands = v9;

    v11 = [(HFActionBuilder *)v7 action];
    v7->_enforceExecutionOrder = [v11 enforceExecutionOrder];

    v12 = [(HFActionBuilder *)v7 action];
    v13 = [v12 representedAccessory];
    accessory = v7->_accessory;
    v7->_accessory = v13;
  }

  return v7;
}

- (id)copyForCreatingNewAction
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:v4];

  v6 = [(HFMatterCommandActionBuilder *)self commands];
  [v5 setCommands:v6];

  [v5 setEnforceExecutionOrder:{-[HFMatterCommandActionBuilder enforceExecutionOrder](self, "enforceExecutionOrder")}];
  v7 = [(HFMatterCommandActionBuilder *)self accessory];
  [v5 setAccessory:v7];

  return v5;
}

- (HFMatterCommandActionBuilder)initWithHome:(id)a3 commands:(id)a4 accessory:(id)a5 enforceExecutionOrder:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v13 = [(HFItemBuilder *)self initWithHome:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_commands, a4);
    objc_storeStrong(&v14->_accessory, a5);
    v14->_enforceExecutionOrder = a6;
  }

  return v14;
}

- (id)containedAccessoryRepresentables
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [(HFMatterCommandActionBuilder *)self accessory];
  v4 = [v2 na_arrayWithSafeObject:v3];

  return v4;
}

- (BOOL)canUpdateWithActionBuilder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(HFMatterCommandActionBuilder *)self accessory];
    v9 = [v8 matterNodeID];
    v10 = [v7 accessory];
    v11 = [v10 matterNodeID];
    v12 = v9 == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateWithActionBuilder:(id)a3
{
  v4 = a3;
  if ([(HFMatterCommandActionBuilder *)self canUpdateWithActionBuilder:v4])
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 commands];
    [(HFMatterCommandActionBuilder *)self updateCommandsWith:v8];

    v9 = [(HFMatterCommandActionBuilder *)self commands];
    v10 = [v7 commands];
    if ([v9 isEqualToArray:v10])
    {
      v11 = [(HFMatterCommandActionBuilder *)self enforceExecutionOrder];
      v12 = v11 ^ [v7 enforceExecutionOrder];
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
  v3 = [(HFMatterCommandActionBuilder *)self commands];
  if (v3)
  {
    v4 = v3;
    v5 = [(HFMatterCommandActionBuilder *)self accessory];
    if (v5)
    {
      v6 = v5;
      v7 = [(HFMatterCommandActionBuilder *)self enforceExecutionOrder];

      if (v7)
      {
        v8 = objc_alloc(MEMORY[0x277CD1B70]);
        v9 = [(HFMatterCommandActionBuilder *)self commands];
        v10 = [v8 initWithMatterCommands:v9 enforceExecutionOrder:{-[HFMatterCommandActionBuilder enforceExecutionOrder](self, "enforceExecutionOrder")}];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = [(HFMatterCommandActionBuilder *)self commands];
  v11 = [(HFMatterCommandActionBuilder *)self accessory];
  NSLog(&cfstr_Hfmattercomman.isa, self, v9, v11, [(HFMatterCommandActionBuilder *)self enforceExecutionOrder]);

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)commitItem
{
  v3 = [(HFMatterCommandActionBuilder *)self performValidation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HFMatterCommandActionBuilder_commitItem__block_invoke;
  v6[3] = &unk_277DF2CE0;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

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

- (BOOL)hasSameTargetAsAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HFActionBuilder *)self action];
  v9 = [v8 representedAccessory];

  if (v7)
  {
    v10 = [v9 uniqueIdentifier];
    v11 = [(HFMatterCommandActionBuilder *)self accessory];
    v12 = [v11 uniqueIdentifier];
    v13 = v10 == v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end