@interface HUServiceDetailsRoomItem
- (HUServiceDetailsRoomItem)initWithSourceServiceItem:(id)a3 home:(id)a4 serviceLikeBuilder:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsRoomItem

- (HUServiceDetailsRoomItem)initWithSourceServiceItem:(id)a3 home:(id)a4 serviceLikeBuilder:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUServiceDetailsRoomItem;
  v10 = [(HUServiceDetailsAbstractItem *)&v13 initWithSourceServiceItem:a3 home:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceLikeBuilder, a5);
  }

  return v11;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v5 = [v4 homeKitObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 services];
    if (!v8)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v10 = MEMORY[0x277CD1D90];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v12 = [v10 hf_roomsForServices:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 hf_parentRoom];
LABEL_3:
    v8 = v7;
    v9 = [v6 na_setWithSafeObject:v7];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 room];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = MEMORY[0x277CBEB98];
    v8 = [v5 accessory];
    v11 = [v8 room];
    v12 = [v35 na_setWithSafeObject:v11];
LABEL_7:
    v9 = v12;

    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v15 = [v14 latestResults];
  v16 = *MEMORY[0x277D13DA8];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v18 = [v17 mutableCopy];

  if (v9)
  {
    [v18 unionSet:v9];
  }

  [v13 setObject:v18 forKeyedSubscript:v16];
  v19 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRoomTitle", @"HUServiceDetailsRoomTitle", 1);
  [v13 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.Room"];
  [v13 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  v21 = [(HUServiceDetailsRoomItem *)self serviceLikeBuilder];
  v22 = [v21 room];
  v23 = [v22 name];

  if (v23 && [v23 length])
  {
    [v13 na_safeSetObject:v23 forKey:*MEMORY[0x277D13E20]];
  }

  else if ([v9 count] == 1)
  {
    v24 = [v9 anyObject];
    v25 = [v24 name];
    v26 = [v25 copy];

    [v13 na_safeSetObject:v26 forKey:*MEMORY[0x277D13E20]];
  }

  else if ([v9 count] >= 2)
  {
    v27 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsMultipleRooms", @"HUServiceDetailsMultipleRooms", 1);
    [v13 setObject:v27 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  v28 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v29 = [v28 latestResults];
  v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D14148]];
  [v13 na_safeSetObject:v30 forKey:*MEMORY[0x277D13EA8]];

  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F10]];
  if ([(HUServiceDetailsAbstractItem *)self isContainedInAParent]&& [(HUServiceDetailsAbstractItem *)self canShowAsIndividualTiles]&& ![(HUServiceDetailsAbstractItem *)self isSensorService])
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(HUServiceDetailsAbstractItem *)self isAccessoryDisplayedAsIndividualTiles])
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v31 = MEMORY[0x277D2C900];
  v32 = [MEMORY[0x277D14780] outcomeWithResults:v13];
  v33 = [v31 futureWithResult:v32];

  return v33;
}

@end