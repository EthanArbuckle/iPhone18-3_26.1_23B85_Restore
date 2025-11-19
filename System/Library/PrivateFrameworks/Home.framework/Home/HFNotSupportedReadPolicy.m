@interface HFNotSupportedReadPolicy
- (BOOL)_requiresNotificationsForCharacteristic:(id)a3;
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFNotSupportedReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [v6 properties];
  if ([v8 containsObject:*MEMORY[0x277CCF738]])
  {
  }

  else
  {
    v9 = [(HFNotSupportedReadPolicy *)self _requiresNotificationsForCharacteristic:v6];

    if (v9)
    {
      [v7 addObject:@"DoesNotSupportNotifications"];
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  v11 = [v6 properties];
  if ([v11 containsObject:*MEMORY[0x277CCF730]])
  {
    v12 = [v6 hasAuthorizationData];

    if ((v12 & 1) == 0)
    {
      [v7 addObject:@"InvalidOrMissingAuthorizationData"];
      v10 = 0;
    }
  }

  else
  {
  }

  v13 = [v6 service];
  v14 = [v13 accessory];
  v15 = [v14 isAdditionalSetupRequired];

  if (v15)
  {
    [v7 addObject:@"AdditionalSetupRequired"];
    v10 = 0;
  }

  if (a4)
  {
    *a4 = [v7 copy];
  }

  return v10;
}

- (BOOL)_requiresNotificationsForCharacteristic:(id)a3
{
  v18[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 service];
  v5 = [v4 serviceType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CD0DD0]];

  if (v6)
  {
    goto LABEL_3;
  }

  v7 = *MEMORY[0x277CCF7D0];
  v18[0] = *MEMORY[0x277CCF780];
  v18[1] = v7;
  v8 = *MEMORY[0x277CCF928];
  v18[2] = *MEMORY[0x277CCF930];
  v18[3] = v8;
  v9 = *MEMORY[0x277CCFA48];
  v18[4] = *MEMORY[0x277CCFAD0];
  v18[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:6];
  v11 = [v3 characteristicType];
  v12 = [v10 containsObject:v11];

  if (v12)
  {
LABEL_3:
    v13 = 0;
  }

  else
  {
    v14 = *MEMORY[0x277CCF8E8];
    v15 = [v3 characteristicType];
    LOBYTE(v14) = [v14 isEqualToString:v15];

    v13 = v14 ^ 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

@end