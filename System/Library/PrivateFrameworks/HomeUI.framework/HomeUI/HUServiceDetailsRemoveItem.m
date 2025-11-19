@interface HUServiceDetailsRemoveItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsRemoveItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([(HUServiceDetailsAbstractItem *)self isCamera])
  {
    v4 = @"HUServiceDetailsRemoveCameraName";
  }

  else if ([(HUServiceDetailsAbstractItem *)self isItemGroup])
  {
    v4 = @"HUServiceDetailsRemoveServiceGroupName";
  }

  else if ([(HUServiceDetailsAbstractItem *)self isVisibleAsBridge])
  {
    v4 = @"HUServiceDetailsRemoveBridgeName";
  }

  else
  {
    v4 = @"HUServiceDetailsRemoveDeviceName";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
  v6 = *MEMORY[0x277D13DC8];
  v16[0] = *MEMORY[0x277D13F60];
  v16[1] = v6;
  v17[0] = v5;
  v17[1] = @"AccessoryDetails.RemoveAccessory";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v8 = [v7 mutableCopy];

  v9 = [(HUServiceDetailsAbstractItem *)self canShowAsIndividualTiles];
  v10 = MEMORY[0x277D13FB8];
  if (v9)
  {
    v11 = [(HUServiceDetailsAbstractItem *)self isSensorService];
    if ([(HUServiceDetailsAbstractItem *)self isContainedInAParent]&& !v11)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v10];
    }
  }

  else
  {
    [(HUServiceDetailsAbstractItem *)self isContainedInAParent];
  }

  if ([(HUServiceDetailsAbstractItem *)self isBridged])
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v10];
  }

  if ([(HUServiceDetailsAbstractItem *)self isNetworkRouterSatellite])
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v10];
  }

  v12 = MEMORY[0x277D2C900];
  v13 = [MEMORY[0x277D14780] outcomeWithResults:v8];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

@end