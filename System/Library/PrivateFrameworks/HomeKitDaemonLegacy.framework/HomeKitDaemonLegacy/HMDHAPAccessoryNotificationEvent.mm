@interface HMDHAPAccessoryNotificationEvent
- (BOOL)isThreadAccessory:(id)accessory;
- (HMDCharacteristic)characteristic;
- (HMDHAPAccessory)accessory;
- (HMDHAPAccessoryNotificationEvent)initWithAccessory:(id)accessory characteristic:(id)characteristic;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)accessoryIdentifier;
@end

@implementation HMDHAPAccessoryNotificationEvent

- (HMDCharacteristic)characteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_characteristic);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (NSString)accessoryIdentifier
{
  accessory = [(HMDHAPAccessoryNotificationEvent *)self accessory];
  identifier = [accessory identifier];

  return identifier;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  accessory = [(HMDHAPAccessoryNotificationEvent *)self accessory];
  characteristic = [(HMDHAPAccessoryNotificationEvent *)self characteristic];
  v6 = [(HMDHAPAccessoryNotificationEvent *)self isThreadAccessory:accessory];
  if ([accessory hasIPLink])
  {
    v7 = @"IP";
  }

  else if ([accessory hasBTLELink])
  {
    v7 = @"BLE";
  }

  else
  {
    v7 = @"unknown link type";
  }

  type = [characteristic type];
  [v3 setObject:type forKeyedSubscript:@"characteristicType"];

  service = [characteristic service];
  type2 = [service type];
  [v3 setObject:type2 forKeyedSubscript:@"serviceType"];

  [v3 setObject:v7 forKey:@"linkType"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v3 setObject:v11 forKey:@"isThread"];

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isThreadAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  [accessoryCopy transportInformationInstances];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        hapAccessory = [*(*(&v17 + 1) + 8 * i) hapAccessory];
        server = [hapAccessory server];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = server;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {

LABEL_16:
          v14 = 1;
          goto LABEL_17;
        }

        v13 = [accessoryCopy findServiceWithServiceType:@"00000701-0000-1000-8000-0026BB765291"];

        if (v13)
        {
          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDHAPAccessoryNotificationEvent)initWithAccessory:(id)accessory characteristic:(id)characteristic
{
  accessoryCopy = accessory;
  characteristicCopy = characteristic;
  v11.receiver = self;
  v11.super_class = HMDHAPAccessoryNotificationEvent;
  v8 = [(HMMLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_storeWeak(&v9->_characteristic, characteristicCopy);
  }

  return v9;
}

@end