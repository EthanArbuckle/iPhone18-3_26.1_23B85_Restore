@interface HUAccessoryDebugModuleController
- (HUAccessoryDebugModuleController)initWithModule:(id)module;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUAccessoryDebugModuleController

- (HUAccessoryDebugModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v5 = objc_opt_class();
  v6 = moduleCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6;
    if (v7)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  v15.receiver = self;
  v15.super_class = HUAccessoryDebugModuleController;
  v11 = [(HUItemModuleController *)&v15 initWithModule:v6];
  if (v11)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v11->_cellToItemMap;
    v11->_cellToItemMap = weakToWeakObjectsMapTable;
  }

  return v11;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  cellToItemMap = [(HUAccessoryDebugModuleController *)self cellToItemMap];
  [cellToItemMap setObject:itemCopy forKey:cellCopy];
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  v14 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setDelegate:self];
  latestResults = [itemCopy latestResults];

  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];
  v13 = [v12 integerValue] == 2;

  [v10 setOn:v13 animated:1];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  cellToItemMap = [(HUAccessoryDebugModuleController *)self cellToItemMap];
  v32 = [cellToItemMap objectForKey:cellCopy];

  module = [(HUItemModuleController *)self module];
  fakeUnreachableItem = [module fakeUnreachableItem];

  module2 = [(HUItemModuleController *)self module];
  if (v32 == fakeUnreachableItem)
  {
    [module2 setFakeUnreachableError:onCopy];
  }

  else
  {
    fakeWiFiSymptomItem = [module2 fakeWiFiSymptomItem];

    module2 = [(HUItemModuleController *)self module];
    if (v32 == fakeWiFiSymptomItem)
    {
      [module2 setFakeWiFiSymptom:onCopy];
    }

    else
    {
      fakeWiFiPerformanceSymptomItem = [module2 fakeWiFiPerformanceSymptomItem];

      module2 = [(HUItemModuleController *)self module];
      if (v32 == fakeWiFiPerformanceSymptomItem)
      {
        [module2 setFakeWiFiPerformanceSymptom:onCopy];
      }

      else
      {
        fakeHardwareFixSymptomItem = [module2 fakeHardwareFixSymptomItem];

        module2 = [(HUItemModuleController *)self module];
        if (v32 == fakeHardwareFixSymptomItem)
        {
          [module2 setFakeHardwareFixSymptom:onCopy];
        }

        else
        {
          fakeGeneralFixSymptomItem = [module2 fakeGeneralFixSymptomItem];

          module2 = [(HUItemModuleController *)self module];
          if (v32 == fakeGeneralFixSymptomItem)
          {
            [module2 setFakeGeneralFixSymptom:onCopy];
          }

          else
          {
            fakeHomeKitSymptomItem = [module2 fakeHomeKitSymptomItem];

            module2 = [(HUItemModuleController *)self module];
            if (v32 == fakeHomeKitSymptomItem)
            {
              [module2 setFakeHomeKitSymptom:onCopy];
            }

            else
            {
              fakeInternetFixSymptomItem = [module2 fakeInternetFixSymptomItem];

              module2 = [(HUItemModuleController *)self module];
              if (v32 == fakeInternetFixSymptomItem)
              {
                [module2 setFakeInternetFixSymptom:onCopy];
              }

              else
              {
                fakeICloudSymptomItem = [module2 fakeICloudSymptomItem];

                module2 = [(HUItemModuleController *)self module];
                if (v32 == fakeICloudSymptomItem)
                {
                  [module2 setFakeICloudSymptom:onCopy];
                }

                else
                {
                  fakeITunesSymptomItem = [module2 fakeITunesSymptomItem];

                  module2 = [(HUItemModuleController *)self module];
                  if (v32 == fakeITunesSymptomItem)
                  {
                    [module2 setFakeITunesSymptom:onCopy];
                  }

                  else
                  {
                    fakeCDPSymptomItem = [module2 fakeCDPSymptomItem];

                    module2 = [(HUItemModuleController *)self module];
                    if (v32 == fakeCDPSymptomItem)
                    {
                      [module2 setFakeCDPSymptom:onCopy];
                    }

                    else
                    {
                      fakeStereoPairVersionMismatchSymptomItem = [module2 fakeStereoPairVersionMismatchSymptomItem];

                      module2 = [(HUItemModuleController *)self module];
                      if (v32 == fakeStereoPairVersionMismatchSymptomItem)
                      {
                        [module2 setFakeStereoPairVersionMismatchSymptom:onCopy];
                      }

                      else
                      {
                        fakeStereoPairGeneralSymptomItem = [module2 fakeStereoPairGeneralSymptomItem];

                        module2 = [(HUItemModuleController *)self module];
                        if (v32 == fakeStereoPairGeneralSymptomItem)
                        {
                          [module2 setFakeStereoPairGeneralSymptom:onCopy];
                        }

                        else
                        {
                          fakeStereoPairNotFoundSymptomItem = [module2 fakeStereoPairNotFoundSymptomItem];

                          module2 = [(HUItemModuleController *)self module];
                          if (v32 == fakeStereoPairNotFoundSymptomItem)
                          {
                            [module2 setFakeStereoPairNotFoundSymptom:onCopy];
                          }

                          else
                          {
                            fakeWifiNetworkMismatchSymptomItem = [module2 fakeWifiNetworkMismatchSymptomItem];

                            module2 = [(HUItemModuleController *)self module];
                            if (v32 == fakeWifiNetworkMismatchSymptomItem)
                            {
                              [module2 setFakeWiFiNetworkMismatchSymptom:onCopy];
                            }

                            else
                            {
                              fakeVPNProfileExpiredSymptomItem = [module2 fakeVPNProfileExpiredSymptomItem];

                              module2 = [(HUItemModuleController *)self module];
                              if (v32 == fakeVPNProfileExpiredSymptomItem)
                              {
                                [module2 setFakeVPNProfileExpiredSymptom:onCopy];
                              }

                              else
                              {
                                fake8021xNetworkSymptomItem = [module2 fake8021xNetworkSymptomItem];

                                module2 = [(HUItemModuleController *)self module];
                                if (v32 == fake8021xNetworkSymptomItem)
                                {
                                  [module2 setFake8021xNetworkSymptom:onCopy];
                                }

                                else
                                {
                                  fakeNetworkProfileFixSymptomItem = [module2 fakeNetworkProfileFixSymptomItem];

                                  module2 = [(HUItemModuleController *)self module];
                                  if (v32 == fakeNetworkProfileFixSymptomItem)
                                  {
                                    [module2 setFakeNetworkProfileFixSymptom:onCopy];
                                  }

                                  else
                                  {
                                    fakeNetworkProfileInstallSymptomItem = [module2 fakeNetworkProfileInstallSymptomItem];

                                    module2 = [(HUItemModuleController *)self module];
                                    if (v32 == fakeNetworkProfileInstallSymptomItem)
                                    {
                                      [module2 setFakeNetworkProfileInstallSymptom:onCopy];
                                    }

                                    else
                                    {
                                      fakeNetworkNotShareableSymptomItem = [module2 fakeNetworkNotShareableSymptomItem];

                                      module2 = [(HUItemModuleController *)self module];
                                      if (v32 == fakeNetworkNotShareableSymptomItem)
                                      {
                                        [module2 setFakeNetworkNotShareableSymptom:onCopy];
                                      }

                                      else
                                      {
                                        fakeNetworkStrengthErrorItem = [module2 fakeNetworkStrengthErrorItem];

                                        module2 = [(HUItemModuleController *)self module];
                                        if (v32 == fakeNetworkStrengthErrorItem)
                                        {
                                          [module2 setFakeNetworkStrengthError:onCopy];
                                        }

                                        else
                                        {
                                          fakeCaptiveLeaseRenewalSymptomItem = [module2 fakeCaptiveLeaseRenewalSymptomItem];

                                          if (v32 == fakeCaptiveLeaseRenewalSymptomItem)
                                          {
                                            module2 = [(HUItemModuleController *)self module];
                                            [module2 setFakeCaptiveLeaseRenewalSymptom:onCopy];
                                          }

                                          else
                                          {
                                            module2 = [MEMORY[0x277CCA890] currentHandler];
                                            [module2 handleFailureInMethod:a2 object:self file:@"HUAccessoryDebugModuleController.m" lineNumber:136 description:{@"Missing item check for: %@", v32}];
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end