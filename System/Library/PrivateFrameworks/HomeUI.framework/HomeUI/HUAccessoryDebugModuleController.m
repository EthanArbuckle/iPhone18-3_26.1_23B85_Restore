@interface HUAccessoryDebugModuleController
- (HUAccessoryDebugModuleController)initWithModule:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUAccessoryDebugModuleController

- (HUAccessoryDebugModuleController)initWithModule:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  v15.receiver = self;
  v15.super_class = HUAccessoryDebugModuleController;
  v11 = [(HUItemModuleController *)&v15 initWithModule:v6];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v11->_cellToItemMap;
    v11->_cellToItemMap = v12;
  }

  return v11;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUAccessoryDebugModuleController *)self cellToItemMap];
  [v8 setObject:v6 forKey:v7];
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v14 = v7;
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
  v11 = [v8 latestResults];

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D14068]];
  v13 = [v12 integerValue] == 2;

  [v10 setOn:v13 animated:1];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(HUAccessoryDebugModuleController *)self cellToItemMap];
  v32 = [v8 objectForKey:v7];

  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 fakeUnreachableItem];

  v11 = [(HUItemModuleController *)self module];
  if (v32 == v10)
  {
    [v11 setFakeUnreachableError:v4];
  }

  else
  {
    v12 = [v11 fakeWiFiSymptomItem];

    v11 = [(HUItemModuleController *)self module];
    if (v32 == v12)
    {
      [v11 setFakeWiFiSymptom:v4];
    }

    else
    {
      v13 = [v11 fakeWiFiPerformanceSymptomItem];

      v11 = [(HUItemModuleController *)self module];
      if (v32 == v13)
      {
        [v11 setFakeWiFiPerformanceSymptom:v4];
      }

      else
      {
        v14 = [v11 fakeHardwareFixSymptomItem];

        v11 = [(HUItemModuleController *)self module];
        if (v32 == v14)
        {
          [v11 setFakeHardwareFixSymptom:v4];
        }

        else
        {
          v15 = [v11 fakeGeneralFixSymptomItem];

          v11 = [(HUItemModuleController *)self module];
          if (v32 == v15)
          {
            [v11 setFakeGeneralFixSymptom:v4];
          }

          else
          {
            v16 = [v11 fakeHomeKitSymptomItem];

            v11 = [(HUItemModuleController *)self module];
            if (v32 == v16)
            {
              [v11 setFakeHomeKitSymptom:v4];
            }

            else
            {
              v17 = [v11 fakeInternetFixSymptomItem];

              v11 = [(HUItemModuleController *)self module];
              if (v32 == v17)
              {
                [v11 setFakeInternetFixSymptom:v4];
              }

              else
              {
                v18 = [v11 fakeICloudSymptomItem];

                v11 = [(HUItemModuleController *)self module];
                if (v32 == v18)
                {
                  [v11 setFakeICloudSymptom:v4];
                }

                else
                {
                  v19 = [v11 fakeITunesSymptomItem];

                  v11 = [(HUItemModuleController *)self module];
                  if (v32 == v19)
                  {
                    [v11 setFakeITunesSymptom:v4];
                  }

                  else
                  {
                    v20 = [v11 fakeCDPSymptomItem];

                    v11 = [(HUItemModuleController *)self module];
                    if (v32 == v20)
                    {
                      [v11 setFakeCDPSymptom:v4];
                    }

                    else
                    {
                      v21 = [v11 fakeStereoPairVersionMismatchSymptomItem];

                      v11 = [(HUItemModuleController *)self module];
                      if (v32 == v21)
                      {
                        [v11 setFakeStereoPairVersionMismatchSymptom:v4];
                      }

                      else
                      {
                        v22 = [v11 fakeStereoPairGeneralSymptomItem];

                        v11 = [(HUItemModuleController *)self module];
                        if (v32 == v22)
                        {
                          [v11 setFakeStereoPairGeneralSymptom:v4];
                        }

                        else
                        {
                          v23 = [v11 fakeStereoPairNotFoundSymptomItem];

                          v11 = [(HUItemModuleController *)self module];
                          if (v32 == v23)
                          {
                            [v11 setFakeStereoPairNotFoundSymptom:v4];
                          }

                          else
                          {
                            v24 = [v11 fakeWifiNetworkMismatchSymptomItem];

                            v11 = [(HUItemModuleController *)self module];
                            if (v32 == v24)
                            {
                              [v11 setFakeWiFiNetworkMismatchSymptom:v4];
                            }

                            else
                            {
                              v25 = [v11 fakeVPNProfileExpiredSymptomItem];

                              v11 = [(HUItemModuleController *)self module];
                              if (v32 == v25)
                              {
                                [v11 setFakeVPNProfileExpiredSymptom:v4];
                              }

                              else
                              {
                                v26 = [v11 fake8021xNetworkSymptomItem];

                                v11 = [(HUItemModuleController *)self module];
                                if (v32 == v26)
                                {
                                  [v11 setFake8021xNetworkSymptom:v4];
                                }

                                else
                                {
                                  v27 = [v11 fakeNetworkProfileFixSymptomItem];

                                  v11 = [(HUItemModuleController *)self module];
                                  if (v32 == v27)
                                  {
                                    [v11 setFakeNetworkProfileFixSymptom:v4];
                                  }

                                  else
                                  {
                                    v28 = [v11 fakeNetworkProfileInstallSymptomItem];

                                    v11 = [(HUItemModuleController *)self module];
                                    if (v32 == v28)
                                    {
                                      [v11 setFakeNetworkProfileInstallSymptom:v4];
                                    }

                                    else
                                    {
                                      v29 = [v11 fakeNetworkNotShareableSymptomItem];

                                      v11 = [(HUItemModuleController *)self module];
                                      if (v32 == v29)
                                      {
                                        [v11 setFakeNetworkNotShareableSymptom:v4];
                                      }

                                      else
                                      {
                                        v30 = [v11 fakeNetworkStrengthErrorItem];

                                        v11 = [(HUItemModuleController *)self module];
                                        if (v32 == v30)
                                        {
                                          [v11 setFakeNetworkStrengthError:v4];
                                        }

                                        else
                                        {
                                          v31 = [v11 fakeCaptiveLeaseRenewalSymptomItem];

                                          if (v32 == v31)
                                          {
                                            v11 = [(HUItemModuleController *)self module];
                                            [v11 setFakeCaptiveLeaseRenewalSymptom:v4];
                                          }

                                          else
                                          {
                                            v11 = [MEMORY[0x277CCA890] currentHandler];
                                            [v11 handleFailureInMethod:a2 object:self file:@"HUAccessoryDebugModuleController.m" lineNumber:136 description:{@"Missing item check for: %@", v32}];
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