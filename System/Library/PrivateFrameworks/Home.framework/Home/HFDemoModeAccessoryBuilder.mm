@interface HFDemoModeAccessoryBuilder
- (HFDemoModeAccessoryBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSString)originalName;
- (id)_lazilyUpdateName;
- (id)_lazilyUpdateRoom;
- (id)_lazilyUpdateValueForContextType:(unint64_t)a3;
- (id)accessories;
- (id)commitItem;
@end

@implementation HFDemoModeAccessoryBuilder

- (HFDemoModeAccessoryBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = HFDemoModeAccessoryBuilder;
  v7 = [(HFItemBuilder *)&v19 initWithExistingObject:a3 inHome:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(HFItemBuilder *)v7 homeKitRepresentation];
    v10 = [HFNamingComponents namingComponentFromAccessory:v9];
    [(HFDemoModeAccessoryBuilder *)v8 setNamingComponent:v10];

    v11 = [(HFDemoModeAccessoryBuilder *)v8 originalName];
    [(HFDemoModeAccessoryBuilder *)v8 setName:v11];

    v12 = [HFRoomBuilder alloc];
    v13 = [(HFDemoModeAccessoryBuilder *)v8 accessory];
    v14 = [v13 room];
    v15 = [(HFRoomBuilder *)v12 initWithExistingObject:v14 inHome:v6];
    [(HFDemoModeAccessoryBuilder *)v8 setRoom:v15];

    v16 = [(HFDemoModeAccessoryBuilder *)v8 accessory];
    -[HFDemoModeAccessoryBuilder setShowInHomeDashboard:](v8, "setShowInHomeDashboard:", [v16 hf_effectiveShowInHomeDashboard]);

    v17 = [(HFDemoModeAccessoryBuilder *)v8 accessory];
    -[HFDemoModeAccessoryBuilder setIsFavorite:](v8, "setIsFavorite:", [v17 hf_effectiveIsFavorite]);
  }

  return v8;
}

- (NSString)originalName
{
  v2 = [(HFDemoModeAccessoryBuilder *)self namingComponent];
  v3 = [v2 name];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFDemoModeAccessoryBuilder *)self accessory];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)commitItem
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = [(HFItemBuilder *)self home];
  v4 = [v3 hf_currentUserIsAdministrator];

  if (v4)
  {
    v5 = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateValueForContextType:2];
    v23[0] = v5;
    v6 = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateValueForContextType:3];
    v23[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

    v8 = [MEMORY[0x277D2C900] combineAllFutures:v7];
    v9 = @"HFOperationEditService";
    v10 = MEMORY[0x277D2C900];
    v11 = [(HFDemoModeAccessoryBuilder *)self _performValidation];
    v22[0] = v11;
    v12 = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateName];
    v22[1] = v12;
    v13 = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateRoom];
    v22[2] = v13;
    v22[3] = v8;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    v15 = [v10 chainFutures:v14];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__HFDemoModeAccessoryBuilder_commitItem__block_invoke;
    v19[3] = &unk_277DF2D30;
    v20 = v9;
    v21 = self;
    v16 = [v15 recover:v19];
  }

  else
  {
    v16 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __40__HFDemoModeAccessoryBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 name];
  v7 = [v5 hf_errorWithOperationType:v3 failedItemName:v6];

  v8 = [v2 futureWithError:v7];

  return v8;
}

- (id)_lazilyUpdateName
{
  v3 = [(HFDemoModeAccessoryBuilder *)self name];
  v4 = [(HFDemoModeAccessoryBuilder *)self originalName];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v8 = [v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v9 = [(HFDemoModeAccessoryBuilder *)self name];
    v10 = [(HFDemoModeAccessoryBuilder *)self accessory];
    v11 = [v10 applicationData];
    [v11 setObject:v9 forKeyedSubscript:@"name"];

    v5 = +[HFDemoModeAccessoryManager sharedManager];
    v7 = [(HFDemoModeAccessoryBuilder *)self accessory];
    [v5 dispatchUpdateMessageForAccessory:v7];
    goto LABEL_8;
  }

LABEL_9:
  v12 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v12;
}

- (id)_lazilyUpdateRoom
{
  v3 = [(HFDemoModeAccessoryBuilder *)self accessory];
  v4 = [v3 room];
  v5 = [v4 uniqueIdentifier];
  v6 = [(HFDemoModeAccessoryBuilder *)self room];
  v7 = [v6 room];
  v8 = [v7 uniqueIdentifier];
  v9 = [v5 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(HFDemoModeAccessoryBuilder *)self room];
    v11 = [v10 room];
    v12 = [v11 name];
    v13 = [(HFDemoModeAccessoryBuilder *)self accessory];
    v14 = [v13 applicationData];
    [v14 setObject:v12 forKeyedSubscript:@"room"];

    v15 = +[HFDemoModeAccessoryManager sharedManager];
    v16 = [(HFDemoModeAccessoryBuilder *)self accessory];
    [v15 dispatchUpdateMessageForAccessory:v16];
  }

  v17 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v17;
}

- (id)_lazilyUpdateValueForContextType:(unint64_t)a3
{
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_10;
      }

      v6 = [(HFDemoModeAccessoryBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    v6 = [(HFDemoModeAccessoryBuilder *)self isFavorite];
LABEL_9:
    v5 = v6;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    NSLog(&cfstr_IncludeInStatu_2.isa, a2);
    goto LABEL_14;
  }

LABEL_10:
  v7 = [(HFDemoModeAccessoryBuilder *)self accessory];
  if (v5 == [v7 hf_isOnForContextType:a3])
  {
    v8 = [(HFDemoModeAccessoryBuilder *)self accessory];
    v9 = [v8 hf_hasSetForContextType:a3];

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v10 = [(HFDemoModeAccessoryBuilder *)self accessory];
  v11 = [v10 hf_updateValue:v5 forContextType:a3];

  v12 = +[HFDemoModeAccessoryManager sharedManager];
  v13 = [(HFDemoModeAccessoryBuilder *)self accessory];
  [v12 dispatchUpdateMessageForAccessory:v13];

LABEL_14:
  v14 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v14;
}

@end