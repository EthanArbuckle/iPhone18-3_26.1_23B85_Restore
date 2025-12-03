@interface HUServiceDetailsRoomItem
- (HUServiceDetailsRoomItem)initWithSourceServiceItem:(id)item home:(id)home serviceLikeBuilder:(id)builder;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsRoomItem

- (HUServiceDetailsRoomItem)initWithSourceServiceItem:(id)item home:(id)home serviceLikeBuilder:(id)builder
{
  builderCopy = builder;
  v13.receiver = self;
  v13.super_class = HUServiceDetailsRoomItem;
  v10 = [(HUServiceDetailsAbstractItem *)&v13 initWithSourceServiceItem:item home:home];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceLikeBuilder, builder);
  }

  return v11;
}

- (id)_subclass_updateWithOptions:(id)options
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  homeKitObject = [sourceServiceItem homeKitObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    services = [homeKitObject services];
    if (!services)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v10 = MEMORY[0x277CD1D90];
    room = [MEMORY[0x277CBEB98] setWithArray:services];
    v12 = [v10 hf_roomsForServices:room];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v6 = MEMORY[0x277CBEB98];
    hf_parentRoom = [homeKitObject hf_parentRoom];
LABEL_3:
    services = hf_parentRoom;
    v9 = [v6 na_setWithSafeObject:hf_parentRoom];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEB98];
    hf_parentRoom = [homeKitObject room];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = MEMORY[0x277CBEB98];
    services = [homeKitObject accessory];
    room = [services room];
    v12 = [v35 na_setWithSafeObject:room];
LABEL_7:
    v9 = v12;

    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sourceServiceItem2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  latestResults = [sourceServiceItem2 latestResults];
  v16 = *MEMORY[0x277D13DA8];
  v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v18 = [v17 mutableCopy];

  if (v9)
  {
    [v18 unionSet:v9];
  }

  [dictionary setObject:v18 forKeyedSubscript:v16];
  v19 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRoomTitle", @"HUServiceDetailsRoomTitle", 1);
  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.Room"];
  [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  serviceLikeBuilder = [(HUServiceDetailsRoomItem *)self serviceLikeBuilder];
  room2 = [serviceLikeBuilder room];
  name = [room2 name];

  if (name && [name length])
  {
    [dictionary na_safeSetObject:name forKey:*MEMORY[0x277D13E20]];
  }

  else if ([v9 count] == 1)
  {
    anyObject = [v9 anyObject];
    name2 = [anyObject name];
    v26 = [name2 copy];

    [dictionary na_safeSetObject:v26 forKey:*MEMORY[0x277D13E20]];
  }

  else if ([v9 count] >= 2)
  {
    v27 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsMultipleRooms", @"HUServiceDetailsMultipleRooms", 1);
    [dictionary setObject:v27 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  sourceServiceItem3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  latestResults2 = [sourceServiceItem3 latestResults];
  v30 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14148]];
  [dictionary na_safeSetObject:v30 forKey:*MEMORY[0x277D13EA8]];

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F10]];
  if ([(HUServiceDetailsAbstractItem *)self isContainedInAParent]&& [(HUServiceDetailsAbstractItem *)self canShowAsIndividualTiles]&& ![(HUServiceDetailsAbstractItem *)self isSensorService])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(HUServiceDetailsAbstractItem *)self isAccessoryDisplayedAsIndividualTiles])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v31 = MEMORY[0x277D2C900];
  v32 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v33 = [v31 futureWithResult:v32];

  return v33;
}

@end