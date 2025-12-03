@interface HFDemoModeAccessoryBuilder
- (HFDemoModeAccessoryBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (NSString)originalName;
- (id)_lazilyUpdateName;
- (id)_lazilyUpdateRoom;
- (id)_lazilyUpdateValueForContextType:(unint64_t)type;
- (id)accessories;
- (id)commitItem;
@end

@implementation HFDemoModeAccessoryBuilder

- (HFDemoModeAccessoryBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  homeCopy = home;
  v19.receiver = self;
  v19.super_class = HFDemoModeAccessoryBuilder;
  v7 = [(HFItemBuilder *)&v19 initWithExistingObject:object inHome:homeCopy];
  v8 = v7;
  if (v7)
  {
    homeKitRepresentation = [(HFItemBuilder *)v7 homeKitRepresentation];
    v10 = [HFNamingComponents namingComponentFromAccessory:homeKitRepresentation];
    [(HFDemoModeAccessoryBuilder *)v8 setNamingComponent:v10];

    originalName = [(HFDemoModeAccessoryBuilder *)v8 originalName];
    [(HFDemoModeAccessoryBuilder *)v8 setName:originalName];

    v12 = [HFRoomBuilder alloc];
    accessory = [(HFDemoModeAccessoryBuilder *)v8 accessory];
    room = [accessory room];
    v15 = [(HFRoomBuilder *)v12 initWithExistingObject:room inHome:homeCopy];
    [(HFDemoModeAccessoryBuilder *)v8 setRoom:v15];

    accessory2 = [(HFDemoModeAccessoryBuilder *)v8 accessory];
    -[HFDemoModeAccessoryBuilder setShowInHomeDashboard:](v8, "setShowInHomeDashboard:", [accessory2 hf_effectiveShowInHomeDashboard]);

    accessory3 = [(HFDemoModeAccessoryBuilder *)v8 accessory];
    -[HFDemoModeAccessoryBuilder setIsFavorite:](v8, "setIsFavorite:", [accessory3 hf_effectiveIsFavorite]);
  }

  return v8;
}

- (NSString)originalName
{
  namingComponent = [(HFDemoModeAccessoryBuilder *)self namingComponent];
  name = [namingComponent name];

  return name;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [(HFDemoModeAccessoryBuilder *)self accessory];
  v4 = [v2 setWithObject:accessory];

  return v4;
}

- (id)commitItem
{
  v23[2] = *MEMORY[0x277D85DE8];
  home = [(HFItemBuilder *)self home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    v5 = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateValueForContextType:2];
    v23[0] = v5;
    v6 = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateValueForContextType:3];
    v23[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

    v8 = [MEMORY[0x277D2C900] combineAllFutures:v7];
    v9 = @"HFOperationEditService";
    v10 = MEMORY[0x277D2C900];
    _performValidation = [(HFDemoModeAccessoryBuilder *)self _performValidation];
    v22[0] = _performValidation;
    _lazilyUpdateName = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateName];
    v22[1] = _lazilyUpdateName;
    _lazilyUpdateRoom = [(HFDemoModeAccessoryBuilder *)self _lazilyUpdateRoom];
    v22[2] = _lazilyUpdateRoom;
    v22[3] = v8;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    v15 = [v10 chainFutures:v14];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__HFDemoModeAccessoryBuilder_commitItem__block_invoke;
    v19[3] = &unk_277DF2D30;
    v20 = v9;
    selfCopy = self;
    futureWithNoResult = [v15 recover:v19];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v17 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
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
  name = [(HFDemoModeAccessoryBuilder *)self name];
  originalName = [(HFDemoModeAccessoryBuilder *)self originalName];
  v5 = name;
  v6 = originalName;
  accessory2 = v6;
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
    name2 = [(HFDemoModeAccessoryBuilder *)self name];
    accessory = [(HFDemoModeAccessoryBuilder *)self accessory];
    applicationData = [accessory applicationData];
    [applicationData setObject:name2 forKeyedSubscript:@"name"];

    v5 = +[HFDemoModeAccessoryManager sharedManager];
    accessory2 = [(HFDemoModeAccessoryBuilder *)self accessory];
    [v5 dispatchUpdateMessageForAccessory:accessory2];
    goto LABEL_8;
  }

LABEL_9:
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (id)_lazilyUpdateRoom
{
  accessory = [(HFDemoModeAccessoryBuilder *)self accessory];
  room = [accessory room];
  uniqueIdentifier = [room uniqueIdentifier];
  room2 = [(HFDemoModeAccessoryBuilder *)self room];
  v6Room = [room2 room];
  uniqueIdentifier2 = [v6Room uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if ((v9 & 1) == 0)
  {
    room3 = [(HFDemoModeAccessoryBuilder *)self room];
    v10Room = [room3 room];
    name = [v10Room name];
    accessory2 = [(HFDemoModeAccessoryBuilder *)self accessory];
    applicationData = [accessory2 applicationData];
    [applicationData setObject:name forKeyedSubscript:@"room"];

    v15 = +[HFDemoModeAccessoryManager sharedManager];
    accessory3 = [(HFDemoModeAccessoryBuilder *)self accessory];
    [v15 dispatchUpdateMessageForAccessory:accessory3];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (id)_lazilyUpdateValueForContextType:(unint64_t)type
{
  v5 = 0;
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_10;
      }

      showInHomeDashboard = [(HFDemoModeAccessoryBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    showInHomeDashboard = [(HFDemoModeAccessoryBuilder *)self isFavorite];
LABEL_9:
    v5 = showInHomeDashboard;
    goto LABEL_10;
  }

  if (!type)
  {
    goto LABEL_8;
  }

  if (type == 1)
  {
    NSLog(&cfstr_IncludeInStatu_2.isa, a2);
    goto LABEL_14;
  }

LABEL_10:
  accessory = [(HFDemoModeAccessoryBuilder *)self accessory];
  if (v5 == [accessory hf_isOnForContextType:type])
  {
    accessory2 = [(HFDemoModeAccessoryBuilder *)self accessory];
    v9 = [accessory2 hf_hasSetForContextType:type];

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  accessory3 = [(HFDemoModeAccessoryBuilder *)self accessory];
  v11 = [accessory3 hf_updateValue:v5 forContextType:type];

  v12 = +[HFDemoModeAccessoryManager sharedManager];
  accessory4 = [(HFDemoModeAccessoryBuilder *)self accessory];
  [v12 dispatchUpdateMessageForAccessory:accessory4];

LABEL_14:
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

@end