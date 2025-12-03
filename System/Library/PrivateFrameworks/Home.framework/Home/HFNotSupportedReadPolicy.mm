@interface HFNotSupportedReadPolicy
- (BOOL)_requiresNotificationsForCharacteristic:(id)characteristic;
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFNotSupportedReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  v7 = [MEMORY[0x277CBEB58] set];
  properties = [characteristicCopy properties];
  if ([properties containsObject:*MEMORY[0x277CCF738]])
  {
  }

  else
  {
    v9 = [(HFNotSupportedReadPolicy *)self _requiresNotificationsForCharacteristic:characteristicCopy];

    if (v9)
    {
      [v7 addObject:@"DoesNotSupportNotifications"];
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  properties2 = [characteristicCopy properties];
  if ([properties2 containsObject:*MEMORY[0x277CCF730]])
  {
    hasAuthorizationData = [characteristicCopy hasAuthorizationData];

    if ((hasAuthorizationData & 1) == 0)
    {
      [v7 addObject:@"InvalidOrMissingAuthorizationData"];
      v10 = 0;
    }
  }

  else
  {
  }

  service = [characteristicCopy service];
  accessory = [service accessory];
  isAdditionalSetupRequired = [accessory isAdditionalSetupRequired];

  if (isAdditionalSetupRequired)
  {
    [v7 addObject:@"AdditionalSetupRequired"];
    v10 = 0;
  }

  if (traits)
  {
    *traits = [v7 copy];
  }

  return v10;
}

- (BOOL)_requiresNotificationsForCharacteristic:(id)characteristic
{
  v18[6] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  serviceType = [service serviceType];
  v6 = [serviceType isEqualToString:*MEMORY[0x277CD0DD0]];

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
  characteristicType = [characteristicCopy characteristicType];
  v12 = [v10 containsObject:characteristicType];

  if (v12)
  {
LABEL_3:
    v13 = 0;
  }

  else
  {
    v14 = *MEMORY[0x277CCF8E8];
    characteristicType2 = [characteristicCopy characteristicType];
    LOBYTE(v14) = [v14 isEqualToString:characteristicType2];

    v13 = v14 ^ 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

@end